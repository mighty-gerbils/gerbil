(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770313936)
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
        (letrec ((_%hash-e171568%_
                  (lambda (_%id171570%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id171570%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e171568%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp172955 (list gxc#::void::t))
            (__tmp172954 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp172955
         '()
         __tmp172954
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args171564%_
        (apply make-instance gxc#::collect-bindings::t _%$args171564%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp172956
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
        (__make-atomic-promise __tmp172956)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx171556%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self171559%_
                (let ((__obj172930
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj172930))
               (__tmp172957
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171559%_ _%stx171556%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172957
           gxc#current-compile-method
           _%self171559%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp172959 (list gxc#::void::t))
            (__tmp172958 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp172959
         '(modules)
         __tmp172958
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args171553%_
        (apply make-instance gxc#::lift-modules::t _%$args171553%_)))
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
      (let ((__tmp172960
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
        (__make-atomic-promise __tmp172960)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords171528%_ _%modules171525171529%_ _%stx171530%_)
        (let ((_%modules171533%_
               (if (eq? _%modules171525171529%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules171525171529%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self171535%_
                  (let ((__obj172932
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172932
                       _%modules171533%_
                       '1
                       '#f
                       '#f))
                    __obj172932))
                 (__tmp172961
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171535%_ _%stx171530%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172961
             gxc#current-compile-method
             _%self171535%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords171542%_ . _%args171543%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords171542%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171542%_
                  'modules:
                  absent-value))
               _%args171543%_)))
    (define gxc#apply-lift-modules
      (lambda _%args171526171549%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args171526171549%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp172963 (list)) (__tmp172962 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp172963
         '()
         __tmp172962
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args171521%_
        (apply make-instance gxc#::find-runtime-code::t _%$args171521%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp172964
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
        (__make-atomic-promise __tmp172964)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx171513%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self171516%_
                (let ((__obj172934
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj172934))
               (__tmp172965
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171516%_ _%stx171513%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172965
           gxc#current-compile-method
           _%self171516%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp172967 (list gxc#::false::t))
            (__tmp172966 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp172967
         '()
         __tmp172966
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args171510%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args171510%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp172968
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
        (__make-atomic-promise __tmp172968)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx171502%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self171505%_
                (let ((__obj172936
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj172936))
               (__tmp172969
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171505%_ _%stx171502%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172969
           gxc#current-compile-method
           _%self171505%_))))
    (define gxc#::count-values::t
      (let ((__tmp172971 (list gxc#::false-expression::t))
            (__tmp172970 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp172971
         '()
         __tmp172970
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args171499%_
        (apply make-instance gxc#::count-values::t _%$args171499%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp172972
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
        (__make-atomic-promise __tmp172972)))
    (define gxc#apply-count-values
      (lambda (_%stx171491%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self171494%_
                (let ((__obj172938
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj172938))
               (__tmp172973
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171494%_ _%stx171491%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172973
           gxc#current-compile-method
           _%self171494%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp172974 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp172974
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args171488%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args171488%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp172975
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
        (__make-atomic-promise __tmp172975)))
    (define gxc#::generate-loader::t
      (let ((__tmp172977 (list gxc#::generate-runtime-empty::t))
            (__tmp172976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp172977
         '()
         __tmp172976
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args171484%_
        (apply make-instance gxc#::generate-loader::t _%$args171484%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp172978
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
        (__make-atomic-promise __tmp172978)))
    (define gxc#apply-generate-loader
      (lambda (_%stx171476%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self171479%_
                (let ((__obj172941
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj172941))
               (__tmp172979
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171479%_ _%stx171476%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172979
           gxc#current-compile-method
           _%self171479%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp172980 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp172980
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args171473%_
        (apply make-instance gxc#::generate-runtime::t _%$args171473%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp172981
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
        (__make-atomic-promise __tmp172981)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx171465%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self171468%_
                (let ((__obj172943
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj172943))
               (__tmp172982
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171468%_ _%stx171465%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172982
           gxc#current-compile-method
           _%self171468%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp172984 (list gxc#::generate-runtime::t))
            (__tmp172983 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp172984
         '()
         __tmp172983
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args171462%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args171462%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp172985
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
        (__make-atomic-promise __tmp172985)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx171454%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self171457%_
                (let ((__obj172945
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj172945))
               (__tmp172986
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171457%_ _%stx171454%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172986
           gxc#current-compile-method
           _%self171457%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp172987 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp172987
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args171451%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args171451%_)))
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
      (let ((__tmp172988
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
        (__make-atomic-promise __tmp172988)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords171426%_ _%table171423171427%_ _%stx171428%_)
        (let ((_%table171431%_
               (if (eq? _%table171423171427%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table171423171427%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self171433%_
                  (let ((__obj172947
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172947
                       _%table171431%_
                       '1
                       '#f
                       '#f))
                    __obj172947))
                 (__tmp172989
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171433%_ _%stx171428%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172989
             gxc#current-compile-method
             _%self171433%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords171440%_ . _%args171441%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords171440%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171440%_
                  'table:
                  absent-value))
               _%args171441%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args171424171447%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args171424171447%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp172991 (list gxc#::void-expression::t))
            (__tmp172990 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp172991
         '(state)
         __tmp172990
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args171419%_
        (apply make-instance gxc#::generate-meta::t _%$args171419%_)))
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
      (let ((__tmp172992
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
        (__make-atomic-promise __tmp172992)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords171394%_ _%state171391171395%_ _%stx171396%_)
        (let ((_%state171399%_
               (if (eq? _%state171391171395%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171391171395%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self171401%_
                  (let ((__obj172949
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172949
                       _%state171399%_
                       '1
                       '#f
                       '#f))
                    __obj172949))
                 (__tmp172993
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171401%_ _%stx171396%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172993
             gxc#current-compile-method
             _%self171401%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords171408%_ . _%args171409%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords171408%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171408%_
                  'state:
                  absent-value))
               _%args171409%_)))
    (define gxc#apply-generate-meta
      (lambda _%args171392171415%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args171392171415%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp172995 (list)) (__tmp172994 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp172995
         '(state)
         __tmp172994
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args171387%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args171387%_)))
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
      (let ((__tmp172996
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
        (__make-atomic-promise __tmp172996)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords171362%_ _%state171359171363%_ _%stx171364%_)
        (let ((_%state171367%_
               (if (eq? _%state171359171363%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171359171363%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self171369%_
                  (let ((__obj172951
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172951
                       _%state171367%_
                       '1
                       '#f
                       '#f))
                    __obj172951))
                 (__tmp172997
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171369%_ _%stx171364%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172997
             gxc#current-compile-method
             _%self171369%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords171376%_ . _%args171377%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords171376%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171376%_
                  'state:
                  absent-value))
               _%args171377%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args171360171383%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args171360171383%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self171288%_ _%stx171289%_)
        (let* ((_%g171291171308%_
                (lambda (_%g171292171305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171292171305%_))))
               (_%g171290171355%_
                (lambda (_%g171292171311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171292171311%_))
                      (let ((_%e171295171313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171292171311%_))))
                        (let ((_%hd171296171316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171295171313%_)))
                              (_%tl171297171318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171295171313%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171297171318%_))
                              (let ((_%e171298171321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171297171318%_))))
                                (let ((_%hd171299171324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171298171321%_)))
                                      (_%tl171300171326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171298171321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171300171326%_))
                                      (let ((_%e171301171329%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171300171326%_))))
                                        (let ((_%hd171302171332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171301171329%_)))
                                              (_%tl171303171334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171301171329%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171303171334%_))
                                              ((lambda (_%g171293171337%_
                                                        _%g171294171338%_)
                                                 (let ((__tmp172998
                                                        (lambda (_%bind171353%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind171353%_))
                      (gxc#add-module-binding! _%bind171353%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp172998
                                                    _%g171294171338%_)))
                                               _%hd171302171332%_
                                               _%hd171299171324%_)
                                              (_%g171291171308%_
                                               _%g171292171311%_))))
                                      (_%g171291171308%_ _%g171292171311%_))))
                              (_%g171291171308%_ _%g171292171311%_))))
                      (_%g171291171308%_ _%g171292171311%_)))))
          (_%g171290171355%_ _%stx171289%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self171220%_ _%stx171221%_)
        (let* ((_%g171223171240%_
                (lambda (_%g171224171237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171224171237%_))))
               (_%g171222171285%_
                (lambda (_%g171224171243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171224171243%_))
                      (let ((_%e171227171245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171224171243%_))))
                        (let ((_%hd171228171248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171227171245%_)))
                              (_%tl171229171250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171227171245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171229171250%_))
                              (let ((_%e171230171253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171229171250%_))))
                                (let ((_%hd171231171256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171230171253%_)))
                                      (_%tl171232171258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171230171253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171232171258%_))
                                      (let ((_%e171233171261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171232171258%_))))
                                        (let ((_%hd171234171264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171233171261%_)))
                                              (_%tl171235171266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171233171261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171235171266%_))
                                              ((lambda (_%g171225171269%_
                                                        _%g171226171270%_)
                                                 (gxc#add-module-binding!
                                                  _%g171226171270%_
                                                  '#t))
                                               _%hd171234171264%_
                                               _%hd171231171256%_)
                                              (_%g171223171240%_
                                               _%g171224171243%_))))
                                      (_%g171223171240%_ _%g171224171243%_))))
                              (_%g171223171240%_ _%g171224171243%_))))
                      (_%g171223171240%_ _%g171224171243%_)))))
          (_%g171222171285%_ _%stx171221%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self171162%_ _%stx171163%_)
        (let* ((_%g171165171179%_
                (lambda (_%g171166171176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171166171176%_))))
               (_%g171164171217%_
                (lambda (_%g171166171182%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171166171182%_))
                      (let ((_%e171169171184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171166171182%_))))
                        (let ((_%hd171170171187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171169171184%_)))
                              (_%tl171171171189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171169171184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171171171189%_))
                              (let ((_%e171172171192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171171171189%_))))
                                (let ((_%hd171173171195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171172171192%_)))
                                      (_%tl171174171197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171172171192%_))))
                                  ((lambda (_%g171167171200%_
                                            _%g171168171201%_)
                                     (let ((_%ctx171214%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g171168171201%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171162%_
                                           'modules))
                                        (cons _%ctx171214%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171162%_
                                                        'modules)))))
                                       (let ((__tmp172999
                                              (lambda ()
                                                (let ((__tmp173000
                                                       (##structure-ref
                                                        _%ctx171214%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self171162%_
                                                   __tmp173000)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp172999
                                          gx#current-expander-context
                                          _%ctx171214%_))))
                                   _%tl171174171197%_
                                   _%hd171173171195%_)))
                              (_%g171165171179%_ _%g171166171182%_))))
                      (_%g171165171179%_ _%g171166171182%_)))))
          (_%g171164171217%_ _%stx171163%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls171116171118%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls171116171118%_
              (let ((_%decls171120%_ _%decls171116171118%_))
                (let _%lp171122%_ ((_%rest171124%_ _%decls171120%_))
                  (let* ((_%rest171125171133%_ _%rest171124%_)
                         (_%else171127171141%_ (lambda () '#f))
                         (_%K171129171150%_
                          (lambda (_%decls171144%_ _%decl171145%_)
                            (if (equal? _%decl171145%_ '(not safe))
                                '#t
                                (if (equal? _%decl171145%_ '(safe))
                                    '#f
                                    (_%lp171122%_ _%decls171144%_))))))
                    (if (pair? _%rest171125171133%_)
                        (let ((_%hd171130171153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest171125171133%_)))
                              (_%tl171131171155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest171125171133%_))))
                          (let* ((_%decl171158%_ _%hd171130171153%_)
                                 (_%decls171160%_ _%tl171131171155%_))
                            (_%K171129171150%_
                             _%decls171160%_
                             _%decl171158%_)))
                        (_%else171127171141%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id171110%_ _%syntax?171111%_)
        (let ((_%eid171113%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id171110%_))
                '1
                gx#binding::t
                '#f))
              (_%ht171114%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid171113%_))
              '#!void
              (let ((__tmp173001
                     (let ((__tmp173002
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid171113%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp173002 _%syntax?171111%_))))
                (declare (not safe))
                (hash-put! _%ht171114%_ _%eid171113%_ __tmp173001))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id171108%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id171108%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key171063%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key171063%_))
            _%key171063%_
            (if (uninterned-symbol? _%key171063%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key171063%_))
                (let* ((_%key171067171074%_ _%key171063%_)
                       (_%E171069171078%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key171067171074%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K171070171096%_
                        (lambda (_%mark171081%_ _%eid171082%_)
                          (let ((_%$e171084%_
                                 (##structure-ref
                                  _%mark171081%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e171084%_
                                ((lambda (_%ht171087%_)
                                   (let ((_%$e171089%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht171087%_
                                             _%eid171082%_))))
                                     (if _%$e171089%_
                                         ((lambda (_%id171092%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id171092%_))
                                                _%id171092%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id171092%_))))
                                          _%$e171089%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid171082%_))))
                                 _%$e171084%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid171082%_))))))
                  (if (pair? _%key171067171074%_)
                      (let ((_%hd171071171099%_
                             (let ()
                               (declare (not safe))
                               (##car _%key171067171074%_)))
                            (_%tl171072171101%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key171067171074%_))))
                        (let* ((_%eid171104%_ _%hd171071171099%_)
                               (_%mark171106%_ _%tl171072171101%_))
                          (_%K171070171096%_ _%mark171106%_ _%eid171104%_)))
                      (_%E171069171078%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self171060%_ _%stx171061%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self170907%_ _%stx170908%_)
        (letrec ((_%simplify170910%_
                  (lambda (_%body170958%_)
                    (let _%lp170960%_ ((_%rest170962%_ _%body170958%_)
                                       (_%r170963%_ '()))
                      (let* ((_%rest170964170972%_ _%rest170962%_)
                             (_%else170966170980%_
                              (lambda () (reverse _%r170963%_)))
                             (_%K170968171048%_
                              (lambda (_%rest170983%_ _%hd170984%_)
                                (let* ((_%hd170985171001%_ _%hd170984%_)
                                       (_%else170989171009%_
                                        (lambda ()
                                          (_%lp170960%_
                                           _%rest170983%_
                                           (cons _%hd170984%_ _%r170963%_)))))
                                  (let ((_%K170997171038%_
                                         (lambda (_%exprs171036%_)
                                           (_%lp170960%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest170983%_
                                               _%exprs171036%_))
                                            _%r170963%_)))
                                        (_%K170992171022%_
                                         (lambda ()
                                           (if (null? _%rest170983%_)
                                               (_%lp170960%_
                                                _%rest170983%_
                                                (cons _%hd170984%_
                                                      _%r170963%_))
                                               (_%lp170960%_
                                                _%rest170983%_
                                                _%r170963%_))))
                                        (_%K170991171014%_
                                         (lambda ()
                                           (if (null? _%rest170983%_)
                                               (_%lp170960%_
                                                _%rest170983%_
                                                (cons _%hd170984%_
                                                      _%r170963%_))
                                               (_%lp170960%_
                                                _%rest170983%_
                                                _%r170963%_)))))
                                    (let ((_%try-match170988171017%_
                                           (lambda ()
                                             (if (symbol? _%hd170985171001%_)
                                                 (_%K170991171014%_)
                                                 (_%else170989171009%_)))))
                                      (if (pair? _%hd170985171001%_)
                                          (let ((_%tl170999171043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd170985171001%_)))
                                                (_%hd170998171041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd170985171001%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd170998171041%_
                                                         'begin))
                                                (let ((_%exprs171046%_
                                                       _%tl170999171043%_))
                                                  (_%K170997171038%_
                                                   _%exprs171046%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd170998171041%_
                                                             'quote))
                                                    (if (pair? _%tl170999171043%_)
                                                        (let ((_%tl170996171030%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl170999171043%_))))
                  (if (null? _%tl170996171030%_)
                      (_%K170992171022%_)
                      (_%try-match170988171017%_)))
                (_%try-match170988171017%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match170988171017%_))))
                                          (_%try-match170988171017%_))))))))
                        (if (pair? _%rest170964170972%_)
                            (let ((_%hd170969171051%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest170964170972%_)))
                                  (_%tl170970171053%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest170964170972%_))))
                              (let* ((_%hd171056%_ _%hd170969171051%_)
                                     (_%rest171058%_ _%tl170970171053%_))
                                (_%K170968171048%_
                                 _%rest171058%_
                                 _%hd171056%_)))
                            (_%else170966170980%_)))))))
          (let* ((_%g170912170922%_
                  (lambda (_%g170913170919%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g170913170919%_))))
                 (_%g170911170955%_
                  (lambda (_%g170913170925%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g170913170925%_))
                        (let ((_%e170915170927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170913170925%_))))
                          (let ((_%hd170916170930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170915170927%_)))
                                (_%tl170917170932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170915170927%_))))
                            ((lambda (_%g170914170935%_)
                               (let* ((_%body170950%_
                                       (map (lambda (_%g170945170947%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self170907%_
                                                 _%g170945170947%_)))
                                            _%g170914170935%_))
                                      (_%body170952%_
                                       (_%simplify170910%_ _%body170950%_)))
                                 (if (let ((__tmp173003
                                            (length _%body170952%_)))
                                       (declare (not safe))
                                       (##fx= __tmp173003 '1))
                                     (car _%body170952%_)
                                     (cons 'begin _%body170952%_))))
                             _%tl170917170932%_)))
                        (_%g170912170922%_ _%g170913170925%_)))))
            (_%g170911170955%_ _%stx170908%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self170868%_ _%stx170869%_)
        (let* ((_%g170871170881%_
                (lambda (_%g170872170878%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170872170878%_))))
               (_%g170870170904%_
                (lambda (_%g170872170884%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170872170884%_))
                      (let ((_%e170874170886%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170872170884%_))))
                        (let ((_%hd170875170889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170874170886%_)))
                              (_%tl170876170891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170874170886%_))))
                          ((lambda (_%g170873170894%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g170873170894%_))))
                           _%tl170876170891%_)))
                      (_%g170871170881%_ _%g170872170884%_)))))
          (_%g170870170904%_ _%stx170869%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self170634%_ _%stx170635%_)
        (let* ((_%__stx171593171594%_ _%stx170635%_)
               (_%g170639170691%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171593171594%_)))))
          (let ((_%__kont171595171596%_
                 (lambda (_%g170641170850%_ _%g170642170851%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170634%_ _%g170641170850%_))))
                (_%__kont171597171598%_
                 (lambda (_%g170652170798%_
                          _%g170653170799%_
                          _%g170654170800%_)
                   (if (let ((__tmp173004
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g170654170800%_))))
                         (declare (not safe))
                         (##memq __tmp173004 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self170634%_
                          _%g170652170798%_)))))
                (_%__kont171601171602%_
                 (lambda (_%g170676170720%_ _%g170677170721%_)
                   (let ((_%decls170736%_
                          (map gx#syntax->datum _%g170677170721%_)))
                     (let ((__tmp173007
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls170736%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170634%_
                                                   _%g170676170720%_))
                                                '())))))
                           (__tmp173005
                            (let ((__tmp173006
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp173006 _%decls170736%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp173007
                        gxc#current-compile-decls
                        __tmp173005))))))
            (let* ((_%__match171648171649%_
                    (lambda (_%e170655170744%_
                             _%hd170656170747%_
                             _%tl170657170749%_
                             _%e170658170752%_
                             _%hd170659170755%_
                             _%tl170660170757%_
                             _%e170661170760%_
                             _%hd170662170763%_
                             _%tl170663170765%_
                             _%__splice171599171600%_
                             _%target170664170768%_
                             _%tl170666170770%_)
                      (letrec ((_%loop170667170773%_
                                (lambda (_%hd170665170776%_
                                         _%param170671170778%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170665170776%_))
                                      (let ((_%e170668170780%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170665170776%_))))
                                        (let ((_%lp-tl170670170785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170668170780%_)))
                                              (_%lp-hd170669170783%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170668170780%_))))
                                          (_%loop170667170773%_
                                           _%lp-tl170670170785%_
                                           (cons _%lp-hd170669170783%_
                                                 _%param170671170778%_))))
                                      (let ((_%param170672170788%_
                                             (reverse _%param170671170778%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170660170757%_))
                                            (let ((_%e170673170790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170660170757%_))))
                                              (let ((_%tl170675170795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170673170790%_)))
                                                    (_%hd170674170793%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170673170790%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170675170795%_))
                                                    (let ((_%g170652170798%_
                                                           _%hd170674170793%_)
                                                          (_%g170653170799%_
                                                           _%param170672170788%_)
                                                          (_%g170654170800%_
                                                           _%hd170662170763%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g170654170800%_))
                       (not (let ((__tmp173008
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170654170800%_))))
                              (declare (not safe))
                              (##memq __tmp173008 gxc#gambit-annotations))))
                  (_%__kont171597171598%_
                   _%g170652170798%_
                   _%g170653170799%_
                   _%g170654170800%_)
                  (_%__kont171601171602%_
                   _%hd170674170793%_
                   _%hd170659170755%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170639170691%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170639170691%_))))))))
                        (_%loop170667170773%_ _%target170664170768%_ '()))))
                   (_%__match171622171623%_
                    (lambda (_%e170643170826%_
                             _%hd170644170829%_
                             _%tl170645170831%_
                             _%e170646170834%_
                             _%hd170647170837%_
                             _%tl170648170839%_
                             _%e170649170842%_
                             _%hd170650170845%_
                             _%tl170651170847%_)
                      (let ((_%g170641170850%_ _%hd170650170845%_)
                            (_%g170642170851%_ _%hd170647170837%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g170642170851%_))
                            (_%__kont171595171596%_
                             _%g170641170850%_
                             _%g170642170851%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170647170837%_))
                                (let ((_%e170661170760%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170647170837%_))))
                                  (let ((_%tl170663170765%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170661170760%_)))
                                        (_%hd170662170763%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170661170760%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170663170765%_))
                                        (let ((_%__splice171599171600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl170663170765%_
                                                  '0))))
                                          (let ((_%tl170666170770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171599171600%_
                                                    '1)))
                                                (_%target170664170768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171599171600%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170666170770%_))
                                                (_%__match171648171649%_
                                                 _%e170643170826%_
                                                 _%hd170644170829%_
                                                 _%tl170645170831%_
                                                 _%e170646170834%_
                                                 _%hd170647170837%_
                                                 _%tl170648170839%_
                                                 _%e170661170760%_
                                                 _%hd170662170763%_
                                                 _%tl170663170765%_
                                                 _%__splice171599171600%_
                                                 _%target170664170768%_
                                                 _%tl170666170770%_)
                                                (_%__kont171601171602%_
                                                 _%hd170650170845%_
                                                 _%hd170647170837%_))))
                                        (_%__kont171601171602%_
                                         _%hd170650170845%_
                                         _%hd170647170837%_))))
                                (_%__kont171601171602%_
                                 _%hd170650170845%_
                                 _%hd170647170837%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171593171594%_))
                  (let ((_%e170643170826%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171593171594%_))))
                    (let ((_%tl170645170831%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170643170826%_)))
                          (_%hd170644170829%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170643170826%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170645170831%_))
                          (let ((_%e170646170834%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170645170831%_))))
                            (let ((_%tl170648170839%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170646170834%_)))
                                  (_%hd170647170837%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170646170834%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170648170839%_))
                                  (let ((_%e170649170842%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170648170839%_))))
                                    (let ((_%tl170651170847%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170649170842%_)))
                                          (_%hd170650170845%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170649170842%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170651170847%_))
                                          (_%__match171622171623%_
                                           _%e170643170826%_
                                           _%hd170644170829%_
                                           _%tl170645170831%_
                                           _%e170646170834%_
                                           _%hd170647170837%_
                                           _%tl170648170839%_
                                           _%e170649170842%_
                                           _%hd170650170845%_
                                           _%tl170651170847%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170647170837%_))
                                              (let ((_%e170661170760%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170647170837%_))))
                                                (let ((_%tl170663170765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170661170760%_)))
                                                      (_%hd170662170763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170661170760%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170663170765%_))
                                                      (let ((_%__splice171599171600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl170663170765%_
                        '0))))
                (let ((_%tl170666170770%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171599171600%_ '1)))
                      (_%target170664170768%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171599171600%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170666170770%_))
                      (_%__match171648171649%_
                       _%e170643170826%_
                       _%hd170644170829%_
                       _%tl170645170831%_
                       _%e170646170834%_
                       _%hd170647170837%_
                       _%tl170648170839%_
                       _%e170661170760%_
                       _%hd170662170763%_
                       _%tl170663170765%_
                       _%__splice171599171600%_
                       _%target170664170768%_
                       _%tl170666170770%_)
                      (let () (declare (not safe)) (_%g170639170691%_)))))
              (let () (declare (not safe)) (_%g170639170691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170639170691%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170647170837%_))
                                      (let ((_%e170661170760%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170647170837%_))))
                                        (let ((_%tl170663170765%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170661170760%_)))
                                              (_%hd170662170763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170661170760%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl170663170765%_))
                                              (let ((_%__splice171599171600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl170663170765%_
                                                        '0))))
                                                (let ((_%tl170666170770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171599171600%_
                                                          '1)))
                                                      (_%target170664170768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171599171600%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170666170770%_))
                                                      (_%__match171648171649%_
                                                       _%e170643170826%_
                                                       _%hd170644170829%_
                                                       _%tl170645170831%_
                                                       _%e170646170834%_
                                                       _%hd170647170837%_
                                                       _%tl170648170839%_
                                                       _%e170661170760%_
                                                       _%hd170662170763%_
                                                       _%tl170663170765%_
                                                       _%__splice171599171600%_
                                                       _%target170664170768%_
                                                       _%tl170666170770%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g170639170691%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170639170691%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170639170691%_))))))
                          (let () (declare (not safe)) (_%g170639170691%_)))))
                  (let () (declare (not safe)) (_%g170639170691%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self170593%_ _%stx170594%_)
        (let* ((_%g170596170606%_
                (lambda (_%g170597170603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170597170603%_))))
               (_%g170595170631%_
                (lambda (_%g170597170609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170597170609%_))
                      (let ((_%e170599170611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170597170609%_))))
                        (let ((_%hd170600170614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170599170611%_)))
                              (_%tl170601170616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170599170611%_))))
                          ((lambda (_%g170598170619%_)
                             (let ((_%decls170629%_
                                    (map gx#syntax->datum _%g170598170619%_)))
                               (let ((__tmp173009
                                      (let ((__tmp173010
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp173010
                                         _%decls170629%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp173009))
                               (cons 'declare _%decls170629%_)))
                           _%tl170601170616%_)))
                      (_%g170596170606%_ _%g170597170609%_)))))
          (_%g170595170631%_ _%stx170594%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self170340%_ _%stx170341%_)
        (let* ((_%g170343170360%_
                (lambda (_%g170344170357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170344170357%_))))
               (_%g170342170590%_
                (lambda (_%g170344170363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170344170363%_))
                      (let ((_%e170347170365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170344170363%_))))
                        (let ((_%hd170348170368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170347170365%_)))
                              (_%tl170349170370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170347170365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170349170370%_))
                              (let ((_%e170350170373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170349170370%_))))
                                (let ((_%hd170351170376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170350170373%_)))
                                      (_%tl170352170378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170350170373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170352170378%_))
                                      (let ((_%e170353170381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170352170378%_))))
                                        (let ((_%hd170354170384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170353170381%_)))
                                              (_%tl170355170386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170353170381%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170355170386%_))
                                              ((lambda (_%g170345170389%_
                                                        _%g170346170390%_)
                                                 (let* ((_%__stx171701171702%_
                                                         _%g170346170390%_)
                                                        (_%g170407170421%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171701171702%_)))))
                                                   (let ((_%__kont171703171704%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self170340%_
                                                               _%g170345170389%_))))
                                                         (_%__kont171705171706%_
                                                          (lambda (_%g170413170553%_)
                                                            (let ((_%eid170562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g170413170553%_))))
                      (let ((_%lambda-expr170563170565%_
                             (gxc#apply-find-lambda-expression
                              _%g170345170389%_)))
                        (if _%lambda-expr170563170565%_
                            (let* ((_%lambda-expr170567%_
                                    _%lambda-expr170563170565%_)
                                   (__tmp173011
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp173011
                               _%lambda-expr170567%_
                               _%eid170562%_))
                            '#f))
                      (cons 'define
                            (cons _%eid170562%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self170340%_
                                           _%g170345170389%_))
                                        '()))))))
                 (_%__kont171707171708%_
                  (lambda ()
                    (let* ((_%tmp170428%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body170537%_
                            (let _%lp170430%_ ((_%rest170432%_
                                                _%g170346170390%_)
                                               (_%k170433%_ '0)
                                               (_%r170434%_ '()))
                              (let* ((_%__stx171671171672%_ _%rest170432%_)
                                     (_%g170439170456%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171671171672%_)))))
                                (let ((_%__kont171673171674%_
                                       (lambda (_%g170441170524%_)
                                         (_%lp170430%_
                                          _%g170441170524%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170433%_ '1))
                                          _%r170434%_)))
                                      (_%__kont171675171676%_
                                       (lambda (_%g170446170497%_
                                                _%g170447170498%_)
                                         (_%lp170430%_
                                          _%g170446170497%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170433%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g170447170498%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp170428%_
                           _%k170433%_
                           _%g170446170497%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r170434%_))))
                                      (_%__kont171677171678%_
                                       (lambda (_%g170451170468%_)
                                         (let ((__tmp173012
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g170451170468%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp170428%_
                                 _%k170433%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp173012
                                            _%r170434%_))))
                                      (_%__kont171679171680%_
                                       (lambda () (reverse _%r170434%_))))
                                  (let ((_%g170437170484%_
                                         (lambda ()
                                           (let ((_%g170451170468%_
                                                  _%__stx171671171672%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g170451170468%_))
                                                 (_%__kont171677171678%_
                                                  _%g170451170468%_)
                                                 (_%__kont171679171680%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx171671171672%_))
                                        (let ((_%e170442170513%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx171671171672%_))))
                                          (let ((_%tl170444170518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170442170513%_)))
                                                (_%hd170443170516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170442170513%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd170443170516%_))
                                                (let ((_%e170445170521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd170443170516%_))))
                                                  (if (equal? _%e170445170521%_
                                                              '#f)
                                                      (_%__kont171673171674%_
                                                       _%tl170444170518%_)
                                                      (_%__kont171675171676%_
                                                       _%tl170444170518%_
                                                       _%hd170443170516%_)))
                                                (_%__kont171675171676%_
                                                 _%tl170444170518%_
                                                 _%hd170443170516%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170437170484%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp170428%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self170340%_
                                                       _%g170345170389%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp170428%_
                                         _%g170346170390%_
                                         _%g170345170389%_)
                                        _%body170537%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171701171702%_))
                                                         (let ((_%e170409170574%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171701171702%_))))
                   (let ((_%tl170411170579%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170409170574%_)))
                         (_%hd170410170577%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170409170574%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd170410170577%_))
                         (let ((_%e170412170582%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170410170577%_))))
                           (if (equal? _%e170412170582%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170411170579%_))
                                   (_%__kont171703171704%_)
                                   (_%__kont171707171708%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170411170579%_))
                                   (_%__kont171705171706%_ _%hd170410170577%_)
                                   (_%__kont171707171708%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl170411170579%_))
                             (_%__kont171705171706%_ _%hd170410170577%_)
                             (_%__kont171707171708%_)))))
                 (_%__kont171707171708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd170354170384%_
                                               _%hd170351170376%_)
                                              (_%g170343170360%_
                                               _%g170344170363%_))))
                                      (_%g170343170360%_ _%g170344170363%_))))
                              (_%g170343170360%_ _%g170344170363%_))))
                      (_%g170343170360%_ _%g170344170363%_)))))
          (_%g170342170590%_ _%stx170341%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals170315%_ _%hd170316%_ _%expr170317%_)
        (let ((_%$e170319%_ (gxc#apply-count-values _%expr170317%_)))
          (if _%$e170319%_
              ((lambda (_%count170322%_)
                 (let ((_%len170324%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd170316%_)))
                       (_%cmp170325%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd170316%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len170324%_ '0))
                           (_%cmp170325%_ _%count170322%_ _%len170324%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr170317%_
                          _%hd170316%_)))))
               _%$e170319%_)
              (let* ((_%len170331%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd170316%_)))
                     (_%cmp170333%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd170316%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg170335%_
                      (let ((__tmp173014
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd170316%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp173013 (number->string _%len170331%_)))
                        (declare (not safe))
                        (##string-append __tmp173014 __tmp173013 '" values")))
                     (_%count170337%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd170316%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len170331%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count170337%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals170315%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp170333%_
                                (cons _%count170337%_
                                      (cons _%len170331%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp170333%_
                                                        (cons _%count170337%_
                                                              (cons _%len170331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg170335%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count170337%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var170310%_)
        (letrec ((_%generate-inline170312%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var170310%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var170310%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170312%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170312%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var170303%_ _%i170304%_ _%rest170305%_)
        (letrec ((_%generate-inline170307%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i170304%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest170305%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var170303%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var170303%_
                                                      (cons '0 '())))
                                          (cons _%var170303%_ '()))))
                        (cons '##values-ref
                              (cons _%var170303%_ (cons _%i170304%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170307%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170307%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var170297%_ _%i170298%_)
        (if (let () (declare (not safe)) (##fx= _%i170298%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var170297%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var170297%_ '()))
                                  (cons (cons 'list (cons _%var170297%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var170297%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var170297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var170297%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i170298%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var170297%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var170297%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var170297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var170297%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var170297%_ '()))
                                (cons _%i170298%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var170297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i170298%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self170229%_ _%stx170230%_)
        (let* ((_%g170232170249%_
                (lambda (_%g170233170246%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170233170246%_))))
               (_%g170231170294%_
                (lambda (_%g170233170252%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170233170252%_))
                      (let ((_%e170236170254%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170233170252%_))))
                        (let ((_%hd170237170257%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170236170254%_)))
                              (_%tl170238170259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170236170254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170238170259%_))
                              (let ((_%e170239170262%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170238170259%_))))
                                (let ((_%hd170240170265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170239170262%_)))
                                      (_%tl170241170267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170239170262%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170241170267%_))
                                      (let ((_%e170242170270%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170241170267%_))))
                                        (let ((_%hd170243170273%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170242170270%_)))
                                              (_%tl170244170275%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170242170270%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170244170275%_))
                                              ((lambda (_%g170234170278%_
                                                        _%g170235170279%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self170229%_
                                                  _%g170235170279%_
                                                  _%g170234170278%_))
                                               _%hd170243170273%_
                                               _%hd170240170265%_)
                                              (_%g170232170249%_
                                               _%g170233170252%_))))
                                      (_%g170232170249%_ _%g170233170252%_))))
                              (_%g170232170249%_ _%g170233170252%_))))
                      (_%g170232170249%_ _%g170233170252%_)))))
          (_%g170231170294%_ _%stx170230%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self170188%_ _%hd170189%_ _%body170190%_)
        (let* ((_%hd170192%_ (gxc#generate-runtime-lambda-head _%hd170189%_))
               (_%body170194%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self170188%_ _%body170190%_)))
               (_%body170226%_
                (let* ((_%body170195170203%_ _%body170194%_)
                       (_%else170197170211%_
                        (lambda () (cons _%body170194%_ '())))
                       (_%K170199170216%_
                        (lambda (_%exprs170214%_) _%exprs170214%_)))
                  (if (pair? _%body170195170203%_)
                      (let ((_%hd170200170219%_
                             (let ()
                               (declare (not safe))
                               (##car _%body170195170203%_)))
                            (_%tl170201170221%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body170195170203%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd170200170219%_ 'begin))
                            (let ((_%exprs170224%_ _%tl170201170221%_))
                              (_%K170199170216%_ _%exprs170224%_))
                            (_%else170197170211%_)))
                      (_%else170197170211%_)))))
          (cons 'lambda (cons _%hd170192%_ _%body170226%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd170186%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd170186%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self168743%_ _%stx168744%_)
        (letrec ((_%dispatch-case?168746%_
                  (lambda (_%hd169424%_ _%body169425%_)
                    (let* ((_%form169427%_
                            (cons _%hd169424%_ (cons _%body169425%_ '())))
                           (_%__stx171733171734%_ _%form169427%_)
                           (_%g169432169589%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171733171734%_)))))
                      (let ((_%__kont171735171736%_
                             (lambda (_%g169434170106%_
                                      _%g169435170107%_
                                      _%g169436170108%_)
                               '#t))
                            (_%__kont171741171742%_
                             (lambda (_%g169479169898%_
                                      _%g169480169899%_
                                      _%g169481169900%_
                                      _%g169482169901%_
                                      _%g169483169902%_
                                      _%g169484169903%_)
                               '#t))
                            (_%__kont171747171748%_
                             (lambda (_%g169545169697%_
                                      _%g169546169698%_
                                      _%g169547169699%_
                                      _%g169548169700%_)
                               '#t))
                            (_%__kont171749171750%_ (lambda () '#f)))
                        (let* ((_%__match171874171875%_
                                (lambda (_%e169549169601%_
                                         _%hd169550169604%_
                                         _%tl169551169606%_
                                         _%e169552169609%_
                                         _%hd169553169612%_
                                         _%tl169554169614%_
                                         _%e169555169617%_
                                         _%hd169556169620%_
                                         _%tl169557169622%_
                                         _%e169558169625%_
                                         _%hd169559169628%_
                                         _%tl169560169630%_
                                         _%e169561169633%_
                                         _%hd169562169636%_
                                         _%tl169563169638%_
                                         _%e169564169641%_
                                         _%hd169565169644%_
                                         _%tl169566169646%_
                                         _%e169567169649%_
                                         _%hd169568169652%_
                                         _%tl169569169654%_
                                         _%e169570169657%_
                                         _%hd169571169660%_
                                         _%tl169572169662%_
                                         _%e169573169665%_
                                         _%hd169574169668%_
                                         _%tl169575169670%_
                                         _%e169576169673%_
                                         _%hd169577169676%_
                                         _%tl169578169678%_
                                         _%e169579169681%_
                                         _%hd169580169684%_
                                         _%tl169581169686%_
                                         _%e169582169689%_
                                         _%hd169583169692%_
                                         _%tl169584169694%_)
                                  (let ((_%g169545169697%_ _%hd169583169692%_)
                                        (_%g169546169698%_ _%hd169574169668%_)
                                        (_%g169547169699%_ _%hd169565169644%_)
                                        (_%g169548169700%_ _%hd169550169604%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g169548169700%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g169547169699%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g169548169700%_
                                                _%g169545169697%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g169546169698%_
                                                     _%g169548169700%_))))
                                        (_%__kont171747171748%_
                                         _%g169545169697%_
                                         _%g169546169698%_
                                         _%g169547169699%_
                                         _%g169548169700%_)
                                        (_%__kont171749171750%_)))))
                               (_%__match171846171847%_
                                (lambda (_%e169549169601%_
                                         _%hd169550169604%_
                                         _%tl169551169606%_
                                         _%e169552169609%_
                                         _%hd169553169612%_
                                         _%tl169554169614%_
                                         _%e169555169617%_
                                         _%hd169556169620%_
                                         _%tl169557169622%_
                                         _%e169558169625%_
                                         _%hd169559169628%_
                                         _%tl169560169630%_
                                         _%e169561169633%_
                                         _%hd169562169636%_
                                         _%tl169563169638%_
                                         _%e169564169641%_
                                         _%hd169565169644%_
                                         _%tl169566169646%_
                                         _%e169567169649%_
                                         _%hd169568169652%_
                                         _%tl169569169654%_
                                         _%e169570169657%_
                                         _%hd169571169660%_
                                         _%tl169572169662%_
                                         _%e169573169665%_
                                         _%hd169574169668%_
                                         _%tl169575169670%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169569169654%_))
                                      (let ((_%e169576169673%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169569169654%_))))
                                        (let ((_%tl169578169678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169576169673%_)))
                                              (_%hd169577169676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169576169673%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169577169676%_))
                                              (let ((_%e169579169681%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169577169676%_))))
                                                (let ((_%tl169581169686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169579169681%_)))
                                                      (_%hd169580169684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169579169681%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169580169684%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169580169684%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169581169686%_))
                      (let ((_%e169582169689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169581169686%_))))
                        (let ((_%tl169584169694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169582169689%_)))
                              (_%hd169583169692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169582169689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169584169694%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169578169678%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169554169614%_))
                                      (_%__match171874171875%_
                                       _%e169549169601%_
                                       _%hd169550169604%_
                                       _%tl169551169606%_
                                       _%e169552169609%_
                                       _%hd169553169612%_
                                       _%tl169554169614%_
                                       _%e169555169617%_
                                       _%hd169556169620%_
                                       _%tl169557169622%_
                                       _%e169558169625%_
                                       _%hd169559169628%_
                                       _%tl169560169630%_
                                       _%e169561169633%_
                                       _%hd169562169636%_
                                       _%tl169563169638%_
                                       _%e169564169641%_
                                       _%hd169565169644%_
                                       _%tl169566169646%_
                                       _%e169567169649%_
                                       _%hd169568169652%_
                                       _%tl169569169654%_
                                       _%e169570169657%_
                                       _%hd169571169660%_
                                       _%tl169572169662%_
                                       _%e169573169665%_
                                       _%hd169574169668%_
                                       _%tl169575169670%_
                                       _%e169576169673%_
                                       _%hd169577169676%_
                                       _%tl169578169678%_
                                       _%e169579169681%_
                                       _%hd169580169684%_
                                       _%tl169581169686%_
                                       _%e169582169689%_
                                       _%hd169583169692%_
                                       _%tl169584169694%_)
                                      (_%__kont171749171750%_))
                                  (_%__kont171749171750%_))
                              (_%__kont171749171750%_))))
                      (_%__kont171749171750%_))
                  (_%__kont171749171750%_))
              (_%__kont171749171750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171749171750%_))))
                                      (_%__kont171749171750%_))))
                               (_%__match171776171777%_
                                (lambda (_%e169485169742%_
                                         _%hd169486169745%_
                                         _%tl169487169747%_
                                         _%__splice171743171744%_
                                         _%target169488169750%_
                                         _%tl169490169752%_)
                                  (letrec ((_%loop169491169755%_
                                            (lambda (_%hd169489169758%_
                                                     _%arg169495169760%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169489169758%_))
                                                  (let ((_%e169492169762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169489169758%_))))
                                                    (let ((_%lp-tl169494169767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169492169762%_)))
                                                          (_%lp-hd169493169765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169492169762%_))))
                                                      (_%loop169491169755%_
                                                       _%lp-tl169494169767%_
                                                       (cons _%lp-hd169493169765%_
                                                             _%arg169495169760%_))))
                                                  (let ((_%arg169496169770%_
                                                         (reverse _%arg169495169760%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169487169747%_))
                                                        (let ((_%e169497169772%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169487169747%_))))
                  (let ((_%tl169499169777%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169497169772%_)))
                        (_%hd169498169775%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169497169772%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169498169775%_))
                        (let ((_%e169500169780%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169498169775%_))))
                          (let ((_%tl169502169785%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169500169780%_)))
                                (_%hd169501169783%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169500169780%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169501169783%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169501169783%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169502169785%_))
                                        (let ((_%e169503169788%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169502169785%_))))
                                          (let ((_%tl169505169793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169503169788%_)))
                                                (_%hd169504169791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169503169788%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169504169791%_))
                                                (let ((_%e169506169796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169504169791%_))))
                                                  (let ((_%tl169508169801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169506169796%_)))
                                                        (_%hd169507169799%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169506169796%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169507169799%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169507169799%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169508169801%_))
                        (let ((_%e169509169804%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169508169801%_))))
                          (let ((_%tl169511169809%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169509169804%_)))
                                (_%hd169510169807%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169509169804%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169511169809%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169505169793%_))
                                    (let ((_%e169512169812%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169505169793%_))))
                                      (let ((_%tl169514169817%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169512169812%_)))
                                            (_%hd169513169815%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169512169812%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169513169815%_))
                                            (let ((_%e169515169820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169513169815%_))))
                                              (let ((_%tl169517169825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169515169820%_)))
                                                    (_%hd169516169823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169515169820%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169516169823%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169516169823%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169517169825%_))
                                                            (let ((_%e169518169828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169517169825%_))))
                      (let ((_%tl169520169833%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169518169828%_)))
                            (_%hd169519169831%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169518169828%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169520169833%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169514169817%_))
                                (if (let ((__tmp173015
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl169514169817%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp173015 '1))
                                    (let ((_%__splice171745171746%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169514169817%_
                                              '1))))
                                      (let ((_%tl169523169838%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171745171746%_
                                                '1)))
                                            (_%target169521169836%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171745171746%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169523169838%_))
                                            (let ((_%e169530169841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169523169838%_))))
                                              (let ((_%tl169532169846%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169530169841%_)))
                                                    (_%hd169531169844%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169530169841%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169531169844%_))
                                                    (let ((_%e169533169849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169531169844%_))))
                                                      (let ((_%tl169535169854%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169533169849%_)))
                    (_%hd169534169852%_
                     (let () (declare (not safe)) (##car _%e169533169849%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169534169852%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd169534169852%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169535169854%_))
                            (let ((_%e169536169857%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169535169854%_))))
                              (let ((_%tl169538169862%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169536169857%_)))
                                    (_%hd169537169860%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169536169857%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169538169862%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169532169846%_))
                                        (letrec ((_%loop169524169865%_
                                                  (lambda (_%hd169522169868%_
                                                           _%xarg169528169870%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd169522169868%_))
                                                        (let ((_%e169525169872%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd169522169868%_))))
                  (let ((_%lp-tl169527169877%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169525169872%_)))
                        (_%lp-hd169526169875%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169525169872%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd169526169875%_))
                        (let ((_%e169539169880%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd169526169875%_))))
                          (let ((_%tl169541169885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169539169880%_)))
                                (_%hd169540169883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169539169880%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169540169883%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd169540169883%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169541169885%_))
                                        (let ((_%e169542169888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169541169885%_))))
                                          (let ((_%tl169544169893%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169542169888%_)))
                                                (_%hd169543169891%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169542169888%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169544169893%_))
                                                (_%loop169524169865%_
                                                 _%lp-tl169527169877%_
                                                 (cons _%hd169543169891%_
                                                       _%xarg169528169870%_))
                                                (_%__match171846171847%_
                                                 _%e169485169742%_
                                                 _%hd169486169745%_
                                                 _%tl169487169747%_
                                                 _%e169497169772%_
                                                 _%hd169498169775%_
                                                 _%tl169499169777%_
                                                 _%e169500169780%_
                                                 _%hd169501169783%_
                                                 _%tl169502169785%_
                                                 _%e169503169788%_
                                                 _%hd169504169791%_
                                                 _%tl169505169793%_
                                                 _%e169506169796%_
                                                 _%hd169507169799%_
                                                 _%tl169508169801%_
                                                 _%e169509169804%_
                                                 _%hd169510169807%_
                                                 _%tl169511169809%_
                                                 _%e169512169812%_
                                                 _%hd169513169815%_
                                                 _%tl169514169817%_
                                                 _%e169515169820%_
                                                 _%hd169516169823%_
                                                 _%tl169517169825%_
                                                 _%e169518169828%_
                                                 _%hd169519169831%_
                                                 _%tl169520169833%_))))
                                        (_%__match171846171847%_
                                         _%e169485169742%_
                                         _%hd169486169745%_
                                         _%tl169487169747%_
                                         _%e169497169772%_
                                         _%hd169498169775%_
                                         _%tl169499169777%_
                                         _%e169500169780%_
                                         _%hd169501169783%_
                                         _%tl169502169785%_
                                         _%e169503169788%_
                                         _%hd169504169791%_
                                         _%tl169505169793%_
                                         _%e169506169796%_
                                         _%hd169507169799%_
                                         _%tl169508169801%_
                                         _%e169509169804%_
                                         _%hd169510169807%_
                                         _%tl169511169809%_
                                         _%e169512169812%_
                                         _%hd169513169815%_
                                         _%tl169514169817%_
                                         _%e169515169820%_
                                         _%hd169516169823%_
                                         _%tl169517169825%_
                                         _%e169518169828%_
                                         _%hd169519169831%_
                                         _%tl169520169833%_))
                                    (_%__match171846171847%_
                                     _%e169485169742%_
                                     _%hd169486169745%_
                                     _%tl169487169747%_
                                     _%e169497169772%_
                                     _%hd169498169775%_
                                     _%tl169499169777%_
                                     _%e169500169780%_
                                     _%hd169501169783%_
                                     _%tl169502169785%_
                                     _%e169503169788%_
                                     _%hd169504169791%_
                                     _%tl169505169793%_
                                     _%e169506169796%_
                                     _%hd169507169799%_
                                     _%tl169508169801%_
                                     _%e169509169804%_
                                     _%hd169510169807%_
                                     _%tl169511169809%_
                                     _%e169512169812%_
                                     _%hd169513169815%_
                                     _%tl169514169817%_
                                     _%e169515169820%_
                                     _%hd169516169823%_
                                     _%tl169517169825%_
                                     _%e169518169828%_
                                     _%hd169519169831%_
                                     _%tl169520169833%_))
                                (_%__match171846171847%_
                                 _%e169485169742%_
                                 _%hd169486169745%_
                                 _%tl169487169747%_
                                 _%e169497169772%_
                                 _%hd169498169775%_
                                 _%tl169499169777%_
                                 _%e169500169780%_
                                 _%hd169501169783%_
                                 _%tl169502169785%_
                                 _%e169503169788%_
                                 _%hd169504169791%_
                                 _%tl169505169793%_
                                 _%e169506169796%_
                                 _%hd169507169799%_
                                 _%tl169508169801%_
                                 _%e169509169804%_
                                 _%hd169510169807%_
                                 _%tl169511169809%_
                                 _%e169512169812%_
                                 _%hd169513169815%_
                                 _%tl169514169817%_
                                 _%e169515169820%_
                                 _%hd169516169823%_
                                 _%tl169517169825%_
                                 _%e169518169828%_
                                 _%hd169519169831%_
                                 _%tl169520169833%_))))
                        (_%__match171846171847%_
                         _%e169485169742%_
                         _%hd169486169745%_
                         _%tl169487169747%_
                         _%e169497169772%_
                         _%hd169498169775%_
                         _%tl169499169777%_
                         _%e169500169780%_
                         _%hd169501169783%_
                         _%tl169502169785%_
                         _%e169503169788%_
                         _%hd169504169791%_
                         _%tl169505169793%_
                         _%e169506169796%_
                         _%hd169507169799%_
                         _%tl169508169801%_
                         _%e169509169804%_
                         _%hd169510169807%_
                         _%tl169511169809%_
                         _%e169512169812%_
                         _%hd169513169815%_
                         _%tl169514169817%_
                         _%e169515169820%_
                         _%hd169516169823%_
                         _%tl169517169825%_
                         _%e169518169828%_
                         _%hd169519169831%_
                         _%tl169520169833%_))))
                (let ((_%xarg169529169896%_ (reverse _%xarg169528169870%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169499169777%_))
                      (let ((_%g169479169898%_ _%hd169537169860%_)
                            (_%g169480169899%_ _%xarg169529169896%_)
                            (_%g169481169900%_ _%hd169519169831%_)
                            (_%g169482169901%_ _%hd169510169807%_)
                            (_%g169483169902%_ _%tl169490169752%_)
                            (_%g169484169903%_ _%arg169496169770%_))
                        (if (and (let ((__tmp173016
                                        (let ((__tmp173017
                                               (lambda (_%g169946169949%_
                                                        _%g169947169951%_)
                                                 (cons _%g169946169949%_
                                                       _%g169947169951%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173017
                                           '()
                                           _%g169484169903%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp173016))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g169483169902%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g169482169901%_
                                    'apply))
                                 (let ((__tmp173020
                                        (length (let ((__tmp173021
                                                       (lambda (_%g169953169956%_
                                                                _%g169954169958%_)
                                                         (cons _%g169953169956%_
                                                               _%g169954169958%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp173021
                                                   '()
                                                   _%g169484169903%_))))
                                       (__tmp173018
                                        (length (let ((__tmp173019
                                                       (lambda (_%g169960169963%_
                                                                _%g169961169965%_)
                                                         (cons _%g169960169963%_
                                                               _%g169961169965%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp173019
                                                   '()
                                                   _%g169480169899%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp173020 __tmp173018))
                                 (let ((__tmp173024
                                        (let ((__tmp173025
                                               (lambda (_%g169967169970%_
                                                        _%g169968169972%_)
                                                 (cons _%g169967169970%_
                                                       _%g169968169972%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173025
                                           '()
                                           _%g169484169903%_)))
                                       (__tmp173022
                                        (let ((__tmp173023
                                               (lambda (_%g169974169977%_
                                                        _%g169975169979%_)
                                                 (cons _%g169974169977%_
                                                       _%g169975169979%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173023
                                           '()
                                           _%g169480169899%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp173024
                                    __tmp173022))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g169483169902%_
                                    _%g169479169898%_))
                                 (not (let ((__tmp173029
                                             (lambda (_%g169981169983%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g169981169983%_
                                                  _%g169481169900%_))))
                                            (__tmp173026
                                             (let ((__tmp173028
                                                    (lambda (_%g169985169988%_
                                                             _%g169986169990%_)
                                                      (cons _%g169985169988%_
                                                            _%g169986169990%_)))
                                                   (__tmp173027
                                                    (cons _%g169483169902%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173028
                                                __tmp173027
                                                _%g169484169903%_))))
                                        (declare (not safe))
                                        (__find __tmp173029 __tmp173026))))
                            (_%__kont171741171742%_
                             _%g169479169898%_
                             _%g169480169899%_
                             _%g169481169900%_
                             _%g169482169901%_
                             _%g169483169902%_
                             _%g169484169903%_)
                            (_%__match171846171847%_
                             _%e169485169742%_
                             _%hd169486169745%_
                             _%tl169487169747%_
                             _%e169497169772%_
                             _%hd169498169775%_
                             _%tl169499169777%_
                             _%e169500169780%_
                             _%hd169501169783%_
                             _%tl169502169785%_
                             _%e169503169788%_
                             _%hd169504169791%_
                             _%tl169505169793%_
                             _%e169506169796%_
                             _%hd169507169799%_
                             _%tl169508169801%_
                             _%e169509169804%_
                             _%hd169510169807%_
                             _%tl169511169809%_
                             _%e169512169812%_
                             _%hd169513169815%_
                             _%tl169514169817%_
                             _%e169515169820%_
                             _%hd169516169823%_
                             _%tl169517169825%_
                             _%e169518169828%_
                             _%hd169519169831%_
                             _%tl169520169833%_)))
                      (_%__match171846171847%_
                       _%e169485169742%_
                       _%hd169486169745%_
                       _%tl169487169747%_
                       _%e169497169772%_
                       _%hd169498169775%_
                       _%tl169499169777%_
                       _%e169500169780%_
                       _%hd169501169783%_
                       _%tl169502169785%_
                       _%e169503169788%_
                       _%hd169504169791%_
                       _%tl169505169793%_
                       _%e169506169796%_
                       _%hd169507169799%_
                       _%tl169508169801%_
                       _%e169509169804%_
                       _%hd169510169807%_
                       _%tl169511169809%_
                       _%e169512169812%_
                       _%hd169513169815%_
                       _%tl169514169817%_
                       _%e169515169820%_
                       _%hd169516169823%_
                       _%tl169517169825%_
                       _%e169518169828%_
                       _%hd169519169831%_
                       _%tl169520169833%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop169524169865%_
                                           _%target169521169836%_
                                           '()))
                                        (_%__match171846171847%_
                                         _%e169485169742%_
                                         _%hd169486169745%_
                                         _%tl169487169747%_
                                         _%e169497169772%_
                                         _%hd169498169775%_
                                         _%tl169499169777%_
                                         _%e169500169780%_
                                         _%hd169501169783%_
                                         _%tl169502169785%_
                                         _%e169503169788%_
                                         _%hd169504169791%_
                                         _%tl169505169793%_
                                         _%e169506169796%_
                                         _%hd169507169799%_
                                         _%tl169508169801%_
                                         _%e169509169804%_
                                         _%hd169510169807%_
                                         _%tl169511169809%_
                                         _%e169512169812%_
                                         _%hd169513169815%_
                                         _%tl169514169817%_
                                         _%e169515169820%_
                                         _%hd169516169823%_
                                         _%tl169517169825%_
                                         _%e169518169828%_
                                         _%hd169519169831%_
                                         _%tl169520169833%_))
                                    (_%__match171846171847%_
                                     _%e169485169742%_
                                     _%hd169486169745%_
                                     _%tl169487169747%_
                                     _%e169497169772%_
                                     _%hd169498169775%_
                                     _%tl169499169777%_
                                     _%e169500169780%_
                                     _%hd169501169783%_
                                     _%tl169502169785%_
                                     _%e169503169788%_
                                     _%hd169504169791%_
                                     _%tl169505169793%_
                                     _%e169506169796%_
                                     _%hd169507169799%_
                                     _%tl169508169801%_
                                     _%e169509169804%_
                                     _%hd169510169807%_
                                     _%tl169511169809%_
                                     _%e169512169812%_
                                     _%hd169513169815%_
                                     _%tl169514169817%_
                                     _%e169515169820%_
                                     _%hd169516169823%_
                                     _%tl169517169825%_
                                     _%e169518169828%_
                                     _%hd169519169831%_
                                     _%tl169520169833%_))))
                            (_%__match171846171847%_
                             _%e169485169742%_
                             _%hd169486169745%_
                             _%tl169487169747%_
                             _%e169497169772%_
                             _%hd169498169775%_
                             _%tl169499169777%_
                             _%e169500169780%_
                             _%hd169501169783%_
                             _%tl169502169785%_
                             _%e169503169788%_
                             _%hd169504169791%_
                             _%tl169505169793%_
                             _%e169506169796%_
                             _%hd169507169799%_
                             _%tl169508169801%_
                             _%e169509169804%_
                             _%hd169510169807%_
                             _%tl169511169809%_
                             _%e169512169812%_
                             _%hd169513169815%_
                             _%tl169514169817%_
                             _%e169515169820%_
                             _%hd169516169823%_
                             _%tl169517169825%_
                             _%e169518169828%_
                             _%hd169519169831%_
                             _%tl169520169833%_))
                        (_%__match171846171847%_
                         _%e169485169742%_
                         _%hd169486169745%_
                         _%tl169487169747%_
                         _%e169497169772%_
                         _%hd169498169775%_
                         _%tl169499169777%_
                         _%e169500169780%_
                         _%hd169501169783%_
                         _%tl169502169785%_
                         _%e169503169788%_
                         _%hd169504169791%_
                         _%tl169505169793%_
                         _%e169506169796%_
                         _%hd169507169799%_
                         _%tl169508169801%_
                         _%e169509169804%_
                         _%hd169510169807%_
                         _%tl169511169809%_
                         _%e169512169812%_
                         _%hd169513169815%_
                         _%tl169514169817%_
                         _%e169515169820%_
                         _%hd169516169823%_
                         _%tl169517169825%_
                         _%e169518169828%_
                         _%hd169519169831%_
                         _%tl169520169833%_))
                    (_%__match171846171847%_
                     _%e169485169742%_
                     _%hd169486169745%_
                     _%tl169487169747%_
                     _%e169497169772%_
                     _%hd169498169775%_
                     _%tl169499169777%_
                     _%e169500169780%_
                     _%hd169501169783%_
                     _%tl169502169785%_
                     _%e169503169788%_
                     _%hd169504169791%_
                     _%tl169505169793%_
                     _%e169506169796%_
                     _%hd169507169799%_
                     _%tl169508169801%_
                     _%e169509169804%_
                     _%hd169510169807%_
                     _%tl169511169809%_
                     _%e169512169812%_
                     _%hd169513169815%_
                     _%tl169514169817%_
                     _%e169515169820%_
                     _%hd169516169823%_
                     _%tl169517169825%_
                     _%e169518169828%_
                     _%hd169519169831%_
                     _%tl169520169833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171846171847%_
                                                     _%e169485169742%_
                                                     _%hd169486169745%_
                                                     _%tl169487169747%_
                                                     _%e169497169772%_
                                                     _%hd169498169775%_
                                                     _%tl169499169777%_
                                                     _%e169500169780%_
                                                     _%hd169501169783%_
                                                     _%tl169502169785%_
                                                     _%e169503169788%_
                                                     _%hd169504169791%_
                                                     _%tl169505169793%_
                                                     _%e169506169796%_
                                                     _%hd169507169799%_
                                                     _%tl169508169801%_
                                                     _%e169509169804%_
                                                     _%hd169510169807%_
                                                     _%tl169511169809%_
                                                     _%e169512169812%_
                                                     _%hd169513169815%_
                                                     _%tl169514169817%_
                                                     _%e169515169820%_
                                                     _%hd169516169823%_
                                                     _%tl169517169825%_
                                                     _%e169518169828%_
                                                     _%hd169519169831%_
                                                     _%tl169520169833%_))))
                                            (_%__match171846171847%_
                                             _%e169485169742%_
                                             _%hd169486169745%_
                                             _%tl169487169747%_
                                             _%e169497169772%_
                                             _%hd169498169775%_
                                             _%tl169499169777%_
                                             _%e169500169780%_
                                             _%hd169501169783%_
                                             _%tl169502169785%_
                                             _%e169503169788%_
                                             _%hd169504169791%_
                                             _%tl169505169793%_
                                             _%e169506169796%_
                                             _%hd169507169799%_
                                             _%tl169508169801%_
                                             _%e169509169804%_
                                             _%hd169510169807%_
                                             _%tl169511169809%_
                                             _%e169512169812%_
                                             _%hd169513169815%_
                                             _%tl169514169817%_
                                             _%e169515169820%_
                                             _%hd169516169823%_
                                             _%tl169517169825%_
                                             _%e169518169828%_
                                             _%hd169519169831%_
                                             _%tl169520169833%_))))
                                    (_%__match171846171847%_
                                     _%e169485169742%_
                                     _%hd169486169745%_
                                     _%tl169487169747%_
                                     _%e169497169772%_
                                     _%hd169498169775%_
                                     _%tl169499169777%_
                                     _%e169500169780%_
                                     _%hd169501169783%_
                                     _%tl169502169785%_
                                     _%e169503169788%_
                                     _%hd169504169791%_
                                     _%tl169505169793%_
                                     _%e169506169796%_
                                     _%hd169507169799%_
                                     _%tl169508169801%_
                                     _%e169509169804%_
                                     _%hd169510169807%_
                                     _%tl169511169809%_
                                     _%e169512169812%_
                                     _%hd169513169815%_
                                     _%tl169514169817%_
                                     _%e169515169820%_
                                     _%hd169516169823%_
                                     _%tl169517169825%_
                                     _%e169518169828%_
                                     _%hd169519169831%_
                                     _%tl169520169833%_))
                                (_%__match171846171847%_
                                 _%e169485169742%_
                                 _%hd169486169745%_
                                 _%tl169487169747%_
                                 _%e169497169772%_
                                 _%hd169498169775%_
                                 _%tl169499169777%_
                                 _%e169500169780%_
                                 _%hd169501169783%_
                                 _%tl169502169785%_
                                 _%e169503169788%_
                                 _%hd169504169791%_
                                 _%tl169505169793%_
                                 _%e169506169796%_
                                 _%hd169507169799%_
                                 _%tl169508169801%_
                                 _%e169509169804%_
                                 _%hd169510169807%_
                                 _%tl169511169809%_
                                 _%e169512169812%_
                                 _%hd169513169815%_
                                 _%tl169514169817%_
                                 _%e169515169820%_
                                 _%hd169516169823%_
                                 _%tl169517169825%_
                                 _%e169518169828%_
                                 _%hd169519169831%_
                                 _%tl169520169833%_))
                            (_%__kont171749171750%_))))
                    (_%__kont171749171750%_))
                (_%__kont171749171750%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171749171750%_))))
                                            (_%__kont171749171750%_))))
                                    (_%__kont171749171750%_))
                                (_%__kont171749171750%_))))
                        (_%__kont171749171750%_))
                    (_%__kont171749171750%_))
                (_%__kont171749171750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171749171750%_))))
                                        (_%__kont171749171750%_))
                                    (_%__kont171749171750%_))
                                (_%__kont171749171750%_))))
                        (_%__kont171749171750%_))))
                (_%__kont171749171750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169491169755%_
                                     _%target169488169750%_
                                     '()))))
                               (_%__match171764171765%_
                                (lambda (_%e169437169998%_
                                         _%hd169438170001%_
                                         _%tl169439170003%_
                                         _%__splice171737171738%_
                                         _%target169440170006%_
                                         _%tl169442170008%_)
                                  (letrec ((_%loop169443170011%_
                                            (lambda (_%hd169441170014%_
                                                     _%arg169447170016%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169441170014%_))
                                                  (let ((_%e169444170018%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169441170014%_))))
                                                    (let ((_%lp-tl169446170023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169444170018%_)))
                                                          (_%lp-hd169445170021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169444170018%_))))
                                                      (_%loop169443170011%_
                                                       _%lp-tl169446170023%_
                                                       (cons _%lp-hd169445170021%_
                                                             _%arg169447170016%_))))
                                                  (let ((_%arg169448170026%_
                                                         (reverse _%arg169447170016%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169439170003%_))
                                                        (let ((_%e169449170028%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169439170003%_))))
                  (let ((_%tl169451170033%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169449170028%_)))
                        (_%hd169450170031%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169449170028%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169450170031%_))
                        (let ((_%e169452170036%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169450170031%_))))
                          (let ((_%tl169454170041%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169452170036%_)))
                                (_%hd169453170039%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169452170036%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169453170039%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169453170039%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169454170041%_))
                                        (let ((_%e169455170044%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169454170041%_))))
                                          (let ((_%tl169457170049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169455170044%_)))
                                                (_%hd169456170047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169455170044%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169456170047%_))
                                                (let ((_%e169458170052%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169456170047%_))))
                                                  (let ((_%tl169460170057%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169458170052%_)))
                                                        (_%hd169459170055%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169458170052%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169459170055%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169459170055%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169460170057%_))
                        (let ((_%e169461170060%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169460170057%_))))
                          (let ((_%tl169463170065%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169461170060%_)))
                                (_%hd169462170063%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169461170060%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169463170065%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169457170049%_))
                                    (let ((_%__splice171739171740%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169457170049%_
                                              '0))))
                                      (let ((_%tl169466170070%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171739171740%_
                                                '1)))
                                            (_%target169464170068%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171739171740%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169466170070%_))
                                            (letrec ((_%loop169467170073%_
                                                      (lambda (_%hd169465170076%_
                                                               _%xarg169471170078%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd169465170076%_))
                                                            (let ((_%e169468170080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169465170076%_))))
                      (let ((_%lp-tl169470170085%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169468170080%_)))
                            (_%lp-hd169469170083%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169468170080%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd169469170083%_))
                            (let ((_%e169473170088%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd169469170083%_))))
                              (let ((_%tl169475170093%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169473170088%_)))
                                    (_%hd169474170091%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169473170088%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169474170091%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd169474170091%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169475170093%_))
                                            (let ((_%e169476170096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169475170093%_))))
                                              (let ((_%tl169478170101%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169476170096%_)))
                                                    (_%hd169477170099%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169476170096%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169478170101%_))
                                                    (_%loop169467170073%_
                                                     _%lp-tl169470170085%_
                                                     (cons _%hd169477170099%_
                                                           _%xarg169471170078%_))
                                                    (_%__match171776171777%_
                                                     _%e169437169998%_
                                                     _%hd169438170001%_
                                                     _%tl169439170003%_
                                                     _%__splice171737171738%_
                                                     _%target169440170006%_
                                                     _%tl169442170008%_))))
                                            (_%__match171776171777%_
                                             _%e169437169998%_
                                             _%hd169438170001%_
                                             _%tl169439170003%_
                                             _%__splice171737171738%_
                                             _%target169440170006%_
                                             _%tl169442170008%_))
                                        (_%__match171776171777%_
                                         _%e169437169998%_
                                         _%hd169438170001%_
                                         _%tl169439170003%_
                                         _%__splice171737171738%_
                                         _%target169440170006%_
                                         _%tl169442170008%_))
                                    (_%__match171776171777%_
                                     _%e169437169998%_
                                     _%hd169438170001%_
                                     _%tl169439170003%_
                                     _%__splice171737171738%_
                                     _%target169440170006%_
                                     _%tl169442170008%_))))
                            (_%__match171776171777%_
                             _%e169437169998%_
                             _%hd169438170001%_
                             _%tl169439170003%_
                             _%__splice171737171738%_
                             _%target169440170006%_
                             _%tl169442170008%_))))
                    (let ((_%xarg169472170104%_
                           (reverse _%xarg169471170078%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169451170033%_))
                          (let ((_%g169434170106%_ _%xarg169472170104%_)
                                (_%g169435170107%_ _%hd169462170063%_)
                                (_%g169436170108%_ _%arg169448170026%_))
                            (if (and (let ((__tmp173030
                                            (let ((__tmp173031
                                                   (lambda (_%g170136170139%_
                                                            _%g170137170141%_)
                                                     (cons _%g170136170139%_
                                                           _%g170137170141%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173031
                                               '()
                                               _%g169436170108%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp173030))
                                     (let ((__tmp173034
                                            (length (let ((__tmp173035
                                                           (lambda (_%g170143170146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170144170148%_)
                     (cons _%g170143170146%_ _%g170144170148%_))))
              (declare (not safe))
              (__foldr1 __tmp173035 '() _%g169436170108%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp173032
                                            (length (let ((__tmp173033
                                                           (lambda (_%g170150170153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170151170155%_)
                     (cons _%g170150170153%_ _%g170151170155%_))))
              (declare (not safe))
              (__foldr1 __tmp173033 '() _%g169434170106%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173034 __tmp173032))
                                     (let ((__tmp173038
                                            (let ((__tmp173039
                                                   (lambda (_%g170157170160%_
                                                            _%g170158170162%_)
                                                     (cons _%g170157170160%_
                                                           _%g170158170162%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173039
                                               '()
                                               _%g169436170108%_)))
                                           (__tmp173036
                                            (let ((__tmp173037
                                                   (lambda (_%g170164170167%_
                                                            _%g170165170169%_)
                                                     (cons _%g170164170167%_
                                                           _%g170165170169%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173037
                                               '()
                                               _%g169434170106%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp173038
                                        __tmp173036))
                                     (not (let ((__tmp173042
                                                 (lambda (_%g170171170173%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g170171170173%_
                                                      _%g169435170107%_))))
                                                (__tmp173040
                                                 (let ((__tmp173041
                                                        (lambda (_%g170175170178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170176170180%_)
                  (cons _%g170175170178%_ _%g170176170180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp173041
                                                    '()
                                                    _%g169436170108%_))))
                                            (declare (not safe))
                                            (__find __tmp173042 __tmp173040))))
                                (_%__kont171735171736%_
                                 _%g169434170106%_
                                 _%g169435170107%_
                                 _%g169436170108%_)
                                (_%__match171776171777%_
                                 _%e169437169998%_
                                 _%hd169438170001%_
                                 _%tl169439170003%_
                                 _%__splice171737171738%_
                                 _%target169440170006%_
                                 _%tl169442170008%_)))
                          (_%__match171776171777%_
                           _%e169437169998%_
                           _%hd169438170001%_
                           _%tl169439170003%_
                           _%__splice171737171738%_
                           _%target169440170006%_
                           _%tl169442170008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop169467170073%_
                                               _%target169464170068%_
                                               '()))
                                            (_%__match171776171777%_
                                             _%e169437169998%_
                                             _%hd169438170001%_
                                             _%tl169439170003%_
                                             _%__splice171737171738%_
                                             _%target169440170006%_
                                             _%tl169442170008%_))))
                                    (_%__match171776171777%_
                                     _%e169437169998%_
                                     _%hd169438170001%_
                                     _%tl169439170003%_
                                     _%__splice171737171738%_
                                     _%target169440170006%_
                                     _%tl169442170008%_))
                                (_%__match171776171777%_
                                 _%e169437169998%_
                                 _%hd169438170001%_
                                 _%tl169439170003%_
                                 _%__splice171737171738%_
                                 _%target169440170006%_
                                 _%tl169442170008%_))))
                        (_%__match171776171777%_
                         _%e169437169998%_
                         _%hd169438170001%_
                         _%tl169439170003%_
                         _%__splice171737171738%_
                         _%target169440170006%_
                         _%tl169442170008%_))
                    (_%__match171776171777%_
                     _%e169437169998%_
                     _%hd169438170001%_
                     _%tl169439170003%_
                     _%__splice171737171738%_
                     _%target169440170006%_
                     _%tl169442170008%_))
                (_%__match171776171777%_
                 _%e169437169998%_
                 _%hd169438170001%_
                 _%tl169439170003%_
                 _%__splice171737171738%_
                 _%target169440170006%_
                 _%tl169442170008%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171776171777%_
                                                 _%e169437169998%_
                                                 _%hd169438170001%_
                                                 _%tl169439170003%_
                                                 _%__splice171737171738%_
                                                 _%target169440170006%_
                                                 _%tl169442170008%_))))
                                        (_%__match171776171777%_
                                         _%e169437169998%_
                                         _%hd169438170001%_
                                         _%tl169439170003%_
                                         _%__splice171737171738%_
                                         _%target169440170006%_
                                         _%tl169442170008%_))
                                    (_%__match171776171777%_
                                     _%e169437169998%_
                                     _%hd169438170001%_
                                     _%tl169439170003%_
                                     _%__splice171737171738%_
                                     _%target169440170006%_
                                     _%tl169442170008%_))
                                (_%__match171776171777%_
                                 _%e169437169998%_
                                 _%hd169438170001%_
                                 _%tl169439170003%_
                                 _%__splice171737171738%_
                                 _%target169440170006%_
                                 _%tl169442170008%_))))
                        (_%__match171776171777%_
                         _%e169437169998%_
                         _%hd169438170001%_
                         _%tl169439170003%_
                         _%__splice171737171738%_
                         _%target169440170006%_
                         _%tl169442170008%_))))
                (_%__match171776171777%_
                 _%e169437169998%_
                 _%hd169438170001%_
                 _%tl169439170003%_
                 _%__splice171737171738%_
                 _%target169440170006%_
                 _%tl169442170008%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169443170011%_
                                     _%target169440170006%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171733171734%_))
                              (let ((_%e169437169998%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171733171734%_))))
                                (let ((_%tl169439170003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169437169998%_)))
                                      (_%hd169438170001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169437169998%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd169438170001%_))
                                      (let ((_%__splice171737171738%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd169438170001%_
                                                '0))))
                                        (let ((_%tl169442170008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171737171738%_
                                                  '1)))
                                              (_%target169440170006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171737171738%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169442170008%_))
                                              (_%__match171764171765%_
                                               _%e169437169998%_
                                               _%hd169438170001%_
                                               _%tl169439170003%_
                                               _%__splice171737171738%_
                                               _%target169440170006%_
                                               _%tl169442170008%_)
                                              (_%__match171776171777%_
                                               _%e169437169998%_
                                               _%hd169438170001%_
                                               _%tl169439170003%_
                                               _%__splice171737171738%_
                                               _%target169440170006%_
                                               _%tl169442170008%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169439170003%_))
                                          (let ((_%e169552169609%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169439170003%_))))
                                            (let ((_%tl169554169614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169552169609%_)))
                                                  (_%hd169553169612%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169552169609%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169553169612%_))
                                                  (let ((_%e169555169617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169553169612%_))))
                                                    (let ((_%tl169557169622%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169555169617%_)))
                                                          (_%hd169556169620%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169555169617%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169556169620%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169556169620%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169557169622%_))
                          (let ((_%e169558169625%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169557169622%_))))
                            (let ((_%tl169560169630%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169558169625%_)))
                                  (_%hd169559169628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169558169625%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169559169628%_))
                                  (let ((_%e169561169633%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169559169628%_))))
                                    (let ((_%tl169563169638%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169561169633%_)))
                                          (_%hd169562169636%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169561169633%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169562169636%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169562169636%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169563169638%_))
                                                  (let ((_%e169564169641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169563169638%_))))
                                                    (let ((_%tl169566169646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169564169641%_)))
                                                          (_%hd169565169644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169564169641%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169566169646%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169560169630%_))
                      (let ((_%e169567169649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169560169630%_))))
                        (let ((_%tl169569169654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169567169649%_)))
                              (_%hd169568169652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169567169649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169568169652%_))
                              (let ((_%e169570169657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169568169652%_))))
                                (let ((_%tl169572169662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169570169657%_)))
                                      (_%hd169571169660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169570169657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169571169660%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169571169660%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169572169662%_))
                                              (let ((_%e169573169665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169572169662%_))))
                                                (let ((_%tl169575169670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169573169665%_)))
                                                      (_%hd169574169668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169573169665%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169575169670%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169569169654%_))
                                                          (let ((_%e169576169673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169569169654%_))))
                    (let ((_%tl169578169678%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169576169673%_)))
                          (_%hd169577169676%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169576169673%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169577169676%_))
                          (let ((_%e169579169681%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169577169676%_))))
                            (let ((_%tl169581169686%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169579169681%_)))
                                  (_%hd169580169684%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169579169681%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169580169684%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd169580169684%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169581169686%_))
                                          (let ((_%e169582169689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169581169686%_))))
                                            (let ((_%tl169584169694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169582169689%_)))
                                                  (_%hd169583169692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169582169689%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169584169694%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169578169678%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169554169614%_))
                                                          (_%__match171874171875%_
                                                           _%e169437169998%_
                                                           _%hd169438170001%_
                                                           _%tl169439170003%_
                                                           _%e169552169609%_
                                                           _%hd169553169612%_
                                                           _%tl169554169614%_
                                                           _%e169555169617%_
                                                           _%hd169556169620%_
                                                           _%tl169557169622%_
                                                           _%e169558169625%_
                                                           _%hd169559169628%_
                                                           _%tl169560169630%_
                                                           _%e169561169633%_
                                                           _%hd169562169636%_
                                                           _%tl169563169638%_
                                                           _%e169564169641%_
                                                           _%hd169565169644%_
                                                           _%tl169566169646%_
                                                           _%e169567169649%_
                                                           _%hd169568169652%_
                                                           _%tl169569169654%_
                                                           _%e169570169657%_
                                                           _%hd169571169660%_
                                                           _%tl169572169662%_
                                                           _%e169573169665%_
                                                           _%hd169574169668%_
                                                           _%tl169575169670%_
                                                           _%e169576169673%_
                                                           _%hd169577169676%_
                                                           _%tl169578169678%_
                                                           _%e169579169681%_
                                                           _%hd169580169684%_
                                                           _%tl169581169686%_
                                                           _%e169582169689%_
                                                           _%hd169583169692%_
                                                           _%tl169584169694%_)
                                                          (_%__kont171749171750%_))
                                                      (_%__kont171749171750%_))
                                                  (_%__kont171749171750%_))))
                                          (_%__kont171749171750%_))
                                      (_%__kont171749171750%_))
                                  (_%__kont171749171750%_))))
                          (_%__kont171749171750%_))))
                  (_%__kont171749171750%_))
              (_%__kont171749171750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171749171750%_))
                                          (_%__kont171749171750%_))
                                      (_%__kont171749171750%_))))
                              (_%__kont171749171750%_))))
                      (_%__kont171749171750%_))
                  (_%__kont171749171750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171749171750%_))
                                              (_%__kont171749171750%_))
                                          (_%__kont171749171750%_))))
                                  (_%__kont171749171750%_))))
                          (_%__kont171749171750%_))
                      (_%__kont171749171750%_))
                  (_%__kont171749171750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171749171750%_))))
                                          (_%__kont171749171750%_)))))
                              (_%__kont171749171750%_)))))))
                 (_%dispatch-case-e168747%_
                  (lambda (_%hd168894%_ _%body168895%_)
                    (let* ((_%form168897%_
                            (cons _%hd168894%_ (cons _%body168895%_ '())))
                           (_%__stx171877171878%_ _%form168897%_)
                           (_%g168901169025%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171877171878%_)))))
                      (let ((_%__kont171879171880%_
                             (lambda (_%g168903169390%_
                                      _%g168904169391%_
                                      _%g168905169392%_)
                               (let ((__tmp173043
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168904169391%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168743%_
                                  __tmp173043))))
                            (_%__kont171885171886%_
                             (lambda (_%g168948169242%_
                                      _%g168949169243%_
                                      _%g168950169244%_
                                      _%g168951169245%_)
                               (let ((__tmp173044
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168948169242%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168743%_
                                  __tmp173044))))
                            (_%__kont171889171890%_
                             (lambda (_%g168988169110%_
                                      _%g168989169111%_
                                      _%g168990169112%_)
                               (let ((__tmp173045
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168988169110%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168743%_
                                  __tmp173045)))))
                        (let* ((_%__match171986171987%_
                                (lambda (_%e168991169030%_
                                         _%hd168992169033%_
                                         _%tl168993169035%_
                                         _%e168994169038%_
                                         _%hd168995169041%_
                                         _%tl168996169043%_
                                         _%e168997169046%_
                                         _%hd168998169049%_
                                         _%tl168999169051%_
                                         _%e169000169054%_
                                         _%hd169001169057%_
                                         _%tl169002169059%_
                                         _%e169003169062%_
                                         _%hd169004169065%_
                                         _%tl169005169067%_
                                         _%e169006169070%_
                                         _%hd169007169073%_
                                         _%tl169008169075%_
                                         _%e169009169078%_
                                         _%hd169010169081%_
                                         _%tl169011169083%_
                                         _%e169012169086%_
                                         _%hd169013169089%_
                                         _%tl169014169091%_
                                         _%e169015169094%_
                                         _%hd169016169097%_
                                         _%tl169017169099%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169011169083%_))
                                      (let ((_%e169018169102%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169011169083%_))))
                                        (let ((_%tl169020169107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169018169102%_)))
                                              (_%hd169019169105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169018169102%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169020169107%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl168996169043%_))
                                                  (_%__kont171889171890%_
                                                   _%hd169016169097%_
                                                   _%hd169007169073%_
                                                   _%hd168992169033%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168901169025%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168901169025%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168901169025%_)))))
                               (_%__match171916171917%_
                                (lambda (_%e168952169148%_
                                         _%hd168953169151%_
                                         _%tl168954169153%_
                                         _%__splice171887171888%_
                                         _%target168955169156%_
                                         _%tl168957169158%_)
                                  (letrec ((_%loop168958169161%_
                                            (lambda (_%hd168956169164%_
                                                     _%arg168962169166%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168956169164%_))
                                                  (let ((_%e168959169168%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168956169164%_))))
                                                    (let ((_%lp-tl168961169173%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168959169168%_)))
                                                          (_%lp-hd168960169171%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168959169168%_))))
                                                      (_%loop168958169161%_
                                                       _%lp-tl168961169173%_
                                                       (cons _%lp-hd168960169171%_
                                                             _%arg168962169166%_))))
                                                  (let ((_%arg168963169176%_
                                                         (reverse _%arg168962169166%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168954169153%_))
                                                        (let ((_%e168964169178%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168954169153%_))))
                  (let ((_%tl168966169183%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168964169178%_)))
                        (_%hd168965169181%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168964169178%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168965169181%_))
                        (let ((_%e168967169186%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168965169181%_))))
                          (let ((_%tl168969169191%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168967169186%_)))
                                (_%hd168968169189%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168967169186%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168968169189%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168968169189%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168969169191%_))
                                        (let ((_%e168970169194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168969169191%_))))
                                          (let ((_%tl168972169199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168970169194%_)))
                                                (_%hd168971169197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168970169194%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168971169197%_))
                                                (let ((_%e168973169202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168971169197%_))))
                                                  (let ((_%tl168975169207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168973169202%_)))
                                                        (_%hd168974169205%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168973169202%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168974169205%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168974169205%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168975169207%_))
                        (let ((_%e168976169210%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168975169207%_))))
                          (let ((_%tl168978169215%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168976169210%_)))
                                (_%hd168977169213%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168976169210%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168978169215%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168972169199%_))
                                    (let ((_%e168979169218%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168972169199%_))))
                                      (let ((_%tl168981169223%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e168979169218%_)))
                                            (_%hd168980169221%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e168979169218%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd168980169221%_))
                                            (let ((_%e168982169226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd168980169221%_))))
                                              (let ((_%tl168984169231%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168982169226%_)))
                                                    (_%hd168983169229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168982169226%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd168983169229%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd168983169229%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl168984169231%_))
                                                            (let ((_%e168985169234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl168984169231%_))))
                      (let ((_%tl168987169239%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168985169234%_)))
                            (_%hd168986169237%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168985169234%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl168987169239%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168966169183%_))
                                (_%__kont171885171886%_
                                 _%hd168986169237%_
                                 _%hd168977169213%_
                                 _%tl168957169158%_
                                 _%arg168963169176%_)
                                (_%__match171986171987%_
                                 _%e168952169148%_
                                 _%hd168953169151%_
                                 _%tl168954169153%_
                                 _%e168964169178%_
                                 _%hd168965169181%_
                                 _%tl168966169183%_
                                 _%e168967169186%_
                                 _%hd168968169189%_
                                 _%tl168969169191%_
                                 _%e168970169194%_
                                 _%hd168971169197%_
                                 _%tl168972169199%_
                                 _%e168973169202%_
                                 _%hd168974169205%_
                                 _%tl168975169207%_
                                 _%e168976169210%_
                                 _%hd168977169213%_
                                 _%tl168978169215%_
                                 _%e168979169218%_
                                 _%hd168980169221%_
                                 _%tl168981169223%_
                                 _%e168982169226%_
                                 _%hd168983169229%_
                                 _%tl168984169231%_
                                 _%e168985169234%_
                                 _%hd168986169237%_
                                 _%tl168987169239%_))
                            (let ()
                              (declare (not safe))
                              (_%g168901169025%_)))))
                    (let () (declare (not safe)) (_%g168901169025%_)))
                (let () (declare (not safe)) (_%g168901169025%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168901169025%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168901169025%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168901169025%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168901169025%_)))))
                        (let () (declare (not safe)) (_%g168901169025%_)))
                    (let () (declare (not safe)) (_%g168901169025%_)))
                (let () (declare (not safe)) (_%g168901169025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168901169025%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168901169025%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168901169025%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168901169025%_)))))
                        (let () (declare (not safe)) (_%g168901169025%_)))))
                (let () (declare (not safe)) (_%g168901169025%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168958169161%_
                                     _%target168955169156%_
                                     '()))))
                               (_%__match171904171905%_
                                (lambda (_%e168906169282%_
                                         _%hd168907169285%_
                                         _%tl168908169287%_
                                         _%__splice171881171882%_
                                         _%target168909169290%_
                                         _%tl168911169292%_)
                                  (letrec ((_%loop168912169295%_
                                            (lambda (_%hd168910169298%_
                                                     _%arg168916169300%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168910169298%_))
                                                  (let ((_%e168913169302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168910169298%_))))
                                                    (let ((_%lp-tl168915169307%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168913169302%_)))
                                                          (_%lp-hd168914169305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168913169302%_))))
                                                      (_%loop168912169295%_
                                                       _%lp-tl168915169307%_
                                                       (cons _%lp-hd168914169305%_
                                                             _%arg168916169300%_))))
                                                  (let ((_%arg168917169310%_
                                                         (reverse _%arg168916169300%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168908169287%_))
                                                        (let ((_%e168918169312%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168908169287%_))))
                  (let ((_%tl168920169317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168918169312%_)))
                        (_%hd168919169315%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168918169312%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168919169315%_))
                        (let ((_%e168921169320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168919169315%_))))
                          (let ((_%tl168923169325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168921169320%_)))
                                (_%hd168922169323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168921169320%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168922169323%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168922169323%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168923169325%_))
                                        (let ((_%e168924169328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168923169325%_))))
                                          (let ((_%tl168926169333%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168924169328%_)))
                                                (_%hd168925169331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168924169328%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168925169331%_))
                                                (let ((_%e168927169336%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168925169331%_))))
                                                  (let ((_%tl168929169341%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168927169336%_)))
                                                        (_%hd168928169339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168927169336%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168928169339%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168928169339%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168929169341%_))
                        (let ((_%e168930169344%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168929169341%_))))
                          (let ((_%tl168932169349%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168930169344%_)))
                                (_%hd168931169347%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168930169344%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168932169349%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168926169333%_))
                                    (let ((_%__splice171883171884%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl168926169333%_
                                              '0))))
                                      (let ((_%tl168935169354%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171883171884%_
                                                '1)))
                                            (_%target168933169352%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171883171884%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168935169354%_))
                                            (letrec ((_%loop168936169357%_
                                                      (lambda (_%hd168934169360%_
                                                               _%xarg168940169362%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd168934169360%_))
                                                            (let ((_%e168937169364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168934169360%_))))
                      (let ((_%lp-tl168939169369%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168937169364%_)))
                            (_%lp-hd168938169367%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168937169364%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd168938169367%_))
                            (let ((_%e168942169372%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd168938169367%_))))
                              (let ((_%tl168944169377%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168942169372%_)))
                                    (_%hd168943169375%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168942169372%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168943169375%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd168943169375%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168944169377%_))
                                            (let ((_%e168945169380%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168944169377%_))))
                                              (let ((_%tl168947169385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168945169380%_)))
                                                    (_%hd168946169383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168945169380%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168947169385%_))
                                                    (_%loop168936169357%_
                                                     _%lp-tl168939169369%_
                                                     (cons _%hd168946169383%_
                                                           _%xarg168940169362%_))
                                                    (_%__match171916171917%_
                                                     _%e168906169282%_
                                                     _%hd168907169285%_
                                                     _%tl168908169287%_
                                                     _%__splice171881171882%_
                                                     _%target168909169290%_
                                                     _%tl168911169292%_))))
                                            (_%__match171916171917%_
                                             _%e168906169282%_
                                             _%hd168907169285%_
                                             _%tl168908169287%_
                                             _%__splice171881171882%_
                                             _%target168909169290%_
                                             _%tl168911169292%_))
                                        (_%__match171916171917%_
                                         _%e168906169282%_
                                         _%hd168907169285%_
                                         _%tl168908169287%_
                                         _%__splice171881171882%_
                                         _%target168909169290%_
                                         _%tl168911169292%_))
                                    (_%__match171916171917%_
                                     _%e168906169282%_
                                     _%hd168907169285%_
                                     _%tl168908169287%_
                                     _%__splice171881171882%_
                                     _%target168909169290%_
                                     _%tl168911169292%_))))
                            (_%__match171916171917%_
                             _%e168906169282%_
                             _%hd168907169285%_
                             _%tl168908169287%_
                             _%__splice171881171882%_
                             _%target168909169290%_
                             _%tl168911169292%_))))
                    (let ((_%xarg168941169388%_
                           (reverse _%xarg168940169362%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168920169317%_))
                          (_%__kont171879171880%_
                           _%xarg168941169388%_
                           _%hd168931169347%_
                           _%arg168917169310%_)
                          (_%__match171916171917%_
                           _%e168906169282%_
                           _%hd168907169285%_
                           _%tl168908169287%_
                           _%__splice171881171882%_
                           _%target168909169290%_
                           _%tl168911169292%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop168936169357%_
                                               _%target168933169352%_
                                               '()))
                                            (_%__match171916171917%_
                                             _%e168906169282%_
                                             _%hd168907169285%_
                                             _%tl168908169287%_
                                             _%__splice171881171882%_
                                             _%target168909169290%_
                                             _%tl168911169292%_))))
                                    (_%__match171916171917%_
                                     _%e168906169282%_
                                     _%hd168907169285%_
                                     _%tl168908169287%_
                                     _%__splice171881171882%_
                                     _%target168909169290%_
                                     _%tl168911169292%_))
                                (_%__match171916171917%_
                                 _%e168906169282%_
                                 _%hd168907169285%_
                                 _%tl168908169287%_
                                 _%__splice171881171882%_
                                 _%target168909169290%_
                                 _%tl168911169292%_))))
                        (_%__match171916171917%_
                         _%e168906169282%_
                         _%hd168907169285%_
                         _%tl168908169287%_
                         _%__splice171881171882%_
                         _%target168909169290%_
                         _%tl168911169292%_))
                    (_%__match171916171917%_
                     _%e168906169282%_
                     _%hd168907169285%_
                     _%tl168908169287%_
                     _%__splice171881171882%_
                     _%target168909169290%_
                     _%tl168911169292%_))
                (_%__match171916171917%_
                 _%e168906169282%_
                 _%hd168907169285%_
                 _%tl168908169287%_
                 _%__splice171881171882%_
                 _%target168909169290%_
                 _%tl168911169292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171916171917%_
                                                 _%e168906169282%_
                                                 _%hd168907169285%_
                                                 _%tl168908169287%_
                                                 _%__splice171881171882%_
                                                 _%target168909169290%_
                                                 _%tl168911169292%_))))
                                        (_%__match171916171917%_
                                         _%e168906169282%_
                                         _%hd168907169285%_
                                         _%tl168908169287%_
                                         _%__splice171881171882%_
                                         _%target168909169290%_
                                         _%tl168911169292%_))
                                    (_%__match171916171917%_
                                     _%e168906169282%_
                                     _%hd168907169285%_
                                     _%tl168908169287%_
                                     _%__splice171881171882%_
                                     _%target168909169290%_
                                     _%tl168911169292%_))
                                (_%__match171916171917%_
                                 _%e168906169282%_
                                 _%hd168907169285%_
                                 _%tl168908169287%_
                                 _%__splice171881171882%_
                                 _%target168909169290%_
                                 _%tl168911169292%_))))
                        (_%__match171916171917%_
                         _%e168906169282%_
                         _%hd168907169285%_
                         _%tl168908169287%_
                         _%__splice171881171882%_
                         _%target168909169290%_
                         _%tl168911169292%_))))
                (_%__match171916171917%_
                 _%e168906169282%_
                 _%hd168907169285%_
                 _%tl168908169287%_
                 _%__splice171881171882%_
                 _%target168909169290%_
                 _%tl168911169292%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168912169295%_
                                     _%target168909169290%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171877171878%_))
                              (let ((_%e168906169282%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171877171878%_))))
                                (let ((_%tl168908169287%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168906169282%_)))
                                      (_%hd168907169285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168906169282%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd168907169285%_))
                                      (let ((_%__splice171881171882%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd168907169285%_
                                                '0))))
                                        (let ((_%tl168911169292%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171881171882%_
                                                  '1)))
                                              (_%target168909169290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171881171882%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168911169292%_))
                                              (_%__match171904171905%_
                                               _%e168906169282%_
                                               _%hd168907169285%_
                                               _%tl168908169287%_
                                               _%__splice171881171882%_
                                               _%target168909169290%_
                                               _%tl168911169292%_)
                                              (_%__match171916171917%_
                                               _%e168906169282%_
                                               _%hd168907169285%_
                                               _%tl168908169287%_
                                               _%__splice171881171882%_
                                               _%target168909169290%_
                                               _%tl168911169292%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168908169287%_))
                                          (let ((_%e168994169038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168908169287%_))))
                                            (let ((_%tl168996169043%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e168994169038%_)))
                                                  (_%hd168995169041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e168994169038%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168995169041%_))
                                                  (let ((_%e168997169046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168995169041%_))))
                                                    (let ((_%tl168999169051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168997169046%_)))
                                                          (_%hd168998169049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168997169046%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd168998169049%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd168998169049%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl168999169051%_))
                          (let ((_%e169000169054%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl168999169051%_))))
                            (let ((_%tl169002169059%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169000169054%_)))
                                  (_%hd169001169057%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169000169054%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169001169057%_))
                                  (let ((_%e169003169062%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169001169057%_))))
                                    (let ((_%tl169005169067%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169003169062%_)))
                                          (_%hd169004169065%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169003169062%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169004169065%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169004169065%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169005169067%_))
                                                  (let ((_%e169006169070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169005169067%_))))
                                                    (let ((_%tl169008169075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169006169070%_)))
                                                          (_%hd169007169073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169006169070%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169008169075%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169002169059%_))
                      (let ((_%e169009169078%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169002169059%_))))
                        (let ((_%tl169011169083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169009169078%_)))
                              (_%hd169010169081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169009169078%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169010169081%_))
                              (let ((_%e169012169086%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169010169081%_))))
                                (let ((_%tl169014169091%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169012169086%_)))
                                      (_%hd169013169089%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169012169086%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169013169089%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169013169089%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169014169091%_))
                                              (let ((_%e169015169094%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169014169091%_))))
                                                (let ((_%tl169017169099%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169015169094%_)))
                                                      (_%hd169016169097%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169015169094%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169017169099%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169011169083%_))
                                                          (let ((_%e169018169102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169011169083%_))))
                    (let ((_%tl169020169107%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169018169102%_)))
                          (_%hd169019169105%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169018169102%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169020169107%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl168996169043%_))
                              (_%__kont171889171890%_
                               _%hd169016169097%_
                               _%hd169007169073%_
                               _%hd168907169285%_)
                              (let ()
                                (declare (not safe))
                                (_%g168901169025%_)))
                          (let () (declare (not safe)) (_%g168901169025%_)))))
                  (let () (declare (not safe)) (_%g168901169025%_)))
              (let () (declare (not safe)) (_%g168901169025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168901169025%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168901169025%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168901169025%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168901169025%_)))))
                      (let () (declare (not safe)) (_%g168901169025%_)))
                  (let () (declare (not safe)) (_%g168901169025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168901169025%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168901169025%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168901169025%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168901169025%_)))))
                          (let () (declare (not safe)) (_%g168901169025%_)))
                      (let () (declare (not safe)) (_%g168901169025%_)))
                  (let () (declare (not safe)) (_%g168901169025%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168901169025%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168901169025%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168901169025%_))))))))
                 (_%generate1168748%_
                  (lambda (_%args168879%_
                           _%arglen168880%_
                           _%hd168881%_
                           _%body168882%_)
                    (let* ((_%len168884%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd168881%_)))
                           (_%condition168889%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd168881%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen168880%_
                                                (cons _%len168884%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen168880%_ (cons _%len168884%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len168884%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen168880%_
                                                    (cons _%len168884%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen168880%_ (cons _%len168884%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch168891%_
                            (if (_%dispatch-case?168746%_
                                 _%hd168881%_
                                 _%body168882%_)
                                (_%dispatch-case-e168747%_
                                 _%hd168881%_
                                 _%body168882%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self168743%_
                                 _%hd168881%_
                                 _%body168882%_))))
                      (cons _%condition168889%_
                            (cons (cons 'apply
                                        (cons _%dispatch168891%_
                                              (cons _%args168879%_ '())))
                                  '()))))))
          (let* ((_%g168750168778%_
                  (lambda (_%g168751168775%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168751168775%_))))
                 (_%g168749168876%_
                  (lambda (_%g168751168781%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168751168781%_))
                        (let ((_%e168754168783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168751168781%_))))
                          (let ((_%hd168755168786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168754168783%_)))
                                (_%tl168756168788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168754168783%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl168756168788%_))
                                (let ((_g173046_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl168756168788%_
                                          '0))))
                                  (begin
                                    (let ((_g173047_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173046_)
                                                 (##values-length _g173046_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173047_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173047_)))
                                    (let ((_%target168757168791%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173046_ 0)))
                                          (_%tl168759168793%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173046_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168759168793%_))
                                          (letrec ((_%loop168760168796%_
                                                    (lambda (_%hd168758168799%_
                                                             _%body168764168801%_
                                                             _%hd168765168802%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd168758168799%_))
                                                          (let ((_%e168761168804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd168758168799%_))))
                    (let ((_%lp-hd168762168807%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168761168804%_)))
                          (_%lp-tl168763168809%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168761168804%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd168762168807%_))
                          (let ((_%e168768168812%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd168762168807%_))))
                            (let ((_%hd168769168815%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168768168812%_)))
                                  (_%tl168770168817%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168768168812%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168770168817%_))
                                  (let ((_%e168771168820%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168770168817%_))))
                                    (let ((_%hd168772168823%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168771168820%_)))
                                          (_%tl168773168825%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168771168820%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168773168825%_))
                                          (_%loop168760168796%_
                                           _%lp-tl168763168809%_
                                           (cons _%hd168772168823%_
                                                 _%body168764168801%_)
                                           (cons _%hd168769168815%_
                                                 _%hd168765168802%_))
                                          (_%g168750168778%_
                                           _%g168751168781%_))))
                                  (_%g168750168778%_ _%g168751168781%_))))
                          (_%g168750168778%_ _%g168751168781%_))))
                  (let ((_%body168766168828%_ (reverse _%body168764168801%_))
                        (_%hd168767168829%_ (reverse _%hd168765168802%_)))
                    ((lambda (_%g168752168831%_ _%g168753168832%_)
                       (let ((_%args168851%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen168852%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name168853%_
                              (let ((_%$e168848%_
                                     (let ((__tmp173048
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp173048 _%stx168744%_))))
                                (if _%$e168848%_
                                    _%$e168848%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args168851%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen168852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args168851%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args168851%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp173052
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name168853%_
                                                                (cons _%args168851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp173049
                                  (map (lambda (_%g168854168857%_
                                                _%g168855168859%_)
                                         (_%generate1168748%_
                                          _%args168851%_
                                          _%arglen168852%_
                                          _%g168854168857%_
                                          _%g168855168859%_))
                                       (let ((__tmp173050
                                              (lambda (_%g168861168864%_
                                                       _%g168862168866%_)
                                                (cons _%g168861168864%_
                                                      _%g168862168866%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173050
                                          '()
                                          _%g168753168832%_))
                                       (let ((__tmp173051
                                              (lambda (_%g168868168871%_
                                                       _%g168869168873%_)
                                                (cons _%g168868168871%_
                                                      _%g168869168873%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173051
                                          '()
                                          _%g168752168831%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp173052 __tmp173049)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body168766168828%_
                     _%hd168767168829%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop168760168796%_
                                             _%target168757168791%_
                                             '()
                                             '()))
                                          (_%g168750168778%_
                                           _%g168751168781%_)))))
                                (_%g168750168778%_ _%g168751168781%_))))
                        (_%g168750168778%_ _%g168751168781%_)))))
            (_%g168749168876%_ _%stx168744%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self167980%_ _%stx167981%_ _%compiled-body?167982%_)
        (letrec ((_%generate-simple167984%_
                  (lambda (_%hd168728%_ _%body168729%_)
                    (_%coalesce-boolean167985%_
                     (_%simplify-let167986%_
                      (gxc#generate-runtime-simple-let
                       _%self167980%_
                       'let
                       _%hd168728%_
                       _%body168729%_
                       _%compiled-body?167982%_)))))
                 (_%coalesce-boolean167985%_
                  (lambda (_%code168589%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code168590168616%_ _%code168589%_)
                               (_%else168592168624%_
                                (lambda () _%code168589%_))
                               (_%K168594168661%_
                                (lambda (_%expr2168627%_
                                         _%expr1168628%_
                                         _%id168629%_)
                                  (let* ((_%expr2168630168638%_
                                          _%expr2168627%_)
                                         (_%else168632168646%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1168628%_
                                                        (cons _%expr2168627%_
                                                              '())))))
                                         (_%K168634168651%_
                                          (lambda (_%exprs168649%_)
                                            (cons 'or
                                                  (cons _%expr1168628%_
                                                        _%exprs168649%_)))))
                                    (if (pair? _%expr2168630168638%_)
                                        (let ((_%hd168635168654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2168630168638%_)))
                                              (_%tl168636168656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2168630168638%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168635168654%_ 'or))
                                              (let ((_%exprs168659%_
                                                     _%tl168636168656%_))
                                                (_%K168634168651%_
                                                 _%exprs168659%_))
                                              (_%else168632168646%_)))
                                        (_%else168632168646%_))))))
                          (if (pair? _%code168590168616%_)
                              (let ((_%hd168595168664%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code168590168616%_)))
                                    (_%tl168596168666%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code168590168616%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd168595168664%_ 'let))
                                    (if (pair? _%tl168596168666%_)
                                        (let ((_%hd168597168669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl168596168666%_)))
                                              (_%tl168598168671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl168596168666%_))))
                                          (if (pair? _%hd168597168669%_)
                                              (let ((_%hd168609168674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd168597168669%_)))
                                                    (_%tl168610168676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd168597168669%_))))
                                                (if (pair? _%hd168609168674%_)
                                                    (let ((_%hd168611168679%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd168609168674%_)))
                                                          (_%tl168612168681%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd168609168674%_))))
                                                      (let ((_%id168684%_
                                                             _%hd168611168679%_))
                                                        (if (pair? _%tl168612168681%_)
                                                            (let ((_%hd168613168686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl168612168681%_)))
                          (_%tl168614168688%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168612168681%_))))
                      (let ((_%expr1168691%_ _%hd168613168686%_))
                        (if (null? _%tl168614168688%_)
                            (if (null? _%tl168610168676%_)
                                (if (pair? _%tl168598168671%_)
                                    (let ((_%hd168599168693%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl168598168671%_)))
                                          (_%tl168600168695%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl168598168671%_))))
                                      (if (pair? _%hd168599168693%_)
                                          (let ((_%hd168601168698%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd168599168693%_)))
                                                (_%tl168602168700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd168599168693%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd168601168698%_
                                                         'if))
                                                (if (pair? _%tl168602168700%_)
                                                    (let ((_%hd168603168703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl168602168700%_)))
                                                          (_%tl168604168705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl168602168700%_))))
                                                      (if ((lambda (_%g168707168709%_)
                                                             (eq? _%g168707168709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168684%_))
                   _%hd168603168703%_)
                  (if (pair? _%tl168604168705%_)
                      (let ((_%hd168605168712%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl168604168705%_)))
                            (_%tl168606168714%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl168604168705%_))))
                        (if ((lambda (_%g168716168718%_)
                               (eq? _%g168716168718%_ _%id168684%_))
                             _%hd168605168712%_)
                            (if (pair? _%tl168606168714%_)
                                (let ((_%hd168607168721%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168606168714%_)))
                                      (_%tl168608168723%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168606168714%_))))
                                  (let ((_%expr2168726%_ _%hd168607168721%_))
                                    (if (null? _%tl168608168723%_)
                                        (if (null? _%tl168600168695%_)
                                            (_%K168594168661%_
                                             _%expr2168726%_
                                             _%expr1168691%_
                                             _%id168684%_)
                                            (_%else168592168624%_))
                                        (_%else168592168624%_))))
                                (_%else168592168624%_))
                            (_%else168592168624%_)))
                      (_%else168592168624%_))
                  (_%else168592168624%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168592168624%_))
                                                (_%else168592168624%_)))
                                          (_%else168592168624%_)))
                                    (_%else168592168624%_))
                                (_%else168592168624%_))
                            (_%else168592168624%_))))
                    (_%else168592168624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168592168624%_)))
                                              (_%else168592168624%_)))
                                        (_%else168592168624%_))
                                    (_%else168592168624%_)))
                              (_%else168592168624%_)))
                        _%code168589%_)))
                 (_%simplify-let167986%_
                  (lambda (_%code168288%_)
                    (let* ((_%code168289168361%_ _%code168288%_)
                           (_%else168294168369%_ (lambda () _%code168288%_)))
                      (let ((_%K168353168569%_
                             (lambda (_%expr168567%_) _%expr168567%_))
                            (_%K168336168515%_
                             (lambda (_%body168511%_
                                      _%expr168512%_
                                      _%id168513%_)
                               (cons 'let
                                     (cons (cons (cons _%id168513%_
                                                       (cons _%expr168512%_
                                                             '()))
                                                 '())
                                           _%body168511%_))))
                            (_%K168313168439%_
                             (lambda (_%body168433%_
                                      _%expr2168434%_
                                      _%id2168435%_
                                      _%expr1168436%_
                                      _%id1168437%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168437%_
                                                       (cons _%expr1168436%_
                                                             '()))
                                                 (cons (cons _%id2168435%_
                                                             (cons _%expr2168434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body168433%_))))
                            (_%K168296168378%_
                             (lambda (_%body168373%_
                                      _%bind168374%_
                                      _%expr1168375%_
                                      _%id1168376%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168376%_
                                                       (cons _%expr1168375%_
                                                             '()))
                                                 _%bind168374%_)
                                           _%body168373%_)))))
                        (if (pair? _%code168289168361%_)
                            (let ((_%tl168355168574%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code168289168361%_)))
                                  (_%hd168354168572%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code168289168361%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd168354168572%_ 'let))
                                  (if (pair? _%tl168355168574%_)
                                      (let ((_%tl168357168579%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl168355168574%_)))
                                            (_%hd168356168577%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl168355168574%_))))
                                        (if (null? _%hd168356168577%_)
                                            (if (pair? _%tl168357168579%_)
                                                (let ((_%tl168359168584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl168357168579%_)))
                                                      (_%hd168358168582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl168357168579%_))))
                                                  (if (null? _%tl168359168584%_)
                                                      (let ((_%expr168587%_
                                                             _%hd168358168582%_))
                                                        (_%K168353168569%_
                                                         _%expr168587%_))
                                                      (_%else168294168369%_)))
                                                (_%else168294168369%_))
                                            (if (pair? _%hd168356168577%_)
                                                (let ((_%tl168348168530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168356168577%_)))
                                                      (_%hd168347168528%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168356168577%_))))
                                                  (if (pair? _%hd168347168528%_)
                                                      (let ((_%tl168350168535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd168347168528%_)))
                    (_%hd168349168533%_
                     (let () (declare (not safe)) (##car _%hd168347168528%_))))
                (if (pair? _%tl168350168535%_)
                    (let ((_%tl168352168542%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168350168535%_)))
                          (_%hd168351168540%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl168350168535%_))))
                      (if (null? _%tl168352168542%_)
                          (if (null? _%tl168348168530%_)
                              (if (pair? _%tl168357168579%_)
                                  (let ((_%tl168342168549%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl168357168579%_)))
                                        (_%hd168341168547%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl168357168579%_))))
                                    (if (pair? _%hd168341168547%_)
                                        (let ((_%tl168344168554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd168341168547%_)))
                                              (_%hd168343168552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd168341168547%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168343168552%_
                                                       'let))
                                              (if (pair? _%tl168344168554%_)
                                                  (let ((_%tl168346168559%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl168344168554%_)))
                                                        (_%hd168345168557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl168344168554%_))))
                                                    (if (null? _%hd168345168557%_)
                                                        (if (null? _%tl168342168549%_)
                                                            (let ((_%id168538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd168349168533%_)
                          (_%expr168545%_ _%hd168351168540%_)
                          (_%body168562%_ _%tl168346168559%_))
                      (_%K168336168515%_
                       _%body168562%_
                       _%expr168545%_
                       _%id168538%_))
                    (_%else168294168369%_))
                (if (pair? _%hd168345168557%_)
                    (let ((_%tl168325168488%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd168345168557%_)))
                          (_%hd168324168486%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd168345168557%_))))
                      (if (pair? _%hd168324168486%_)
                          (let ((_%tl168327168493%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd168324168486%_)))
                                (_%hd168326168491%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd168324168486%_))))
                            (if (pair? _%tl168327168493%_)
                                (let ((_%tl168329168500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168327168493%_)))
                                      (_%hd168328168498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168327168493%_))))
                                  (if (null? _%tl168329168500%_)
                                      (if (null? _%tl168325168488%_)
                                          (if (null? _%tl168342168549%_)
                                              (let ((_%id1168462%_
                                                     _%hd168349168533%_)
                                                    (_%expr1168469%_
                                                     _%hd168351168540%_)
                                                    (_%id2168496%_
                                                     _%hd168326168491%_)
                                                    (_%expr2168503%_
                                                     _%hd168328168498%_)
                                                    (_%body168505%_
                                                     _%tl168346168559%_))
                                                (_%K168313168439%_
                                                 _%body168505%_
                                                 _%expr2168503%_
                                                 _%id2168496%_
                                                 _%expr1168469%_
                                                 _%id1168462%_))
                                              (_%else168294168369%_))
                                          (_%else168294168369%_))
                                      (_%else168294168369%_)))
                                (_%else168294168369%_)))
                          (_%else168294168369%_)))
                    (_%else168294168369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168294168369%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd168343168552%_
                                                           'let*))
                                                  (if (pair? _%tl168344168554%_)
                                                      (let ((_%tl168306168422%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl168344168554%_)))
                    (_%hd168305168420%_
                     (let () (declare (not safe)) (##car _%tl168344168554%_))))
                (if (null? _%tl168342168549%_)
                    (let ((_%id1168401%_ _%hd168349168533%_)
                          (_%expr1168408%_ _%hd168351168540%_)
                          (_%bind168425%_ _%hd168305168420%_)
                          (_%body168427%_ _%tl168306168422%_))
                      (_%K168296168378%_
                       _%body168427%_
                       _%bind168425%_
                       _%expr1168408%_
                       _%id1168401%_))
                    (_%else168294168369%_)))
              (_%else168294168369%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168294168369%_))))
                                        (_%else168294168369%_)))
                                  (_%else168294168369%_))
                              (_%else168294168369%_))
                          (_%else168294168369%_)))
                    (_%else168294168369%_)))
              (_%else168294168369%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else168294168369%_))))
                                      (_%else168294168369%_))
                                  (_%else168294168369%_)))
                            (_%else168294168369%_))))))
                 (_%generate-values167987%_
                  (lambda (_%hd168101%_ _%body168102%_)
                    (let _%lp168104%_ ((_%rest168106%_ _%hd168101%_)
                                       (_%bind168107%_ '())
                                       (_%check168108%_ '())
                                       (_%post168109%_ '()))
                      (let* ((_%__stx172206172207%_ _%rest168106%_)
                             (_%g168112168123%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172206172207%_)))))
                        (let ((_%__kont172208172209%_
                               (lambda (_%g168114168150%_ _%g168115168151%_)
                                 (let* ((_%__stx172162172163%_
                                         _%g168115168151%_)
                                        (_%g168166168191%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172162172163%_)))))
                                   (let ((_%__kont172164172165%_
                                          (lambda (_%g168168168264%_
                                                   _%g168169168265%_)
                                            (let ((_%eid168279%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g168169168265%_)))
                                                  (_%expr168280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167980%_
                                                      _%g168168168264%_))))
                                              (_%lp168104%_
                                               _%g168114168150%_
                                               (cons (cons _%eid168279%_
                                                           (cons _%expr168280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168107%_)
                                               _%check168108%_
                                               _%post168109%_))))
                                         (_%__kont172166172167%_
                                          (lambda (_%g168179168212%_
                                                   _%g168180168213%_)
                                            (let* ((_%vals168226%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values168228%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals168226%_
                                                     _%g168180168213%_
                                                     _%g168179168212%_))
                                                   (_%refs168230%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals168226%_
                                                     _%g168180168213%_))
                                                   (_%expr168232%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167980%_
                                                       _%g168179168212%_))))
                                              (_%lp168104%_
                                               _%g168114168150%_
                                               (cons (cons _%vals168226%_
                                                           (cons _%expr168232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168107%_)
                                               (cons _%check-values168228%_
                                                     _%check168108%_)
                                               (cons _%refs168230%_
                                                     _%post168109%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172162172163%_))
                                         (let ((_%e168170168240%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172162172163%_))))
                                           (let ((_%tl168172168245%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168170168240%_)))
                                                 (_%hd168171168243%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168170168240%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168171168243%_))
                                                 (let ((_%e168173168248%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168171168243%_))))
                                                   (let ((_%tl168175168253%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168173168248%_)))
                                                         (_%hd168174168251%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168173168248%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168175168253%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl168172168245%_))
                     (let ((_%e168176168256%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168172168245%_))))
                       (let ((_%tl168178168261%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168176168256%_)))
                             (_%hd168177168259%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168176168256%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168178168261%_))
                             (_%__kont172164172165%_
                              _%hd168177168259%_
                              _%hd168174168251%_)
                             (let ()
                               (declare (not safe))
                               (_%g168166168191%_)))))
                     (let () (declare (not safe)) (_%g168166168191%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168172168245%_))
                     (let ((_%e168184168204%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168172168245%_))))
                       (let ((_%tl168186168209%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168184168204%_)))
                             (_%hd168185168207%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168184168204%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168186168209%_))
                             (_%__kont172166172167%_
                              _%hd168185168207%_
                              _%hd168171168243%_)
                             (let ()
                               (declare (not safe))
                               (_%g168166168191%_)))))
                     (let () (declare (not safe)) (_%g168166168191%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168172168245%_))
                                                     (let ((_%e168184168204%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168172168245%_))))
                                                       (let ((_%tl168186168209%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168184168204%_)))
                     (_%hd168185168207%_
                      (let () (declare (not safe)) (##car _%e168184168204%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl168186168209%_))
                     (_%__kont172166172167%_
                      _%hd168185168207%_
                      _%hd168171168243%_)
                     (let () (declare (not safe)) (_%g168166168191%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168166168191%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168166168191%_)))))))
                              (_%__kont172210172211%_
                               (lambda ()
                                 (let* ((_%body168130%_
                                         (if _%compiled-body?167982%_
                                             _%body168102%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167980%_
                                                _%body168102%_))))
                                        (_%body168132%_
                                         (_%generate-values-post167988%_
                                          _%post168109%_
                                          _%body168130%_))
                                        (_%body168134%_
                                         (_%generate-values-check167989%_
                                          _%check168108%_
                                          _%body168132%_)))
                                   (cons 'let
                                         (cons (reverse _%bind168107%_)
                                               (cons _%body168134%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172206172207%_))
                              (let ((_%e168116168142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172206172207%_))))
                                (let ((_%tl168118168147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168116168142%_)))
                                      (_%hd168117168145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168116168142%_))))
                                  (_%__kont172208172209%_
                                   _%tl168118168147%_
                                   _%hd168117168145%_)))
                              (_%__kont172210172211%_)))))))
                 (_%generate-values-post167988%_
                  (lambda (_%post168060%_ _%body168061%_)
                    (let _%lp168063%_ ((_%rest168065%_ _%post168060%_)
                                       (_%body168066%_ _%body168061%_))
                      (let* ((_%rest168067168075%_ _%rest168065%_)
                             (_%else168069168083%_ (lambda () _%body168066%_))
                             (_%K168071168089%_
                              (lambda (_%rest168086%_ _%bind168087%_)
                                (_%lp168063%_
                                 _%rest168086%_
                                 (cons 'let
                                       (cons _%bind168087%_
                                             (cons _%body168066%_ '())))))))
                        (if (pair? _%rest168067168075%_)
                            (let ((_%hd168072168092%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168067168075%_)))
                                  (_%tl168073168094%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168067168075%_))))
                              (let* ((_%bind168097%_ _%hd168072168092%_)
                                     (_%rest168099%_ _%tl168073168094%_))
                                (_%K168071168089%_
                                 _%rest168099%_
                                 _%bind168097%_)))
                            (_%else168069168083%_))))))
                 (_%generate-values-check167989%_
                  (lambda (_%check168057%_ _%body168058%_)
                    (cons 'begin
                          (let ((__tmp173054 (cons _%body168058%_ '()))
                                (__tmp173053 (reverse _%check168057%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173054 __tmp173053))))))
          (let* ((_%g167991168008%_
                  (lambda (_%g167992168005%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167992168005%_))))
                 (_%g167990168054%_
                  (lambda (_%g167992168011%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167992168011%_))
                        (let ((_%e167995168013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167992168011%_))))
                          (let ((_%hd167996168016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167995168013%_)))
                                (_%tl167997168018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167995168013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167997168018%_))
                                (let ((_%e167998168021%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167997168018%_))))
                                  (let ((_%hd167999168024%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167998168021%_)))
                                        (_%tl168000168026%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167998168021%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168000168026%_))
                                        (let ((_%e168001168029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168000168026%_))))
                                          (let ((_%hd168002168032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168001168029%_)))
                                                (_%tl168003168034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168001168029%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168003168034%_))
                                                ((lambda (_%g167993168037%_
                                                          _%g167994168038%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167994168038%_)
                                                       (_%generate-simple167984%_
                                                        _%g167994168038%_
                                                        _%g167993168037%_)
                                                       (_%generate-values167987%_
                                                        _%g167994168038%_
                                                        _%g167993168037%_)))
                                                 _%hd168002168032%_
                                                 _%hd167999168024%_)
                                                (_%g167991168008%_
                                                 _%g167992168011%_))))
                                        (_%g167991168008%_
                                         _%g167992168011%_))))
                                (_%g167991168008%_ _%g167992168011%_))))
                        (_%g167991168008%_ _%g167992168011%_)))))
            (_%g167990168054%_ _%stx167981%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self168734%_ _%stx168735%_)
        (let ((_%compiled-body?168737%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self168734%_
           _%stx168735%_
           _%compiled-body?168737%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g173055_
        (let ((_g173056_ (let () (declare (not safe)) (##length _g173055_))))
          (cond ((let () (declare (not safe)) (##fx= _g173056_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g173055_))
                ((let () (declare (not safe)) (##fx= _g173056_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g173055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g173055_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals167874%_ _%hd167875%_)
        (let _%lp167877%_ ((_%rest167879%_ _%hd167875%_)
                           (_%k167880%_ '0)
                           (_%r167881%_ '()))
          (let* ((_%__stx172220172221%_ _%rest167879%_)
                 (_%g167886167903%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172220172221%_)))))
            (let ((_%__kont172222172223%_
                   (lambda (_%g167888167966%_)
                     (_%lp167877%_
                      _%g167888167966%_
                      (let () (declare (not safe)) (##fx+ _%k167880%_ '1))
                      _%r167881%_)))
                  (_%__kont172224172225%_
                   (lambda (_%g167893167939%_ _%g167894167940%_)
                     (_%lp167877%_
                      _%g167893167939%_
                      (let () (declare (not safe)) (##fx+ _%k167880%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g167894167940%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals167874%_
                                         _%k167880%_
                                         _%g167893167939%_)
                                        '()))
                            _%r167881%_))))
                  (_%__kont172226172227%_
                   (lambda (_%g167898167915%_)
                     (let ((__tmp173057
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g167898167915%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals167874%_
                                               _%k167880%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp173057 _%r167881%_))))
                  (_%__kont172228172229%_ (lambda () (reverse _%r167881%_))))
              (let ((_%g167884167926%_
                     (lambda ()
                       (let ((_%g167898167915%_ _%__stx172220172221%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g167898167915%_))
                             (_%__kont172226172227%_ _%g167898167915%_)
                             (_%__kont172228172229%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172220172221%_))
                    (let ((_%e167889167955%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172220172221%_))))
                      (let ((_%tl167891167960%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167889167955%_)))
                            (_%hd167890167958%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167889167955%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd167890167958%_))
                            (let ((_%e167892167963%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167890167958%_))))
                              (if (equal? _%e167892167963%_ '#f)
                                  (_%__kont172222172223%_ _%tl167891167960%_)
                                  (_%__kont172224172225%_
                                   _%tl167891167960%_
                                   _%hd167890167958%_)))
                            (_%__kont172224172225%_
                             _%tl167891167960%_
                             _%hd167890167958%_))))
                    (let () (declare (not safe)) (_%g167884167926%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self167553%_ _%stx167554%_ _%compiled-body?167555%_)
        (letrec ((_%generate-simple167557%_
                  (lambda (_%hd167859%_ _%body167860%_)
                    (gxc#generate-runtime-simple-let
                     _%self167553%_
                     'letrec
                     _%hd167859%_
                     _%body167860%_
                     _%compiled-body?167555%_)))
                 (_%generate-values167558%_
                  (lambda (_%hd167638%_ _%body167639%_)
                    (let _%lp167641%_ ((_%rest167643%_ _%hd167638%_)
                                       (_%bind167644%_ '())
                                       (_%check167645%_ '())
                                       (_%post167646%_ '()))
                      (let* ((_%__stx172294172295%_ _%rest167643%_)
                             (_%g167649167660%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172294172295%_)))))
                        (let ((_%__kont172296172297%_
                               (lambda (_%g167651167687%_ _%g167652167688%_)
                                 (let* ((_%__stx172250172251%_
                                         _%g167652167688%_)
                                        (_%g167703167728%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172250172251%_)))))
                                   (let ((_%__kont172252172253%_
                                          (lambda (_%g167705167835%_
                                                   _%g167706167836%_)
                                            (let ((_%eid167850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167706167836%_)))
                                                  (_%expr167851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167553%_
                                                      _%g167705167835%_))))
                                              (_%lp167641%_
                                               _%g167651167687%_
                                               (cons (cons _%eid167850%_
                                                           (cons _%expr167851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167644%_)
                                               _%check167645%_
                                               _%post167646%_))))
                                         (_%__kont172254172255%_
                                          (lambda (_%g167716167749%_
                                                   _%g167717167750%_)
                                            (let* ((_%vals167763%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values167765%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals167763%_
                                                     _%g167717167750%_
                                                     _%g167716167749%_))
                                                   (_%refs167767%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals167763%_
                                                     _%g167717167750%_))
                                                   (_%expr167769%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167553%_
                                                       _%g167716167749%_))))
                                              (_%lp167641%_
                                               _%g167651167687%_
                                               (let ((__tmp173059
                                                      (cons (cons _%vals167763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr167769%_ '()))
                    _%bind167644%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp173058
                                                      (map (lambda (_%e167771167773%_)
                                                             (let* ((_%e167771167775167784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e167771167773%_)
                            (_%E167777167788%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e167771167775167784%_
                                        '([eid _])))
                               '#!void))
                            (_%K167778167793%_
                             (lambda (_%eid167791%_)
                               (cons _%eid167791%_ (cons '#!void '())))))
                       (if (pair? _%e167771167775167784%_)
                           (let ((_%hd167779167796%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e167771167775167784%_)))
                                 (_%tl167780167798%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e167771167775167784%_))))
                             (let ((_%eid167801%_ _%hd167779167796%_))
                               (if (pair? _%tl167780167798%_)
                                   (let ((_%tl167782167803%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl167780167798%_))))
                                     (if (null? _%tl167782167803%_)
                                         (_%K167778167793%_ _%eid167801%_)
                                         (_%E167777167788%_)))
                                   (_%E167777167788%_))))
                           (_%E167777167788%_))))
                   _%refs167767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp173059
                                                  __tmp173058))
                                               (cons _%check-values167765%_
                                                     _%check167645%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs167767%_
                                                  _%post167646%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172250172251%_))
                                         (let ((_%e167707167811%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172250172251%_))))
                                           (let ((_%tl167709167816%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167707167811%_)))
                                                 (_%hd167708167814%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167707167811%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167708167814%_))
                                                 (let ((_%e167710167819%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167708167814%_))))
                                                   (let ((_%tl167712167824%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167710167819%_)))
                                                         (_%hd167711167822%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167710167819%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167712167824%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167709167816%_))
                     (let ((_%e167713167827%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167709167816%_))))
                       (let ((_%tl167715167832%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167713167827%_)))
                             (_%hd167714167830%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167713167827%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167715167832%_))
                             (_%__kont172252172253%_
                              _%hd167714167830%_
                              _%hd167711167822%_)
                             (let ()
                               (declare (not safe))
                               (_%g167703167728%_)))))
                     (let () (declare (not safe)) (_%g167703167728%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167709167816%_))
                     (let ((_%e167721167741%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167709167816%_))))
                       (let ((_%tl167723167746%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167721167741%_)))
                             (_%hd167722167744%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167721167741%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167723167746%_))
                             (_%__kont172254172255%_
                              _%hd167722167744%_
                              _%hd167708167814%_)
                             (let ()
                               (declare (not safe))
                               (_%g167703167728%_)))))
                     (let () (declare (not safe)) (_%g167703167728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167709167816%_))
                                                     (let ((_%e167721167741%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167709167816%_))))
                                                       (let ((_%tl167723167746%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167721167741%_)))
                     (_%hd167722167744%_
                      (let () (declare (not safe)) (##car _%e167721167741%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167723167746%_))
                     (_%__kont172254172255%_
                      _%hd167722167744%_
                      _%hd167708167814%_)
                     (let () (declare (not safe)) (_%g167703167728%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167703167728%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167703167728%_)))))))
                              (_%__kont172298172299%_
                               (lambda ()
                                 (let* ((_%body167667%_
                                         (if _%compiled-body?167555%_
                                             _%body167639%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167553%_
                                                _%body167639%_))))
                                        (_%body167669%_
                                         (_%generate-values-post167560%_
                                          _%post167646%_
                                          _%body167667%_))
                                        (_%body167671%_
                                         (_%generate-values-check167559%_
                                          _%check167645%_
                                          _%body167669%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind167644%_)
                                               (cons _%body167671%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172294172295%_))
                              (let ((_%e167653167679%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172294172295%_))))
                                (let ((_%tl167655167684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167653167679%_)))
                                      (_%hd167654167682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167653167679%_))))
                                  (_%__kont172296172297%_
                                   _%tl167655167684%_
                                   _%hd167654167682%_)))
                              (_%__kont172298172299%_)))))))
                 (_%generate-values-check167559%_
                  (lambda (_%check167635%_ _%body167636%_)
                    (cons 'begin
                          (let ((__tmp173061 (cons _%body167636%_ '()))
                                (__tmp173060 (reverse _%check167635%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173061 __tmp173060)))))
                 (_%generate-values-post167560%_
                  (lambda (_%post167628%_ _%body167629%_)
                    (cons 'begin
                          (let ((__tmp173065 (cons _%body167629%_ '()))
                                (__tmp173062
                                 (let ((__tmp173064
                                        (lambda (_%g167630167632%_)
                                          (cons 'set! _%g167630167632%_)))
                                       (__tmp173063 (reverse _%post167628%_)))
                                   (declare (not safe))
                                   (##map __tmp173064 __tmp173063))))
                            (declare (not safe))
                            (__foldr1 cons __tmp173065 __tmp173062))))))
          (let* ((_%g167562167579%_
                  (lambda (_%g167563167576%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167563167576%_))))
                 (_%g167561167625%_
                  (lambda (_%g167563167582%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167563167582%_))
                        (let ((_%e167566167584%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167563167582%_))))
                          (let ((_%hd167567167587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167566167584%_)))
                                (_%tl167568167589%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167566167584%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167568167589%_))
                                (let ((_%e167569167592%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167568167589%_))))
                                  (let ((_%hd167570167595%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167569167592%_)))
                                        (_%tl167571167597%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167569167592%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167571167597%_))
                                        (let ((_%e167572167600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167571167597%_))))
                                          (let ((_%hd167573167603%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167572167600%_)))
                                                (_%tl167574167605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167572167600%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167574167605%_))
                                                ((lambda (_%g167564167608%_
                                                          _%g167565167609%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167565167609%_)
                                                       (_%generate-simple167557%_
                                                        _%g167565167609%_
                                                        _%g167564167608%_)
                                                       (_%generate-values167558%_
                                                        _%g167565167609%_
                                                        _%g167564167608%_)))
                                                 _%hd167573167603%_
                                                 _%hd167570167595%_)
                                                (_%g167562167579%_
                                                 _%g167563167582%_))))
                                        (_%g167562167579%_
                                         _%g167563167582%_))))
                                (_%g167562167579%_ _%g167563167582%_))))
                        (_%g167562167579%_ _%g167563167582%_)))))
            (_%g167561167625%_ _%stx167554%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self167865%_ _%stx167866%_)
        (let ((_%compiled-body?167868%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self167865%_
           _%stx167866%_
           _%compiled-body?167868%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g173066_
        (let ((_g173067_ (let () (declare (not safe)) (##length _g173066_))))
          (cond ((let () (declare (not safe)) (##fx= _g173067_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g173066_))
                ((let () (declare (not safe)) (##fx= _g173067_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g173066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g173066_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self167134%_ _%stx167135%_)
        (letrec ((_%generate-values167137%_
                  (lambda (_%hd167380%_ _%body167381%_)
                    (let _%lp167383%_ ((_%rest167385%_ _%hd167380%_)
                                       (_%bind167386%_ '()))
                      (let* ((_%rest167387167395%_ _%rest167385%_)
                             (_%else167389167406%_
                              (lambda ()
                                (let ((_%bind167403%_ (reverse _%bind167386%_))
                                      (_%body167404%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self167134%_
                                          _%body167381%_))))
                                  (cons 'letrec*
                                        (cons _%bind167403%_
                                              (cons _%body167404%_ '()))))))
                             (_%K167391167540%_
                              (lambda (_%rest167409%_ _%hd-bind167410%_)
                                (let* ((_%__stx172308172309%_
                                        _%hd-bind167410%_)
                                       (_%g167413167438%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172308172309%_)))))
                                  (let ((_%__kont172310172311%_
                                         (lambda (_%g167415167519%_
                                                  _%g167416167520%_)
                                           (let ((_%eid167534%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g167416167520%_)))
                                                 (_%expr167535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self167134%_
                                                     _%g167415167519%_))))
                                             (_%lp167383%_
                                              _%rest167409%_
                                              (cons (cons _%eid167534%_
                                                          (cons _%expr167535%_
                                                                '()))
                                                    _%bind167386%_)))))
                                        (_%__kont172312172313%_
                                         (lambda (_%g167426167459%_
                                                  _%g167427167460%_)
                                           (let* ((_%vals167479%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp167481%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values167483%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp167481%_
                                                    _%g167427167460%_
                                                    _%g167426167459%_))
                                                  (_%refs167485%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals167479%_
                                                    _%g167427167460%_))
                                                  (_%expr167487%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167134%_
                                                      _%g167426167459%_))))
                                             (_%lp167383%_
                                              _%rest167409%_
                                              (let ((__tmp173068
                                                     (cons (cons _%vals167479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp167481%_
                                                       (cons _%expr167487%_
                                                             '()))
                                                 '())
                                           (cons _%check-values167483%_
                                                 (cons _%tmp167481%_ '()))))
                               '()))
                   _%bind167386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp173068
                                                 _%refs167485%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx172308172309%_))
                                        (let ((_%e167417167495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx172308172309%_))))
                                          (let ((_%tl167419167500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167417167495%_)))
                                                (_%hd167418167498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167417167495%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167418167498%_))
                                                (let ((_%e167420167503%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167418167498%_))))
                                                  (let ((_%tl167422167508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167420167503%_)))
                                                        (_%hd167421167506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167420167503%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167422167508%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167419167500%_))
                                                            (let ((_%e167423167511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167419167500%_))))
                      (let ((_%tl167425167516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167423167511%_)))
                            (_%hd167424167514%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167423167511%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167425167516%_))
                            (_%__kont172310172311%_
                             _%hd167424167514%_
                             _%hd167421167506%_)
                            (let ()
                              (declare (not safe))
                              (_%g167413167438%_)))))
                    (let () (declare (not safe)) (_%g167413167438%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl167419167500%_))
                    (let ((_%e167431167451%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167419167500%_))))
                      (let ((_%tl167433167456%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167431167451%_)))
                            (_%hd167432167454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167431167451%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167433167456%_))
                            (_%__kont172312172313%_
                             _%hd167432167454%_
                             _%hd167418167498%_)
                            (let ()
                              (declare (not safe))
                              (_%g167413167438%_)))))
                    (let () (declare (not safe)) (_%g167413167438%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167419167500%_))
                                                    (let ((_%e167431167451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167419167500%_))))
                                                      (let ((_%tl167433167456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167431167451%_)))
                    (_%hd167432167454%_
                     (let () (declare (not safe)) (##car _%e167431167451%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167433167456%_))
                    (_%__kont172312172313%_
                     _%hd167432167454%_
                     _%hd167418167498%_)
                    (let () (declare (not safe)) (_%g167413167438%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167413167438%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167413167438%_))))))))
                        (if (pair? _%rest167387167395%_)
                            (let ((_%hd167392167543%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167387167395%_)))
                                  (_%tl167393167545%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167387167395%_))))
                              (let* ((_%hd-bind167548%_ _%hd167392167543%_)
                                     (_%rest167550%_ _%tl167393167545%_))
                                (_%K167391167540%_
                                 _%rest167550%_
                                 _%hd-bind167548%_)))
                            (_%else167389167406%_))))))
                 (_%generate-letrec?167138%_
                  (lambda (_%hd167270%_)
                    (let _%lp167272%_ ((_%rest167274%_ _%hd167270%_))
                      (let* ((_%rest167275167283%_ _%rest167274%_)
                             (_%else167277167291%_ (lambda () '#t))
                             (_%K167279167368%_
                              (lambda (_%rest167294%_ _%hd-bind167295%_)
                                (let* ((_%g167297167314%_
                                        (lambda (_%g167298167311%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g167298167311%_))))
                                       (_%g167296167365%_
                                        (lambda (_%g167298167317%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g167298167317%_))
                                              (let ((_%e167301167319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g167298167317%_))))
                                                (let ((_%hd167302167322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167301167319%_)))
                                                      (_%tl167303167324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167301167319%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd167302167322%_))
                                                      (let ((_%e167304167327%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd167302167322%_))))
                (let ((_%hd167305167330%_
                       (let () (declare (not safe)) (##car _%e167304167327%_)))
                      (_%tl167306167332%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e167304167327%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167306167332%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167303167324%_))
                          (let ((_%e167307167335%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167303167324%_))))
                            (let ((_%hd167308167338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167307167335%_)))
                                  (_%tl167309167340%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167307167335%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167309167340%_))
                                  ((lambda (_%g167299167343%_
                                            _%g167300167344%_)
                                     (if (_%is-lambda-expr?167139%_
                                          _%g167299167343%_)
                                         (_%lp167272%_ _%rest167294%_)
                                         '#f))
                                   _%hd167308167338%_
                                   _%hd167305167330%_)
                                  (_%g167297167314%_ _%g167298167317%_))))
                          (_%g167297167314%_ _%g167298167317%_))
                      (_%g167297167314%_ _%g167298167317%_))))
              (_%g167297167314%_ _%g167298167317%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g167297167314%_
                                               _%g167298167317%_)))))
                                  (_%g167296167365%_ _%hd-bind167295%_)))))
                        (if (pair? _%rest167275167283%_)
                            (let ((_%hd167280167371%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167275167283%_)))
                                  (_%tl167281167373%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167275167283%_))))
                              (let* ((_%hd-bind167376%_ _%hd167280167371%_)
                                     (_%rest167378%_ _%tl167281167373%_))
                                (_%K167279167368%_
                                 _%rest167378%_
                                 _%hd-bind167376%_)))
                            (_%else167277167291%_))))))
                 (_%is-lambda-expr?167139%_
                  (lambda (_%expr167207%_)
                    (let* ((_%__stx172352172353%_ _%expr167207%_)
                           (_%g167210167224%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx172352172353%_)))))
                      (let ((_%__kont172354172355%_
                             (lambda (_%g167212167252%_ _%g167213167253%_)
                               '#t))
                            (_%__kont172356172357%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx172352172353%_))
                            (let ((_%e167214167236%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx172352172353%_))))
                              (let ((_%tl167216167241%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167214167236%_)))
                                    (_%hd167215167239%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167214167236%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167215167239%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd167215167239%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167216167241%_))
                                            (let ((_%e167217167244%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167216167241%_))))
                                              (let ((_%tl167219167249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167217167244%_)))
                                                    (_%hd167218167247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167217167244%_))))
                                                (_%__kont172354172355%_
                                                 _%tl167219167249%_
                                                 _%hd167218167247%_)))
                                            (_%__kont172356172357%_))
                                        (_%__kont172356172357%_))
                                    (_%__kont172356172357%_))))
                            (_%__kont172356172357%_)))))))
          (let* ((_%g167141167158%_
                  (lambda (_%g167142167155%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167142167155%_))))
                 (_%g167140167204%_
                  (lambda (_%g167142167161%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167142167161%_))
                        (let ((_%e167145167163%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167142167161%_))))
                          (let ((_%hd167146167166%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167145167163%_)))
                                (_%tl167147167168%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167145167163%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167147167168%_))
                                (let ((_%e167148167171%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167147167168%_))))
                                  (let ((_%hd167149167174%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167148167171%_)))
                                        (_%tl167150167176%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167148167171%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167150167176%_))
                                        (let ((_%e167151167179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167150167176%_))))
                                          (let ((_%hd167152167182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167151167179%_)))
                                                (_%tl167153167184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167151167179%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167153167184%_))
                                                ((lambda (_%g167143167187%_
                                                          _%g167144167188%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167144167188%_)
                                                       (if (_%generate-letrec?167138%_
                                                            _%g167144167188%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167134%_
                                                            'letrec
                                                            _%g167144167188%_
                                                            _%g167143167187%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167134%_
                                                            'letrec*
                                                            _%g167144167188%_
                                                            _%g167143167187%_
                                                            '#f))
                                                       (_%generate-values167137%_
                                                        _%g167144167188%_
                                                        _%g167143167187%_)))
                                                 _%hd167152167182%_
                                                 _%hd167149167174%_)
                                                (_%g167141167158%_
                                                 _%g167142167161%_))))
                                        (_%g167141167158%_
                                         _%g167142167161%_))))
                                (_%g167141167158%_ _%g167142167161%_))))
                        (_%g167141167158%_ _%g167142167161%_)))))
            (_%g167140167204%_ _%stx167135%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd167071%_)
        (let _%lp167073%_ ((_%rest167075%_ _%hd167071%_))
          (let* ((_%rest167076167092%_ _%rest167075%_)
                 (_%else167079167100%_ (lambda () '#f)))
            (let ((_%K167082167113%_
                   (lambda (_%rest167111%_) (_%lp167073%_ _%rest167111%_)))
                  (_%K167081167105%_ (lambda () '#t)))
              (let ((_%try-match167078167108%_
                     (lambda ()
                       (if (null? _%rest167076167092%_)
                           (_%K167081167105%_)
                           (_%else167079167100%_)))))
                (if (pair? _%rest167076167092%_)
                    (let ((_%tl167084167118%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest167076167092%_)))
                          (_%hd167083167116%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest167076167092%_))))
                      (if (pair? _%hd167083167116%_)
                          (let ((_%tl167086167123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd167083167116%_)))
                                (_%hd167085167121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd167083167116%_))))
                            (if (pair? _%hd167085167121%_)
                                (let ((_%tl167090167126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167085167121%_))))
                                  (if (null? _%tl167090167126%_)
                                      (if (pair? _%tl167086167123%_)
                                          (let ((_%tl167088167129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167086167123%_))))
                                            (if (null? _%tl167088167129%_)
                                                (let ((_%rest167132%_
                                                       _%tl167084167118%_))
                                                  (_%lp167073%_
                                                   _%rest167132%_))
                                                (_%else167079167100%_)))
                                          (_%else167079167100%_))
                                      (_%else167079167100%_)))
                                (_%else167079167100%_)))
                          (_%else167079167100%_)))
                    (_%try-match167078167108%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self166983%_
               _%form166984%_
               _%hd166985%_
               _%body166986%_
               _%compiled-body?166987%_)
        (letrec ((_%generate1166989%_
                  (lambda (_%bind167028%_)
                    (let* ((_%bind167029167040%_ _%bind167028%_)
                           (_%E167031167043%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind167029167040%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K167032167049%_
                            (lambda (_%expr167046%_ _%id167047%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id167047%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self166983%_
                                             _%expr167046%_))
                                          '())))))
                      (if (pair? _%bind167029167040%_)
                          (let ((_%hd167033167052%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind167029167040%_)))
                                (_%tl167034167054%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind167029167040%_))))
                            (if (pair? _%hd167033167052%_)
                                (let ((_%hd167037167057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd167033167052%_)))
                                      (_%tl167038167059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167033167052%_))))
                                  (let ((_%id167062%_ _%hd167037167057%_))
                                    (if (null? _%tl167038167059%_)
                                        (if (pair? _%tl167034167054%_)
                                            (let ((_%hd167035167064%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl167034167054%_)))
                                                  (_%tl167036167066%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl167034167054%_))))
                                              (let ((_%expr167069%_
                                                     _%hd167035167064%_))
                                                (if (null? _%tl167036167066%_)
                                                    (_%K167032167049%_
                                                     _%expr167069%_
                                                     _%id167062%_)
                                                    (_%E167031167043%_))))
                                            (_%E167031167043%_))
                                        (_%E167031167043%_))))
                                (_%E167031167043%_)))
                          (_%E167031167043%_))))))
          (let* ((_%bind166991%_ (map _%generate1166989%_ _%hd166985%_))
                 (_%body166993%_
                  (if _%compiled-body?166987%_
                      _%body166986%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self166983%_ _%body166986%_))))
                 (_%body167025%_
                  (let* ((_%body166994167002%_ _%body166993%_)
                         (_%else166996167010%_
                          (lambda () (cons _%body166993%_ '())))
                         (_%K166998167015%_
                          (lambda (_%exprs167013%_) _%exprs167013%_)))
                    (if (pair? _%body166994167002%_)
                        (let ((_%hd166999167018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body166994167002%_)))
                              (_%tl167000167020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body166994167002%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd166999167018%_ 'begin))
                              (let ((_%exprs167023%_ _%tl167000167020%_))
                                (_%K166998167015%_ _%exprs167023%_))
                              (_%else166996167010%_)))
                        (_%else166996167010%_)))))
            (cons _%form166984%_ (cons _%bind166991%_ _%body167025%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self166883%_ _%stx166884%_)
        (letrec ((_%generate1166886%_
                  (lambda (_%datum166938%_)
                    (if (or (null? _%datum166938%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum166938%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum166938%_))
                            (eof-object? _%datum166938%_))
                        _%datum166938%_
                        (if (uninterned-symbol? _%datum166938%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum166938%_
                               '#t))
                            (if (pair? _%datum166938%_)
                                (cons (_%generate1166886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum166938%_)))
                                      (_%generate1166886%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum166938%_))))
                                (if (box? _%datum166938%_)
                                    (box (_%generate1166886%_
                                          (unbox _%datum166938%_)))
                                    (if (vector? _%datum166938%_)
                                        (vector-map
                                         _%generate1166886%_
                                         _%datum166938%_)
                                        (if (or (s8vector? _%datum166938%_)
                                                (u8vector? _%datum166938%_)
                                                (s16vector? _%datum166938%_)
                                                (u16vector? _%datum166938%_)
                                                (s32vector? _%datum166938%_)
                                                (u32vector? _%datum166938%_)
                                                (s64vector? _%datum166938%_)
                                                (u64vector? _%datum166938%_)
                                                (f32vector? _%datum166938%_)
                                                (f64vector? _%datum166938%_))
                                            _%datum166938%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx166884%_)))))))))))
          (let* ((_%g166888166901%_
                  (lambda (_%g166889166898%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166889166898%_))))
                 (_%g166887166935%_
                  (lambda (_%g166889166904%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166889166904%_))
                        (let ((_%e166891166906%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166889166904%_))))
                          (let ((_%hd166892166909%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166891166906%_)))
                                (_%tl166893166911%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166891166906%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166893166911%_))
                                (let ((_%e166894166914%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166893166911%_))))
                                  (let ((_%hd166895166917%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166894166914%_)))
                                        (_%tl166896166919%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166894166914%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166896166919%_))
                                        ((lambda (_%g166890166922%_)
                                           (cons 'quote
                                                 (cons (_%generate1166886%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g166890166922%_)))
                                                       '())))
                                         _%hd166895166917%_)
                                        (_%g166888166901%_
                                         _%g166889166904%_))))
                                (_%g166888166901%_ _%g166889166904%_))))
                        (_%g166888166901%_ _%g166889166904%_)))))
            (_%g166887166935%_ _%stx166884%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self166330%_ _%stx166331%_)
        (letrec ((_%compile-call166333%_
                  (lambda (_%rator166620%_ _%rands166621%_)
                    (let ((_%rator166627%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self166330%_
                              _%rator166620%_)))
                          (_%rands166628%_
                           (map (lambda (_%g166622166624%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self166330%_
                                     _%g166622166624%_)))
                                _%rands166621%_)))
                      (let* ((_%__stx172399172400%_ _%rator166627%_)
                             (_%g166631166683%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172399172400%_)))))
                        (let ((_%__kont172401172402%_
                               (lambda (_%g166633166803%_
                                        _%g166634166804%_
                                        _%g166635166805%_
                                        _%g166636166806%_)
                                 (if (let ((__tmp173071
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands166628%_)))
                                           (__tmp173069
                                            (length (let ((__tmp173070
                                                           (lambda (_%g166842166845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g166843166847%_)
                     (cons _%g166842166845%_ _%g166843166847%_))))
              (declare (not safe))
              (__foldr1 __tmp173070 '() _%g166635166805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173071 __tmp173069))
                                     (let* ((_%id166850%_ _%g166636166806%_)
                                            (_%args166859%_
                                             (let ((__tmp173072
                                                    (lambda (_%g166851166854%_
                                                             _%g166852166856%_)
                                                      (cons _%g166851166854%_
                                                            _%g166852166856%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173072
                                                '()
                                                _%g166635166805%_)))
                                            (_%body166868%_
                                             (let ((__tmp173073
                                                    (lambda (_%g166860166863%_
                                                             _%g166861166865%_)
                                                      (cons _%g166860166863%_
                                                            _%g166861166865%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173073
                                                '()
                                                _%g166634166804%_)))
                                            (_%init166870%_
                                             (map list
                                                  _%args166859%_
                                                  _%rands166628%_)))
                                       (cons 'let
                                             (cons _%id166850%_
                                                   (cons _%init166870%_
                                                         _%body166868%_))))
                                     (let ((__tmp173074
                                            (let ((__tmp173075
                                                   (lambda (_%g166872166875%_
                                                            _%g166873166877%_)
                                                     (cons _%g166872166875%_
                                                           _%g166873166877%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173075
                                               '()
                                               _%g166635166805%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx166331%_
                                        __tmp173074
                                        _%rands166628%_)))))
                              (_%__kont172407172408%_
                               (lambda ()
                                 (cons _%rator166627%_ _%rands166628%_))))
                          (let ((_%__match172466172467%_
                                 (lambda (_%e166637166695%_
                                          _%hd166638166698%_
                                          _%tl166639166700%_
                                          _%e166640166703%_
                                          _%hd166641166706%_
                                          _%tl166642166708%_
                                          _%e166643166711%_
                                          _%hd166644166714%_
                                          _%tl166645166716%_
                                          _%e166646166719%_
                                          _%hd166647166722%_
                                          _%tl166648166724%_
                                          _%e166649166727%_
                                          _%hd166650166730%_
                                          _%tl166651166732%_
                                          _%e166652166735%_
                                          _%hd166653166738%_
                                          _%tl166654166740%_
                                          _%e166655166743%_
                                          _%hd166656166746%_
                                          _%tl166657166748%_
                                          _%__splice172403172404%_
                                          _%target166658166751%_
                                          _%tl166660166753%_)
                                   (letrec ((_%loop166661166756%_
                                             (lambda (_%hd166659166759%_
                                                      _%arg166665166761%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd166659166759%_))
                                                   (let ((_%e166662166763%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd166659166759%_))))
                                                     (let ((_%lp-tl166664166768%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e166662166763%_)))
                                                           (_%lp-hd166663166766%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e166662166763%_))))
                                                       (_%loop166661166756%_
                                                        _%lp-tl166664166768%_
                                                        (cons _%lp-hd166663166766%_
                                                              _%arg166665166761%_))))
                                                   (let ((_%arg166666166771%_
                                                          (reverse _%arg166665166761%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl166657166748%_))
                                                         (let ((_%__splice172405172406%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl166657166748%_
                           '0))))
                   (let ((_%tl166669166775%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172405172406%_ '1)))
                         (_%target166667166773%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172405172406%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl166669166775%_))
                         (letrec ((_%loop166670166778%_
                                   (lambda (_%hd166668166781%_
                                            _%body166674166783%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd166668166781%_))
                                         (let ((_%e166671166785%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd166668166781%_))))
                                           (let ((_%lp-tl166673166790%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166671166785%_)))
                                                 (_%lp-hd166672166788%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166671166785%_))))
                                             (_%loop166670166778%_
                                              _%lp-tl166673166790%_
                                              (cons _%lp-hd166672166788%_
                                                    _%body166674166783%_))))
                                         (let ((_%body166675166793%_
                                                (reverse _%body166674166783%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl166651166732%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl166645166716%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl166642166708%_))
                                                       (let ((_%e166676166795%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl166642166708%_))))
                 (let ((_%tl166678166800%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e166676166795%_)))
                       (_%hd166677166798%_
                        (let ()
                          (declare (not safe))
                          (##car _%e166676166795%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl166678166800%_))
                       (let ((_%g166633166803%_ _%hd166677166798%_)
                             (_%g166634166804%_ _%body166675166793%_)
                             (_%g166635166805%_ _%arg166666166771%_)
                             (_%g166636166806%_ _%hd166647166722%_))
                         (if (eq? _%g166636166806%_ _%g166633166803%_)
                             (_%__kont172401172402%_
                              _%g166633166803%_
                              _%g166634166804%_
                              _%g166635166805%_
                              _%g166636166806%_)
                             (_%__kont172407172408%_)))
                       (_%__kont172407172408%_))))
               (_%__kont172407172408%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172407172408%_))
                                               (_%__kont172407172408%_)))))))
                           (_%loop166670166778%_ _%target166667166773%_ '()))
                         (_%__kont172407172408%_))))
                 (_%__kont172407172408%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop166661166756%_
                                      _%target166658166751%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172399172400%_))
                                (let ((_%e166637166695%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172399172400%_))))
                                  (let ((_%tl166639166700%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166637166695%_)))
                                        (_%hd166638166698%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166637166695%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166638166698%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd166638166698%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166639166700%_))
                                                (let ((_%e166640166703%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166639166700%_))))
                                                  (let ((_%tl166642166708%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166640166703%_)))
                                                        (_%hd166641166706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166640166703%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd166641166706%_))
                                                        (let ((_%e166643166711%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd166641166706%_))))
                  (let ((_%tl166645166716%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166643166711%_)))
                        (_%hd166644166714%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166643166711%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd166644166714%_))
                        (let ((_%e166646166719%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd166644166714%_))))
                          (let ((_%tl166648166724%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166646166719%_)))
                                (_%hd166647166722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166646166719%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166648166724%_))
                                (let ((_%e166649166727%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166648166724%_))))
                                  (let ((_%tl166651166732%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166649166727%_)))
                                        (_%hd166650166730%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166649166727%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166650166730%_))
                                        (let ((_%e166652166735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166650166730%_))))
                                          (let ((_%tl166654166740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166652166735%_)))
                                                (_%hd166653166738%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166652166735%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd166653166738%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd166653166738%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl166654166740%_))
                                                        (let ((_%e166655166743%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl166654166740%_))))
                  (let ((_%tl166657166748%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166655166743%_)))
                        (_%hd166656166746%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166655166743%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd166656166746%_))
                        (let ((_%__splice172403172404%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd166656166746%_
                                  '0))))
                          (let ((_%tl166660166753%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice172403172404%_ '1)))
                                (_%target166658166751%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice172403172404%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl166660166753%_))
                                (_%__match172466172467%_
                                 _%e166637166695%_
                                 _%hd166638166698%_
                                 _%tl166639166700%_
                                 _%e166640166703%_
                                 _%hd166641166706%_
                                 _%tl166642166708%_
                                 _%e166643166711%_
                                 _%hd166644166714%_
                                 _%tl166645166716%_
                                 _%e166646166719%_
                                 _%hd166647166722%_
                                 _%tl166648166724%_
                                 _%e166649166727%_
                                 _%hd166650166730%_
                                 _%tl166651166732%_
                                 _%e166652166735%_
                                 _%hd166653166738%_
                                 _%tl166654166740%_
                                 _%e166655166743%_
                                 _%hd166656166746%_
                                 _%tl166657166748%_
                                 _%__splice172403172404%_
                                 _%target166658166751%_
                                 _%tl166660166753%_)
                                (_%__kont172407172408%_))))
                        (_%__kont172407172408%_))))
                (_%__kont172407172408%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172407172408%_))
                                                (_%__kont172407172408%_))))
                                        (_%__kont172407172408%_))))
                                (_%__kont172407172408%_))))
                        (_%__kont172407172408%_))))
                (_%__kont172407172408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172407172408%_))
                                            (_%__kont172407172408%_))
                                        (_%__kont172407172408%_))))
                                (_%__kont172407172408%_)))))))))
          (let* ((_%g166335166358%_
                  (lambda (_%g166336166355%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166336166355%_))))
                 (_%g166334166617%_
                  (lambda (_%g166336166361%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166336166361%_))
                        (let ((_%e166339166363%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166336166361%_))))
                          (let ((_%hd166340166366%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166339166363%_)))
                                (_%tl166341166368%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166339166363%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166341166368%_))
                                (let ((_%e166342166371%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166341166368%_))))
                                  (let ((_%hd166343166374%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166342166371%_)))
                                        (_%tl166344166376%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166342166371%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166344166376%_))
                                        (let ((_g173076_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166344166376%_
                                                  '0))))
                                          (begin
                                            (let ((_g173077_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173076_)
                                                         (##values-length
                                                          _g173076_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173077_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173077_)))
                                            (let ((_%target166345166379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173076_
                                                      0)))
                                                  (_%tl166347166381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173076_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166347166381%_))
                                                  (letrec ((_%loop166348166384%_
                                                            (lambda (_%hd166346166387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand166352166389%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166346166387%_))
                          (let ((_%e166349166391%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166346166387%_))))
                            (let ((_%lp-hd166350166394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166349166391%_)))
                                  (_%lp-tl166351166396%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166349166391%_))))
                              (_%loop166348166384%_
                               _%lp-tl166351166396%_
                               (cons _%lp-hd166350166394%_
                                     _%rand166352166389%_))))
                          (let ((_%rand166353166399%_
                                 (reverse _%rand166352166389%_)))
                            ((lambda (_%g166337166401%_ _%g166338166402%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call166333%_
                                    _%g166338166402%_
                                    (let ((__tmp173078
                                           (lambda (_%g166419166422%_
                                                    _%g166420166424%_)
                                             (cons _%g166419166422%_
                                                   _%g166420166424%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp173078
                                       '()
                                       _%g166337166401%_)))
                                   (let* ((_%__stx172515172516%_
                                           _%g166338166402%_)
                                          (_%g166428166440%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx172515172516%_)))))
                                     (let ((_%__kont172517172518%_
                                            (lambda ()
                                              (let ((_%f166477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self166330%_
                                                        _%g166338166402%_))))
                                                (if (and (let ((__tmp173079
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f166477%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp173079))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f166477%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp166479%_ ((_%rest166482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp173081
                                                (lambda (_%g166599166602%_
                                                         _%g166600166604%_)
                                                  (cons _%g166599166602%_
                                                        _%g166600166604%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp173081
                                            '()
                                            _%g166337166401%_))))
                               (_%bind166484%_ '())
                               (_%args166485%_ '()))
              (let* ((_%rest166486166494%_ _%rest166482%_)
                     (_%else166488166502%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind166484%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f166477%_
                                                      _%args166485%_)
                                                '()))))))
                     (_%K166490166588%_
                      (lambda (_%rest166505%_ _%e166506%_)
                        (let* ((_%__stx172469172470%_ _%e166506%_)
                               (_%g166511166529%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx172469172470%_)))))
                          (let ((_%__kont172471172472%_
                                 (lambda ()
                                   (_%lp166479%_
                                    _%rest166505%_
                                    _%bind166484%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166506%_))
                                          _%args166485%_))))
                                (_%__kont172473172474%_
                                 (lambda ()
                                   (_%lp166479%_
                                    _%rest166505%_
                                    _%bind166484%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166506%_))
                                          _%args166485%_))))
                                (_%__kont172475172476%_
                                 (lambda ()
                                   (let ((_%tmp166536%_
                                          (let ((__tmp173080
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp173080))))
                                     (_%lp166479%_
                                      _%rest166505%_
                                      (cons (cons _%tmp166536%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e166506%_))
                                                        '()))
                                            _%bind166484%_)
                                      (cons _%tmp166536%_ _%args166485%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172469172470%_))
                                (let ((_%e166513166567%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172469172470%_))))
                                  (let ((_%tl166515166572%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166513166567%_)))
                                        (_%hd166514166570%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166513166567%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166514166570%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166514166570%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166515166572%_))
                                                (let ((_%e166516166575%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166515166572%_))))
                                                  (let ((_%tl166518166580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166516166575%_)))
                                                        (_%hd166517166578%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166516166575%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166518166580%_))
                                                        (_%__kont172471172472%_)
                                                        (_%__kont172475172476%_))))
                                                (_%__kont172475172476%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd166514166570%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166515166572%_))
                                                    (let ((_%e166522166552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166515166572%_))))
                                                      (let ((_%tl166524166557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166522166552%_)))
                    (_%hd166523166555%_
                     (let () (declare (not safe)) (##car _%e166522166552%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166524166557%_))
                    (_%__kont172473172474%_)
                    (_%__kont172475172476%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172475172476%_))
                                                (_%__kont172475172476%_)))
                                        (_%__kont172475172476%_))))
                                (_%__kont172475172476%_)))))))
                (if (pair? _%rest166486166494%_)
                    (let ((_%hd166491166591%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166486166494%_)))
                          (_%tl166492166593%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166486166494%_))))
                      (let* ((_%e166596%_ _%hd166491166591%_)
                             (_%rest166598%_ _%tl166492166593%_))
                        (_%K166490166588%_ _%rest166598%_ _%e166596%_)))
                    (_%else166488166502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call166333%_
                                                     _%g166338166402%_
                                                     (let ((__tmp173082
                                                            (lambda (_%g166606166609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g166607166611%_)
                      (cons _%g166606166609%_ _%g166607166611%_))))
               (declare (not safe))
               (__foldr1 __tmp173082 '() _%g166337166401%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont172519172520%_
                                            (lambda ()
                                              (_%compile-call166333%_
                                               _%g166338166402%_
                                               (let ((__tmp173083
                                                      (lambda (_%g166446166449%_
                                                               _%g166447166451%_)
                                                        (cons _%g166446166449%_
                                                              _%g166447166451%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173083
                                                  '()
                                                  _%g166337166401%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx172515172516%_))
                                           (let ((_%e166430166459%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx172515172516%_))))
                                             (let ((_%tl166432166464%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e166430166459%_)))
                                                   (_%hd166431166462%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e166430166459%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd166431166462%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd166431166462%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl166432166464%_))
                                                           (let ((_%e166433166467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl166432166464%_))))
                     (let ((_%tl166435166472%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e166433166467%_)))
                           (_%hd166434166470%_
                            (let ()
                              (declare (not safe))
                              (##car _%e166433166467%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl166435166472%_))
                           (_%__kont172517172518%_)
                           (_%__kont172519172520%_))))
                   (_%__kont172519172520%_))
               (_%__kont172519172520%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172519172520%_))))
                                           (_%__kont172519172520%_))))))
                             _%rand166353166399%_
                             _%hd166343166374%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop166348166384%_
                                                     _%target166345166379%_
                                                     '()))
                                                  (_%g166335166358%_
                                                   _%g166336166361%_)))))
                                        (_%g166335166358%_
                                         _%g166336166361%_))))
                                (_%g166335166358%_ _%g166336166361%_))))
                        (_%g166335166358%_ _%g166336166361%_)))))
            (_%g166334166617%_ _%stx166331%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self166075%_ _%stx166076%_)
        (let* ((_%__stx172587172588%_ _%stx166076%_)
               (_%g166079166108%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172587172588%_)))))
          (let ((_%__kont172589172590%_
                 (lambda (_%g166081166174%_ _%g166082166175%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self166075%_
                        _%stx166076%_)
                       (let ((_%f166197%_
                              (let ((__tmp173084
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g166082166175%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self166075%_
                                 __tmp173084))))
                         (let _%lp166199%_ ((_%rest166202%_
                                             (reverse (let ((__tmp173086
                                                             (lambda (_%g166319166322%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g166320166324%_)
                       (cons _%g166319166322%_ _%g166320166324%_))))
                (declare (not safe))
                (__foldr1 __tmp173086 '() _%g166081166174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind166204%_ '())
                                            (_%args166205%_ '()))
                           (let* ((_%rest166206166214%_ _%rest166202%_)
                                  (_%else166208166222%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind166204%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f166197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args166205%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K166210166308%_
                                   (lambda (_%rest166225%_ _%e166226%_)
                                     (let* ((_%__stx172541172542%_ _%e166226%_)
                                            (_%g166231166249%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx172541172542%_)))))
                                       (let ((_%__kont172543172544%_
                                              (lambda ()
                                                (_%lp166199%_
                                                 _%rest166225%_
                                                 _%bind166204%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166226%_))
                                                       _%args166205%_))))
                                             (_%__kont172545172546%_
                                              (lambda ()
                                                (_%lp166199%_
                                                 _%rest166225%_
                                                 _%bind166204%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166226%_))
                                                       _%args166205%_))))
                                             (_%__kont172547172548%_
                                              (lambda ()
                                                (let ((_%tmp166256%_
                                                       (let ((__tmp173085
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp173085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp166199%_
                                                   _%rest166225%_
                                                   (cons (cons _%tmp166256%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e166226%_))
                             '()))
                 _%bind166204%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp166256%_
                                                         _%args166205%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx172541172542%_))
                                             (let ((_%e166233166287%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx172541172542%_))))
                                               (let ((_%tl166235166292%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e166233166287%_)))
                                                     (_%hd166234166290%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e166233166287%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd166234166290%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd166234166290%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166235166292%_))
                     (let ((_%e166236166295%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166235166292%_))))
                       (let ((_%tl166238166300%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166236166295%_)))
                             (_%hd166237166298%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166236166295%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166238166300%_))
                             (_%__kont172543172544%_)
                             (_%__kont172547172548%_))))
                     (_%__kont172547172548%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd166234166290%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl166235166292%_))
                         (let ((_%e166242166272%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl166235166292%_))))
                           (let ((_%tl166244166277%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166242166272%_)))
                                 (_%hd166243166275%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166242166272%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl166244166277%_))
                                 (_%__kont172545172546%_)
                                 (_%__kont172547172548%_))))
                         (_%__kont172547172548%_))
                     (_%__kont172547172548%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172547172548%_))))
                                             (_%__kont172547172548%_)))))))
                             (if (pair? _%rest166206166214%_)
                                 (let ((_%hd166211166311%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest166206166214%_)))
                                       (_%tl166212166313%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest166206166214%_))))
                                   (let* ((_%e166316%_ _%hd166211166311%_)
                                          (_%rest166318%_ _%tl166212166313%_))
                                     (_%K166210166308%_
                                      _%rest166318%_
                                      _%e166316%_)))
                                 (_%else166208166222%_))))))))
                (_%__kont172593172594%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self166075%_ _%stx166076%_))))
            (let ((_%__match172632172633%_
                   (lambda (_%e166083166120%_
                            _%hd166084166123%_
                            _%tl166085166125%_
                            _%e166086166128%_
                            _%hd166087166131%_
                            _%tl166088166133%_
                            _%e166089166136%_
                            _%hd166090166139%_
                            _%tl166091166141%_
                            _%e166092166144%_
                            _%hd166093166147%_
                            _%tl166094166149%_
                            _%__splice172591172592%_
                            _%target166095166152%_
                            _%tl166097166154%_)
                     (letrec ((_%loop166098166157%_
                               (lambda (_%hd166096166160%_
                                        _%rand166102166162%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd166096166160%_))
                                     (let ((_%e166099166164%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd166096166160%_))))
                                       (let ((_%lp-tl166101166169%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e166099166164%_)))
                                             (_%lp-hd166100166167%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e166099166164%_))))
                                         (_%loop166098166157%_
                                          _%lp-tl166101166169%_
                                          (cons _%lp-hd166100166167%_
                                                _%rand166102166162%_))))
                                     (let ((_%rand166103166172%_
                                            (reverse _%rand166102166162%_)))
                                       (_%__kont172589172590%_
                                        _%rand166103166172%_
                                        _%hd166093166147%_))))))
                       (_%loop166098166157%_ _%target166095166152%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172587172588%_))
                  (let ((_%e166083166120%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172587172588%_))))
                    (let ((_%tl166085166125%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166083166120%_)))
                          (_%hd166084166123%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166083166120%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166085166125%_))
                          (let ((_%e166086166128%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166085166125%_))))
                            (let ((_%tl166088166133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166086166128%_)))
                                  (_%hd166087166131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166086166128%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166087166131%_))
                                  (let ((_%e166089166136%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166087166131%_))))
                                    (let ((_%tl166091166141%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166089166136%_)))
                                          (_%hd166090166139%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166089166136%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166090166139%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166090166139%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166091166141%_))
                                                  (let ((_%e166092166144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166091166141%_))))
                                                    (let ((_%tl166094166149%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166092166144%_)))
                                                          (_%hd166093166147%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166092166144%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166094166149%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl166088166133%_))
                      (let ((_%__splice172591172592%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl166088166133%_
                                '0))))
                        (let ((_%tl166097166154%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172591172592%_ '1)))
                              (_%target166095166152%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172591172592%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl166097166154%_))
                              (_%__match172632172633%_
                               _%e166083166120%_
                               _%hd166084166123%_
                               _%tl166085166125%_
                               _%e166086166128%_
                               _%hd166087166131%_
                               _%tl166088166133%_
                               _%e166089166136%_
                               _%hd166090166139%_
                               _%tl166091166141%_
                               _%e166092166144%_
                               _%hd166093166147%_
                               _%tl166094166149%_
                               _%__splice172591172592%_
                               _%target166095166152%_
                               _%tl166097166154%_)
                              (_%__kont172593172594%_))))
                      (_%__kont172593172594%_))
                  (_%__kont172593172594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172593172594%_))
                                              (_%__kont172593172594%_))
                                          (_%__kont172593172594%_))))
                                  (_%__kont172593172594%_))))
                          (_%__kont172593172594%_))))
                  (_%__kont172593172594%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self165887%_ _%stx165888%_)
        (letrec ((_%simplify165890%_
                  (lambda (_%code165975%_)
                    (let* ((_%code165976165994%_ _%code165975%_)
                           (_%else165978166002%_ (lambda () _%code165975%_))
                           (_%K165980166038%_
                            (lambda (_%expr166005%_ _%test166006%_)
                              (let* ((_%expr166007166015%_ _%expr166005%_)
                                     (_%else166009166023%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test166006%_
                                                    (cons _%expr166005%_
                                                          '())))))
                                     (_%K166011166028%_
                                      (lambda (_%exprs166026%_)
                                        (cons 'and
                                              (cons _%test166006%_
                                                    _%exprs166026%_)))))
                                (if (pair? _%expr166007166015%_)
                                    (let ((_%hd166012166031%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr166007166015%_)))
                                          (_%tl166013166033%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr166007166015%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd166012166031%_ 'and))
                                          (let ((_%exprs166036%_
                                                 _%tl166013166033%_))
                                            (_%K166011166028%_
                                             _%exprs166036%_))
                                          (_%else166009166023%_)))
                                    (_%else166009166023%_))))))
                      (if (pair? _%code165976165994%_)
                          (let ((_%hd165981166041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code165976165994%_)))
                                (_%tl165982166043%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code165976165994%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd165981166041%_ 'if))
                                (if (pair? _%tl165982166043%_)
                                    (let ((_%hd165983166046%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl165982166043%_)))
                                          (_%tl165984166048%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl165982166043%_))))
                                      (let ((_%test166051%_
                                             _%hd165983166046%_))
                                        (if (pair? _%tl165984166048%_)
                                            (let ((_%hd165985166053%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl165984166048%_)))
                                                  (_%tl165986166055%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl165984166048%_))))
                                              (let ((_%expr166058%_
                                                     _%hd165985166053%_))
                                                (if (pair? _%tl165986166055%_)
                                                    (let ((_%hd165987166060%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl165986166055%_)))
                                                          (_%tl165988166062%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl165986166055%_))))
                                                      (if (pair? _%hd165987166060%_)
                                                          (let ((_%hd165989166065%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd165987166060%_)))
                        (_%tl165990166067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd165987166060%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd165989166065%_ 'quote))
                        (if (pair? _%tl165990166067%_)
                            (let ((_%hd165991166070%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl165990166067%_)))
                                  (_%tl165992166072%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl165990166067%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd165991166070%_ '#f))
                                  (if (null? _%tl165992166072%_)
                                      (if (null? _%tl165988166062%_)
                                          (_%K165980166038%_
                                           _%expr166058%_
                                           _%test166051%_)
                                          (_%else165978166002%_))
                                      (_%else165978166002%_))
                                  (_%else165978166002%_)))
                            (_%else165978166002%_))
                        (_%else165978166002%_)))
                  (_%else165978166002%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else165978166002%_))))
                                            (_%else165978166002%_))))
                                    (_%else165978166002%_))
                                (_%else165978166002%_)))
                          (_%else165978166002%_))))))
          (let* ((_%g165892165913%_
                  (lambda (_%g165893165910%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165893165910%_))))
                 (_%g165891165972%_
                  (lambda (_%g165893165916%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165893165916%_))
                        (let ((_%e165897165918%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165893165916%_))))
                          (let ((_%hd165898165921%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165897165918%_)))
                                (_%tl165899165923%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165897165918%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165899165923%_))
                                (let ((_%e165900165926%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165899165923%_))))
                                  (let ((_%hd165901165929%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165900165926%_)))
                                        (_%tl165902165931%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165900165926%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165902165931%_))
                                        (let ((_%e165903165934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165902165931%_))))
                                          (let ((_%hd165904165937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165903165934%_)))
                                                (_%tl165905165939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165903165934%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165905165939%_))
                                                (let ((_%e165906165942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165905165939%_))))
                                                  (let ((_%hd165907165945%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165906165942%_)))
                                                        (_%tl165908165947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165906165942%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165908165947%_))
                                                        ((lambda (_%g165894165950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g165895165951%_
                          _%g165896165952%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify165890%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self165887%_
                                       _%g165896165952%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165887%_
                                             _%g165895165951%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self165887%_
                                                   _%g165894165950%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp173087
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self165887%_
                                               _%g165896165952%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp173087
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165887%_
                                            _%g165895165951%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165887%_
                                                  _%g165894165950%_))
                                               '()))))))
                 _%hd165907165945%_
                 _%hd165904165937%_
                 _%hd165901165929%_)
                (_%g165892165913%_ _%g165893165916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g165892165913%_
                                                 _%g165893165916%_))))
                                        (_%g165892165913%_
                                         _%g165893165916%_))))
                                (_%g165892165913%_ _%g165893165916%_))))
                        (_%g165892165913%_ _%g165893165916%_)))))
            (_%g165891165972%_ _%stx165888%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self165835%_ _%stx165836%_)
        (let* ((_%g165838165851%_
                (lambda (_%g165839165848%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165839165848%_))))
               (_%g165837165884%_
                (lambda (_%g165839165854%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165839165854%_))
                      (let ((_%e165841165856%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165839165854%_))))
                        (let ((_%hd165842165859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165841165856%_)))
                              (_%tl165843165861%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165841165856%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165843165861%_))
                              (let ((_%e165844165864%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165843165861%_))))
                                (let ((_%hd165845165867%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165844165864%_)))
                                      (_%tl165846165869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165844165864%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165846165869%_))
                                      ((lambda (_%g165840165872%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g165840165872%_)))
                                       _%hd165845165867%_)
                                      (_%g165838165851%_ _%g165839165854%_))))
                              (_%g165838165851%_ _%g165839165854%_))))
                      (_%g165838165851%_ _%g165839165854%_)))))
          (_%g165837165884%_ _%stx165836%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self165767%_ _%stx165768%_)
        (let* ((_%g165770165787%_
                (lambda (_%g165771165784%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165771165784%_))))
               (_%g165769165832%_
                (lambda (_%g165771165790%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165771165790%_))
                      (let ((_%e165774165792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165771165790%_))))
                        (let ((_%hd165775165795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165774165792%_)))
                              (_%tl165776165797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165774165792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165776165797%_))
                              (let ((_%e165777165800%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165776165797%_))))
                                (let ((_%hd165778165803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165777165800%_)))
                                      (_%tl165779165805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165777165800%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165779165805%_))
                                      (let ((_%e165780165808%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165779165805%_))))
                                        (let ((_%hd165781165811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165780165808%_)))
                                              (_%tl165782165813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165780165808%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165782165813%_))
                                              ((lambda (_%g165772165816%_
                                                        _%g165773165817%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g165773165817%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self165767%_
                              _%g165772165816%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165781165811%_
                                               _%hd165778165803%_)
                                              (_%g165770165787%_
                                               _%g165771165790%_))))
                                      (_%g165770165787%_ _%g165771165790%_))))
                              (_%g165770165787%_ _%g165771165790%_))))
                      (_%g165770165787%_ _%g165771165790%_)))))
          (_%g165769165832%_ _%stx165768%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self165578%_ _%stx165579%_)
        (let* ((_%g165581165598%_
                (lambda (_%g165582165595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165582165595%_))))
               (_%g165580165764%_
                (lambda (_%g165582165601%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165582165601%_))
                      (let ((_%e165585165603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165582165601%_))))
                        (let ((_%hd165586165606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165585165603%_)))
                              (_%tl165587165608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165585165603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165587165608%_))
                              (let ((_%e165588165611%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165587165608%_))))
                                (let ((_%hd165589165614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165588165611%_)))
                                      (_%tl165590165616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165588165611%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165590165616%_))
                                      (let ((_%e165591165619%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165590165616%_))))
                                        (let ((_%hd165592165622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165591165619%_)))
                                              (_%tl165593165624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165591165619%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165593165624%_))
                                              ((lambda (_%g165583165627%_
                                                        _%g165584165628%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165578%_ _%g165583165627%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165578%_
                                  _%g165584165628%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165643%_ ((_%rest165646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165584165628%_
                                       (cons _%g165583165627%_ '())))
                                (_%bind165648%_ '())
                                (_%args165649%_ '()))
               (let* ((_%rest165650165658%_ _%rest165646%_)
                      (_%else165652165666%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165648%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args165649%_)
                                                 '()))))))
                      (_%K165654165752%_
                       (lambda (_%rest165669%_ _%e165670%_)
                         (let* ((_%__stx172635172636%_ _%e165670%_)
                                (_%g165675165693%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172635172636%_)))))
                           (let ((_%__kont172637172638%_
                                  (lambda ()
                                    (_%lp165643%_
                                     _%rest165669%_
                                     _%bind165648%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165670%_))
                                           _%args165649%_))))
                                 (_%__kont172639172640%_
                                  (lambda ()
                                    (_%lp165643%_
                                     _%rest165669%_
                                     _%bind165648%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165670%_))
                                           _%args165649%_))))
                                 (_%__kont172641172642%_
                                  (lambda ()
                                    (let ((_%tmp165700%_
                                           (let ((__tmp173088
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173088))))
                                      (_%lp165643%_
                                       _%rest165669%_
                                       (cons (cons _%tmp165700%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165670%_))
                                                         '()))
                                             _%bind165648%_)
                                       (cons _%tmp165700%_ _%args165649%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172635172636%_))
                                 (let ((_%e165677165731%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172635172636%_))))
                                   (let ((_%tl165679165736%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165677165731%_)))
                                         (_%hd165678165734%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165677165731%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165678165734%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165678165734%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165679165736%_))
                                                 (let ((_%e165680165739%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165679165736%_))))
                                                   (let ((_%tl165682165744%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165680165739%_)))
                                                         (_%hd165681165742%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165680165739%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165682165744%_))
                                                         (_%__kont172637172638%_)
                                                         (_%__kont172641172642%_))))
                                                 (_%__kont172641172642%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165678165734%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165679165736%_))
                                                     (let ((_%e165686165716%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165679165736%_))))
                                                       (let ((_%tl165688165721%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165686165716%_)))
                     (_%hd165687165719%_
                      (let () (declare (not safe)) (##car _%e165686165716%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165688165721%_))
                     (_%__kont172639172640%_)
                     (_%__kont172641172642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172641172642%_))
                                                 (_%__kont172641172642%_)))
                                         (_%__kont172641172642%_))))
                                 (_%__kont172641172642%_)))))))
                 (if (pair? _%rest165650165658%_)
                     (let ((_%hd165655165755%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165650165658%_)))
                           (_%tl165656165757%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165650165658%_))))
                       (let* ((_%e165760%_ _%hd165655165755%_)
                              (_%rest165762%_ _%tl165656165757%_))
                         (_%K165654165752%_ _%rest165762%_ _%e165760%_)))
                     (_%else165652165666%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165592165622%_
                                               _%hd165589165614%_)
                                              (_%g165581165598%_
                                               _%g165582165601%_))))
                                      (_%g165581165598%_ _%g165582165601%_))))
                              (_%g165581165598%_ _%g165582165601%_))))
                      (_%g165581165598%_ _%g165582165601%_)))))
          (_%g165580165764%_ _%stx165579%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self165389%_ _%stx165390%_)
        (let* ((_%g165392165409%_
                (lambda (_%g165393165406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165393165406%_))))
               (_%g165391165575%_
                (lambda (_%g165393165412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165393165412%_))
                      (let ((_%e165396165414%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165393165412%_))))
                        (let ((_%hd165397165417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165396165414%_)))
                              (_%tl165398165419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165396165414%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165398165419%_))
                              (let ((_%e165399165422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165398165419%_))))
                                (let ((_%hd165400165425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165399165422%_)))
                                      (_%tl165401165427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165399165422%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165401165427%_))
                                      (let ((_%e165402165430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165401165427%_))))
                                        (let ((_%hd165403165433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165402165430%_)))
                                              (_%tl165404165435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165402165430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165404165435%_))
                                              ((lambda (_%g165394165438%_
                                                        _%g165395165439%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165389%_ _%g165394165438%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165389%_
                                  _%g165395165439%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165454%_ ((_%rest165457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165395165439%_
                                       (cons _%g165394165438%_ '())))
                                (_%bind165459%_ '())
                                (_%args165460%_ '()))
               (let* ((_%rest165461165469%_ _%rest165457%_)
                      (_%else165463165477%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165459%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args165460%_)
                                                 '()))))))
                      (_%K165465165563%_
                       (lambda (_%rest165480%_ _%e165481%_)
                         (let* ((_%__stx172681172682%_ _%e165481%_)
                                (_%g165486165504%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172681172682%_)))))
                           (let ((_%__kont172683172684%_
                                  (lambda ()
                                    (_%lp165454%_
                                     _%rest165480%_
                                     _%bind165459%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165481%_))
                                           _%args165460%_))))
                                 (_%__kont172685172686%_
                                  (lambda ()
                                    (_%lp165454%_
                                     _%rest165480%_
                                     _%bind165459%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165481%_))
                                           _%args165460%_))))
                                 (_%__kont172687172688%_
                                  (lambda ()
                                    (let ((_%tmp165511%_
                                           (let ((__tmp173089
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173089))))
                                      (_%lp165454%_
                                       _%rest165480%_
                                       (cons (cons _%tmp165511%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165481%_))
                                                         '()))
                                             _%bind165459%_)
                                       (cons _%tmp165511%_ _%args165460%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172681172682%_))
                                 (let ((_%e165488165542%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172681172682%_))))
                                   (let ((_%tl165490165547%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165488165542%_)))
                                         (_%hd165489165545%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165488165542%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165489165545%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165489165545%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165490165547%_))
                                                 (let ((_%e165491165550%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165490165547%_))))
                                                   (let ((_%tl165493165555%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165491165550%_)))
                                                         (_%hd165492165553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165491165550%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165493165555%_))
                                                         (_%__kont172683172684%_)
                                                         (_%__kont172687172688%_))))
                                                 (_%__kont172687172688%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165489165545%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165490165547%_))
                                                     (let ((_%e165497165527%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165490165547%_))))
                                                       (let ((_%tl165499165532%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165497165527%_)))
                     (_%hd165498165530%_
                      (let () (declare (not safe)) (##car _%e165497165527%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165499165532%_))
                     (_%__kont172685172686%_)
                     (_%__kont172687172688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172687172688%_))
                                                 (_%__kont172687172688%_)))
                                         (_%__kont172687172688%_))))
                                 (_%__kont172687172688%_)))))))
                 (if (pair? _%rest165461165469%_)
                     (let ((_%hd165466165566%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165461165469%_)))
                           (_%tl165467165568%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165461165469%_))))
                       (let* ((_%e165571%_ _%hd165466165566%_)
                              (_%rest165573%_ _%tl165467165568%_))
                         (_%K165465165563%_ _%rest165573%_ _%e165571%_)))
                     (_%else165463165477%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165403165433%_
                                               _%hd165400165425%_)
                                              (_%g165392165409%_
                                               _%g165393165412%_))))
                                      (_%g165392165409%_ _%g165393165412%_))))
                              (_%g165392165409%_ _%g165393165412%_))))
                      (_%g165392165409%_ _%g165393165412%_)))))
          (_%g165391165575%_ _%stx165390%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self165305%_ _%stx165306%_)
        (let* ((_%g165308165329%_
                (lambda (_%g165309165326%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165309165326%_))))
               (_%g165307165386%_
                (lambda (_%g165309165332%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165309165332%_))
                      (let ((_%e165313165334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165309165332%_))))
                        (let ((_%hd165314165337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165313165334%_)))
                              (_%tl165315165339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165313165334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165315165339%_))
                              (let ((_%e165316165342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165315165339%_))))
                                (let ((_%hd165317165345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165316165342%_)))
                                      (_%tl165318165347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165316165342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165318165347%_))
                                      (let ((_%e165319165350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165318165347%_))))
                                        (let ((_%hd165320165353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165319165350%_)))
                                              (_%tl165321165355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165319165350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165321165355%_))
                                              (let ((_%e165322165358%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165321165355%_))))
                                                (let ((_%hd165323165361%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165322165358%_)))
                                                      (_%tl165324165363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165322165358%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165324165363%_))
                                                      ((lambda (_%g165310165366%_
                                                                _%g165311165367%_
                                                                _%g165312165368%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165305%_
                                _%g165310165366%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165305%_
                                      _%g165311165367%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165305%_
                                            _%g165312165368%_))
                                         (cons ''#f '()))))))
               _%hd165323165361%_
               _%hd165320165353%_
               _%hd165317165345%_)
              (_%g165308165329%_ _%g165309165332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165308165329%_
                                               _%g165309165332%_))))
                                      (_%g165308165329%_ _%g165309165332%_))))
                              (_%g165308165329%_ _%g165309165332%_))))
                      (_%g165308165329%_ _%g165309165332%_)))))
          (_%g165307165386%_ _%stx165306%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self165205%_ _%stx165206%_)
        (let* ((_%g165208165233%_
                (lambda (_%g165209165230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165209165230%_))))
               (_%g165207165302%_
                (lambda (_%g165209165236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165209165236%_))
                      (let ((_%e165214165238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165209165236%_))))
                        (let ((_%hd165215165241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165214165238%_)))
                              (_%tl165216165243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165214165238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165216165243%_))
                              (let ((_%e165217165246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165216165243%_))))
                                (let ((_%hd165218165249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165217165246%_)))
                                      (_%tl165219165251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165217165246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165219165251%_))
                                      (let ((_%e165220165254%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165219165251%_))))
                                        (let ((_%hd165221165257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165220165254%_)))
                                              (_%tl165222165259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165220165254%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165222165259%_))
                                              (let ((_%e165223165262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165222165259%_))))
                                                (let ((_%hd165224165265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165223165262%_)))
                                                      (_%tl165225165267%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165223165262%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165225165267%_))
                                                      (let ((_%e165226165270%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165225165267%_))))
                (let ((_%hd165227165273%_
                       (let () (declare (not safe)) (##car _%e165226165270%_)))
                      (_%tl165228165275%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165226165270%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165228165275%_))
                      ((lambda (_%g165210165278%_
                                _%g165211165279%_
                                _%g165212165280%_
                                _%g165213165281%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165205%_
                                        _%g165211165279%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165205%_
                                              _%g165210165278%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165205%_
                                                    _%g165212165280%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165205%_
                                                          _%g165213165281%_))
                                                       (cons ''#f '())))))))
                       _%hd165227165273%_
                       _%hd165224165265%_
                       _%hd165221165257%_
                       _%hd165218165249%_)
                      (_%g165208165233%_ _%g165209165236%_))))
              (_%g165208165233%_ _%g165209165236%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165208165233%_
                                               _%g165209165236%_))))
                                      (_%g165208165233%_ _%g165209165236%_))))
                              (_%g165208165233%_ _%g165209165236%_))))
                      (_%g165208165233%_ _%g165209165236%_)))))
          (_%g165207165302%_ _%stx165206%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self165121%_ _%stx165122%_)
        (let* ((_%g165124165145%_
                (lambda (_%g165125165142%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165125165142%_))))
               (_%g165123165202%_
                (lambda (_%g165125165148%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165125165148%_))
                      (let ((_%e165129165150%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165125165148%_))))
                        (let ((_%hd165130165153%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165129165150%_)))
                              (_%tl165131165155%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165129165150%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165131165155%_))
                              (let ((_%e165132165158%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165131165155%_))))
                                (let ((_%hd165133165161%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165132165158%_)))
                                      (_%tl165134165163%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165132165158%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165134165163%_))
                                      (let ((_%e165135165166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165134165163%_))))
                                        (let ((_%hd165136165169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165135165166%_)))
                                              (_%tl165137165171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165135165166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165137165171%_))
                                              (let ((_%e165138165174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165137165171%_))))
                                                (let ((_%hd165139165177%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165138165174%_)))
                                                      (_%tl165140165179%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165138165174%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165140165179%_))
                                                      ((lambda (_%g165126165182%_
                                                                _%g165127165183%_
                                                                _%g165128165184%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165121%_
                                _%g165126165182%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165121%_
                                      _%g165127165183%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165121%_
                                            _%g165128165184%_))
                                         (cons ''#f '()))))))
               _%hd165139165177%_
               _%hd165136165169%_
               _%hd165133165161%_)
              (_%g165124165145%_ _%g165125165148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165124165145%_
                                               _%g165125165148%_))))
                                      (_%g165124165145%_ _%g165125165148%_))))
                              (_%g165124165145%_ _%g165125165148%_))))
                      (_%g165124165145%_ _%g165125165148%_)))))
          (_%g165123165202%_ _%stx165122%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self165021%_ _%stx165022%_)
        (let* ((_%g165024165049%_
                (lambda (_%g165025165046%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165025165046%_))))
               (_%g165023165118%_
                (lambda (_%g165025165052%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165025165052%_))
                      (let ((_%e165030165054%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165025165052%_))))
                        (let ((_%hd165031165057%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165030165054%_)))
                              (_%tl165032165059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165030165054%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165032165059%_))
                              (let ((_%e165033165062%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165032165059%_))))
                                (let ((_%hd165034165065%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165033165062%_)))
                                      (_%tl165035165067%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165033165062%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165035165067%_))
                                      (let ((_%e165036165070%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165035165067%_))))
                                        (let ((_%hd165037165073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165036165070%_)))
                                              (_%tl165038165075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165036165070%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165038165075%_))
                                              (let ((_%e165039165078%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165038165075%_))))
                                                (let ((_%hd165040165081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165039165078%_)))
                                                      (_%tl165041165083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165039165078%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165041165083%_))
                                                      (let ((_%e165042165086%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165041165083%_))))
                (let ((_%hd165043165089%_
                       (let () (declare (not safe)) (##car _%e165042165086%_)))
                      (_%tl165044165091%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165042165086%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165044165091%_))
                      ((lambda (_%g165026165094%_
                                _%g165027165095%_
                                _%g165028165096%_
                                _%g165029165097%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165021%_
                                        _%g165027165095%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165021%_
                                              _%g165026165094%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165021%_
                                                    _%g165028165096%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165021%_
                                                          _%g165029165097%_))
                                                       (cons ''#f '())))))))
                       _%hd165043165089%_
                       _%hd165040165081%_
                       _%hd165037165073%_
                       _%hd165034165065%_)
                      (_%g165024165049%_ _%g165025165052%_))))
              (_%g165024165049%_ _%g165025165052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165024165049%_
                                               _%g165025165052%_))))
                                      (_%g165024165049%_ _%g165025165052%_))))
                              (_%g165024165049%_ _%g165025165052%_))))
                      (_%g165024165049%_ _%g165025165052%_)))))
          (_%g165023165118%_ _%stx165022%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self164816%_ _%stx164817%_)
        (let* ((_%g164819164840%_
                (lambda (_%g164820164837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164820164837%_))))
               (_%g164818165018%_
                (lambda (_%g164820164843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164820164843%_))
                      (let ((_%e164824164845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164820164843%_))))
                        (let ((_%hd164825164848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164824164845%_)))
                              (_%tl164826164850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164824164845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164826164850%_))
                              (let ((_%e164827164853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164826164850%_))))
                                (let ((_%hd164828164856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164827164853%_)))
                                      (_%tl164829164858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164827164853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164829164858%_))
                                      (let ((_%e164830164861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164829164858%_))))
                                        (let ((_%hd164831164864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164830164861%_)))
                                              (_%tl164832164866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164830164861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164832164866%_))
                                              (let ((_%e164833164869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164832164866%_))))
                                                (let ((_%hd164834164872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164833164869%_)))
                                                      (_%tl164835164874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164833164869%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164835164874%_))
                                                      ((lambda (_%g164821164877%_
                                                                _%g164822164878%_
                                                                _%g164823164879%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self164816%_
                                    _%g164821164877%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self164816%_
                                          _%g164822164878%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp164897%_ ((_%rest164900%_
                                         (cons _%g164822164878%_
                                               (cons _%g164821164877%_ '())))
                                        (_%bind164902%_ '())
                                        (_%args164903%_ '()))
                       (let* ((_%rest164904164912%_ _%rest164900%_)
                              (_%else164906164920%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind164902%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp173090
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp173090 _%args164903%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K164908165006%_
                               (lambda (_%rest164923%_ _%e164924%_)
                                 (let* ((_%__stx172727172728%_ _%e164924%_)
                                        (_%g164929164947%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172727172728%_)))))
                                   (let ((_%__kont172729172730%_
                                          (lambda ()
                                            (_%lp164897%_
                                             _%rest164923%_
                                             _%bind164902%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164924%_))
                                                   _%args164903%_))))
                                         (_%__kont172731172732%_
                                          (lambda ()
                                            (_%lp164897%_
                                             _%rest164923%_
                                             _%bind164902%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164924%_))
                                                   _%args164903%_))))
                                         (_%__kont172733172734%_
                                          (lambda ()
                                            (let ((_%tmp164954%_
                                                   (let ((__tmp173091
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp173091))))
                                              (_%lp164897%_
                                               _%rest164923%_
                                               (cons (cons _%tmp164954%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e164924%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind164902%_)
                                               (cons _%tmp164954%_
                                                     _%args164903%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172727172728%_))
                                         (let ((_%e164931164985%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172727172728%_))))
                                           (let ((_%tl164933164990%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e164931164985%_)))
                                                 (_%hd164932164988%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e164931164985%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd164932164988%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd164932164988%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl164933164990%_))
                                                         (let ((_%e164934164993%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl164933164990%_))))
                   (let ((_%tl164936164998%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e164934164993%_)))
                         (_%hd164935164996%_
                          (let ()
                            (declare (not safe))
                            (##car _%e164934164993%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl164936164998%_))
                         (_%__kont172729172730%_)
                         (_%__kont172733172734%_))))
                 (_%__kont172733172734%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd164932164988%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164933164990%_))
                     (let ((_%e164940164970%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164933164990%_))))
                       (let ((_%tl164942164975%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164940164970%_)))
                             (_%hd164941164973%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164940164970%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164942164975%_))
                             (_%__kont172731172732%_)
                             (_%__kont172733172734%_))))
                     (_%__kont172733172734%_))
                 (_%__kont172733172734%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172733172734%_))))
                                         (_%__kont172733172734%_)))))))
                         (if (pair? _%rest164904164912%_)
                             (let ((_%hd164909165009%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest164904164912%_)))
                                   (_%tl164910165011%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest164904164912%_))))
                               (let* ((_%e165014%_ _%hd164909165009%_)
                                      (_%rest165016%_ _%tl164910165011%_))
                                 (_%K164908165006%_
                                  _%rest165016%_
                                  _%e165014%_)))
                             (_%else164906164920%_))))))
               _%hd164834164872%_
               _%hd164831164864%_
               _%hd164828164856%_)
              (_%g164819164840%_ _%g164820164843%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164819164840%_
                                               _%g164820164843%_))))
                                      (_%g164819164840%_ _%g164820164843%_))))
                              (_%g164819164840%_ _%g164820164843%_))))
                      (_%g164819164840%_ _%g164820164843%_)))))
          (_%g164818165018%_ _%stx164817%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self164595%_ _%stx164596%_)
        (let* ((_%g164598164623%_
                (lambda (_%g164599164620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164599164620%_))))
               (_%g164597164813%_
                (lambda (_%g164599164626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164599164626%_))
                      (let ((_%e164604164628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164599164626%_))))
                        (let ((_%hd164605164631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164604164628%_)))
                              (_%tl164606164633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164604164628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164606164633%_))
                              (let ((_%e164607164636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164606164633%_))))
                                (let ((_%hd164608164639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164607164636%_)))
                                      (_%tl164609164641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164607164636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164609164641%_))
                                      (let ((_%e164610164644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164609164641%_))))
                                        (let ((_%hd164611164647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164610164644%_)))
                                              (_%tl164612164649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164610164644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164612164649%_))
                                              (let ((_%e164613164652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164612164649%_))))
                                                (let ((_%hd164614164655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164613164652%_)))
                                                      (_%tl164615164657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164613164652%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164615164657%_))
                                                      (let ((_%e164616164660%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164615164657%_))))
                (let ((_%hd164617164663%_
                       (let () (declare (not safe)) (##car _%e164616164660%_)))
                      (_%tl164618164665%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164616164660%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164618164665%_))
                      ((lambda (_%g164600164668%_
                                _%g164601164669%_
                                _%g164602164670%_
                                _%g164603164671%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164595%_
                                            _%g164601164669%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164595%_
                                                  _%g164600164668%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164595%_
                                                        _%g164602164670%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp164692%_ ((_%rest164695%_
                                                 (cons _%g164602164670%_
                                                       (cons _%g164600164668%_
                                                             (cons _%g164601164669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind164697%_ '())
                                                (_%args164698%_ '()))
                               (let* ((_%rest164699164707%_ _%rest164695%_)
                                      (_%else164701164715%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind164697%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp173092 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp173092 _%args164698%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K164703164801%_
                                       (lambda (_%rest164718%_ _%e164719%_)
                                         (let* ((_%__stx172773172774%_
                                                 _%e164719%_)
                                                (_%g164724164742%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx172773172774%_)))))
                                           (let ((_%__kont172775172776%_
                                                  (lambda ()
                                                    (_%lp164692%_
                                                     _%rest164718%_
                                                     _%bind164697%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164719%_))
                                                           _%args164698%_))))
                                                 (_%__kont172777172778%_
                                                  (lambda ()
                                                    (_%lp164692%_
                                                     _%rest164718%_
                                                     _%bind164697%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164719%_))
                                                           _%args164698%_))))
                                                 (_%__kont172779172780%_
                                                  (lambda ()
                                                    (let ((_%tmp164749%_
                                                           (let ((__tmp173093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp173093))))
              (_%lp164692%_
               _%rest164718%_
               (cons (cons _%tmp164749%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e164719%_))
                                 '()))
                     _%bind164697%_)
               (cons _%tmp164749%_ _%args164698%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx172773172774%_))
                                                 (let ((_%e164726164780%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx172773172774%_))))
                                                   (let ((_%tl164728164785%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164726164780%_)))
                                                         (_%hd164727164783%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164726164780%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd164727164783%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd164727164783%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164728164785%_))
                         (let ((_%e164729164788%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164728164785%_))))
                           (let ((_%tl164731164793%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164729164788%_)))
                                 (_%hd164730164791%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164729164788%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164731164793%_))
                                 (_%__kont172775172776%_)
                                 (_%__kont172779172780%_))))
                         (_%__kont172779172780%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd164727164783%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl164728164785%_))
                             (let ((_%e164735164765%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl164728164785%_))))
                               (let ((_%tl164737164770%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e164735164765%_)))
                                     (_%hd164736164768%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e164735164765%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl164737164770%_))
                                     (_%__kont172777172778%_)
                                     (_%__kont172779172780%_))))
                             (_%__kont172779172780%_))
                         (_%__kont172779172780%_)))
                 (_%__kont172779172780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172779172780%_)))))))
                                 (if (pair? _%rest164699164707%_)
                                     (let ((_%hd164704164804%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest164699164707%_)))
                                           (_%tl164705164806%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest164699164707%_))))
                                       (let* ((_%e164809%_ _%hd164704164804%_)
                                              (_%rest164811%_
                                               _%tl164705164806%_))
                                         (_%K164703164801%_
                                          _%rest164811%_
                                          _%e164809%_)))
                                     (_%else164701164715%_))))))
                       _%hd164617164663%_
                       _%hd164614164655%_
                       _%hd164611164647%_
                       _%hd164608164639%_)
                      (_%g164598164623%_ _%g164599164626%_))))
              (_%g164598164623%_ _%g164599164626%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164598164623%_
                                               _%g164599164626%_))))
                                      (_%g164598164623%_ _%g164599164626%_))))
                              (_%g164598164623%_ _%g164599164626%_))))
                      (_%g164598164623%_ _%g164599164626%_)))))
          (_%g164597164813%_ _%stx164596%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self164434%_ _%stx164435%_)
        (letrec ((_%import-set-template164437%_
                  (lambda (_%in164540%_ _%phi164541%_)
                    (let ((_%iphi164543%_
                           (fx+ _%phi164541%_
                                (##direct-structure-ref
                                 _%in164540%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports164544%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in164540%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp164546%_ ((_%rest164548%_ _%imports164544%_)
                                         (_%r164549%_ '()))
                        (let* ((_%rest164550164558%_ _%rest164548%_)
                               (_%else164552164566%_ (lambda () _%r164549%_))
                               (_%K164554164583%_
                                (lambda (_%rest164569%_ _%in164570%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in164570%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi164543%_))
                                          (_%lp164546%_
                                           _%rest164569%_
                                           (cons _%in164570%_ _%r164549%_))
                                          (_%lp164546%_
                                           _%rest164569%_
                                           _%r164549%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in164570%_
                                             'gx#module-import::t))
                                          (let ((_%iphi164574%_
                                                 (fx+ _%phi164541%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in164570%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi164574%_))
                                                (_%lp164546%_
                                                 _%rest164569%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in164570%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r164549%_))
                                                (_%lp164546%_
                                                 _%rest164569%_
                                                 _%r164549%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in164570%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi164577%_
                                                     (fx+ _%iphi164543%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in164570%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi164577%_))
                                                    (_%lp164546%_
                                                     _%rest164569%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in164570%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r164549%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi164577%_))
                                                        (_%lp164546%_
                                                         _%rest164569%_
                                                         (let ((__tmp173094
                                                                (_%import-set-template164437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in164570%_
                         _%iphi164543%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r164549%_ __tmp173094)))
                (_%lp164546%_ _%rest164569%_ _%r164549%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp164546%_
                                               _%rest164569%_
                                               _%r164549%_)))))))
                          (if (pair? _%rest164550164558%_)
                              (let ((_%hd164555164586%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164550164558%_)))
                                    (_%tl164556164588%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164550164558%_))))
                                (let* ((_%in164591%_ _%hd164555164586%_)
                                       (_%rest164593%_ _%tl164556164588%_))
                                  (_%K164554164583%_
                                   _%rest164593%_
                                   _%in164591%_)))
                              (_%else164552164566%_))))))))
          (let* ((_%g164439164449%_
                  (lambda (_%g164440164446%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164440164446%_))))
                 (_%g164438164537%_
                  (lambda (_%g164440164452%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164440164452%_))
                        (let ((_%e164442164454%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164440164452%_))))
                          (let ((_%hd164443164457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164442164454%_)))
                                (_%tl164444164459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164442164454%_))))
                            ((lambda (_%g164441164462%_)
                               (let ((_%ht164473%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp164475%_ ((_%rest164477%_
                                                     _%g164441164462%_)
                                                    (_%loads164478%_ '()))
                                   (letrec ((_%K164480%_
                                             (lambda (_%ctx164530%_
                                                      _%rest164531%_)
                                               (let ((_%id164533%_
                                                      (##structure-ref
                                                       _%ctx164530%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht164473%_
                                                        _%id164533%_))
                                                     (_%lp164475%_
                                                      _%rest164531%_
                                                      _%loads164478%_)
                                                     (let ((_%rt164535%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id164533%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht164473%_
                                                          _%id164533%_
                                                          _%rt164535%_))
                                                       (_%lp164475%_
                                                        _%rest164531%_
                                                        (cons _%rt164535%_
                                                              _%loads164478%_))))))))
                                     (let* ((_%rest164481164489%_
                                             _%rest164477%_)
                                            (_%else164483164501%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp173096
                                                            (lambda (_%g164496164498%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g164496164498%_)))
                   (__tmp173095 (reverse _%loads164478%_)))
               (declare (not safe))
               (##map __tmp173096 __tmp173095)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K164485164518%_
                                             (lambda (_%rest164504%_
                                                      _%in164505%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in164505%_
                                                      'gx#module-context::t))
                                                   (_%K164480%_
                                                    _%in164505%_
                                                    _%rest164504%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in164505%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in164505%_
                               '3
                               '#f
                               '#f)))
                   (_%K164480%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in164505%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest164504%_)
                   (_%lp164475%_ _%rest164504%_ _%loads164478%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in164505%_
                      'gx#import-set::t))
                   (let ((_%phi164510%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164505%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi164510%_)
                         (_%K164480%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164505%_
                             '1
                             '#f
                             '#f))
                          _%rest164504%_)
                         (if (fxpositive? _%phi164510%_)
                             (let ((_%deps164514%_
                                    (_%import-set-template164437%_
                                     _%in164505%_
                                     '0)))
                               (_%lp164475%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest164504%_
                                   _%deps164514%_))
                                _%loads164478%_))
                             (_%lp164475%_ _%rest164504%_ _%loads164478%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx164435%_
                      _%in164505%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest164481164489%_)
                                           (let ((_%hd164486164521%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest164481164489%_)))
                                                 (_%tl164487164523%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest164481164489%_))))
                                             (let* ((_%in164526%_
                                                     _%hd164486164521%_)
                                                    (_%rest164528%_
                                                     _%tl164487164523%_))
                                               (_%K164485164518%_
                                                _%rest164528%_
                                                _%in164526%_)))
                                           (_%else164483164501%_)))))))
                             _%tl164444164459%_)))
                        (_%g164439164449%_ _%g164440164452%_)))))
            (_%g164438164537%_ _%stx164435%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self164248%_ _%stx164249%_)
        (letrec ((_%add-lift!164251%_
                  (lambda (_%expr164432%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr164432%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote164252%_
                  (lambda (_%id164429%_ _%marks164430%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id164429%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks164430%_
                                                        '()))))))))
                 (_%generate-simple164253%_
                  (lambda (_%stxq164424%_)
                    (let ((_%gid164426%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid164427%_
                           (gxc#generate-runtime-identifier _%stxq164424%_)))
                      (_%add-lift!164251%_
                       (cons 'define
                             (cons _%gid164426%_
                                   (cons (_%generate-syntax-quote164252%_
                                          _%qid164427%_
                                          ''())
                                         '()))))
                      (let ((__tmp173097
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173097 _%stxq164424%_ _%gid164426%_))
                      _%gid164426%_)))
                 (_%generate-serialized164254%_
                  (lambda (_%stxq164414%_ _%marks164415%_)
                    (let* ((_%mark-refs164417%_
                            (map _%generate-mark164255%_ _%marks164415%_))
                           (_%gid164419%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid164421%_
                            (gxc#generate-runtime-identifier _%stxq164414%_)))
                      (_%add-lift!164251%_
                       (cons 'define
                             (cons _%gid164419%_
                                   (cons (_%generate-syntax-quote164252%_
                                          _%qid164421%_
                                          (cons 'list _%mark-refs164417%_))
                                         '()))))
                      (let ((__tmp173098
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173098 _%stxq164414%_ _%gid164419%_))
                      _%gid164419%_)))
                 (_%generate-mark164255%_
                  (lambda (_%mark164399%_)
                    (let ((_%$e164401%_
                           (let ((__tmp173099
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp173099 _%mark164399%_))))
                      (if _%$e164401%_
                          _%$e164401%_
                          (let* ((_%gid164405%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr164407%_
                                  (_%serialize-mark164256%_ _%mark164399%_))
                                 (_%ctx164409%_
                                  (let ((__tmp173100
                                         (##structure-ref
                                          _%mark164399%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp173100)))
                                 (_%ctx-ref164411%_
                                  (if (eq? _%ctx164409%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref164257%_
                                                               _%ctx164409%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp173101
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp173101
                               _%mark164399%_
                               _%gid164405%_))
                            (_%add-lift!164251%_
                             (cons 'define
                                   (cons _%gid164405%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr164407%_ '()))
                   (cons _%ctx-ref164411%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid164405%_)))))
                 (_%serialize-mark164256%_
                  (lambda (_%mark164347%_)
                    (letrec ((_%quote-e164349%_
                              (lambda (_%sym164397%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym164397%_))
                                    _%sym164397%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym164397%_))))))
                      (let* ((_%mark164350164359%_ _%mark164347%_)
                             (_%E164352164362%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark164350164359%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K164353164374%_
                              (lambda (_%trace164365%_
                                       _%phi164366%_
                                       _%ctx164367%_
                                       _%subst164368%_)
                                (let ((_%subs164370%_
                                       (if _%subst164368%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst164368%_))
                                           '())))
                                  (cons _%phi164366%_
                                        (let ((__tmp173102
                                               (lambda (_%pair164372%_)
                                                 (cons (_%quote-e164349%_
                                                        (car _%pair164372%_))
                                                       (_%quote-e164349%_
                                                        (cdr _%pair164372%_))))))
                                          (declare (not safe))
                                          (##map __tmp173102
                                                 _%subs164370%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark164350164359%_
                               'gx#expander-mark::t))
                            (let* ((_%e164354164377%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164350164359%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst164380%_ _%e164354164377%_)
                                   (_%e164355164382%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164350164359%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx164385%_ _%e164355164382%_)
                                   (_%e164356164387%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164350164359%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi164390%_ _%e164356164387%_)
                                   (_%e164357164392%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164350164359%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace164395%_ _%e164357164392%_))
                              (_%K164353164374%_
                               _%trace164395%_
                               _%phi164390%_
                               _%ctx164385%_
                               _%subst164380%_))
                            (_%E164352164362%_))))))
                 (_%context-ref164257%_
                  (lambda (_%ctx164334%_)
                    (if (let ((__tmp173103
                               (##structure-ref
                                _%ctx164334%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp173103
                           'gx#module-context::t))
                        (let ((_%ctx-ref164336%_
                               (_%context-ref-nested164259%_ _%ctx164334%_))
                              (_%ctx-origin164337%_
                               (_%context-ref-origin164258%_ _%ctx164334%_))
                              (_%origin164338%_
                               (_%context-ref-origin164258%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin164338%_ _%ctx-origin164337%_)
                              (let ((_%ref164340%_
                                     (_%context-ref-nested164259%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp164342%_ ((_%ref164344%_
                                                    (cdr _%ref164340%_))
                                                   (_%ctx-ref164345%_
                                                    (cdr _%ctx-ref164336%_)))
                                  (if (and (pair? _%ref164344%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref164344%_))
                                                (car _%ctx-ref164345%_)))
                                      (_%lp164342%_
                                       (cdr _%ref164344%_)
                                       (cdr _%ctx-ref164345%_))
                                      (cons '#f _%ctx-ref164345%_))))
                              _%ctx-ref164336%_))
                        (let ((__tmp173104
                               (##structure-ref
                                _%ctx164334%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp173104)))))
                 (_%context-ref-origin164258%_
                  (lambda (_%ctx164326%_)
                    (let _%lp164328%_ ((_%ctx164330%_ _%ctx164326%_))
                      (let ((_%super164332%_
                             (##structure-ref
                              _%ctx164330%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164332%_
                               'gx#module-context::t))
                            (_%lp164328%_ _%super164332%_)
                            _%ctx164330%_)))))
                 (_%context-ref-nested164259%_
                  (lambda (_%ctx164317%_)
                    (let _%lp164319%_ ((_%ctx164321%_ _%ctx164317%_)
                                       (_%r164322%_ '()))
                      (let ((_%super164324%_
                             (##structure-ref
                              _%ctx164321%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164324%_
                               'gx#module-context::t))
                            (_%lp164319%_
                             _%super164324%_
                             (cons (car (##structure-ref
                                         _%ctx164321%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r164322%_))
                            (cons (let ((__tmp173105
                                         (##structure-ref
                                          _%ctx164321%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp173105))
                                  _%r164322%_)))))))
          (let* ((_%g164261164274%_
                  (lambda (_%g164262164271%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164262164271%_))))
                 (_%g164260164314%_
                  (lambda (_%g164262164277%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164262164277%_))
                        (let ((_%e164264164279%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164262164277%_))))
                          (let ((_%hd164265164282%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164264164279%_)))
                                (_%tl164266164284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164264164279%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164266164284%_))
                                (let ((_%e164267164287%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164266164284%_))))
                                  (let ((_%hd164268164290%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164267164287%_)))
                                        (_%tl164269164292%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164267164287%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164269164292%_))
                                        ((lambda (_%g164263164295%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g164263164295%_))
                                               (let ((_%$e164308%_
                                                      (let ((__tmp173106
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp173106 _%g164263164295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e164308%_
                                                     _%$e164308%_
                                                     (let ((_%marks164312%_
                                                            (##direct-structure-ref
                                                             _%g164263164295%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks164312%_)
                                                           (_%generate-simple164253%_
                                                            _%g164263164295%_)
                                                           (_%generate-serialized164254%_
                                                            _%g164263164295%_
                                                            _%marks164312%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g164263164295%_))))
                                         _%hd164268164290%_)
                                        (_%g164261164274%_
                                         _%g164262164277%_))))
                                (_%g164261164274%_ _%g164262164277%_))))
                        (_%g164261164274%_ _%g164262164277%_)))))
            (_%g164260164314%_ _%stx164249%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self164180%_ _%stx164181%_)
        (let* ((_%g164183164200%_
                (lambda (_%g164184164197%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164184164197%_))))
               (_%g164182164245%_
                (lambda (_%g164184164203%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164184164203%_))
                      (let ((_%e164187164205%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164184164203%_))))
                        (let ((_%hd164188164208%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164187164205%_)))
                              (_%tl164189164210%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164187164205%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164189164210%_))
                              (let ((_%e164190164213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164189164210%_))))
                                (let ((_%hd164191164216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164190164213%_)))
                                      (_%tl164192164218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164190164213%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164192164218%_))
                                      (let ((_%e164193164221%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164192164218%_))))
                                        (let ((_%hd164194164224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164193164221%_)))
                                              (_%tl164195164226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164193164221%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164195164226%_))
                                              ((lambda (_%g164185164229%_
                                                        _%g164186164230%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g164186164230%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164180%_
                              _%g164185164229%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164194164224%_
                                               _%hd164191164216%_)
                                              (_%g164183164200%_
                                               _%g164184164203%_))))
                                      (_%g164183164200%_ _%g164184164203%_))))
                              (_%g164183164200%_ _%g164184164203%_))))
                      (_%g164183164200%_ _%g164184164203%_)))))
          (_%g164182164245%_ _%stx164181%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self164129%_ _%stx164130%_)
        (let* ((_%g164132164142%_
                (lambda (_%g164133164139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164133164139%_))))
               (_%g164131164177%_
                (lambda (_%g164133164145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164133164145%_))
                      (let ((_%e164135164147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164133164145%_))))
                        (let ((_%hd164136164150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164135164147%_)))
                              (_%tl164137164152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164135164147%_))))
                          ((lambda (_%g164134164155%_)
                             (let* ((_%c-body164169%_
                                     (map (lambda (_%g164164164166%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self164129%_
                                               _%g164164164166%_)))
                                          _%g164134164155%_))
                                    (_%c-body164174%_
                                     (let ((__tmp173107
                                            (lambda (_%$obj164171%_)
                                              (not (eq? _%$obj164171%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp173107
                                        _%c-body164169%_))))
                               (cons '%#begin _%c-body164174%_)))
                           _%tl164137164152%_)))
                      (_%g164132164142%_ _%g164133164145%_)))))
          (_%g164131164177%_ _%stx164130%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self164034%_ _%stx164035%_)
        (let* ((_%g164037164047%_
                (lambda (_%g164038164044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164038164044%_))))
               (_%g164036164126%_
                (lambda (_%g164038164050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164038164050%_))
                      (let ((_%e164040164052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164038164050%_))))
                        (let ((_%hd164041164055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164040164052%_)))
                              (_%tl164042164057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164040164052%_))))
                          ((lambda (_%g164039164060%_)
                             (let* ((_%phi164070%_
                                     (let ((__tmp173108
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp173108 '1)))
                                    (_%block164072%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self164034%_ 'state))
                                      _%phi164070%_))
                                    (_%compiled164075%_
                                     (let ((__tmp173109
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self164034%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g164039164060%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp173109
                                        gx#current-expander-phi
                                        _%phi164070%_)))
                                    (_%g164078164088%_
                                     (lambda (_%g164079164085%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g164079164085%_))))
                                    (_%g164077164123%_
                                     (lambda (_%g164079164091%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g164079164091%_))
                                           (let ((_%e164081164093%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g164079164091%_))))
                                             (let ((_%hd164082164096%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e164081164093%_)))
                                                   (_%tl164083164098%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e164081164093%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd164082164096%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd164082164096%_))
                                                       ((lambda (_%g164080164101%_)
                                                          (let ((_%c-body164118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj164115%_)
                                   (not (eq? _%$obj164115%_ '#!void)))
                                 _%g164080164101%_)))
                    (if _%block164072%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block164072%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body164118%_))
                        (if (null? _%c-body164118%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body164118%_)))))
                _%tl164083164098%_)
               (_%g164078164088%_ _%g164079164091%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g164078164088%_
                                                    _%g164079164091%_))))
                                           (_%g164078164088%_
                                            _%g164079164091%_)))))
                               (_%g164077164123%_ _%compiled164075%_)))
                           _%tl164042164057%_)))
                      (_%g164037164047%_ _%g164038164050%_)))))
          (_%g164036164126%_ _%stx164035%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self163965%_ _%stx163966%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163965%_ 'state)))
        (let* ((_%g163968163982%_
                (lambda (_%g163969163979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163969163979%_))))
               (_%g163967164031%_
                (lambda (_%g163969163985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163969163985%_))
                      (let ((_%e163972163987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163969163985%_))))
                        (let ((_%hd163973163990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163972163987%_)))
                              (_%tl163974163992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163972163987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163974163992%_))
                              (let ((_%e163975163995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163974163992%_))))
                                (let ((_%hd163976163998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163975163995%_)))
                                      (_%tl163977164000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163975163995%_))))
                                  ((lambda (_%g163970164003%_
                                            _%g163971164004%_)
                                     (let ((_%key164017%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g163971164004%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key164017%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx163966%_
                                              _%g163971164004%_
                                              _%key164017%_)))
                                       (let* ((_%ctx164019%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g163971164004%_)))
                                              (_%code164022%_
                                               (let ((__tmp173110
                                                      (lambda ()
                                                        (let ((__tmp173111
                                                               (##structure-ref
                                                                _%ctx164019%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self163965%_
                                                           __tmp173111)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp173110
                                                  gx#current-expander-context
                                                  _%ctx164019%_)))
                                              (_%rt164024%_
                                               (let ((__tmp173112
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp173112
                                                  _%ctx164019%_)))
                                              (_%loader164026%_
                                               (if _%rt164024%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt164024%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid164028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g163971164004%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self163965%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid164028%_
                                                     (cons _%code164022%_
                                                           _%loader164026%_))))))
                                   _%tl163977164000%_
                                   _%hd163976163998%_)))
                              (_%g163968163982%_ _%g163969163985%_))))
                      (_%g163968163982%_ _%g163969163985%_)))))
          (_%g163967164031%_ _%stx163966%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx163952%_ _%context-chain163953%_)
        (let _%lp163955%_ ((_%ctx163957%_ _%ctx163952%_) (_%path163958%_ '()))
          (let ((_%super163960%_
                 (##structure-ref _%ctx163957%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super163960%_ _%context-chain163953%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx163957%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path163958%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super163960%_
                       'gx#module-context::t))
                    (_%lp163955%_
                     _%super163960%_
                     (cons (car (##structure-ref
                                 _%ctx163957%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path163958%_))
                    (cons (let ((__tmp173113
                                 (##structure-ref
                                  _%ctx163957%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp173113))
                          _%path163958%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp163945%_ ((_%ctx163947%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r163948%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx163947%_ 'gx#module-context::t))
              (_%lp163945%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx163947%_ '3 '#f '#f))
               (cons _%ctx163947%_ _%r163948%_))
              _%r163948%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self163710%_ _%stx163711%_)
        (letrec* ((_%context-chain163713%_ (gxc#current-context-chain))
                  (_%make-import-spec163714%_
                   (lambda (_%in163882%_)
                     (let* ((_%in163883163895%_ _%in163882%_)
                            (_%E163885163898%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in163883163895%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K163886163908%_
                             (lambda (_%phi163901%_
                                      _%name163902%_
                                      _%src-name163903%_
                                      _%src-phi163904%_
                                      _%src-key163905%_
                                      _%src-ctx163906%_)
                               (cons _%phi163901%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name163902%_)
                                           (cons _%src-phi163904%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name163903%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in163883163895%_
                              'gx#module-import::t))
                           (let ((_%e163887163911%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in163883163895%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e163887163911%_
                                    'gx#module-export::t))
                                 (let* ((_%e163890163914%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163887163911%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx163917%_ _%e163890163914%_)
                                        (_%e163891163919%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163887163911%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key163922%_ _%e163891163919%_)
                                        (_%e163892163924%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163887163911%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi163927%_ _%e163892163924%_)
                                        (_%e163893163929%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163887163911%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name163932%_ _%e163893163929%_)
                                        (_%e163888163934%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163883163895%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name163937%_ _%e163888163934%_)
                                        (_%e163889163939%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163883163895%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi163942%_ _%e163889163939%_))
                                   (_%K163886163908%_
                                    _%phi163942%_
                                    _%name163937%_
                                    _%src-name163932%_
                                    _%src-phi163927%_
                                    _%src-key163922%_
                                    _%src-ctx163917%_))
                                 (_%E163885163898%_)))
                           (_%E163885163898%_)))))
                  (_%make-import-path163715%_
                   (lambda (_%ctx163880%_)
                     (gxc#generate-meta-import-path
                      _%ctx163880%_
                      _%context-chain163713%_)))
                  (_%make-import-spec-in163716%_
                   (lambda (_%ctx163877%_ _%in163878%_)
                     (cons 'spec:
                           (cons (_%make-import-path163715%_ _%ctx163877%_)
                                 (reverse _%in163878%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self163710%_ 'state)))
          (let* ((_%g163718163728%_
                  (lambda (_%g163719163725%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163719163725%_))))
                 (_%g163717163874%_
                  (lambda (_%g163719163731%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163719163731%_))
                        (let ((_%e163721163733%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163719163731%_))))
                          (let ((_%hd163722163736%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163721163733%_)))
                                (_%tl163723163738%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163721163733%_))))
                            ((lambda (_%g163720163741%_)
                               (let _%lp163752%_ ((_%rest163754%_
                                                   _%g163720163741%_)
                                                  (_%current-src163755%_ '#f)
                                                  (_%current-in163756%_ '())
                                                  (_%r163757%_ '()))
                                 (let* ((_%rest163758163766%_ _%rest163754%_)
                                        (_%else163760163776%_
                                         (lambda ()
                                           (let ((_%r163774%_
                                                  (if _%current-src163755%_
                                                      (cons (_%make-import-spec-in163716%_
                                                             _%current-src163755%_
                                                             _%current-in163756%_)
                                                            _%r163757%_)
                                                      _%r163757%_)))
                                             (cons '%#import
                                                   (reverse _%r163774%_)))))
                                        (_%K163762163862%_
                                         (lambda (_%rest163779%_ _%in163780%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in163780%_
                                                  'gx#module-import::t))
                                               (let* ((_%in163782163789%_
                                                       _%in163780%_)
                                                      (_%E163784163792%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in163782163789%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K163785163800%_
               (lambda (_%src-ctx163795%_)
                 (if (eq? _%current-src163755%_ _%src-ctx163795%_)
                     (_%lp163752%_
                      _%rest163779%_
                      _%current-src163755%_
                      (cons (_%make-import-spec163714%_ _%in163780%_)
                            _%current-in163756%_)
                      _%r163757%_)
                     (if _%current-src163755%_
                         (_%lp163752%_
                          _%rest163779%_
                          _%src-ctx163795%_
                          (cons (_%make-import-spec163714%_ _%in163780%_) '())
                          (cons (_%make-import-spec-in163716%_
                                 _%current-src163755%_
                                 _%current-in163756%_)
                                _%r163757%_))
                         (_%lp163752%_
                          _%rest163779%_
                          _%src-ctx163795%_
                          (cons (_%make-import-spec163714%_ _%in163780%_) '())
                          _%r163757%_)))))
              (_%e163786163803%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in163782163789%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e163786163803%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163787163806%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e163786163803%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx163809%_ _%e163787163806%_))
               (_%K163785163800%_ _%src-ctx163809%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163784163792%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in163780%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi163812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163780%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src163814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163780%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in163854%_
                                                           (let* ((_%g163815163824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path163715%_ _%src163814%_))
                          (_%E163818163828%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g163815163824%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K163820163844%_
                            (lambda (_%path163842%_) _%path163842%_))
                           (_%K163819163834%_
                            (lambda (_%path163832%_)
                              (cons 'in: _%path163832%_))))
                       (if (pair? _%g163815163824%_)
                           (let ((_%tl163822163849%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g163815163824%_)))
                                 (_%hd163821163847%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g163815163824%_))))
                             (if (null? _%tl163822163849%_)
                                 (let ((_%path163852%_ _%hd163821163847%_))
                                   (_%K163820163844%_ _%path163852%_))
                                 (let ((_%path163837%_ _%g163815163824%_))
                                   (_%K163819163834%_ _%path163837%_))))
                           (let ((_%path163837%_ _%g163815163824%_))
                             (_%K163819163834%_ _%path163837%_))))))
                  (_%r163856%_
                   (if _%current-src163755%_
                       (cons (_%make-import-spec-in163716%_
                              _%current-src163755%_
                              _%current-in163756%_)
                             _%r163757%_)
                       _%r163757%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp163752%_
                                                      _%rest163779%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi163812%_)
                                                                _%src-in163854%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi163812%_
                                    (cons _%src-in163854%_ '()))))
                    _%r163856%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in163780%_
                                                          'gx#module-context::t))
                                                       (let ((_%r163860%_
                                                              (if _%current-src163755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in163716%_
                                 _%current-src163755%_
                                 _%current-in163756%_)
                                _%r163757%_)
                          _%r163757%_)))
                 (_%lp163752%_
                  _%rest163779%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path163715%_ _%in163780%_))
                        _%r163860%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest163758163766%_)
                                       (let ((_%hd163763163865%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163758163766%_)))
                                             (_%tl163764163867%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163758163766%_))))
                                         (let* ((_%in163870%_
                                                 _%hd163763163865%_)
                                                (_%rest163872%_
                                                 _%tl163764163867%_))
                                           (_%K163762163862%_
                                            _%rest163872%_
                                            _%in163870%_)))
                                       (_%else163760163776%_)))))
                             _%tl163723163738%_)))
                        (_%g163718163728%_ _%g163719163731%_)))))
            (_%g163717163874%_ _%stx163711%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self163520%_ _%stx163521%_)
        (letrec* ((_%context-chain163523%_ (gxc#current-context-chain))
                  (_%make-import-path163524%_
                   (lambda (_%ctx163708%_)
                     (gxc#generate-meta-import-path
                      _%ctx163708%_
                      _%context-chain163523%_))))
          (let* ((_%g163526163536%_
                  (lambda (_%g163527163533%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163527163533%_))))
                 (_%g163525163705%_
                  (lambda (_%g163527163539%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163527163539%_))
                        (let ((_%e163529163541%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163527163539%_))))
                          (let ((_%hd163530163544%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163529163541%_)))
                                (_%tl163531163546%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163529163541%_))))
                            ((lambda (_%g163528163549%_)
                               (let _%lp163560%_ ((_%rest163562%_
                                                   _%g163528163549%_)
                                                  (_%r163563%_ '()))
                                 (let* ((_%rest163564163572%_ _%rest163562%_)
                                        (_%else163566163580%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r163563%_))))
                                        (_%K163568163693%_
                                         (lambda (_%rest163583%_ _%out163584%_)
                                           (let* ((_%out163585163598%_
                                                   _%out163584%_)
                                                  (_%E163588163602%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out163585163598%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163592163672%_
                                                    (lambda (_%name163668%_
                                                             _%phi163669%_
                                                             _%key163670%_)
                                                      (_%lp163560%_
                                                       _%rest163583%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi163669%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key163670%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name163668%_)
                                             '()))))
                     _%r163563%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163589163652%_
                                                    (lambda (_%phi163606%_
                                                             _%src163607%_)
                                                      (let* ((_%out163647%_
                                                              (if _%src163607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g163608163617%_
                                              (_%make-import-path163524%_
                                               _%src163607%_))
                                             (_%E163611163621%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g163608163617%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K163613163637%_
                                               (lambda (_%path163635%_)
                                                 _%path163635%_))
                                              (_%K163612163627%_
                                               (lambda (_%path163625%_)
                                                 (cons 'in: _%path163625%_))))
                                          (if (pair? _%g163608163617%_)
                                              (let ((_%tl163615163642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g163608163617%_)))
                                                    (_%hd163614163640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g163608163617%_))))
                                                (if (null? _%tl163615163642%_)
                                                    (let ((_%path163645%_
                                                           _%hd163614163640%_))
                                                      (_%K163613163637%_
                                                       _%path163645%_))
                                                    (let ((_%path163630%_
                                                           _%g163608163617%_))
                                                      (_%K163612163627%_
                                                       _%path163630%_))))
                                              (let ((_%path163630%_
                                                     _%g163608163617%_))
                                                (_%K163612163627%_
                                                 _%path163630%_)))))
                                      '()))
                          '#t))
                     (_%out163649%_
                      (if (fxzero? _%phi163606%_)
                          _%out163647%_
                          (cons 'phi:
                                (cons _%phi163606%_
                                      (cons _%out163647%_ '()))))))
                (_%lp163560%_
                 _%rest163583%_
                 (cons _%out163649%_ _%r163563%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match163587163665%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out163585163598%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e163590163655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163585163598%_
                               '1
                               '#f
                               '#f)))
                           (_%e163591163660%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163585163598%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src163658%_ _%e163590163655%_)
                            (_%phi163663%_ _%e163591163660%_))
                        (_%K163589163652%_ _%phi163663%_ _%src163658%_)))
                    (_%E163588163602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out163585163598%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163593163675%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out163585163598%_
                        '1
                        '#f
                        '#f)))
                    (_%e163594163678%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163585163598%_
                        '2
                        '#f
                        '#f)))
                    (_%e163595163683%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163585163598%_
                        '3
                        '#f
                        '#f)))
                    (_%e163596163688%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163585163598%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key163681%_ _%e163594163678%_)
                     (_%phi163686%_ _%e163595163683%_)
                     (_%name163691%_ _%e163596163688%_))
                 (_%K163592163672%_
                  _%name163691%_
                  _%phi163686%_
                  _%key163681%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match163587163665%_))))))))
                                   (if (pair? _%rest163564163572%_)
                                       (let ((_%hd163569163696%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163564163572%_)))
                                             (_%tl163570163698%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163564163572%_))))
                                         (let* ((_%out163701%_
                                                 _%hd163569163696%_)
                                                (_%rest163703%_
                                                 _%tl163570163698%_))
                                           (_%K163568163693%_
                                            _%rest163703%_
                                            _%out163701%_)))
                                       (_%else163566163580%_)))))
                             _%tl163531163546%_)))
                        (_%g163526163536%_ _%g163527163539%_)))))
            (_%g163525163705%_ _%stx163521%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self163481%_ _%stx163482%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163481%_ 'state)))
        (let* ((_%g163484163494%_
                (lambda (_%g163485163491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163485163491%_))))
               (_%g163483163517%_
                (lambda (_%g163485163497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163485163497%_))
                      (let ((_%e163487163499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163485163497%_))))
                        (let ((_%hd163488163502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163487163499%_)))
                              (_%tl163489163504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163487163499%_))))
                          ((lambda (_%g163486163507%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g163486163507%_)))
                           _%tl163489163504%_)))
                      (_%g163484163494%_ _%g163485163497%_)))))
          (_%g163483163517%_ _%stx163482%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self163356%_ _%stx163357%_)
        (letrec ((_%generate1163359%_
                  (lambda (_%id163476%_ _%eid163477%_)
                    (let ((_%eid163479%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid163477%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid163479%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx163357%_
                             _%eid163479%_)))
                      (cons (gxc#generate-runtime-identifier _%id163476%_)
                            (cons _%eid163479%_ '()))))))
          (let* ((_%g163361163389%_
                  (lambda (_%g163362163386%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163362163386%_))))
                 (_%g163360163473%_
                  (lambda (_%g163362163392%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163362163392%_))
                        (let ((_%e163365163394%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163362163392%_))))
                          (let ((_%hd163366163397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163365163394%_)))
                                (_%tl163367163399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163365163394%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl163367163399%_))
                                (let ((_g173114_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl163367163399%_
                                          '0))))
                                  (begin
                                    (let ((_g173115_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173114_)
                                                 (##values-length _g173114_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173115_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173115_)))
                                    (let ((_%target163368163402%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173114_ 0)))
                                          (_%tl163370163404%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173114_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163370163404%_))
                                          (letrec ((_%loop163371163407%_
                                                    (lambda (_%hd163369163410%_
                                                             _%eid163375163412%_
                                                             _%id163376163413%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd163369163410%_))
                                                          (let ((_%e163372163415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd163369163410%_))))
                    (let ((_%lp-hd163373163418%_
                           (let ()
                             (declare (not safe))
                             (##car _%e163372163415%_)))
                          (_%lp-tl163374163420%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e163372163415%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd163373163418%_))
                          (let ((_%e163379163423%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd163373163418%_))))
                            (let ((_%hd163380163426%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e163379163423%_)))
                                  (_%tl163381163428%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e163379163423%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl163381163428%_))
                                  (let ((_%e163382163431%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl163381163428%_))))
                                    (let ((_%hd163383163434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e163382163431%_)))
                                          (_%tl163384163436%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e163382163431%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163384163436%_))
                                          (_%loop163371163407%_
                                           _%lp-tl163374163420%_
                                           (cons _%hd163383163434%_
                                                 _%eid163375163412%_)
                                           (cons _%hd163380163426%_
                                                 _%id163376163413%_))
                                          (_%g163361163389%_
                                           _%g163362163392%_))))
                                  (_%g163361163389%_ _%g163362163392%_))))
                          (_%g163361163389%_ _%g163362163392%_))))
                  (let ((_%eid163377163439%_ (reverse _%eid163375163412%_))
                        (_%id163378163440%_ (reverse _%id163376163413%_)))
                    ((lambda (_%g163363163442%_ _%g163364163443%_)
                       (cons '%#extern
                             (map _%generate1163359%_
                                  (let ((__tmp173116
                                         (lambda (_%g163458163461%_
                                                  _%g163459163463%_)
                                           (cons _%g163458163461%_
                                                 _%g163459163463%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173116
                                     '()
                                     _%g163364163443%_))
                                  (let ((__tmp173117
                                         (lambda (_%g163465163468%_
                                                  _%g163466163470%_)
                                           (cons _%g163465163468%_
                                                 _%g163466163470%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173117
                                     '()
                                     _%g163363163442%_)))))
                     _%eid163377163439%_
                     _%id163378163440%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop163371163407%_
                                             _%target163368163402%_
                                             '()
                                             '()))
                                          (_%g163361163389%_
                                           _%g163362163392%_)))))
                                (_%g163361163389%_ _%g163362163392%_))))
                        (_%g163361163389%_ _%g163362163392%_)))))
            (_%g163360163473%_ _%stx163357%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self163145%_ _%stx163146%_)
        (letrec ((_%generate1163148%_
                  (lambda (_%id163350%_)
                    (let ((_%eid163352%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id163350%_)))
                          (_%ident163353%_
                           (gxc#generate-runtime-identifier _%id163350%_))
                          (_%props163354%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id163350%_))))
                      (cons '%#define-runtime
                            (cons _%ident163353%_
                                  (cons _%eid163352%_ _%props163354%_))))))
                 (_%generate*163149%_
                  (lambda (_%all163318%_)
                    (let* ((_%all163319163327%_ _%all163318%_)
                           (_%else163321163335%_
                            (lambda () (cons '%#begin _%all163318%_)))
                           (_%K163323163340%_
                            (lambda (_%one163338%_) _%one163338%_)))
                      (if (pair? _%all163319163327%_)
                          (let ((_%hd163324163343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all163319163327%_)))
                                (_%tl163325163345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all163319163327%_))))
                            (let ((_%one163348%_ _%hd163324163343%_))
                              (if (null? _%tl163325163345%_)
                                  (_%K163323163340%_ _%one163348%_)
                                  (_%else163321163335%_))))
                          (_%else163321163335%_))))))
          (let* ((_%g163151163168%_
                  (lambda (_%g163152163165%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163152163165%_))))
                 (_%g163150163315%_
                  (lambda (_%g163152163171%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163152163171%_))
                        (let ((_%e163155163173%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163152163171%_))))
                          (let ((_%hd163156163176%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163155163173%_)))
                                (_%tl163157163178%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163155163173%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl163157163178%_))
                                (let ((_%e163158163181%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl163157163178%_))))
                                  (let ((_%hd163159163184%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e163158163181%_)))
                                        (_%tl163160163186%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e163158163181%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl163160163186%_))
                                        (let ((_%e163161163189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl163160163186%_))))
                                          (let ((_%hd163162163192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e163161163189%_)))
                                                (_%tl163163163194%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e163161163189%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl163163163194%_))
                                                ((lambda (_%g163153163197%_
                                                          _%g163154163198%_)
                                                   (let _%lp163214%_ ((_%rest163216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g163154163198%_)
                              (_%r163217%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx172852172853%_
                                                             _%rest163216%_)
                                                            (_%g163222163239%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx172852172853%_)))))
               (let ((_%__kont172854172855%_
                      (lambda (_%g163224163302%_)
                        (_%lp163214%_ _%g163224163302%_ _%r163217%_)))
                     (_%__kont172856172857%_
                      (lambda (_%g163229163275%_ _%g163230163276%_)
                        (_%lp163214%_
                         _%g163229163275%_
                         (cons (_%generate1163148%_ _%g163230163276%_)
                               _%r163217%_))))
                     (_%__kont172858172859%_
                      (lambda (_%g163234163251%_)
                        (_%generate*163149%_
                         (let ((__tmp173118
                                (cons (_%generate1163148%_ _%g163234163251%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp173118 _%r163217%_)))))
                     (_%__kont172860172861%_
                      (lambda () (_%generate*163149%_ (reverse _%r163217%_)))))
                 (let ((_%g163220163262%_
                        (lambda ()
                          (let ((_%g163234163251%_ _%__stx172852172853%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g163234163251%_))
                                (_%__kont172858172859%_ _%g163234163251%_)
                                (_%__kont172860172861%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx172852172853%_))
                       (let ((_%e163225163291%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx172852172853%_))))
                         (let ((_%tl163227163296%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e163225163291%_)))
                               (_%hd163226163294%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e163225163291%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd163226163294%_))
                               (let ((_%e163228163299%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd163226163294%_))))
                                 (if (equal? _%e163228163299%_ '#f)
                                     (_%__kont172854172855%_
                                      _%tl163227163296%_)
                                     (_%__kont172856172857%_
                                      _%tl163227163296%_
                                      _%hd163226163294%_)))
                               (_%__kont172856172857%_
                                _%tl163227163296%_
                                _%hd163226163294%_))))
                       (let () (declare (not safe)) (_%g163220163262%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd163162163192%_
                                                 _%hd163159163184%_)
                                                (_%g163151163168%_
                                                 _%g163152163171%_))))
                                        (_%g163151163168%_
                                         _%g163152163171%_))))
                                (_%g163151163168%_ _%g163152163171%_))))
                        (_%g163151163168%_ _%g163152163171%_)))))
            (_%g163150163315%_ _%stx163146%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self163042%_ _%stx163043%_)
        (let* ((_%g163045163062%_
                (lambda (_%g163046163059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163046163059%_))))
               (_%g163044163142%_
                (lambda (_%g163046163065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163046163065%_))
                      (let ((_%e163049163067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163046163065%_))))
                        (let ((_%hd163050163070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163049163067%_)))
                              (_%tl163051163072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163049163067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163051163072%_))
                              (let ((_%e163052163075%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163051163072%_))))
                                (let ((_%hd163053163078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163052163075%_)))
                                      (_%tl163054163080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163052163075%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163054163080%_))
                                      (let ((_%e163055163083%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163054163080%_))))
                                        (let ((_%hd163056163086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163055163083%_)))
                                              (_%tl163057163088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163055163083%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163057163088%_))
                                              ((lambda (_%g163047163091%_
                                                        _%g163048163092%_)
                                                 (let* ((_%eid163107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g163048163092%_)))
                                                        (_%phi163109%_
                                                         (let ((__tmp173119
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp173119 '1)))
                (_%block163111%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self163042%_ 'state))
                  _%phi163109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g163114163121%_
                                                           (lambda (_%g163115163118%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g163115163118%_))))
                  (_%g163113163139%_
                   (lambda (_%g163115163124%_)
                     ((lambda (_%g163116163126%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self163042%_ 'state))
                         _%phi163109%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g163116163126%_
                                     (cons _%g163047163091%_ '())))))
                      _%g163115163124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g163113163139%_
                                                      _%eid163107%_))
                                                   (if _%block163111%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block163111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%g163048163092%_)
                                             (cons _%eid163107%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%g163048163092%_)
                           (cons _%eid163107%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163056163086%_
                                               _%hd163053163078%_)
                                              (_%g163045163062%_
                                               _%g163046163065%_))))
                                      (_%g163045163062%_ _%g163046163065%_))))
                              (_%g163045163062%_ _%g163046163065%_))))
                      (_%g163045163062%_ _%g163046163065%_)))))
          (_%g163044163142%_ _%stx163043%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self162974%_ _%stx162975%_)
        (let* ((_%g162977162994%_
                (lambda (_%g162978162991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162978162991%_))))
               (_%g162976163039%_
                (lambda (_%g162978162997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162978162997%_))
                      (let ((_%e162981162999%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162978162997%_))))
                        (let ((_%hd162982163002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162981162999%_)))
                              (_%tl162983163004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162981162999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162983163004%_))
                              (let ((_%e162984163007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162983163004%_))))
                                (let ((_%hd162985163010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162984163007%_)))
                                      (_%tl162986163012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162984163007%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162986163012%_))
                                      (let ((_%e162987163015%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162986163012%_))))
                                        (let ((_%hd162988163018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162987163015%_)))
                                              (_%tl162989163020%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162987163015%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162989163020%_))
                                              ((lambda (_%g162979163023%_
                                                        _%g162980163024%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%g162980163024%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g162979163023%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd162988163018%_
                                               _%hd162985163010%_)
                                              (_%g162977162994%_
                                               _%g162978162997%_))))
                                      (_%g162977162994%_ _%g162978162997%_))))
                              (_%g162977162994%_ _%g162978162997%_))))
                      (_%g162977162994%_ _%g162978162997%_)))))
          (_%g162976163039%_ _%stx162975%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self162971%_ _%stx162972%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162971%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162972%_)
        (gxc#generate-meta-define-values% _%self162971%_ _%stx162972%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self162968%_ _%stx162969%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162968%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162969%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp173121 (list)) (__tmp173120 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp173121
         '(src n open blocks)
         __tmp173120
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args162965%_
        (apply make-instance gxc#meta-state::t _%$args162965%_)))
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
      (lambda (_%self162951%_ _%ctx162952%_)
        (let ((_%self162955%_ _%self162951%_))
          (if (let ((__tmp173122
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162955%_))))
                (declare (not safe))
                (##fx< '4 __tmp173122))
              (begin
                (let ((__tmp173123
                       (let ((__tmp173124
                              (##structure-ref
                               _%ctx162952%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp173124))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162955%_
                   __tmp173123
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162955%_ '1 '2 '#f '#f))
                (let ((__tmp173125
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162955%_
                   __tmp173125
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162955%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp173126
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162955%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self162955%_
                       '4
                       __tmp173126))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp173128 (list)) (__tmp173127 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp173128
         '(ctx phi n code)
         __tmp173127
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args162826%_
        (apply make-instance gxc#meta-state-block::t _%$args162826%_)))
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
      (lambda (_%state162786%_ _%phi162787%_)
        (let* ((_%state162788162796%_ _%state162786%_)
               (_%E162790162799%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state162788162796%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K162791162808%_
                (lambda (_%open162802%_ _%n162803%_ _%src162804%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open162802%_ _%phi162787%_))
                      '#f
                      (let ((_%block-ref162806%_
                             (let ((__tmp173129 (number->string _%n162803%_)))
                               (declare (not safe))
                               (##string-append
                                _%src162804%_
                                '"~"
                                __tmp173129))))
                        (##structure-set!
                         _%state162786%_
                         (let () (declare (not safe)) (##fx+ _%n162803%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp173130
                               (let ((__tmp173131
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp173131
                                  _%phi162787%_
                                  _%n162803%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open162802%_ _%phi162787%_ __tmp173130))
                        _%block-ref162806%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state162788162796%_
                 'gxc#meta-state::t))
              (let* ((_%e162792162811%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162788162796%_
                         '1
                         '#f
                         '#f)))
                     (_%src162814%_ _%e162792162811%_)
                     (_%e162793162816%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162788162796%_
                         '2
                         '#f
                         '#f)))
                     (_%n162819%_ _%e162793162816%_)
                     (_%e162794162821%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162788162796%_
                         '3
                         '#f
                         '#f)))
                     (_%open162824%_ _%e162794162821%_))
                (_%K162791162808%_ _%open162824%_ _%n162819%_ _%src162814%_))
              (_%E162790162799%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state162780%_ _%phi162781%_ _%stx162782%_)
        (let ((_%block162784%_
               (let ((__tmp173132
                      (##structure-ref
                       _%state162780%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp173132 _%phi162781%_))))
          (##structure-set!
           _%block162784%_
           (cons _%stx162782%_
                 (##structure-ref
                  _%block162784%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state162774%_)
        (##structure-set!
         _%state162774%_
         (let ((__tmp173135
                (lambda (_%_162776%_ _%block162777%_ _%r162778%_)
                  (cons _%block162777%_ _%r162778%_)))
               (__tmp173134
                (##structure-ref _%state162774%_ '4 gxc#meta-state::t '#f))
               (__tmp173133
                (##structure-ref _%state162774%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp173135 __tmp173134 __tmp173133))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state162774%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state162727%_)
        (gxc#meta-state-end-phi! _%state162727%_)
        (let ((__tmp173137
               (lambda (_%block162729%_ _%r162730%_)
                 (let* ((_%block162731162740%_ _%block162729%_)
                        (_%E162733162743%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block162731162740%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K162734162751%_
                         (lambda (_%code162746%_
                                  _%n162747%_
                                  _%phi162748%_
                                  _%ctx162749%_)
                           (if (null? _%code162746%_)
                               _%r162730%_
                               (cons (cons _%ctx162749%_
                                           (cons _%phi162748%_
                                                 (cons _%n162747%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code162746%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r162730%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block162731162740%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e162735162754%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162731162740%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx162757%_ _%e162735162754%_)
                              (_%e162736162759%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162731162740%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi162762%_ _%e162736162759%_)
                              (_%e162737162764%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162731162740%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n162767%_ _%e162737162764%_)
                              (_%e162738162769%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162731162740%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code162772%_ _%e162738162769%_))
                         (_%K162734162751%_
                          _%code162772%_
                          _%n162767%_
                          _%phi162762%_
                          _%ctx162757%_))
                       (_%E162733162743%_)))))
              (__tmp173136
               (##structure-ref _%state162727%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp173137 '() __tmp173136))))
    (define gxc#collect-expression-refs
      (lambda (_%stx162723%_)
        (let ((_%ht162725%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht162725%_ _%stx162723%_)
          _%ht162725%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self162666%_ _%stx162667%_)
        (let* ((_%g162669162682%_
                (lambda (_%g162670162679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162670162679%_))))
               (_%g162668162720%_
                (lambda (_%g162670162685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162670162685%_))
                      (let ((_%e162672162687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162670162685%_))))
                        (let ((_%hd162673162690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162672162687%_)))
                              (_%tl162674162692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162672162687%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162674162692%_))
                              (let ((_%e162675162695%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162674162692%_))))
                                (let ((_%hd162676162698%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162675162695%_)))
                                      (_%tl162677162700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162675162695%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162677162700%_))
                                      ((lambda (_%g162671162703%_)
                                         (let* ((_%bind162715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g162671162703%_)))
                                                (_%eid162717%_
                                                 (if _%bind162715%_
                                                     (##structure-ref
                                                      _%bind162715%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g162671162703%_))))
                                                (__tmp173138
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162666%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp173138
                                            _%eid162717%_
                                            _%eid162717%_)))
                                       _%hd162676162698%_)
                                      (_%g162669162682%_ _%g162670162685%_))))
                              (_%g162669162682%_ _%g162670162685%_))))
                      (_%g162669162682%_ _%g162670162685%_)))))
          (_%g162668162720%_ _%stx162667%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self162593%_ _%stx162594%_)
        (let* ((_%g162596162613%_
                (lambda (_%g162597162610%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162597162610%_))))
               (_%g162595162663%_
                (lambda (_%g162597162616%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162597162616%_))
                      (let ((_%e162600162618%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162597162616%_))))
                        (let ((_%hd162601162621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162600162618%_)))
                              (_%tl162602162623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162600162618%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162602162623%_))
                              (let ((_%e162603162626%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162602162623%_))))
                                (let ((_%hd162604162629%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162603162626%_)))
                                      (_%tl162605162631%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162603162626%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162605162631%_))
                                      (let ((_%e162606162634%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162605162631%_))))
                                        (let ((_%hd162607162637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162606162634%_)))
                                              (_%tl162608162639%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162606162634%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162608162639%_))
                                              ((lambda (_%g162598162642%_
                                                        _%g162599162643%_)
                                                 (let* ((_%bind162658%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g162599162643%_)))
                                                        (_%eid162660%_
                                                         (if _%bind162658%_
                                                             (##structure-ref
                                                              _%bind162658%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162599162643%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp173139
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self162593%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp173139
                                                      _%eid162660%_
                                                      _%eid162660%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162593%_
                                                      _%g162598162642%_))))
                                               _%hd162607162637%_
                                               _%hd162604162629%_)
                                              (_%g162596162613%_
                                               _%g162597162616%_))))
                                      (_%g162596162613%_ _%g162597162616%_))))
                              (_%g162596162613%_ _%g162597162616%_))))
                      (_%g162596162613%_ _%g162597162616%_)))))
          (_%g162595162663%_ _%stx162594%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self162550%_ _%stx162551%_)
        (let* ((_%g162553162563%_
                (lambda (_%g162554162560%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162554162560%_))))
               (_%g162552162590%_
                (lambda (_%g162554162566%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162554162566%_))
                      (let ((_%e162556162568%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162554162566%_))))
                        (let ((_%hd162557162571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162556162568%_)))
                              (_%tl162558162573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162556162568%_))))
                          ((lambda (_%g162555162576%_)
                             (let ((__tmp173140
                                    (lambda (_%g162585162587%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self162550%_
                                         _%g162585162587%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp173140 _%g162555162576%_)))
                           _%tl162558162573%_)))
                      (_%g162553162563%_ _%g162554162566%_)))))
          (_%g162552162590%_ _%stx162551%_))))
    (define gxc#count-values-single%
      (lambda (_%self162547%_ _%stx162548%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self162415%_ _%stx162416%_)
        (let* ((_%__stx172882172883%_ _%stx162416%_)
               (_%g162419162448%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172882172883%_)))))
          (let ((_%__kont172884172885%_
                 (lambda (_%g162421162514%_ _%g162422162515%_)
                   (length (let ((__tmp173141
                                  (lambda (_%g162536162539%_ _%g162537162541%_)
                                    (cons _%g162536162539%_
                                          _%g162537162541%_))))
                             (declare (not safe))
                             (__foldr1 __tmp173141 '() _%g162421162514%_)))))
                (_%__kont172888172889%_ (lambda () '#f)))
            (let ((_%__match172927172928%_
                   (lambda (_%e162423162460%_
                            _%hd162424162463%_
                            _%tl162425162465%_
                            _%e162426162468%_
                            _%hd162427162471%_
                            _%tl162428162473%_
                            _%e162429162476%_
                            _%hd162430162479%_
                            _%tl162431162481%_
                            _%e162432162484%_
                            _%hd162433162487%_
                            _%tl162434162489%_
                            _%__splice172886172887%_
                            _%target162435162492%_
                            _%tl162437162494%_)
                     (letrec ((_%loop162438162497%_
                               (lambda (_%hd162436162500%_
                                        _%rand162442162502%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd162436162500%_))
                                     (let ((_%e162439162504%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd162436162500%_))))
                                       (let ((_%lp-tl162441162509%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e162439162504%_)))
                                             (_%lp-hd162440162507%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e162439162504%_))))
                                         (_%loop162438162497%_
                                          _%lp-tl162441162509%_
                                          (cons _%lp-hd162440162507%_
                                                _%rand162442162502%_))))
                                     (let ((_%rand162443162512%_
                                            (reverse _%rand162442162502%_)))
                                       (let ((_%g162421162514%_
                                              _%rand162443162512%_)
                                             (_%g162422162515%_
                                              _%hd162433162487%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g162422162515%_
                                                'values))
                                             (_%__kont172884172885%_
                                              _%g162421162514%_
                                              _%g162422162515%_)
                                             (_%__kont172888172889%_))))))))
                       (_%loop162438162497%_ _%target162435162492%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172882172883%_))
                  (let ((_%e162423162460%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172882172883%_))))
                    (let ((_%tl162425162465%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e162423162460%_)))
                          (_%hd162424162463%_
                           (let ()
                             (declare (not safe))
                             (##car _%e162423162460%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl162425162465%_))
                          (let ((_%e162426162468%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl162425162465%_))))
                            (let ((_%tl162428162473%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e162426162468%_)))
                                  (_%hd162427162471%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e162426162468%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd162427162471%_))
                                  (let ((_%e162429162476%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd162427162471%_))))
                                    (let ((_%tl162431162481%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e162429162476%_)))
                                          (_%hd162430162479%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e162429162476%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd162430162479%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd162430162479%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl162431162481%_))
                                                  (let ((_%e162432162484%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl162431162481%_))))
                                                    (let ((_%tl162434162489%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e162432162484%_)))
                                                          (_%hd162433162487%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e162432162484%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl162434162489%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl162428162473%_))
                      (let ((_%__splice172886172887%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl162428162473%_
                                '0))))
                        (let ((_%tl162437162494%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172886172887%_ '1)))
                              (_%target162435162492%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172886172887%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl162437162494%_))
                              (_%__match172927172928%_
                               _%e162423162460%_
                               _%hd162424162463%_
                               _%tl162425162465%_
                               _%e162426162468%_
                               _%hd162427162471%_
                               _%tl162428162473%_
                               _%e162429162476%_
                               _%hd162430162479%_
                               _%tl162431162481%_
                               _%e162432162484%_
                               _%hd162433162487%_
                               _%tl162434162489%_
                               _%__splice172886172887%_
                               _%target162435162492%_
                               _%tl162437162494%_)
                              (_%__kont172888172889%_))))
                      (_%__kont172888172889%_))
                  (_%__kont172888172889%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172888172889%_))
                                              (_%__kont172888172889%_))
                                          (_%__kont172888172889%_))))
                                  (_%__kont172888172889%_))))
                          (_%__kont172888172889%_))))
                  (_%__kont172888172889%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self162320%_ _%stx162321%_)
        (let* ((_%g162323162344%_
                (lambda (_%g162324162341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162324162341%_))))
               (_%g162322162412%_
                (lambda (_%g162324162347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162324162347%_))
                      (let ((_%e162328162349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162324162347%_))))
                        (let ((_%hd162329162352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162328162349%_)))
                              (_%tl162330162354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162328162349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162330162354%_))
                              (let ((_%e162331162357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162330162354%_))))
                                (let ((_%hd162332162360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162331162357%_)))
                                      (_%tl162333162362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162331162357%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162333162362%_))
                                      (let ((_%e162334162365%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162333162362%_))))
                                        (let ((_%hd162335162368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162334162365%_)))
                                              (_%tl162336162370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162334162365%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl162336162370%_))
                                              (let ((_%e162337162373%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl162336162370%_))))
                                                (let ((_%hd162338162376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e162337162373%_)))
                                                      (_%tl162339162378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e162337162373%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl162339162378%_))
                                                      ((lambda (_%g162325162381%_
                                                                _%g162326162382%_
                                                                _%g162327162383%_)
                                                         (let ((_%c1162400162402%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self162320%_
                           _%g162326162382%_))))
                   (if _%c1162400162402%_
                       (let* ((_%c1162404%_ _%c1162400162402%_)
                              (_%c2162405162407%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self162320%_
                                  _%g162325162381%_))))
                         (if _%c2162405162407%_
                             (let ((_%c2162409%_ _%c2162405162407%_))
                               (if (fx= _%c1162404%_ _%c2162409%_)
                                   _%c1162404%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd162338162376%_
               _%hd162335162368%_
               _%hd162332162360%_)
              (_%g162323162344%_ _%g162324162347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g162323162344%_
                                               _%g162324162347%_))))
                                      (_%g162323162344%_ _%g162324162347%_))))
                              (_%g162323162344%_ _%g162324162347%_))))
                      (_%g162323162344%_ _%g162324162347%_)))))
          (_%g162322162412%_ _%stx162321%_))))))
