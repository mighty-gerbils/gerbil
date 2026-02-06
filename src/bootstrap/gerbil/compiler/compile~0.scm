(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770338923)
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
      (let ((__tmp172937 (list gxc#::void::t))
            (__tmp172936 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp172937
         '()
         __tmp172936
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args171551%_
        (apply make-instance gxc#::collect-bindings::t _%$args171551%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp172938
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
        (__make-atomic-promise __tmp172938)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx171543%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self171546%_
                (let ((__obj172912
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj172912))
               (__tmp172939
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171546%_ _%stx171543%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172939
           gxc#current-compile-method
           _%self171546%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp172941 (list gxc#::void::t))
            (__tmp172940 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp172941
         '(modules)
         __tmp172940
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args171540%_
        (apply make-instance gxc#::lift-modules::t _%$args171540%_)))
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
      (let ((__tmp172942
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
        (__make-atomic-promise __tmp172942)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords171515%_ _%modules171512171516%_ _%stx171517%_)
        (let ((_%modules171520%_
               (if (eq? _%modules171512171516%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules171512171516%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self171522%_
                  (let ((__obj172914
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172914
                       _%modules171520%_
                       '1
                       '#f
                       '#f))
                    __obj172914))
                 (__tmp172943
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171522%_ _%stx171517%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172943
             gxc#current-compile-method
             _%self171522%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords171529%_ . _%args171530%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords171529%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171529%_
                  'modules:
                  absent-value))
               _%args171530%_)))
    (define gxc#apply-lift-modules
      (lambda _%args171513171536%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args171513171536%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp172945 (list)) (__tmp172944 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp172945
         '()
         __tmp172944
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args171508%_
        (apply make-instance gxc#::find-runtime-code::t _%$args171508%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp172946
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
        (__make-atomic-promise __tmp172946)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx171500%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self171503%_
                (let ((__obj172916
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj172916))
               (__tmp172947
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171503%_ _%stx171500%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172947
           gxc#current-compile-method
           _%self171503%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp172949 (list gxc#::false::t))
            (__tmp172948 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp172949
         '()
         __tmp172948
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args171497%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args171497%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp172950
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
        (__make-atomic-promise __tmp172950)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx171489%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self171492%_
                (let ((__obj172918
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj172918))
               (__tmp172951
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171492%_ _%stx171489%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172951
           gxc#current-compile-method
           _%self171492%_))))
    (define gxc#::count-values::t
      (let ((__tmp172953 (list gxc#::false-expression::t))
            (__tmp172952 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp172953
         '()
         __tmp172952
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args171486%_
        (apply make-instance gxc#::count-values::t _%$args171486%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp172954
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
        (__make-atomic-promise __tmp172954)))
    (define gxc#apply-count-values
      (lambda (_%stx171478%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self171481%_
                (let ((__obj172920
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj172920))
               (__tmp172955
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171481%_ _%stx171478%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172955
           gxc#current-compile-method
           _%self171481%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp172956 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp172956
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args171475%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args171475%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp172957
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
        (__make-atomic-promise __tmp172957)))
    (define gxc#::generate-loader::t
      (let ((__tmp172959 (list gxc#::generate-runtime-empty::t))
            (__tmp172958 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp172959
         '()
         __tmp172958
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args171471%_
        (apply make-instance gxc#::generate-loader::t _%$args171471%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp172960
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
        (__make-atomic-promise __tmp172960)))
    (define gxc#apply-generate-loader
      (lambda (_%stx171463%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self171466%_
                (let ((__obj172923
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj172923))
               (__tmp172961
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171466%_ _%stx171463%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172961
           gxc#current-compile-method
           _%self171466%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp172962 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp172962
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args171460%_
        (apply make-instance gxc#::generate-runtime::t _%$args171460%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp172963
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
        (__make-atomic-promise __tmp172963)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx171452%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self171455%_
                (let ((__obj172925
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj172925))
               (__tmp172964
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171455%_ _%stx171452%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172964
           gxc#current-compile-method
           _%self171455%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp172966 (list gxc#::generate-runtime::t))
            (__tmp172965 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp172966
         '()
         __tmp172965
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args171449%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args171449%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp172967
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
        (__make-atomic-promise __tmp172967)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx171441%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self171444%_
                (let ((__obj172927
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj172927))
               (__tmp172968
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171444%_ _%stx171441%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172968
           gxc#current-compile-method
           _%self171444%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp172969 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp172969
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args171438%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args171438%_)))
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
      (let ((__tmp172970
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
        (__make-atomic-promise __tmp172970)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords171413%_ _%table171410171414%_ _%stx171415%_)
        (let ((_%table171418%_
               (if (eq? _%table171410171414%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table171410171414%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self171420%_
                  (let ((__obj172929
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172929
                       _%table171418%_
                       '1
                       '#f
                       '#f))
                    __obj172929))
                 (__tmp172971
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171420%_ _%stx171415%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172971
             gxc#current-compile-method
             _%self171420%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords171427%_ . _%args171428%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords171427%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171427%_
                  'table:
                  absent-value))
               _%args171428%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args171411171434%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args171411171434%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp172973 (list gxc#::void-expression::t))
            (__tmp172972 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp172973
         '(state)
         __tmp172972
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args171406%_
        (apply make-instance gxc#::generate-meta::t _%$args171406%_)))
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
      (let ((__tmp172974
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
        (__make-atomic-promise __tmp172974)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords171381%_ _%state171378171382%_ _%stx171383%_)
        (let ((_%state171386%_
               (if (eq? _%state171378171382%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171378171382%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self171388%_
                  (let ((__obj172931
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172931
                       _%state171386%_
                       '1
                       '#f
                       '#f))
                    __obj172931))
                 (__tmp172975
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171388%_ _%stx171383%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172975
             gxc#current-compile-method
             _%self171388%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords171395%_ . _%args171396%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords171395%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171395%_
                  'state:
                  absent-value))
               _%args171396%_)))
    (define gxc#apply-generate-meta
      (lambda _%args171379171402%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args171379171402%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp172977 (list)) (__tmp172976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp172977
         '(state)
         __tmp172976
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args171374%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args171374%_)))
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
      (let ((__tmp172978
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
        (__make-atomic-promise __tmp172978)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords171349%_ _%state171346171350%_ _%stx171351%_)
        (let ((_%state171354%_
               (if (eq? _%state171346171350%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171346171350%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self171356%_
                  (let ((__obj172933
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172933
                       _%state171354%_
                       '1
                       '#f
                       '#f))
                    __obj172933))
                 (__tmp172979
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171356%_ _%stx171351%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172979
             gxc#current-compile-method
             _%self171356%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords171363%_ . _%args171364%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords171363%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171363%_
                  'state:
                  absent-value))
               _%args171364%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args171347171370%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args171347171370%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self171275%_ _%stx171276%_)
        (let* ((_%g171278171295%_
                (lambda (_%g171279171292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171279171292%_))))
               (_%g171277171342%_
                (lambda (_%g171279171298%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171279171298%_))
                      (let ((_%e171282171300%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171279171298%_))))
                        (let ((_%hd171283171303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171282171300%_)))
                              (_%tl171284171305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171282171300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171284171305%_))
                              (let ((_%e171285171308%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171284171305%_))))
                                (let ((_%hd171286171311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171285171308%_)))
                                      (_%tl171287171313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171285171308%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171287171313%_))
                                      (let ((_%e171288171316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171287171313%_))))
                                        (let ((_%hd171289171319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171288171316%_)))
                                              (_%tl171290171321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171288171316%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171290171321%_))
                                              ((lambda (_%g171280171324%_
                                                        _%g171281171325%_)
                                                 (let ((__tmp172980
                                                        (lambda (_%bind171340%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind171340%_))
                      (gxc#add-module-binding! _%bind171340%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp172980
                                                    _%g171281171325%_)))
                                               _%hd171289171319%_
                                               _%hd171286171311%_)
                                              (_%g171278171295%_
                                               _%g171279171298%_))))
                                      (_%g171278171295%_ _%g171279171298%_))))
                              (_%g171278171295%_ _%g171279171298%_))))
                      (_%g171278171295%_ _%g171279171298%_)))))
          (_%g171277171342%_ _%stx171276%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self171207%_ _%stx171208%_)
        (let* ((_%g171210171227%_
                (lambda (_%g171211171224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171211171224%_))))
               (_%g171209171272%_
                (lambda (_%g171211171230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171211171230%_))
                      (let ((_%e171214171232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171211171230%_))))
                        (let ((_%hd171215171235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171214171232%_)))
                              (_%tl171216171237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171214171232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171216171237%_))
                              (let ((_%e171217171240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171216171237%_))))
                                (let ((_%hd171218171243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171217171240%_)))
                                      (_%tl171219171245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171217171240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171219171245%_))
                                      (let ((_%e171220171248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171219171245%_))))
                                        (let ((_%hd171221171251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171220171248%_)))
                                              (_%tl171222171253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171220171248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171222171253%_))
                                              ((lambda (_%g171212171256%_
                                                        _%g171213171257%_)
                                                 (gxc#add-module-binding!
                                                  _%g171213171257%_
                                                  '#t))
                                               _%hd171221171251%_
                                               _%hd171218171243%_)
                                              (_%g171210171227%_
                                               _%g171211171230%_))))
                                      (_%g171210171227%_ _%g171211171230%_))))
                              (_%g171210171227%_ _%g171211171230%_))))
                      (_%g171210171227%_ _%g171211171230%_)))))
          (_%g171209171272%_ _%stx171208%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self171149%_ _%stx171150%_)
        (let* ((_%g171152171166%_
                (lambda (_%g171153171163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171153171163%_))))
               (_%g171151171204%_
                (lambda (_%g171153171169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171153171169%_))
                      (let ((_%e171156171171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171153171169%_))))
                        (let ((_%hd171157171174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171156171171%_)))
                              (_%tl171158171176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171156171171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171158171176%_))
                              (let ((_%e171159171179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171158171176%_))))
                                (let ((_%hd171160171182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171159171179%_)))
                                      (_%tl171161171184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171159171179%_))))
                                  ((lambda (_%g171154171187%_
                                            _%g171155171188%_)
                                     (let ((_%ctx171201%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g171155171188%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171149%_
                                           'modules))
                                        (cons _%ctx171201%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171149%_
                                                        'modules)))))
                                       (let ((__tmp172981
                                              (lambda ()
                                                (let ((__tmp172982
                                                       (##structure-ref
                                                        _%ctx171201%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self171149%_
                                                   __tmp172982)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp172981
                                          gx#current-expander-context
                                          _%ctx171201%_))))
                                   _%tl171161171184%_
                                   _%hd171160171182%_)))
                              (_%g171152171166%_ _%g171153171169%_))))
                      (_%g171152171166%_ _%g171153171169%_)))))
          (_%g171151171204%_ _%stx171150%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls171103171105%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls171103171105%_
              (let ((_%decls171107%_ _%decls171103171105%_))
                (let _%lp171109%_ ((_%rest171111%_ _%decls171107%_))
                  (let* ((_%rest171112171120%_ _%rest171111%_)
                         (_%else171114171128%_ (lambda () '#f))
                         (_%K171116171137%_
                          (lambda (_%decls171131%_ _%decl171132%_)
                            (if (equal? _%decl171132%_ '(not safe))
                                '#t
                                (if (equal? _%decl171132%_ '(safe))
                                    '#f
                                    (_%lp171109%_ _%decls171131%_))))))
                    (if (pair? _%rest171112171120%_)
                        (let ((_%hd171117171140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest171112171120%_)))
                              (_%tl171118171142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest171112171120%_))))
                          (let* ((_%decl171145%_ _%hd171117171140%_)
                                 (_%decls171147%_ _%tl171118171142%_))
                            (_%K171116171137%_
                             _%decls171147%_
                             _%decl171145%_)))
                        (_%else171114171128%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id171097%_ _%syntax?171098%_)
        (let ((_%eid171100%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id171097%_))
                '1
                gx#binding::t
                '#f))
              (_%ht171101%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid171100%_))
              '#!void
              (let ((__tmp172983
                     (let ((__tmp172984
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid171100%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp172984 _%syntax?171098%_))))
                (declare (not safe))
                (hash-put! _%ht171101%_ _%eid171100%_ __tmp172983))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self171094%_ _%stx171095%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self170941%_ _%stx170942%_)
        (letrec ((_%simplify170944%_
                  (lambda (_%body170992%_)
                    (let _%lp170994%_ ((_%rest170996%_ _%body170992%_)
                                       (_%r170997%_ '()))
                      (let* ((_%rest170998171006%_ _%rest170996%_)
                             (_%else171000171014%_
                              (lambda () (reverse _%r170997%_)))
                             (_%K171002171082%_
                              (lambda (_%rest171017%_ _%hd171018%_)
                                (let* ((_%hd171019171035%_ _%hd171018%_)
                                       (_%else171023171043%_
                                        (lambda ()
                                          (_%lp170994%_
                                           _%rest171017%_
                                           (cons _%hd171018%_ _%r170997%_)))))
                                  (let ((_%K171031171072%_
                                         (lambda (_%exprs171070%_)
                                           (_%lp170994%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest171017%_
                                               _%exprs171070%_))
                                            _%r170997%_)))
                                        (_%K171026171056%_
                                         (lambda ()
                                           (if (null? _%rest171017%_)
                                               (_%lp170994%_
                                                _%rest171017%_
                                                (cons _%hd171018%_
                                                      _%r170997%_))
                                               (_%lp170994%_
                                                _%rest171017%_
                                                _%r170997%_))))
                                        (_%K171025171048%_
                                         (lambda ()
                                           (if (null? _%rest171017%_)
                                               (_%lp170994%_
                                                _%rest171017%_
                                                (cons _%hd171018%_
                                                      _%r170997%_))
                                               (_%lp170994%_
                                                _%rest171017%_
                                                _%r170997%_)))))
                                    (let ((_%try-match171022171051%_
                                           (lambda ()
                                             (if (symbol? _%hd171019171035%_)
                                                 (_%K171025171048%_)
                                                 (_%else171023171043%_)))))
                                      (if (pair? _%hd171019171035%_)
                                          (let ((_%tl171033171077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd171019171035%_)))
                                                (_%hd171032171075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd171019171035%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd171032171075%_
                                                         'begin))
                                                (let ((_%exprs171080%_
                                                       _%tl171033171077%_))
                                                  (_%K171031171072%_
                                                   _%exprs171080%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd171032171075%_
                                                             'quote))
                                                    (if (pair? _%tl171033171077%_)
                                                        (let ((_%tl171030171064%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl171033171077%_))))
                  (if (null? _%tl171030171064%_)
                      (_%K171026171056%_)
                      (_%try-match171022171051%_)))
                (_%try-match171022171051%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match171022171051%_))))
                                          (_%try-match171022171051%_))))))))
                        (if (pair? _%rest170998171006%_)
                            (let ((_%hd171003171085%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest170998171006%_)))
                                  (_%tl171004171087%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest170998171006%_))))
                              (let* ((_%hd171090%_ _%hd171003171085%_)
                                     (_%rest171092%_ _%tl171004171087%_))
                                (_%K171002171082%_
                                 _%rest171092%_
                                 _%hd171090%_)))
                            (_%else171000171014%_)))))))
          (let* ((_%g170946170956%_
                  (lambda (_%g170947170953%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g170947170953%_))))
                 (_%g170945170989%_
                  (lambda (_%g170947170959%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g170947170959%_))
                        (let ((_%e170949170961%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170947170959%_))))
                          (let ((_%hd170950170964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170949170961%_)))
                                (_%tl170951170966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170949170961%_))))
                            ((lambda (_%g170948170969%_)
                               (let* ((_%body170984%_
                                       (map (lambda (_%g170979170981%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self170941%_
                                                 _%g170979170981%_)))
                                            _%g170948170969%_))
                                      (_%body170986%_
                                       (_%simplify170944%_ _%body170984%_)))
                                 (if (let ((__tmp172985
                                            (length _%body170986%_)))
                                       (declare (not safe))
                                       (##fx= __tmp172985 '1))
                                     (car _%body170986%_)
                                     (cons 'begin _%body170986%_))))
                             _%tl170951170966%_)))
                        (_%g170946170956%_ _%g170947170959%_)))))
            (_%g170945170989%_ _%stx170942%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self170902%_ _%stx170903%_)
        (let* ((_%g170905170915%_
                (lambda (_%g170906170912%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170906170912%_))))
               (_%g170904170938%_
                (lambda (_%g170906170918%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170906170918%_))
                      (let ((_%e170908170920%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170906170918%_))))
                        (let ((_%hd170909170923%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170908170920%_)))
                              (_%tl170910170925%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170908170920%_))))
                          ((lambda (_%g170907170928%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g170907170928%_))))
                           _%tl170910170925%_)))
                      (_%g170905170915%_ _%g170906170918%_)))))
          (_%g170904170938%_ _%stx170903%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self170668%_ _%stx170669%_)
        (let* ((_%__stx171575171576%_ _%stx170669%_)
               (_%g170673170725%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171575171576%_)))))
          (let ((_%__kont171577171578%_
                 (lambda (_%g170675170884%_ _%g170676170885%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170668%_ _%g170675170884%_))))
                (_%__kont171579171580%_
                 (lambda (_%g170686170832%_
                          _%g170687170833%_
                          _%g170688170834%_)
                   (if (let ((__tmp172986
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g170688170834%_))))
                         (declare (not safe))
                         (##memq __tmp172986 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self170668%_
                          _%g170686170832%_)))))
                (_%__kont171583171584%_
                 (lambda (_%g170710170754%_ _%g170711170755%_)
                   (let ((_%decls170770%_
                          (map gx#syntax->datum _%g170711170755%_)))
                     (let ((__tmp172989
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls170770%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170668%_
                                                   _%g170710170754%_))
                                                '())))))
                           (__tmp172987
                            (let ((__tmp172988
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp172988 _%decls170770%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp172989
                        gxc#current-compile-decls
                        __tmp172987))))))
            (let* ((_%__match171630171631%_
                    (lambda (_%e170689170778%_
                             _%hd170690170781%_
                             _%tl170691170783%_
                             _%e170692170786%_
                             _%hd170693170789%_
                             _%tl170694170791%_
                             _%e170695170794%_
                             _%hd170696170797%_
                             _%tl170697170799%_
                             _%__splice171581171582%_
                             _%target170698170802%_
                             _%tl170700170804%_)
                      (letrec ((_%loop170701170807%_
                                (lambda (_%hd170699170810%_
                                         _%param170705170812%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170699170810%_))
                                      (let ((_%e170702170814%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170699170810%_))))
                                        (let ((_%lp-tl170704170819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170702170814%_)))
                                              (_%lp-hd170703170817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170702170814%_))))
                                          (_%loop170701170807%_
                                           _%lp-tl170704170819%_
                                           (cons _%lp-hd170703170817%_
                                                 _%param170705170812%_))))
                                      (let ((_%param170706170822%_
                                             (reverse _%param170705170812%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170694170791%_))
                                            (let ((_%e170707170824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170694170791%_))))
                                              (let ((_%tl170709170829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170707170824%_)))
                                                    (_%hd170708170827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170707170824%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170709170829%_))
                                                    (let ((_%g170686170832%_
                                                           _%hd170708170827%_)
                                                          (_%g170687170833%_
                                                           _%param170706170822%_)
                                                          (_%g170688170834%_
                                                           _%hd170696170797%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g170688170834%_))
                       (not (let ((__tmp172990
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170688170834%_))))
                              (declare (not safe))
                              (##memq __tmp172990 gxc#gambit-annotations))))
                  (_%__kont171579171580%_
                   _%g170686170832%_
                   _%g170687170833%_
                   _%g170688170834%_)
                  (_%__kont171583171584%_
                   _%hd170708170827%_
                   _%hd170693170789%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170673170725%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170673170725%_))))))))
                        (_%loop170701170807%_ _%target170698170802%_ '()))))
                   (_%__match171604171605%_
                    (lambda (_%e170677170860%_
                             _%hd170678170863%_
                             _%tl170679170865%_
                             _%e170680170868%_
                             _%hd170681170871%_
                             _%tl170682170873%_
                             _%e170683170876%_
                             _%hd170684170879%_
                             _%tl170685170881%_)
                      (let ((_%g170675170884%_ _%hd170684170879%_)
                            (_%g170676170885%_ _%hd170681170871%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g170676170885%_))
                            (_%__kont171577171578%_
                             _%g170675170884%_
                             _%g170676170885%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170681170871%_))
                                (let ((_%e170695170794%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170681170871%_))))
                                  (let ((_%tl170697170799%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170695170794%_)))
                                        (_%hd170696170797%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170695170794%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170697170799%_))
                                        (let ((_%__splice171581171582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl170697170799%_
                                                  '0))))
                                          (let ((_%tl170700170804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171581171582%_
                                                    '1)))
                                                (_%target170698170802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171581171582%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170700170804%_))
                                                (_%__match171630171631%_
                                                 _%e170677170860%_
                                                 _%hd170678170863%_
                                                 _%tl170679170865%_
                                                 _%e170680170868%_
                                                 _%hd170681170871%_
                                                 _%tl170682170873%_
                                                 _%e170695170794%_
                                                 _%hd170696170797%_
                                                 _%tl170697170799%_
                                                 _%__splice171581171582%_
                                                 _%target170698170802%_
                                                 _%tl170700170804%_)
                                                (_%__kont171583171584%_
                                                 _%hd170684170879%_
                                                 _%hd170681170871%_))))
                                        (_%__kont171583171584%_
                                         _%hd170684170879%_
                                         _%hd170681170871%_))))
                                (_%__kont171583171584%_
                                 _%hd170684170879%_
                                 _%hd170681170871%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171575171576%_))
                  (let ((_%e170677170860%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171575171576%_))))
                    (let ((_%tl170679170865%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170677170860%_)))
                          (_%hd170678170863%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170677170860%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170679170865%_))
                          (let ((_%e170680170868%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170679170865%_))))
                            (let ((_%tl170682170873%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170680170868%_)))
                                  (_%hd170681170871%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170680170868%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170682170873%_))
                                  (let ((_%e170683170876%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170682170873%_))))
                                    (let ((_%tl170685170881%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170683170876%_)))
                                          (_%hd170684170879%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170683170876%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170685170881%_))
                                          (_%__match171604171605%_
                                           _%e170677170860%_
                                           _%hd170678170863%_
                                           _%tl170679170865%_
                                           _%e170680170868%_
                                           _%hd170681170871%_
                                           _%tl170682170873%_
                                           _%e170683170876%_
                                           _%hd170684170879%_
                                           _%tl170685170881%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170681170871%_))
                                              (let ((_%e170695170794%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170681170871%_))))
                                                (let ((_%tl170697170799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170695170794%_)))
                                                      (_%hd170696170797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170695170794%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170697170799%_))
                                                      (let ((_%__splice171581171582%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl170697170799%_
                        '0))))
                (let ((_%tl170700170804%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171581171582%_ '1)))
                      (_%target170698170802%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171581171582%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170700170804%_))
                      (_%__match171630171631%_
                       _%e170677170860%_
                       _%hd170678170863%_
                       _%tl170679170865%_
                       _%e170680170868%_
                       _%hd170681170871%_
                       _%tl170682170873%_
                       _%e170695170794%_
                       _%hd170696170797%_
                       _%tl170697170799%_
                       _%__splice171581171582%_
                       _%target170698170802%_
                       _%tl170700170804%_)
                      (let () (declare (not safe)) (_%g170673170725%_)))))
              (let () (declare (not safe)) (_%g170673170725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170673170725%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170681170871%_))
                                      (let ((_%e170695170794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170681170871%_))))
                                        (let ((_%tl170697170799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170695170794%_)))
                                              (_%hd170696170797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170695170794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl170697170799%_))
                                              (let ((_%__splice171581171582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl170697170799%_
                                                        '0))))
                                                (let ((_%tl170700170804%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171581171582%_
                                                          '1)))
                                                      (_%target170698170802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171581171582%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170700170804%_))
                                                      (_%__match171630171631%_
                                                       _%e170677170860%_
                                                       _%hd170678170863%_
                                                       _%tl170679170865%_
                                                       _%e170680170868%_
                                                       _%hd170681170871%_
                                                       _%tl170682170873%_
                                                       _%e170695170794%_
                                                       _%hd170696170797%_
                                                       _%tl170697170799%_
                                                       _%__splice171581171582%_
                                                       _%target170698170802%_
                                                       _%tl170700170804%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g170673170725%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170673170725%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170673170725%_))))))
                          (let () (declare (not safe)) (_%g170673170725%_)))))
                  (let () (declare (not safe)) (_%g170673170725%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self170627%_ _%stx170628%_)
        (let* ((_%g170630170640%_
                (lambda (_%g170631170637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170631170637%_))))
               (_%g170629170665%_
                (lambda (_%g170631170643%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170631170643%_))
                      (let ((_%e170633170645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170631170643%_))))
                        (let ((_%hd170634170648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170633170645%_)))
                              (_%tl170635170650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170633170645%_))))
                          ((lambda (_%g170632170653%_)
                             (let ((_%decls170663%_
                                    (map gx#syntax->datum _%g170632170653%_)))
                               (let ((__tmp172991
                                      (let ((__tmp172992
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp172992
                                         _%decls170663%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp172991))
                               (cons 'declare _%decls170663%_)))
                           _%tl170635170650%_)))
                      (_%g170630170640%_ _%g170631170643%_)))))
          (_%g170629170665%_ _%stx170628%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self170374%_ _%stx170375%_)
        (let* ((_%g170377170394%_
                (lambda (_%g170378170391%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170378170391%_))))
               (_%g170376170624%_
                (lambda (_%g170378170397%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170378170397%_))
                      (let ((_%e170381170399%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170378170397%_))))
                        (let ((_%hd170382170402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170381170399%_)))
                              (_%tl170383170404%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170381170399%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170383170404%_))
                              (let ((_%e170384170407%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170383170404%_))))
                                (let ((_%hd170385170410%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170384170407%_)))
                                      (_%tl170386170412%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170384170407%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170386170412%_))
                                      (let ((_%e170387170415%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170386170412%_))))
                                        (let ((_%hd170388170418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170387170415%_)))
                                              (_%tl170389170420%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170387170415%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170389170420%_))
                                              ((lambda (_%g170379170423%_
                                                        _%g170380170424%_)
                                                 (let* ((_%__stx171683171684%_
                                                         _%g170380170424%_)
                                                        (_%g170441170455%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171683171684%_)))))
                                                   (let ((_%__kont171685171686%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self170374%_
                                                               _%g170379170423%_))))
                                                         (_%__kont171687171688%_
                                                          (lambda (_%g170447170587%_)
                                                            (let ((_%eid170596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g170447170587%_))))
                      (let ((_%lambda-expr170597170599%_
                             (gxc#apply-find-lambda-expression
                              _%g170379170423%_)))
                        (if _%lambda-expr170597170599%_
                            (let* ((_%lambda-expr170601%_
                                    _%lambda-expr170597170599%_)
                                   (__tmp172993
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172993
                               _%lambda-expr170601%_
                               _%eid170596%_))
                            '#f))
                      (cons 'define
                            (cons _%eid170596%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self170374%_
                                           _%g170379170423%_))
                                        '()))))))
                 (_%__kont171689171690%_
                  (lambda ()
                    (let* ((_%tmp170462%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body170571%_
                            (let _%lp170464%_ ((_%rest170466%_
                                                _%g170380170424%_)
                                               (_%k170467%_ '0)
                                               (_%r170468%_ '()))
                              (let* ((_%__stx171653171654%_ _%rest170466%_)
                                     (_%g170473170490%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171653171654%_)))))
                                (let ((_%__kont171655171656%_
                                       (lambda (_%g170475170558%_)
                                         (_%lp170464%_
                                          _%g170475170558%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170467%_ '1))
                                          _%r170468%_)))
                                      (_%__kont171657171658%_
                                       (lambda (_%g170480170531%_
                                                _%g170481170532%_)
                                         (_%lp170464%_
                                          _%g170480170531%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170467%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g170481170532%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp170462%_
                           _%k170467%_
                           _%g170480170531%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r170468%_))))
                                      (_%__kont171659171660%_
                                       (lambda (_%g170485170502%_)
                                         (let ((__tmp172994
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g170485170502%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp170462%_
                                 _%k170467%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp172994
                                            _%r170468%_))))
                                      (_%__kont171661171662%_
                                       (lambda () (reverse _%r170468%_))))
                                  (let ((_%g170471170518%_
                                         (lambda ()
                                           (let ((_%g170485170502%_
                                                  _%__stx171653171654%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g170485170502%_))
                                                 (_%__kont171659171660%_
                                                  _%g170485170502%_)
                                                 (_%__kont171661171662%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx171653171654%_))
                                        (let ((_%e170476170547%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx171653171654%_))))
                                          (let ((_%tl170478170552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170476170547%_)))
                                                (_%hd170477170550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170476170547%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd170477170550%_))
                                                (let ((_%e170479170555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd170477170550%_))))
                                                  (if (equal? _%e170479170555%_
                                                              '#f)
                                                      (_%__kont171655171656%_
                                                       _%tl170478170552%_)
                                                      (_%__kont171657171658%_
                                                       _%tl170478170552%_
                                                       _%hd170477170550%_)))
                                                (_%__kont171657171658%_
                                                 _%tl170478170552%_
                                                 _%hd170477170550%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170471170518%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp170462%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self170374%_
                                                       _%g170379170423%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp170462%_
                                         _%g170380170424%_
                                         _%g170379170423%_)
                                        _%body170571%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171683171684%_))
                                                         (let ((_%e170443170608%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171683171684%_))))
                   (let ((_%tl170445170613%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170443170608%_)))
                         (_%hd170444170611%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170443170608%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd170444170611%_))
                         (let ((_%e170446170616%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170444170611%_))))
                           (if (equal? _%e170446170616%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170445170613%_))
                                   (_%__kont171685171686%_)
                                   (_%__kont171689171690%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170445170613%_))
                                   (_%__kont171687171688%_ _%hd170444170611%_)
                                   (_%__kont171689171690%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl170445170613%_))
                             (_%__kont171687171688%_ _%hd170444170611%_)
                             (_%__kont171689171690%_)))))
                 (_%__kont171689171690%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd170388170418%_
                                               _%hd170385170410%_)
                                              (_%g170377170394%_
                                               _%g170378170397%_))))
                                      (_%g170377170394%_ _%g170378170397%_))))
                              (_%g170377170394%_ _%g170378170397%_))))
                      (_%g170377170394%_ _%g170378170397%_)))))
          (_%g170376170624%_ _%stx170375%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals170349%_ _%hd170350%_ _%expr170351%_)
        (let ((_%$e170353%_ (gxc#apply-count-values _%expr170351%_)))
          (if _%$e170353%_
              ((lambda (_%count170356%_)
                 (let ((_%len170358%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd170350%_)))
                       (_%cmp170359%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd170350%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len170358%_ '0))
                           (_%cmp170359%_ _%count170356%_ _%len170358%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr170351%_
                          _%hd170350%_)))))
               _%$e170353%_)
              (let* ((_%len170365%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd170350%_)))
                     (_%cmp170367%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd170350%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg170369%_
                      (let ((__tmp172996
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd170350%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp172995 (number->string _%len170365%_)))
                        (declare (not safe))
                        (##string-append __tmp172996 __tmp172995 '" values")))
                     (_%count170371%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd170350%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len170365%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count170371%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals170349%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp170367%_
                                (cons _%count170371%_
                                      (cons _%len170365%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp170367%_
                                                        (cons _%count170371%_
                                                              (cons _%len170365%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg170369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count170371%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var170344%_)
        (letrec ((_%generate-inline170346%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var170344%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var170344%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170346%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170346%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var170337%_ _%i170338%_ _%rest170339%_)
        (letrec ((_%generate-inline170341%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i170338%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest170339%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var170337%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var170337%_
                                                      (cons '0 '())))
                                          (cons _%var170337%_ '()))))
                        (cons '##values-ref
                              (cons _%var170337%_ (cons _%i170338%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170341%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170341%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var170331%_ _%i170332%_)
        (if (let () (declare (not safe)) (##fx= _%i170332%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var170331%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var170331%_ '()))
                                  (cons (cons 'list (cons _%var170331%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var170331%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var170331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var170331%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i170332%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var170331%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var170331%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var170331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var170331%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var170331%_ '()))
                                (cons _%i170332%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var170331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i170332%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self170263%_ _%stx170264%_)
        (let* ((_%g170266170283%_
                (lambda (_%g170267170280%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170267170280%_))))
               (_%g170265170328%_
                (lambda (_%g170267170286%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170267170286%_))
                      (let ((_%e170270170288%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170267170286%_))))
                        (let ((_%hd170271170291%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170270170288%_)))
                              (_%tl170272170293%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170270170288%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170272170293%_))
                              (let ((_%e170273170296%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170272170293%_))))
                                (let ((_%hd170274170299%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170273170296%_)))
                                      (_%tl170275170301%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170273170296%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170275170301%_))
                                      (let ((_%e170276170304%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170275170301%_))))
                                        (let ((_%hd170277170307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170276170304%_)))
                                              (_%tl170278170309%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170276170304%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170278170309%_))
                                              ((lambda (_%g170268170312%_
                                                        _%g170269170313%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self170263%_
                                                  _%g170269170313%_
                                                  _%g170268170312%_))
                                               _%hd170277170307%_
                                               _%hd170274170299%_)
                                              (_%g170266170283%_
                                               _%g170267170286%_))))
                                      (_%g170266170283%_ _%g170267170286%_))))
                              (_%g170266170283%_ _%g170267170286%_))))
                      (_%g170266170283%_ _%g170267170286%_)))))
          (_%g170265170328%_ _%stx170264%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self170222%_ _%hd170223%_ _%body170224%_)
        (let* ((_%hd170226%_ (gxc#generate-runtime-lambda-head _%hd170223%_))
               (_%body170228%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self170222%_ _%body170224%_)))
               (_%body170260%_
                (let* ((_%body170229170237%_ _%body170228%_)
                       (_%else170231170245%_
                        (lambda () (cons _%body170228%_ '())))
                       (_%K170233170250%_
                        (lambda (_%exprs170248%_) _%exprs170248%_)))
                  (if (pair? _%body170229170237%_)
                      (let ((_%hd170234170253%_
                             (let ()
                               (declare (not safe))
                               (##car _%body170229170237%_)))
                            (_%tl170235170255%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body170229170237%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd170234170253%_ 'begin))
                            (let ((_%exprs170258%_ _%tl170235170255%_))
                              (_%K170233170250%_ _%exprs170258%_))
                            (_%else170231170245%_)))
                      (_%else170231170245%_)))))
          (cons 'lambda (cons _%hd170226%_ _%body170260%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd170220%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd170220%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self168777%_ _%stx168778%_)
        (letrec ((_%dispatch-case?168780%_
                  (lambda (_%hd169458%_ _%body169459%_)
                    (let* ((_%form169461%_
                            (cons _%hd169458%_ (cons _%body169459%_ '())))
                           (_%__stx171715171716%_ _%form169461%_)
                           (_%g169466169623%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171715171716%_)))))
                      (let ((_%__kont171717171718%_
                             (lambda (_%g169468170140%_
                                      _%g169469170141%_
                                      _%g169470170142%_)
                               '#t))
                            (_%__kont171723171724%_
                             (lambda (_%g169513169932%_
                                      _%g169514169933%_
                                      _%g169515169934%_
                                      _%g169516169935%_
                                      _%g169517169936%_
                                      _%g169518169937%_)
                               '#t))
                            (_%__kont171729171730%_
                             (lambda (_%g169579169731%_
                                      _%g169580169732%_
                                      _%g169581169733%_
                                      _%g169582169734%_)
                               '#t))
                            (_%__kont171731171732%_ (lambda () '#f)))
                        (let* ((_%__match171856171857%_
                                (lambda (_%e169583169635%_
                                         _%hd169584169638%_
                                         _%tl169585169640%_
                                         _%e169586169643%_
                                         _%hd169587169646%_
                                         _%tl169588169648%_
                                         _%e169589169651%_
                                         _%hd169590169654%_
                                         _%tl169591169656%_
                                         _%e169592169659%_
                                         _%hd169593169662%_
                                         _%tl169594169664%_
                                         _%e169595169667%_
                                         _%hd169596169670%_
                                         _%tl169597169672%_
                                         _%e169598169675%_
                                         _%hd169599169678%_
                                         _%tl169600169680%_
                                         _%e169601169683%_
                                         _%hd169602169686%_
                                         _%tl169603169688%_
                                         _%e169604169691%_
                                         _%hd169605169694%_
                                         _%tl169606169696%_
                                         _%e169607169699%_
                                         _%hd169608169702%_
                                         _%tl169609169704%_
                                         _%e169610169707%_
                                         _%hd169611169710%_
                                         _%tl169612169712%_
                                         _%e169613169715%_
                                         _%hd169614169718%_
                                         _%tl169615169720%_
                                         _%e169616169723%_
                                         _%hd169617169726%_
                                         _%tl169618169728%_)
                                  (let ((_%g169579169731%_ _%hd169617169726%_)
                                        (_%g169580169732%_ _%hd169608169702%_)
                                        (_%g169581169733%_ _%hd169599169678%_)
                                        (_%g169582169734%_ _%hd169584169638%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g169582169734%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g169581169733%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g169582169734%_
                                                _%g169579169731%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g169580169732%_
                                                     _%g169582169734%_))))
                                        (_%__kont171729171730%_
                                         _%g169579169731%_
                                         _%g169580169732%_
                                         _%g169581169733%_
                                         _%g169582169734%_)
                                        (_%__kont171731171732%_)))))
                               (_%__match171828171829%_
                                (lambda (_%e169583169635%_
                                         _%hd169584169638%_
                                         _%tl169585169640%_
                                         _%e169586169643%_
                                         _%hd169587169646%_
                                         _%tl169588169648%_
                                         _%e169589169651%_
                                         _%hd169590169654%_
                                         _%tl169591169656%_
                                         _%e169592169659%_
                                         _%hd169593169662%_
                                         _%tl169594169664%_
                                         _%e169595169667%_
                                         _%hd169596169670%_
                                         _%tl169597169672%_
                                         _%e169598169675%_
                                         _%hd169599169678%_
                                         _%tl169600169680%_
                                         _%e169601169683%_
                                         _%hd169602169686%_
                                         _%tl169603169688%_
                                         _%e169604169691%_
                                         _%hd169605169694%_
                                         _%tl169606169696%_
                                         _%e169607169699%_
                                         _%hd169608169702%_
                                         _%tl169609169704%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169603169688%_))
                                      (let ((_%e169610169707%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169603169688%_))))
                                        (let ((_%tl169612169712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169610169707%_)))
                                              (_%hd169611169710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169610169707%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169611169710%_))
                                              (let ((_%e169613169715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169611169710%_))))
                                                (let ((_%tl169615169720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169613169715%_)))
                                                      (_%hd169614169718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169613169715%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169614169718%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169614169718%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169615169720%_))
                      (let ((_%e169616169723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169615169720%_))))
                        (let ((_%tl169618169728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169616169723%_)))
                              (_%hd169617169726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169616169723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169618169728%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169612169712%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169588169648%_))
                                      (_%__match171856171857%_
                                       _%e169583169635%_
                                       _%hd169584169638%_
                                       _%tl169585169640%_
                                       _%e169586169643%_
                                       _%hd169587169646%_
                                       _%tl169588169648%_
                                       _%e169589169651%_
                                       _%hd169590169654%_
                                       _%tl169591169656%_
                                       _%e169592169659%_
                                       _%hd169593169662%_
                                       _%tl169594169664%_
                                       _%e169595169667%_
                                       _%hd169596169670%_
                                       _%tl169597169672%_
                                       _%e169598169675%_
                                       _%hd169599169678%_
                                       _%tl169600169680%_
                                       _%e169601169683%_
                                       _%hd169602169686%_
                                       _%tl169603169688%_
                                       _%e169604169691%_
                                       _%hd169605169694%_
                                       _%tl169606169696%_
                                       _%e169607169699%_
                                       _%hd169608169702%_
                                       _%tl169609169704%_
                                       _%e169610169707%_
                                       _%hd169611169710%_
                                       _%tl169612169712%_
                                       _%e169613169715%_
                                       _%hd169614169718%_
                                       _%tl169615169720%_
                                       _%e169616169723%_
                                       _%hd169617169726%_
                                       _%tl169618169728%_)
                                      (_%__kont171731171732%_))
                                  (_%__kont171731171732%_))
                              (_%__kont171731171732%_))))
                      (_%__kont171731171732%_))
                  (_%__kont171731171732%_))
              (_%__kont171731171732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171731171732%_))))
                                      (_%__kont171731171732%_))))
                               (_%__match171758171759%_
                                (lambda (_%e169519169776%_
                                         _%hd169520169779%_
                                         _%tl169521169781%_
                                         _%__splice171725171726%_
                                         _%target169522169784%_
                                         _%tl169524169786%_)
                                  (letrec ((_%loop169525169789%_
                                            (lambda (_%hd169523169792%_
                                                     _%arg169529169794%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169523169792%_))
                                                  (let ((_%e169526169796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169523169792%_))))
                                                    (let ((_%lp-tl169528169801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169526169796%_)))
                                                          (_%lp-hd169527169799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169526169796%_))))
                                                      (_%loop169525169789%_
                                                       _%lp-tl169528169801%_
                                                       (cons _%lp-hd169527169799%_
                                                             _%arg169529169794%_))))
                                                  (let ((_%arg169530169804%_
                                                         (reverse _%arg169529169794%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169521169781%_))
                                                        (let ((_%e169531169806%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169521169781%_))))
                  (let ((_%tl169533169811%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169531169806%_)))
                        (_%hd169532169809%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169531169806%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169532169809%_))
                        (let ((_%e169534169814%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169532169809%_))))
                          (let ((_%tl169536169819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169534169814%_)))
                                (_%hd169535169817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169534169814%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169535169817%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169535169817%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169536169819%_))
                                        (let ((_%e169537169822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169536169819%_))))
                                          (let ((_%tl169539169827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169537169822%_)))
                                                (_%hd169538169825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169537169822%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169538169825%_))
                                                (let ((_%e169540169830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169538169825%_))))
                                                  (let ((_%tl169542169835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169540169830%_)))
                                                        (_%hd169541169833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169540169830%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169541169833%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169541169833%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169542169835%_))
                        (let ((_%e169543169838%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169542169835%_))))
                          (let ((_%tl169545169843%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169543169838%_)))
                                (_%hd169544169841%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169543169838%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169545169843%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169539169827%_))
                                    (let ((_%e169546169846%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169539169827%_))))
                                      (let ((_%tl169548169851%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169546169846%_)))
                                            (_%hd169547169849%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169546169846%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169547169849%_))
                                            (let ((_%e169549169854%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169547169849%_))))
                                              (let ((_%tl169551169859%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169549169854%_)))
                                                    (_%hd169550169857%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169549169854%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169550169857%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169550169857%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169551169859%_))
                                                            (let ((_%e169552169862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169551169859%_))))
                      (let ((_%tl169554169867%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169552169862%_)))
                            (_%hd169553169865%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169552169862%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169554169867%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169548169851%_))
                                (if (let ((__tmp172997
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl169548169851%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp172997 '1))
                                    (let ((_%__splice171727171728%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169548169851%_
                                              '1))))
                                      (let ((_%tl169557169872%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171727171728%_
                                                '1)))
                                            (_%target169555169870%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171727171728%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169557169872%_))
                                            (let ((_%e169564169875%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169557169872%_))))
                                              (let ((_%tl169566169880%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169564169875%_)))
                                                    (_%hd169565169878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169564169875%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169565169878%_))
                                                    (let ((_%e169567169883%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169565169878%_))))
                                                      (let ((_%tl169569169888%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169567169883%_)))
                    (_%hd169568169886%_
                     (let () (declare (not safe)) (##car _%e169567169883%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169568169886%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd169568169886%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169569169888%_))
                            (let ((_%e169570169891%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169569169888%_))))
                              (let ((_%tl169572169896%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169570169891%_)))
                                    (_%hd169571169894%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169570169891%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169572169896%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169566169880%_))
                                        (letrec ((_%loop169558169899%_
                                                  (lambda (_%hd169556169902%_
                                                           _%xarg169562169904%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd169556169902%_))
                                                        (let ((_%e169559169906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd169556169902%_))))
                  (let ((_%lp-tl169561169911%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169559169906%_)))
                        (_%lp-hd169560169909%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169559169906%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd169560169909%_))
                        (let ((_%e169573169914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd169560169909%_))))
                          (let ((_%tl169575169919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169573169914%_)))
                                (_%hd169574169917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169573169914%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169574169917%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd169574169917%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169575169919%_))
                                        (let ((_%e169576169922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169575169919%_))))
                                          (let ((_%tl169578169927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169576169922%_)))
                                                (_%hd169577169925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169576169922%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169578169927%_))
                                                (_%loop169558169899%_
                                                 _%lp-tl169561169911%_
                                                 (cons _%hd169577169925%_
                                                       _%xarg169562169904%_))
                                                (_%__match171828171829%_
                                                 _%e169519169776%_
                                                 _%hd169520169779%_
                                                 _%tl169521169781%_
                                                 _%e169531169806%_
                                                 _%hd169532169809%_
                                                 _%tl169533169811%_
                                                 _%e169534169814%_
                                                 _%hd169535169817%_
                                                 _%tl169536169819%_
                                                 _%e169537169822%_
                                                 _%hd169538169825%_
                                                 _%tl169539169827%_
                                                 _%e169540169830%_
                                                 _%hd169541169833%_
                                                 _%tl169542169835%_
                                                 _%e169543169838%_
                                                 _%hd169544169841%_
                                                 _%tl169545169843%_
                                                 _%e169546169846%_
                                                 _%hd169547169849%_
                                                 _%tl169548169851%_
                                                 _%e169549169854%_
                                                 _%hd169550169857%_
                                                 _%tl169551169859%_
                                                 _%e169552169862%_
                                                 _%hd169553169865%_
                                                 _%tl169554169867%_))))
                                        (_%__match171828171829%_
                                         _%e169519169776%_
                                         _%hd169520169779%_
                                         _%tl169521169781%_
                                         _%e169531169806%_
                                         _%hd169532169809%_
                                         _%tl169533169811%_
                                         _%e169534169814%_
                                         _%hd169535169817%_
                                         _%tl169536169819%_
                                         _%e169537169822%_
                                         _%hd169538169825%_
                                         _%tl169539169827%_
                                         _%e169540169830%_
                                         _%hd169541169833%_
                                         _%tl169542169835%_
                                         _%e169543169838%_
                                         _%hd169544169841%_
                                         _%tl169545169843%_
                                         _%e169546169846%_
                                         _%hd169547169849%_
                                         _%tl169548169851%_
                                         _%e169549169854%_
                                         _%hd169550169857%_
                                         _%tl169551169859%_
                                         _%e169552169862%_
                                         _%hd169553169865%_
                                         _%tl169554169867%_))
                                    (_%__match171828171829%_
                                     _%e169519169776%_
                                     _%hd169520169779%_
                                     _%tl169521169781%_
                                     _%e169531169806%_
                                     _%hd169532169809%_
                                     _%tl169533169811%_
                                     _%e169534169814%_
                                     _%hd169535169817%_
                                     _%tl169536169819%_
                                     _%e169537169822%_
                                     _%hd169538169825%_
                                     _%tl169539169827%_
                                     _%e169540169830%_
                                     _%hd169541169833%_
                                     _%tl169542169835%_
                                     _%e169543169838%_
                                     _%hd169544169841%_
                                     _%tl169545169843%_
                                     _%e169546169846%_
                                     _%hd169547169849%_
                                     _%tl169548169851%_
                                     _%e169549169854%_
                                     _%hd169550169857%_
                                     _%tl169551169859%_
                                     _%e169552169862%_
                                     _%hd169553169865%_
                                     _%tl169554169867%_))
                                (_%__match171828171829%_
                                 _%e169519169776%_
                                 _%hd169520169779%_
                                 _%tl169521169781%_
                                 _%e169531169806%_
                                 _%hd169532169809%_
                                 _%tl169533169811%_
                                 _%e169534169814%_
                                 _%hd169535169817%_
                                 _%tl169536169819%_
                                 _%e169537169822%_
                                 _%hd169538169825%_
                                 _%tl169539169827%_
                                 _%e169540169830%_
                                 _%hd169541169833%_
                                 _%tl169542169835%_
                                 _%e169543169838%_
                                 _%hd169544169841%_
                                 _%tl169545169843%_
                                 _%e169546169846%_
                                 _%hd169547169849%_
                                 _%tl169548169851%_
                                 _%e169549169854%_
                                 _%hd169550169857%_
                                 _%tl169551169859%_
                                 _%e169552169862%_
                                 _%hd169553169865%_
                                 _%tl169554169867%_))))
                        (_%__match171828171829%_
                         _%e169519169776%_
                         _%hd169520169779%_
                         _%tl169521169781%_
                         _%e169531169806%_
                         _%hd169532169809%_
                         _%tl169533169811%_
                         _%e169534169814%_
                         _%hd169535169817%_
                         _%tl169536169819%_
                         _%e169537169822%_
                         _%hd169538169825%_
                         _%tl169539169827%_
                         _%e169540169830%_
                         _%hd169541169833%_
                         _%tl169542169835%_
                         _%e169543169838%_
                         _%hd169544169841%_
                         _%tl169545169843%_
                         _%e169546169846%_
                         _%hd169547169849%_
                         _%tl169548169851%_
                         _%e169549169854%_
                         _%hd169550169857%_
                         _%tl169551169859%_
                         _%e169552169862%_
                         _%hd169553169865%_
                         _%tl169554169867%_))))
                (let ((_%xarg169563169930%_ (reverse _%xarg169562169904%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169533169811%_))
                      (let ((_%g169513169932%_ _%hd169571169894%_)
                            (_%g169514169933%_ _%xarg169563169930%_)
                            (_%g169515169934%_ _%hd169553169865%_)
                            (_%g169516169935%_ _%hd169544169841%_)
                            (_%g169517169936%_ _%tl169524169786%_)
                            (_%g169518169937%_ _%arg169530169804%_))
                        (if (and (let ((__tmp172998
                                        (let ((__tmp172999
                                               (lambda (_%g169980169983%_
                                                        _%g169981169985%_)
                                                 (cons _%g169980169983%_
                                                       _%g169981169985%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172999
                                           '()
                                           _%g169518169937%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp172998))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g169517169936%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g169516169935%_
                                    'apply))
                                 (let ((__tmp173002
                                        (length (let ((__tmp173003
                                                       (lambda (_%g169987169990%_
                                                                _%g169988169992%_)
                                                         (cons _%g169987169990%_
                                                               _%g169988169992%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp173003
                                                   '()
                                                   _%g169518169937%_))))
                                       (__tmp173000
                                        (length (let ((__tmp173001
                                                       (lambda (_%g169994169997%_
                                                                _%g169995169999%_)
                                                         (cons _%g169994169997%_
                                                               _%g169995169999%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp173001
                                                   '()
                                                   _%g169514169933%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp173002 __tmp173000))
                                 (let ((__tmp173006
                                        (let ((__tmp173007
                                               (lambda (_%g170001170004%_
                                                        _%g170002170006%_)
                                                 (cons _%g170001170004%_
                                                       _%g170002170006%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173007
                                           '()
                                           _%g169518169937%_)))
                                       (__tmp173004
                                        (let ((__tmp173005
                                               (lambda (_%g170008170011%_
                                                        _%g170009170013%_)
                                                 (cons _%g170008170011%_
                                                       _%g170009170013%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173005
                                           '()
                                           _%g169514169933%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp173006
                                    __tmp173004))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g169517169936%_
                                    _%g169513169932%_))
                                 (not (let ((__tmp173011
                                             (lambda (_%g170015170017%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g170015170017%_
                                                  _%g169515169934%_))))
                                            (__tmp173008
                                             (let ((__tmp173010
                                                    (lambda (_%g170019170022%_
                                                             _%g170020170024%_)
                                                      (cons _%g170019170022%_
                                                            _%g170020170024%_)))
                                                   (__tmp173009
                                                    (cons _%g169517169936%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173010
                                                __tmp173009
                                                _%g169518169937%_))))
                                        (declare (not safe))
                                        (__find __tmp173011 __tmp173008))))
                            (_%__kont171723171724%_
                             _%g169513169932%_
                             _%g169514169933%_
                             _%g169515169934%_
                             _%g169516169935%_
                             _%g169517169936%_
                             _%g169518169937%_)
                            (_%__match171828171829%_
                             _%e169519169776%_
                             _%hd169520169779%_
                             _%tl169521169781%_
                             _%e169531169806%_
                             _%hd169532169809%_
                             _%tl169533169811%_
                             _%e169534169814%_
                             _%hd169535169817%_
                             _%tl169536169819%_
                             _%e169537169822%_
                             _%hd169538169825%_
                             _%tl169539169827%_
                             _%e169540169830%_
                             _%hd169541169833%_
                             _%tl169542169835%_
                             _%e169543169838%_
                             _%hd169544169841%_
                             _%tl169545169843%_
                             _%e169546169846%_
                             _%hd169547169849%_
                             _%tl169548169851%_
                             _%e169549169854%_
                             _%hd169550169857%_
                             _%tl169551169859%_
                             _%e169552169862%_
                             _%hd169553169865%_
                             _%tl169554169867%_)))
                      (_%__match171828171829%_
                       _%e169519169776%_
                       _%hd169520169779%_
                       _%tl169521169781%_
                       _%e169531169806%_
                       _%hd169532169809%_
                       _%tl169533169811%_
                       _%e169534169814%_
                       _%hd169535169817%_
                       _%tl169536169819%_
                       _%e169537169822%_
                       _%hd169538169825%_
                       _%tl169539169827%_
                       _%e169540169830%_
                       _%hd169541169833%_
                       _%tl169542169835%_
                       _%e169543169838%_
                       _%hd169544169841%_
                       _%tl169545169843%_
                       _%e169546169846%_
                       _%hd169547169849%_
                       _%tl169548169851%_
                       _%e169549169854%_
                       _%hd169550169857%_
                       _%tl169551169859%_
                       _%e169552169862%_
                       _%hd169553169865%_
                       _%tl169554169867%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop169558169899%_
                                           _%target169555169870%_
                                           '()))
                                        (_%__match171828171829%_
                                         _%e169519169776%_
                                         _%hd169520169779%_
                                         _%tl169521169781%_
                                         _%e169531169806%_
                                         _%hd169532169809%_
                                         _%tl169533169811%_
                                         _%e169534169814%_
                                         _%hd169535169817%_
                                         _%tl169536169819%_
                                         _%e169537169822%_
                                         _%hd169538169825%_
                                         _%tl169539169827%_
                                         _%e169540169830%_
                                         _%hd169541169833%_
                                         _%tl169542169835%_
                                         _%e169543169838%_
                                         _%hd169544169841%_
                                         _%tl169545169843%_
                                         _%e169546169846%_
                                         _%hd169547169849%_
                                         _%tl169548169851%_
                                         _%e169549169854%_
                                         _%hd169550169857%_
                                         _%tl169551169859%_
                                         _%e169552169862%_
                                         _%hd169553169865%_
                                         _%tl169554169867%_))
                                    (_%__match171828171829%_
                                     _%e169519169776%_
                                     _%hd169520169779%_
                                     _%tl169521169781%_
                                     _%e169531169806%_
                                     _%hd169532169809%_
                                     _%tl169533169811%_
                                     _%e169534169814%_
                                     _%hd169535169817%_
                                     _%tl169536169819%_
                                     _%e169537169822%_
                                     _%hd169538169825%_
                                     _%tl169539169827%_
                                     _%e169540169830%_
                                     _%hd169541169833%_
                                     _%tl169542169835%_
                                     _%e169543169838%_
                                     _%hd169544169841%_
                                     _%tl169545169843%_
                                     _%e169546169846%_
                                     _%hd169547169849%_
                                     _%tl169548169851%_
                                     _%e169549169854%_
                                     _%hd169550169857%_
                                     _%tl169551169859%_
                                     _%e169552169862%_
                                     _%hd169553169865%_
                                     _%tl169554169867%_))))
                            (_%__match171828171829%_
                             _%e169519169776%_
                             _%hd169520169779%_
                             _%tl169521169781%_
                             _%e169531169806%_
                             _%hd169532169809%_
                             _%tl169533169811%_
                             _%e169534169814%_
                             _%hd169535169817%_
                             _%tl169536169819%_
                             _%e169537169822%_
                             _%hd169538169825%_
                             _%tl169539169827%_
                             _%e169540169830%_
                             _%hd169541169833%_
                             _%tl169542169835%_
                             _%e169543169838%_
                             _%hd169544169841%_
                             _%tl169545169843%_
                             _%e169546169846%_
                             _%hd169547169849%_
                             _%tl169548169851%_
                             _%e169549169854%_
                             _%hd169550169857%_
                             _%tl169551169859%_
                             _%e169552169862%_
                             _%hd169553169865%_
                             _%tl169554169867%_))
                        (_%__match171828171829%_
                         _%e169519169776%_
                         _%hd169520169779%_
                         _%tl169521169781%_
                         _%e169531169806%_
                         _%hd169532169809%_
                         _%tl169533169811%_
                         _%e169534169814%_
                         _%hd169535169817%_
                         _%tl169536169819%_
                         _%e169537169822%_
                         _%hd169538169825%_
                         _%tl169539169827%_
                         _%e169540169830%_
                         _%hd169541169833%_
                         _%tl169542169835%_
                         _%e169543169838%_
                         _%hd169544169841%_
                         _%tl169545169843%_
                         _%e169546169846%_
                         _%hd169547169849%_
                         _%tl169548169851%_
                         _%e169549169854%_
                         _%hd169550169857%_
                         _%tl169551169859%_
                         _%e169552169862%_
                         _%hd169553169865%_
                         _%tl169554169867%_))
                    (_%__match171828171829%_
                     _%e169519169776%_
                     _%hd169520169779%_
                     _%tl169521169781%_
                     _%e169531169806%_
                     _%hd169532169809%_
                     _%tl169533169811%_
                     _%e169534169814%_
                     _%hd169535169817%_
                     _%tl169536169819%_
                     _%e169537169822%_
                     _%hd169538169825%_
                     _%tl169539169827%_
                     _%e169540169830%_
                     _%hd169541169833%_
                     _%tl169542169835%_
                     _%e169543169838%_
                     _%hd169544169841%_
                     _%tl169545169843%_
                     _%e169546169846%_
                     _%hd169547169849%_
                     _%tl169548169851%_
                     _%e169549169854%_
                     _%hd169550169857%_
                     _%tl169551169859%_
                     _%e169552169862%_
                     _%hd169553169865%_
                     _%tl169554169867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171828171829%_
                                                     _%e169519169776%_
                                                     _%hd169520169779%_
                                                     _%tl169521169781%_
                                                     _%e169531169806%_
                                                     _%hd169532169809%_
                                                     _%tl169533169811%_
                                                     _%e169534169814%_
                                                     _%hd169535169817%_
                                                     _%tl169536169819%_
                                                     _%e169537169822%_
                                                     _%hd169538169825%_
                                                     _%tl169539169827%_
                                                     _%e169540169830%_
                                                     _%hd169541169833%_
                                                     _%tl169542169835%_
                                                     _%e169543169838%_
                                                     _%hd169544169841%_
                                                     _%tl169545169843%_
                                                     _%e169546169846%_
                                                     _%hd169547169849%_
                                                     _%tl169548169851%_
                                                     _%e169549169854%_
                                                     _%hd169550169857%_
                                                     _%tl169551169859%_
                                                     _%e169552169862%_
                                                     _%hd169553169865%_
                                                     _%tl169554169867%_))))
                                            (_%__match171828171829%_
                                             _%e169519169776%_
                                             _%hd169520169779%_
                                             _%tl169521169781%_
                                             _%e169531169806%_
                                             _%hd169532169809%_
                                             _%tl169533169811%_
                                             _%e169534169814%_
                                             _%hd169535169817%_
                                             _%tl169536169819%_
                                             _%e169537169822%_
                                             _%hd169538169825%_
                                             _%tl169539169827%_
                                             _%e169540169830%_
                                             _%hd169541169833%_
                                             _%tl169542169835%_
                                             _%e169543169838%_
                                             _%hd169544169841%_
                                             _%tl169545169843%_
                                             _%e169546169846%_
                                             _%hd169547169849%_
                                             _%tl169548169851%_
                                             _%e169549169854%_
                                             _%hd169550169857%_
                                             _%tl169551169859%_
                                             _%e169552169862%_
                                             _%hd169553169865%_
                                             _%tl169554169867%_))))
                                    (_%__match171828171829%_
                                     _%e169519169776%_
                                     _%hd169520169779%_
                                     _%tl169521169781%_
                                     _%e169531169806%_
                                     _%hd169532169809%_
                                     _%tl169533169811%_
                                     _%e169534169814%_
                                     _%hd169535169817%_
                                     _%tl169536169819%_
                                     _%e169537169822%_
                                     _%hd169538169825%_
                                     _%tl169539169827%_
                                     _%e169540169830%_
                                     _%hd169541169833%_
                                     _%tl169542169835%_
                                     _%e169543169838%_
                                     _%hd169544169841%_
                                     _%tl169545169843%_
                                     _%e169546169846%_
                                     _%hd169547169849%_
                                     _%tl169548169851%_
                                     _%e169549169854%_
                                     _%hd169550169857%_
                                     _%tl169551169859%_
                                     _%e169552169862%_
                                     _%hd169553169865%_
                                     _%tl169554169867%_))
                                (_%__match171828171829%_
                                 _%e169519169776%_
                                 _%hd169520169779%_
                                 _%tl169521169781%_
                                 _%e169531169806%_
                                 _%hd169532169809%_
                                 _%tl169533169811%_
                                 _%e169534169814%_
                                 _%hd169535169817%_
                                 _%tl169536169819%_
                                 _%e169537169822%_
                                 _%hd169538169825%_
                                 _%tl169539169827%_
                                 _%e169540169830%_
                                 _%hd169541169833%_
                                 _%tl169542169835%_
                                 _%e169543169838%_
                                 _%hd169544169841%_
                                 _%tl169545169843%_
                                 _%e169546169846%_
                                 _%hd169547169849%_
                                 _%tl169548169851%_
                                 _%e169549169854%_
                                 _%hd169550169857%_
                                 _%tl169551169859%_
                                 _%e169552169862%_
                                 _%hd169553169865%_
                                 _%tl169554169867%_))
                            (_%__kont171731171732%_))))
                    (_%__kont171731171732%_))
                (_%__kont171731171732%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171731171732%_))))
                                            (_%__kont171731171732%_))))
                                    (_%__kont171731171732%_))
                                (_%__kont171731171732%_))))
                        (_%__kont171731171732%_))
                    (_%__kont171731171732%_))
                (_%__kont171731171732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171731171732%_))))
                                        (_%__kont171731171732%_))
                                    (_%__kont171731171732%_))
                                (_%__kont171731171732%_))))
                        (_%__kont171731171732%_))))
                (_%__kont171731171732%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169525169789%_
                                     _%target169522169784%_
                                     '()))))
                               (_%__match171746171747%_
                                (lambda (_%e169471170032%_
                                         _%hd169472170035%_
                                         _%tl169473170037%_
                                         _%__splice171719171720%_
                                         _%target169474170040%_
                                         _%tl169476170042%_)
                                  (letrec ((_%loop169477170045%_
                                            (lambda (_%hd169475170048%_
                                                     _%arg169481170050%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169475170048%_))
                                                  (let ((_%e169478170052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169475170048%_))))
                                                    (let ((_%lp-tl169480170057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169478170052%_)))
                                                          (_%lp-hd169479170055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169478170052%_))))
                                                      (_%loop169477170045%_
                                                       _%lp-tl169480170057%_
                                                       (cons _%lp-hd169479170055%_
                                                             _%arg169481170050%_))))
                                                  (let ((_%arg169482170060%_
                                                         (reverse _%arg169481170050%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169473170037%_))
                                                        (let ((_%e169483170062%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169473170037%_))))
                  (let ((_%tl169485170067%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169483170062%_)))
                        (_%hd169484170065%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169483170062%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169484170065%_))
                        (let ((_%e169486170070%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169484170065%_))))
                          (let ((_%tl169488170075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169486170070%_)))
                                (_%hd169487170073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169486170070%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169487170073%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169487170073%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169488170075%_))
                                        (let ((_%e169489170078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169488170075%_))))
                                          (let ((_%tl169491170083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169489170078%_)))
                                                (_%hd169490170081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169489170078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169490170081%_))
                                                (let ((_%e169492170086%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169490170081%_))))
                                                  (let ((_%tl169494170091%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169492170086%_)))
                                                        (_%hd169493170089%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169492170086%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169493170089%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169493170089%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169494170091%_))
                        (let ((_%e169495170094%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169494170091%_))))
                          (let ((_%tl169497170099%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169495170094%_)))
                                (_%hd169496170097%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169495170094%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169497170099%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169491170083%_))
                                    (let ((_%__splice171721171722%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169491170083%_
                                              '0))))
                                      (let ((_%tl169500170104%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171721171722%_
                                                '1)))
                                            (_%target169498170102%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171721171722%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169500170104%_))
                                            (letrec ((_%loop169501170107%_
                                                      (lambda (_%hd169499170110%_
                                                               _%xarg169505170112%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd169499170110%_))
                                                            (let ((_%e169502170114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169499170110%_))))
                      (let ((_%lp-tl169504170119%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169502170114%_)))
                            (_%lp-hd169503170117%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169502170114%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd169503170117%_))
                            (let ((_%e169507170122%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd169503170117%_))))
                              (let ((_%tl169509170127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169507170122%_)))
                                    (_%hd169508170125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169507170122%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169508170125%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd169508170125%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169509170127%_))
                                            (let ((_%e169510170130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169509170127%_))))
                                              (let ((_%tl169512170135%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169510170130%_)))
                                                    (_%hd169511170133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169510170130%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169512170135%_))
                                                    (_%loop169501170107%_
                                                     _%lp-tl169504170119%_
                                                     (cons _%hd169511170133%_
                                                           _%xarg169505170112%_))
                                                    (_%__match171758171759%_
                                                     _%e169471170032%_
                                                     _%hd169472170035%_
                                                     _%tl169473170037%_
                                                     _%__splice171719171720%_
                                                     _%target169474170040%_
                                                     _%tl169476170042%_))))
                                            (_%__match171758171759%_
                                             _%e169471170032%_
                                             _%hd169472170035%_
                                             _%tl169473170037%_
                                             _%__splice171719171720%_
                                             _%target169474170040%_
                                             _%tl169476170042%_))
                                        (_%__match171758171759%_
                                         _%e169471170032%_
                                         _%hd169472170035%_
                                         _%tl169473170037%_
                                         _%__splice171719171720%_
                                         _%target169474170040%_
                                         _%tl169476170042%_))
                                    (_%__match171758171759%_
                                     _%e169471170032%_
                                     _%hd169472170035%_
                                     _%tl169473170037%_
                                     _%__splice171719171720%_
                                     _%target169474170040%_
                                     _%tl169476170042%_))))
                            (_%__match171758171759%_
                             _%e169471170032%_
                             _%hd169472170035%_
                             _%tl169473170037%_
                             _%__splice171719171720%_
                             _%target169474170040%_
                             _%tl169476170042%_))))
                    (let ((_%xarg169506170138%_
                           (reverse _%xarg169505170112%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169485170067%_))
                          (let ((_%g169468170140%_ _%xarg169506170138%_)
                                (_%g169469170141%_ _%hd169496170097%_)
                                (_%g169470170142%_ _%arg169482170060%_))
                            (if (and (let ((__tmp173012
                                            (let ((__tmp173013
                                                   (lambda (_%g170170170173%_
                                                            _%g170171170175%_)
                                                     (cons _%g170170170173%_
                                                           _%g170171170175%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173013
                                               '()
                                               _%g169470170142%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp173012))
                                     (let ((__tmp173016
                                            (length (let ((__tmp173017
                                                           (lambda (_%g170177170180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170178170182%_)
                     (cons _%g170177170180%_ _%g170178170182%_))))
              (declare (not safe))
              (__foldr1 __tmp173017 '() _%g169470170142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp173014
                                            (length (let ((__tmp173015
                                                           (lambda (_%g170184170187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170185170189%_)
                     (cons _%g170184170187%_ _%g170185170189%_))))
              (declare (not safe))
              (__foldr1 __tmp173015 '() _%g169468170140%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173016 __tmp173014))
                                     (let ((__tmp173020
                                            (let ((__tmp173021
                                                   (lambda (_%g170191170194%_
                                                            _%g170192170196%_)
                                                     (cons _%g170191170194%_
                                                           _%g170192170196%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173021
                                               '()
                                               _%g169470170142%_)))
                                           (__tmp173018
                                            (let ((__tmp173019
                                                   (lambda (_%g170198170201%_
                                                            _%g170199170203%_)
                                                     (cons _%g170198170201%_
                                                           _%g170199170203%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173019
                                               '()
                                               _%g169468170140%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp173020
                                        __tmp173018))
                                     (not (let ((__tmp173024
                                                 (lambda (_%g170205170207%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g170205170207%_
                                                      _%g169469170141%_))))
                                                (__tmp173022
                                                 (let ((__tmp173023
                                                        (lambda (_%g170209170212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170210170214%_)
                  (cons _%g170209170212%_ _%g170210170214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp173023
                                                    '()
                                                    _%g169470170142%_))))
                                            (declare (not safe))
                                            (__find __tmp173024 __tmp173022))))
                                (_%__kont171717171718%_
                                 _%g169468170140%_
                                 _%g169469170141%_
                                 _%g169470170142%_)
                                (_%__match171758171759%_
                                 _%e169471170032%_
                                 _%hd169472170035%_
                                 _%tl169473170037%_
                                 _%__splice171719171720%_
                                 _%target169474170040%_
                                 _%tl169476170042%_)))
                          (_%__match171758171759%_
                           _%e169471170032%_
                           _%hd169472170035%_
                           _%tl169473170037%_
                           _%__splice171719171720%_
                           _%target169474170040%_
                           _%tl169476170042%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop169501170107%_
                                               _%target169498170102%_
                                               '()))
                                            (_%__match171758171759%_
                                             _%e169471170032%_
                                             _%hd169472170035%_
                                             _%tl169473170037%_
                                             _%__splice171719171720%_
                                             _%target169474170040%_
                                             _%tl169476170042%_))))
                                    (_%__match171758171759%_
                                     _%e169471170032%_
                                     _%hd169472170035%_
                                     _%tl169473170037%_
                                     _%__splice171719171720%_
                                     _%target169474170040%_
                                     _%tl169476170042%_))
                                (_%__match171758171759%_
                                 _%e169471170032%_
                                 _%hd169472170035%_
                                 _%tl169473170037%_
                                 _%__splice171719171720%_
                                 _%target169474170040%_
                                 _%tl169476170042%_))))
                        (_%__match171758171759%_
                         _%e169471170032%_
                         _%hd169472170035%_
                         _%tl169473170037%_
                         _%__splice171719171720%_
                         _%target169474170040%_
                         _%tl169476170042%_))
                    (_%__match171758171759%_
                     _%e169471170032%_
                     _%hd169472170035%_
                     _%tl169473170037%_
                     _%__splice171719171720%_
                     _%target169474170040%_
                     _%tl169476170042%_))
                (_%__match171758171759%_
                 _%e169471170032%_
                 _%hd169472170035%_
                 _%tl169473170037%_
                 _%__splice171719171720%_
                 _%target169474170040%_
                 _%tl169476170042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171758171759%_
                                                 _%e169471170032%_
                                                 _%hd169472170035%_
                                                 _%tl169473170037%_
                                                 _%__splice171719171720%_
                                                 _%target169474170040%_
                                                 _%tl169476170042%_))))
                                        (_%__match171758171759%_
                                         _%e169471170032%_
                                         _%hd169472170035%_
                                         _%tl169473170037%_
                                         _%__splice171719171720%_
                                         _%target169474170040%_
                                         _%tl169476170042%_))
                                    (_%__match171758171759%_
                                     _%e169471170032%_
                                     _%hd169472170035%_
                                     _%tl169473170037%_
                                     _%__splice171719171720%_
                                     _%target169474170040%_
                                     _%tl169476170042%_))
                                (_%__match171758171759%_
                                 _%e169471170032%_
                                 _%hd169472170035%_
                                 _%tl169473170037%_
                                 _%__splice171719171720%_
                                 _%target169474170040%_
                                 _%tl169476170042%_))))
                        (_%__match171758171759%_
                         _%e169471170032%_
                         _%hd169472170035%_
                         _%tl169473170037%_
                         _%__splice171719171720%_
                         _%target169474170040%_
                         _%tl169476170042%_))))
                (_%__match171758171759%_
                 _%e169471170032%_
                 _%hd169472170035%_
                 _%tl169473170037%_
                 _%__splice171719171720%_
                 _%target169474170040%_
                 _%tl169476170042%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169477170045%_
                                     _%target169474170040%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171715171716%_))
                              (let ((_%e169471170032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171715171716%_))))
                                (let ((_%tl169473170037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169471170032%_)))
                                      (_%hd169472170035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169471170032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd169472170035%_))
                                      (let ((_%__splice171719171720%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd169472170035%_
                                                '0))))
                                        (let ((_%tl169476170042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171719171720%_
                                                  '1)))
                                              (_%target169474170040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171719171720%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169476170042%_))
                                              (_%__match171746171747%_
                                               _%e169471170032%_
                                               _%hd169472170035%_
                                               _%tl169473170037%_
                                               _%__splice171719171720%_
                                               _%target169474170040%_
                                               _%tl169476170042%_)
                                              (_%__match171758171759%_
                                               _%e169471170032%_
                                               _%hd169472170035%_
                                               _%tl169473170037%_
                                               _%__splice171719171720%_
                                               _%target169474170040%_
                                               _%tl169476170042%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169473170037%_))
                                          (let ((_%e169586169643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169473170037%_))))
                                            (let ((_%tl169588169648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169586169643%_)))
                                                  (_%hd169587169646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169586169643%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169587169646%_))
                                                  (let ((_%e169589169651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169587169646%_))))
                                                    (let ((_%tl169591169656%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169589169651%_)))
                                                          (_%hd169590169654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169589169651%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169590169654%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169590169654%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169591169656%_))
                          (let ((_%e169592169659%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169591169656%_))))
                            (let ((_%tl169594169664%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169592169659%_)))
                                  (_%hd169593169662%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169592169659%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169593169662%_))
                                  (let ((_%e169595169667%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169593169662%_))))
                                    (let ((_%tl169597169672%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169595169667%_)))
                                          (_%hd169596169670%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169595169667%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169596169670%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169596169670%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169597169672%_))
                                                  (let ((_%e169598169675%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169597169672%_))))
                                                    (let ((_%tl169600169680%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169598169675%_)))
                                                          (_%hd169599169678%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169598169675%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169600169680%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169594169664%_))
                      (let ((_%e169601169683%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169594169664%_))))
                        (let ((_%tl169603169688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169601169683%_)))
                              (_%hd169602169686%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169601169683%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169602169686%_))
                              (let ((_%e169604169691%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169602169686%_))))
                                (let ((_%tl169606169696%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169604169691%_)))
                                      (_%hd169605169694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169604169691%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169605169694%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169605169694%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169606169696%_))
                                              (let ((_%e169607169699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169606169696%_))))
                                                (let ((_%tl169609169704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169607169699%_)))
                                                      (_%hd169608169702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169607169699%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169609169704%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169603169688%_))
                                                          (let ((_%e169610169707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169603169688%_))))
                    (let ((_%tl169612169712%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169610169707%_)))
                          (_%hd169611169710%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169610169707%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169611169710%_))
                          (let ((_%e169613169715%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169611169710%_))))
                            (let ((_%tl169615169720%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169613169715%_)))
                                  (_%hd169614169718%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169613169715%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169614169718%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd169614169718%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169615169720%_))
                                          (let ((_%e169616169723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169615169720%_))))
                                            (let ((_%tl169618169728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169616169723%_)))
                                                  (_%hd169617169726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169616169723%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169618169728%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169612169712%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169588169648%_))
                                                          (_%__match171856171857%_
                                                           _%e169471170032%_
                                                           _%hd169472170035%_
                                                           _%tl169473170037%_
                                                           _%e169586169643%_
                                                           _%hd169587169646%_
                                                           _%tl169588169648%_
                                                           _%e169589169651%_
                                                           _%hd169590169654%_
                                                           _%tl169591169656%_
                                                           _%e169592169659%_
                                                           _%hd169593169662%_
                                                           _%tl169594169664%_
                                                           _%e169595169667%_
                                                           _%hd169596169670%_
                                                           _%tl169597169672%_
                                                           _%e169598169675%_
                                                           _%hd169599169678%_
                                                           _%tl169600169680%_
                                                           _%e169601169683%_
                                                           _%hd169602169686%_
                                                           _%tl169603169688%_
                                                           _%e169604169691%_
                                                           _%hd169605169694%_
                                                           _%tl169606169696%_
                                                           _%e169607169699%_
                                                           _%hd169608169702%_
                                                           _%tl169609169704%_
                                                           _%e169610169707%_
                                                           _%hd169611169710%_
                                                           _%tl169612169712%_
                                                           _%e169613169715%_
                                                           _%hd169614169718%_
                                                           _%tl169615169720%_
                                                           _%e169616169723%_
                                                           _%hd169617169726%_
                                                           _%tl169618169728%_)
                                                          (_%__kont171731171732%_))
                                                      (_%__kont171731171732%_))
                                                  (_%__kont171731171732%_))))
                                          (_%__kont171731171732%_))
                                      (_%__kont171731171732%_))
                                  (_%__kont171731171732%_))))
                          (_%__kont171731171732%_))))
                  (_%__kont171731171732%_))
              (_%__kont171731171732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171731171732%_))
                                          (_%__kont171731171732%_))
                                      (_%__kont171731171732%_))))
                              (_%__kont171731171732%_))))
                      (_%__kont171731171732%_))
                  (_%__kont171731171732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171731171732%_))
                                              (_%__kont171731171732%_))
                                          (_%__kont171731171732%_))))
                                  (_%__kont171731171732%_))))
                          (_%__kont171731171732%_))
                      (_%__kont171731171732%_))
                  (_%__kont171731171732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171731171732%_))))
                                          (_%__kont171731171732%_)))))
                              (_%__kont171731171732%_)))))))
                 (_%dispatch-case-e168781%_
                  (lambda (_%hd168928%_ _%body168929%_)
                    (let* ((_%form168931%_
                            (cons _%hd168928%_ (cons _%body168929%_ '())))
                           (_%__stx171859171860%_ _%form168931%_)
                           (_%g168935169059%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171859171860%_)))))
                      (let ((_%__kont171861171862%_
                             (lambda (_%g168937169424%_
                                      _%g168938169425%_
                                      _%g168939169426%_)
                               (let ((__tmp173025
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168938169425%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168777%_
                                  __tmp173025))))
                            (_%__kont171867171868%_
                             (lambda (_%g168982169276%_
                                      _%g168983169277%_
                                      _%g168984169278%_
                                      _%g168985169279%_)
                               (let ((__tmp173026
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168982169276%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168777%_
                                  __tmp173026))))
                            (_%__kont171871171872%_
                             (lambda (_%g169022169144%_
                                      _%g169023169145%_
                                      _%g169024169146%_)
                               (let ((__tmp173027
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g169022169144%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168777%_
                                  __tmp173027)))))
                        (let* ((_%__match171968171969%_
                                (lambda (_%e169025169064%_
                                         _%hd169026169067%_
                                         _%tl169027169069%_
                                         _%e169028169072%_
                                         _%hd169029169075%_
                                         _%tl169030169077%_
                                         _%e169031169080%_
                                         _%hd169032169083%_
                                         _%tl169033169085%_
                                         _%e169034169088%_
                                         _%hd169035169091%_
                                         _%tl169036169093%_
                                         _%e169037169096%_
                                         _%hd169038169099%_
                                         _%tl169039169101%_
                                         _%e169040169104%_
                                         _%hd169041169107%_
                                         _%tl169042169109%_
                                         _%e169043169112%_
                                         _%hd169044169115%_
                                         _%tl169045169117%_
                                         _%e169046169120%_
                                         _%hd169047169123%_
                                         _%tl169048169125%_
                                         _%e169049169128%_
                                         _%hd169050169131%_
                                         _%tl169051169133%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169045169117%_))
                                      (let ((_%e169052169136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169045169117%_))))
                                        (let ((_%tl169054169141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169052169136%_)))
                                              (_%hd169053169139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169052169136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169054169141%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169030169077%_))
                                                  (_%__kont171871171872%_
                                                   _%hd169050169131%_
                                                   _%hd169041169107%_
                                                   _%hd169026169067%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168935169059%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168935169059%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168935169059%_)))))
                               (_%__match171898171899%_
                                (lambda (_%e168986169182%_
                                         _%hd168987169185%_
                                         _%tl168988169187%_
                                         _%__splice171869171870%_
                                         _%target168989169190%_
                                         _%tl168991169192%_)
                                  (letrec ((_%loop168992169195%_
                                            (lambda (_%hd168990169198%_
                                                     _%arg168996169200%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168990169198%_))
                                                  (let ((_%e168993169202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168990169198%_))))
                                                    (let ((_%lp-tl168995169207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168993169202%_)))
                                                          (_%lp-hd168994169205%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168993169202%_))))
                                                      (_%loop168992169195%_
                                                       _%lp-tl168995169207%_
                                                       (cons _%lp-hd168994169205%_
                                                             _%arg168996169200%_))))
                                                  (let ((_%arg168997169210%_
                                                         (reverse _%arg168996169200%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168988169187%_))
                                                        (let ((_%e168998169212%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168988169187%_))))
                  (let ((_%tl169000169217%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168998169212%_)))
                        (_%hd168999169215%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168998169212%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168999169215%_))
                        (let ((_%e169001169220%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168999169215%_))))
                          (let ((_%tl169003169225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169001169220%_)))
                                (_%hd169002169223%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169001169220%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169002169223%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169002169223%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169003169225%_))
                                        (let ((_%e169004169228%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169003169225%_))))
                                          (let ((_%tl169006169233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169004169228%_)))
                                                (_%hd169005169231%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169004169228%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169005169231%_))
                                                (let ((_%e169007169236%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169005169231%_))))
                                                  (let ((_%tl169009169241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169007169236%_)))
                                                        (_%hd169008169239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169007169236%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169008169239%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169008169239%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169009169241%_))
                        (let ((_%e169010169244%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169009169241%_))))
                          (let ((_%tl169012169249%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169010169244%_)))
                                (_%hd169011169247%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169010169244%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169012169249%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169006169233%_))
                                    (let ((_%e169013169252%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169006169233%_))))
                                      (let ((_%tl169015169257%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169013169252%_)))
                                            (_%hd169014169255%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169013169252%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169014169255%_))
                                            (let ((_%e169016169260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169014169255%_))))
                                              (let ((_%tl169018169265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169016169260%_)))
                                                    (_%hd169017169263%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169016169260%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169017169263%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169017169263%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169018169265%_))
                                                            (let ((_%e169019169268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169018169265%_))))
                      (let ((_%tl169021169273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169019169268%_)))
                            (_%hd169020169271%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169019169268%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169021169273%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169000169217%_))
                                (_%__kont171867171868%_
                                 _%hd169020169271%_
                                 _%hd169011169247%_
                                 _%tl168991169192%_
                                 _%arg168997169210%_)
                                (_%__match171968171969%_
                                 _%e168986169182%_
                                 _%hd168987169185%_
                                 _%tl168988169187%_
                                 _%e168998169212%_
                                 _%hd168999169215%_
                                 _%tl169000169217%_
                                 _%e169001169220%_
                                 _%hd169002169223%_
                                 _%tl169003169225%_
                                 _%e169004169228%_
                                 _%hd169005169231%_
                                 _%tl169006169233%_
                                 _%e169007169236%_
                                 _%hd169008169239%_
                                 _%tl169009169241%_
                                 _%e169010169244%_
                                 _%hd169011169247%_
                                 _%tl169012169249%_
                                 _%e169013169252%_
                                 _%hd169014169255%_
                                 _%tl169015169257%_
                                 _%e169016169260%_
                                 _%hd169017169263%_
                                 _%tl169018169265%_
                                 _%e169019169268%_
                                 _%hd169020169271%_
                                 _%tl169021169273%_))
                            (let ()
                              (declare (not safe))
                              (_%g168935169059%_)))))
                    (let () (declare (not safe)) (_%g168935169059%_)))
                (let () (declare (not safe)) (_%g168935169059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168935169059%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168935169059%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168935169059%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168935169059%_)))))
                        (let () (declare (not safe)) (_%g168935169059%_)))
                    (let () (declare (not safe)) (_%g168935169059%_)))
                (let () (declare (not safe)) (_%g168935169059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168935169059%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168935169059%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168935169059%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168935169059%_)))))
                        (let () (declare (not safe)) (_%g168935169059%_)))))
                (let () (declare (not safe)) (_%g168935169059%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168992169195%_
                                     _%target168989169190%_
                                     '()))))
                               (_%__match171886171887%_
                                (lambda (_%e168940169316%_
                                         _%hd168941169319%_
                                         _%tl168942169321%_
                                         _%__splice171863171864%_
                                         _%target168943169324%_
                                         _%tl168945169326%_)
                                  (letrec ((_%loop168946169329%_
                                            (lambda (_%hd168944169332%_
                                                     _%arg168950169334%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168944169332%_))
                                                  (let ((_%e168947169336%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168944169332%_))))
                                                    (let ((_%lp-tl168949169341%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168947169336%_)))
                                                          (_%lp-hd168948169339%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168947169336%_))))
                                                      (_%loop168946169329%_
                                                       _%lp-tl168949169341%_
                                                       (cons _%lp-hd168948169339%_
                                                             _%arg168950169334%_))))
                                                  (let ((_%arg168951169344%_
                                                         (reverse _%arg168950169334%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168942169321%_))
                                                        (let ((_%e168952169346%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168942169321%_))))
                  (let ((_%tl168954169351%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168952169346%_)))
                        (_%hd168953169349%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168952169346%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168953169349%_))
                        (let ((_%e168955169354%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168953169349%_))))
                          (let ((_%tl168957169359%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168955169354%_)))
                                (_%hd168956169357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168955169354%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168956169357%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168956169357%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168957169359%_))
                                        (let ((_%e168958169362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168957169359%_))))
                                          (let ((_%tl168960169367%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168958169362%_)))
                                                (_%hd168959169365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168958169362%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168959169365%_))
                                                (let ((_%e168961169370%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168959169365%_))))
                                                  (let ((_%tl168963169375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168961169370%_)))
                                                        (_%hd168962169373%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168961169370%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168962169373%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168962169373%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168963169375%_))
                        (let ((_%e168964169378%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168963169375%_))))
                          (let ((_%tl168966169383%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168964169378%_)))
                                (_%hd168965169381%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168964169378%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168966169383%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168960169367%_))
                                    (let ((_%__splice171865171866%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl168960169367%_
                                              '0))))
                                      (let ((_%tl168969169388%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171865171866%_
                                                '1)))
                                            (_%target168967169386%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171865171866%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168969169388%_))
                                            (letrec ((_%loop168970169391%_
                                                      (lambda (_%hd168968169394%_
                                                               _%xarg168974169396%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd168968169394%_))
                                                            (let ((_%e168971169398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168968169394%_))))
                      (let ((_%lp-tl168973169403%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168971169398%_)))
                            (_%lp-hd168972169401%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168971169398%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd168972169401%_))
                            (let ((_%e168976169406%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd168972169401%_))))
                              (let ((_%tl168978169411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168976169406%_)))
                                    (_%hd168977169409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168976169406%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168977169409%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd168977169409%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168978169411%_))
                                            (let ((_%e168979169414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168978169411%_))))
                                              (let ((_%tl168981169419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168979169414%_)))
                                                    (_%hd168980169417%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168979169414%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168981169419%_))
                                                    (_%loop168970169391%_
                                                     _%lp-tl168973169403%_
                                                     (cons _%hd168980169417%_
                                                           _%xarg168974169396%_))
                                                    (_%__match171898171899%_
                                                     _%e168940169316%_
                                                     _%hd168941169319%_
                                                     _%tl168942169321%_
                                                     _%__splice171863171864%_
                                                     _%target168943169324%_
                                                     _%tl168945169326%_))))
                                            (_%__match171898171899%_
                                             _%e168940169316%_
                                             _%hd168941169319%_
                                             _%tl168942169321%_
                                             _%__splice171863171864%_
                                             _%target168943169324%_
                                             _%tl168945169326%_))
                                        (_%__match171898171899%_
                                         _%e168940169316%_
                                         _%hd168941169319%_
                                         _%tl168942169321%_
                                         _%__splice171863171864%_
                                         _%target168943169324%_
                                         _%tl168945169326%_))
                                    (_%__match171898171899%_
                                     _%e168940169316%_
                                     _%hd168941169319%_
                                     _%tl168942169321%_
                                     _%__splice171863171864%_
                                     _%target168943169324%_
                                     _%tl168945169326%_))))
                            (_%__match171898171899%_
                             _%e168940169316%_
                             _%hd168941169319%_
                             _%tl168942169321%_
                             _%__splice171863171864%_
                             _%target168943169324%_
                             _%tl168945169326%_))))
                    (let ((_%xarg168975169422%_
                           (reverse _%xarg168974169396%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168954169351%_))
                          (_%__kont171861171862%_
                           _%xarg168975169422%_
                           _%hd168965169381%_
                           _%arg168951169344%_)
                          (_%__match171898171899%_
                           _%e168940169316%_
                           _%hd168941169319%_
                           _%tl168942169321%_
                           _%__splice171863171864%_
                           _%target168943169324%_
                           _%tl168945169326%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop168970169391%_
                                               _%target168967169386%_
                                               '()))
                                            (_%__match171898171899%_
                                             _%e168940169316%_
                                             _%hd168941169319%_
                                             _%tl168942169321%_
                                             _%__splice171863171864%_
                                             _%target168943169324%_
                                             _%tl168945169326%_))))
                                    (_%__match171898171899%_
                                     _%e168940169316%_
                                     _%hd168941169319%_
                                     _%tl168942169321%_
                                     _%__splice171863171864%_
                                     _%target168943169324%_
                                     _%tl168945169326%_))
                                (_%__match171898171899%_
                                 _%e168940169316%_
                                 _%hd168941169319%_
                                 _%tl168942169321%_
                                 _%__splice171863171864%_
                                 _%target168943169324%_
                                 _%tl168945169326%_))))
                        (_%__match171898171899%_
                         _%e168940169316%_
                         _%hd168941169319%_
                         _%tl168942169321%_
                         _%__splice171863171864%_
                         _%target168943169324%_
                         _%tl168945169326%_))
                    (_%__match171898171899%_
                     _%e168940169316%_
                     _%hd168941169319%_
                     _%tl168942169321%_
                     _%__splice171863171864%_
                     _%target168943169324%_
                     _%tl168945169326%_))
                (_%__match171898171899%_
                 _%e168940169316%_
                 _%hd168941169319%_
                 _%tl168942169321%_
                 _%__splice171863171864%_
                 _%target168943169324%_
                 _%tl168945169326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171898171899%_
                                                 _%e168940169316%_
                                                 _%hd168941169319%_
                                                 _%tl168942169321%_
                                                 _%__splice171863171864%_
                                                 _%target168943169324%_
                                                 _%tl168945169326%_))))
                                        (_%__match171898171899%_
                                         _%e168940169316%_
                                         _%hd168941169319%_
                                         _%tl168942169321%_
                                         _%__splice171863171864%_
                                         _%target168943169324%_
                                         _%tl168945169326%_))
                                    (_%__match171898171899%_
                                     _%e168940169316%_
                                     _%hd168941169319%_
                                     _%tl168942169321%_
                                     _%__splice171863171864%_
                                     _%target168943169324%_
                                     _%tl168945169326%_))
                                (_%__match171898171899%_
                                 _%e168940169316%_
                                 _%hd168941169319%_
                                 _%tl168942169321%_
                                 _%__splice171863171864%_
                                 _%target168943169324%_
                                 _%tl168945169326%_))))
                        (_%__match171898171899%_
                         _%e168940169316%_
                         _%hd168941169319%_
                         _%tl168942169321%_
                         _%__splice171863171864%_
                         _%target168943169324%_
                         _%tl168945169326%_))))
                (_%__match171898171899%_
                 _%e168940169316%_
                 _%hd168941169319%_
                 _%tl168942169321%_
                 _%__splice171863171864%_
                 _%target168943169324%_
                 _%tl168945169326%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168946169329%_
                                     _%target168943169324%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171859171860%_))
                              (let ((_%e168940169316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171859171860%_))))
                                (let ((_%tl168942169321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168940169316%_)))
                                      (_%hd168941169319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168940169316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd168941169319%_))
                                      (let ((_%__splice171863171864%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd168941169319%_
                                                '0))))
                                        (let ((_%tl168945169326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171863171864%_
                                                  '1)))
                                              (_%target168943169324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171863171864%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168945169326%_))
                                              (_%__match171886171887%_
                                               _%e168940169316%_
                                               _%hd168941169319%_
                                               _%tl168942169321%_
                                               _%__splice171863171864%_
                                               _%target168943169324%_
                                               _%tl168945169326%_)
                                              (_%__match171898171899%_
                                               _%e168940169316%_
                                               _%hd168941169319%_
                                               _%tl168942169321%_
                                               _%__splice171863171864%_
                                               _%target168943169324%_
                                               _%tl168945169326%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168942169321%_))
                                          (let ((_%e169028169072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168942169321%_))))
                                            (let ((_%tl169030169077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169028169072%_)))
                                                  (_%hd169029169075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169028169072%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169029169075%_))
                                                  (let ((_%e169031169080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169029169075%_))))
                                                    (let ((_%tl169033169085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169031169080%_)))
                                                          (_%hd169032169083%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169031169080%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169032169083%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169032169083%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169033169085%_))
                          (let ((_%e169034169088%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169033169085%_))))
                            (let ((_%tl169036169093%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169034169088%_)))
                                  (_%hd169035169091%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169034169088%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169035169091%_))
                                  (let ((_%e169037169096%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169035169091%_))))
                                    (let ((_%tl169039169101%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169037169096%_)))
                                          (_%hd169038169099%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169037169096%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169038169099%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169038169099%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169039169101%_))
                                                  (let ((_%e169040169104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169039169101%_))))
                                                    (let ((_%tl169042169109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169040169104%_)))
                                                          (_%hd169041169107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169040169104%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169042169109%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169036169093%_))
                      (let ((_%e169043169112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169036169093%_))))
                        (let ((_%tl169045169117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169043169112%_)))
                              (_%hd169044169115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169043169112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169044169115%_))
                              (let ((_%e169046169120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169044169115%_))))
                                (let ((_%tl169048169125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169046169120%_)))
                                      (_%hd169047169123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169046169120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169047169123%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169047169123%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169048169125%_))
                                              (let ((_%e169049169128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169048169125%_))))
                                                (let ((_%tl169051169133%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169049169128%_)))
                                                      (_%hd169050169131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169049169128%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169051169133%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169045169117%_))
                                                          (let ((_%e169052169136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169045169117%_))))
                    (let ((_%tl169054169141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169052169136%_)))
                          (_%hd169053169139%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169052169136%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169054169141%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169030169077%_))
                              (_%__kont171871171872%_
                               _%hd169050169131%_
                               _%hd169041169107%_
                               _%hd168941169319%_)
                              (let ()
                                (declare (not safe))
                                (_%g168935169059%_)))
                          (let () (declare (not safe)) (_%g168935169059%_)))))
                  (let () (declare (not safe)) (_%g168935169059%_)))
              (let () (declare (not safe)) (_%g168935169059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168935169059%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168935169059%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168935169059%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168935169059%_)))))
                      (let () (declare (not safe)) (_%g168935169059%_)))
                  (let () (declare (not safe)) (_%g168935169059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168935169059%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168935169059%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168935169059%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168935169059%_)))))
                          (let () (declare (not safe)) (_%g168935169059%_)))
                      (let () (declare (not safe)) (_%g168935169059%_)))
                  (let () (declare (not safe)) (_%g168935169059%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168935169059%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168935169059%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168935169059%_))))))))
                 (_%generate1168782%_
                  (lambda (_%args168913%_
                           _%arglen168914%_
                           _%hd168915%_
                           _%body168916%_)
                    (let* ((_%len168918%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd168915%_)))
                           (_%condition168923%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd168915%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen168914%_
                                                (cons _%len168918%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen168914%_ (cons _%len168918%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len168918%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen168914%_
                                                    (cons _%len168918%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen168914%_ (cons _%len168918%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch168925%_
                            (if (_%dispatch-case?168780%_
                                 _%hd168915%_
                                 _%body168916%_)
                                (_%dispatch-case-e168781%_
                                 _%hd168915%_
                                 _%body168916%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self168777%_
                                 _%hd168915%_
                                 _%body168916%_))))
                      (cons _%condition168923%_
                            (cons (cons 'apply
                                        (cons _%dispatch168925%_
                                              (cons _%args168913%_ '())))
                                  '()))))))
          (let* ((_%g168784168812%_
                  (lambda (_%g168785168809%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168785168809%_))))
                 (_%g168783168910%_
                  (lambda (_%g168785168815%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168785168815%_))
                        (let ((_%e168788168817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168785168815%_))))
                          (let ((_%hd168789168820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168788168817%_)))
                                (_%tl168790168822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168788168817%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl168790168822%_))
                                (let ((_g173028_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl168790168822%_
                                          '0))))
                                  (begin
                                    (let ((_g173029_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173028_)
                                                 (##values-length _g173028_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173029_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173029_)))
                                    (let ((_%target168791168825%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173028_ 0)))
                                          (_%tl168793168827%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173028_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168793168827%_))
                                          (letrec ((_%loop168794168830%_
                                                    (lambda (_%hd168792168833%_
                                                             _%body168798168835%_
                                                             _%hd168799168836%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd168792168833%_))
                                                          (let ((_%e168795168838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd168792168833%_))))
                    (let ((_%lp-hd168796168841%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168795168838%_)))
                          (_%lp-tl168797168843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168795168838%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd168796168841%_))
                          (let ((_%e168802168846%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd168796168841%_))))
                            (let ((_%hd168803168849%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168802168846%_)))
                                  (_%tl168804168851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168802168846%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168804168851%_))
                                  (let ((_%e168805168854%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168804168851%_))))
                                    (let ((_%hd168806168857%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168805168854%_)))
                                          (_%tl168807168859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168805168854%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168807168859%_))
                                          (_%loop168794168830%_
                                           _%lp-tl168797168843%_
                                           (cons _%hd168806168857%_
                                                 _%body168798168835%_)
                                           (cons _%hd168803168849%_
                                                 _%hd168799168836%_))
                                          (_%g168784168812%_
                                           _%g168785168815%_))))
                                  (_%g168784168812%_ _%g168785168815%_))))
                          (_%g168784168812%_ _%g168785168815%_))))
                  (let ((_%body168800168862%_ (reverse _%body168798168835%_))
                        (_%hd168801168863%_ (reverse _%hd168799168836%_)))
                    ((lambda (_%g168786168865%_ _%g168787168866%_)
                       (let ((_%args168885%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen168886%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name168887%_
                              (let ((_%$e168882%_
                                     (let ((__tmp173030
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp173030 _%stx168778%_))))
                                (if _%$e168882%_
                                    _%$e168882%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args168885%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen168886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args168885%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args168885%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp173034
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name168887%_
                                                                (cons _%args168885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp173031
                                  (map (lambda (_%g168888168891%_
                                                _%g168889168893%_)
                                         (_%generate1168782%_
                                          _%args168885%_
                                          _%arglen168886%_
                                          _%g168888168891%_
                                          _%g168889168893%_))
                                       (let ((__tmp173032
                                              (lambda (_%g168895168898%_
                                                       _%g168896168900%_)
                                                (cons _%g168895168898%_
                                                      _%g168896168900%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173032
                                          '()
                                          _%g168787168866%_))
                                       (let ((__tmp173033
                                              (lambda (_%g168902168905%_
                                                       _%g168903168907%_)
                                                (cons _%g168902168905%_
                                                      _%g168903168907%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173033
                                          '()
                                          _%g168786168865%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp173034 __tmp173031)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body168800168862%_
                     _%hd168801168863%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop168794168830%_
                                             _%target168791168825%_
                                             '()
                                             '()))
                                          (_%g168784168812%_
                                           _%g168785168815%_)))))
                                (_%g168784168812%_ _%g168785168815%_))))
                        (_%g168784168812%_ _%g168785168815%_)))))
            (_%g168783168910%_ _%stx168778%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self168014%_ _%stx168015%_ _%compiled-body?168016%_)
        (letrec ((_%generate-simple168018%_
                  (lambda (_%hd168762%_ _%body168763%_)
                    (_%coalesce-boolean168019%_
                     (_%simplify-let168020%_
                      (gxc#generate-runtime-simple-let
                       _%self168014%_
                       'let
                       _%hd168762%_
                       _%body168763%_
                       _%compiled-body?168016%_)))))
                 (_%coalesce-boolean168019%_
                  (lambda (_%code168623%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code168624168650%_ _%code168623%_)
                               (_%else168626168658%_
                                (lambda () _%code168623%_))
                               (_%K168628168695%_
                                (lambda (_%expr2168661%_
                                         _%expr1168662%_
                                         _%id168663%_)
                                  (let* ((_%expr2168664168672%_
                                          _%expr2168661%_)
                                         (_%else168666168680%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1168662%_
                                                        (cons _%expr2168661%_
                                                              '())))))
                                         (_%K168668168685%_
                                          (lambda (_%exprs168683%_)
                                            (cons 'or
                                                  (cons _%expr1168662%_
                                                        _%exprs168683%_)))))
                                    (if (pair? _%expr2168664168672%_)
                                        (let ((_%hd168669168688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2168664168672%_)))
                                              (_%tl168670168690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2168664168672%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168669168688%_ 'or))
                                              (let ((_%exprs168693%_
                                                     _%tl168670168690%_))
                                                (_%K168668168685%_
                                                 _%exprs168693%_))
                                              (_%else168666168680%_)))
                                        (_%else168666168680%_))))))
                          (if (pair? _%code168624168650%_)
                              (let ((_%hd168629168698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code168624168650%_)))
                                    (_%tl168630168700%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code168624168650%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd168629168698%_ 'let))
                                    (if (pair? _%tl168630168700%_)
                                        (let ((_%hd168631168703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl168630168700%_)))
                                              (_%tl168632168705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl168630168700%_))))
                                          (if (pair? _%hd168631168703%_)
                                              (let ((_%hd168643168708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd168631168703%_)))
                                                    (_%tl168644168710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd168631168703%_))))
                                                (if (pair? _%hd168643168708%_)
                                                    (let ((_%hd168645168713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd168643168708%_)))
                                                          (_%tl168646168715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd168643168708%_))))
                                                      (let ((_%id168718%_
                                                             _%hd168645168713%_))
                                                        (if (pair? _%tl168646168715%_)
                                                            (let ((_%hd168647168720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl168646168715%_)))
                          (_%tl168648168722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168646168715%_))))
                      (let ((_%expr1168725%_ _%hd168647168720%_))
                        (if (null? _%tl168648168722%_)
                            (if (null? _%tl168644168710%_)
                                (if (pair? _%tl168632168705%_)
                                    (let ((_%hd168633168727%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl168632168705%_)))
                                          (_%tl168634168729%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl168632168705%_))))
                                      (if (pair? _%hd168633168727%_)
                                          (let ((_%hd168635168732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd168633168727%_)))
                                                (_%tl168636168734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd168633168727%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd168635168732%_
                                                         'if))
                                                (if (pair? _%tl168636168734%_)
                                                    (let ((_%hd168637168737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl168636168734%_)))
                                                          (_%tl168638168739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl168636168734%_))))
                                                      (if ((lambda (_%g168741168743%_)
                                                             (eq? _%g168741168743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168718%_))
                   _%hd168637168737%_)
                  (if (pair? _%tl168638168739%_)
                      (let ((_%hd168639168746%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl168638168739%_)))
                            (_%tl168640168748%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl168638168739%_))))
                        (if ((lambda (_%g168750168752%_)
                               (eq? _%g168750168752%_ _%id168718%_))
                             _%hd168639168746%_)
                            (if (pair? _%tl168640168748%_)
                                (let ((_%hd168641168755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168640168748%_)))
                                      (_%tl168642168757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168640168748%_))))
                                  (let ((_%expr2168760%_ _%hd168641168755%_))
                                    (if (null? _%tl168642168757%_)
                                        (if (null? _%tl168634168729%_)
                                            (_%K168628168695%_
                                             _%expr2168760%_
                                             _%expr1168725%_
                                             _%id168718%_)
                                            (_%else168626168658%_))
                                        (_%else168626168658%_))))
                                (_%else168626168658%_))
                            (_%else168626168658%_)))
                      (_%else168626168658%_))
                  (_%else168626168658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168626168658%_))
                                                (_%else168626168658%_)))
                                          (_%else168626168658%_)))
                                    (_%else168626168658%_))
                                (_%else168626168658%_))
                            (_%else168626168658%_))))
                    (_%else168626168658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168626168658%_)))
                                              (_%else168626168658%_)))
                                        (_%else168626168658%_))
                                    (_%else168626168658%_)))
                              (_%else168626168658%_)))
                        _%code168623%_)))
                 (_%simplify-let168020%_
                  (lambda (_%code168322%_)
                    (let* ((_%code168323168395%_ _%code168322%_)
                           (_%else168328168403%_ (lambda () _%code168322%_)))
                      (let ((_%K168387168603%_
                             (lambda (_%expr168601%_) _%expr168601%_))
                            (_%K168370168549%_
                             (lambda (_%body168545%_
                                      _%expr168546%_
                                      _%id168547%_)
                               (cons 'let
                                     (cons (cons (cons _%id168547%_
                                                       (cons _%expr168546%_
                                                             '()))
                                                 '())
                                           _%body168545%_))))
                            (_%K168347168473%_
                             (lambda (_%body168467%_
                                      _%expr2168468%_
                                      _%id2168469%_
                                      _%expr1168470%_
                                      _%id1168471%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168471%_
                                                       (cons _%expr1168470%_
                                                             '()))
                                                 (cons (cons _%id2168469%_
                                                             (cons _%expr2168468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body168467%_))))
                            (_%K168330168412%_
                             (lambda (_%body168407%_
                                      _%bind168408%_
                                      _%expr1168409%_
                                      _%id1168410%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168410%_
                                                       (cons _%expr1168409%_
                                                             '()))
                                                 _%bind168408%_)
                                           _%body168407%_)))))
                        (if (pair? _%code168323168395%_)
                            (let ((_%tl168389168608%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code168323168395%_)))
                                  (_%hd168388168606%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code168323168395%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd168388168606%_ 'let))
                                  (if (pair? _%tl168389168608%_)
                                      (let ((_%tl168391168613%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl168389168608%_)))
                                            (_%hd168390168611%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl168389168608%_))))
                                        (if (null? _%hd168390168611%_)
                                            (if (pair? _%tl168391168613%_)
                                                (let ((_%tl168393168618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl168391168613%_)))
                                                      (_%hd168392168616%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl168391168613%_))))
                                                  (if (null? _%tl168393168618%_)
                                                      (let ((_%expr168621%_
                                                             _%hd168392168616%_))
                                                        (_%K168387168603%_
                                                         _%expr168621%_))
                                                      (_%else168328168403%_)))
                                                (_%else168328168403%_))
                                            (if (pair? _%hd168390168611%_)
                                                (let ((_%tl168382168564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168390168611%_)))
                                                      (_%hd168381168562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168390168611%_))))
                                                  (if (pair? _%hd168381168562%_)
                                                      (let ((_%tl168384168569%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd168381168562%_)))
                    (_%hd168383168567%_
                     (let () (declare (not safe)) (##car _%hd168381168562%_))))
                (if (pair? _%tl168384168569%_)
                    (let ((_%tl168386168576%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168384168569%_)))
                          (_%hd168385168574%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl168384168569%_))))
                      (if (null? _%tl168386168576%_)
                          (if (null? _%tl168382168564%_)
                              (if (pair? _%tl168391168613%_)
                                  (let ((_%tl168376168583%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl168391168613%_)))
                                        (_%hd168375168581%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl168391168613%_))))
                                    (if (pair? _%hd168375168581%_)
                                        (let ((_%tl168378168588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd168375168581%_)))
                                              (_%hd168377168586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd168375168581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168377168586%_
                                                       'let))
                                              (if (pair? _%tl168378168588%_)
                                                  (let ((_%tl168380168593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl168378168588%_)))
                                                        (_%hd168379168591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl168378168588%_))))
                                                    (if (null? _%hd168379168591%_)
                                                        (if (null? _%tl168376168583%_)
                                                            (let ((_%id168572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd168383168567%_)
                          (_%expr168579%_ _%hd168385168574%_)
                          (_%body168596%_ _%tl168380168593%_))
                      (_%K168370168549%_
                       _%body168596%_
                       _%expr168579%_
                       _%id168572%_))
                    (_%else168328168403%_))
                (if (pair? _%hd168379168591%_)
                    (let ((_%tl168359168522%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd168379168591%_)))
                          (_%hd168358168520%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd168379168591%_))))
                      (if (pair? _%hd168358168520%_)
                          (let ((_%tl168361168527%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd168358168520%_)))
                                (_%hd168360168525%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd168358168520%_))))
                            (if (pair? _%tl168361168527%_)
                                (let ((_%tl168363168534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168361168527%_)))
                                      (_%hd168362168532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168361168527%_))))
                                  (if (null? _%tl168363168534%_)
                                      (if (null? _%tl168359168522%_)
                                          (if (null? _%tl168376168583%_)
                                              (let ((_%id1168496%_
                                                     _%hd168383168567%_)
                                                    (_%expr1168503%_
                                                     _%hd168385168574%_)
                                                    (_%id2168530%_
                                                     _%hd168360168525%_)
                                                    (_%expr2168537%_
                                                     _%hd168362168532%_)
                                                    (_%body168539%_
                                                     _%tl168380168593%_))
                                                (_%K168347168473%_
                                                 _%body168539%_
                                                 _%expr2168537%_
                                                 _%id2168530%_
                                                 _%expr1168503%_
                                                 _%id1168496%_))
                                              (_%else168328168403%_))
                                          (_%else168328168403%_))
                                      (_%else168328168403%_)))
                                (_%else168328168403%_)))
                          (_%else168328168403%_)))
                    (_%else168328168403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168328168403%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd168377168586%_
                                                           'let*))
                                                  (if (pair? _%tl168378168588%_)
                                                      (let ((_%tl168340168456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl168378168588%_)))
                    (_%hd168339168454%_
                     (let () (declare (not safe)) (##car _%tl168378168588%_))))
                (if (null? _%tl168376168583%_)
                    (let ((_%id1168435%_ _%hd168383168567%_)
                          (_%expr1168442%_ _%hd168385168574%_)
                          (_%bind168459%_ _%hd168339168454%_)
                          (_%body168461%_ _%tl168340168456%_))
                      (_%K168330168412%_
                       _%body168461%_
                       _%bind168459%_
                       _%expr1168442%_
                       _%id1168435%_))
                    (_%else168328168403%_)))
              (_%else168328168403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168328168403%_))))
                                        (_%else168328168403%_)))
                                  (_%else168328168403%_))
                              (_%else168328168403%_))
                          (_%else168328168403%_)))
                    (_%else168328168403%_)))
              (_%else168328168403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else168328168403%_))))
                                      (_%else168328168403%_))
                                  (_%else168328168403%_)))
                            (_%else168328168403%_))))))
                 (_%generate-values168021%_
                  (lambda (_%hd168135%_ _%body168136%_)
                    (let _%lp168138%_ ((_%rest168140%_ _%hd168135%_)
                                       (_%bind168141%_ '())
                                       (_%check168142%_ '())
                                       (_%post168143%_ '()))
                      (let* ((_%__stx172188172189%_ _%rest168140%_)
                             (_%g168146168157%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172188172189%_)))))
                        (let ((_%__kont172190172191%_
                               (lambda (_%g168148168184%_ _%g168149168185%_)
                                 (let* ((_%__stx172144172145%_
                                         _%g168149168185%_)
                                        (_%g168200168225%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172144172145%_)))))
                                   (let ((_%__kont172146172147%_
                                          (lambda (_%g168202168298%_
                                                   _%g168203168299%_)
                                            (let ((_%eid168313%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g168203168299%_)))
                                                  (_%expr168314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self168014%_
                                                      _%g168202168298%_))))
                                              (_%lp168138%_
                                               _%g168148168184%_
                                               (cons (cons _%eid168313%_
                                                           (cons _%expr168314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168141%_)
                                               _%check168142%_
                                               _%post168143%_))))
                                         (_%__kont172148172149%_
                                          (lambda (_%g168213168246%_
                                                   _%g168214168247%_)
                                            (let* ((_%vals168260%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values168262%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals168260%_
                                                     _%g168214168247%_
                                                     _%g168213168246%_))
                                                   (_%refs168264%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals168260%_
                                                     _%g168214168247%_))
                                                   (_%expr168266%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self168014%_
                                                       _%g168213168246%_))))
                                              (_%lp168138%_
                                               _%g168148168184%_
                                               (cons (cons _%vals168260%_
                                                           (cons _%expr168266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168141%_)
                                               (cons _%check-values168262%_
                                                     _%check168142%_)
                                               (cons _%refs168264%_
                                                     _%post168143%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172144172145%_))
                                         (let ((_%e168204168274%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172144172145%_))))
                                           (let ((_%tl168206168279%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168204168274%_)))
                                                 (_%hd168205168277%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168204168274%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168205168277%_))
                                                 (let ((_%e168207168282%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168205168277%_))))
                                                   (let ((_%tl168209168287%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168207168282%_)))
                                                         (_%hd168208168285%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168207168282%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168209168287%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl168206168279%_))
                     (let ((_%e168210168290%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168206168279%_))))
                       (let ((_%tl168212168295%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168210168290%_)))
                             (_%hd168211168293%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168210168290%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168212168295%_))
                             (_%__kont172146172147%_
                              _%hd168211168293%_
                              _%hd168208168285%_)
                             (let ()
                               (declare (not safe))
                               (_%g168200168225%_)))))
                     (let () (declare (not safe)) (_%g168200168225%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168206168279%_))
                     (let ((_%e168218168238%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168206168279%_))))
                       (let ((_%tl168220168243%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168218168238%_)))
                             (_%hd168219168241%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168218168238%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168220168243%_))
                             (_%__kont172148172149%_
                              _%hd168219168241%_
                              _%hd168205168277%_)
                             (let ()
                               (declare (not safe))
                               (_%g168200168225%_)))))
                     (let () (declare (not safe)) (_%g168200168225%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168206168279%_))
                                                     (let ((_%e168218168238%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168206168279%_))))
                                                       (let ((_%tl168220168243%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168218168238%_)))
                     (_%hd168219168241%_
                      (let () (declare (not safe)) (##car _%e168218168238%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl168220168243%_))
                     (_%__kont172148172149%_
                      _%hd168219168241%_
                      _%hd168205168277%_)
                     (let () (declare (not safe)) (_%g168200168225%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168200168225%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168200168225%_)))))))
                              (_%__kont172192172193%_
                               (lambda ()
                                 (let* ((_%body168164%_
                                         (if _%compiled-body?168016%_
                                             _%body168136%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self168014%_
                                                _%body168136%_))))
                                        (_%body168166%_
                                         (_%generate-values-post168022%_
                                          _%post168143%_
                                          _%body168164%_))
                                        (_%body168168%_
                                         (_%generate-values-check168023%_
                                          _%check168142%_
                                          _%body168166%_)))
                                   (cons 'let
                                         (cons (reverse _%bind168141%_)
                                               (cons _%body168168%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172188172189%_))
                              (let ((_%e168150168176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172188172189%_))))
                                (let ((_%tl168152168181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168150168176%_)))
                                      (_%hd168151168179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168150168176%_))))
                                  (_%__kont172190172191%_
                                   _%tl168152168181%_
                                   _%hd168151168179%_)))
                              (_%__kont172192172193%_)))))))
                 (_%generate-values-post168022%_
                  (lambda (_%post168094%_ _%body168095%_)
                    (let _%lp168097%_ ((_%rest168099%_ _%post168094%_)
                                       (_%body168100%_ _%body168095%_))
                      (let* ((_%rest168101168109%_ _%rest168099%_)
                             (_%else168103168117%_ (lambda () _%body168100%_))
                             (_%K168105168123%_
                              (lambda (_%rest168120%_ _%bind168121%_)
                                (_%lp168097%_
                                 _%rest168120%_
                                 (cons 'let
                                       (cons _%bind168121%_
                                             (cons _%body168100%_ '())))))))
                        (if (pair? _%rest168101168109%_)
                            (let ((_%hd168106168126%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168101168109%_)))
                                  (_%tl168107168128%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168101168109%_))))
                              (let* ((_%bind168131%_ _%hd168106168126%_)
                                     (_%rest168133%_ _%tl168107168128%_))
                                (_%K168105168123%_
                                 _%rest168133%_
                                 _%bind168131%_)))
                            (_%else168103168117%_))))))
                 (_%generate-values-check168023%_
                  (lambda (_%check168091%_ _%body168092%_)
                    (cons 'begin
                          (let ((__tmp173036 (cons _%body168092%_ '()))
                                (__tmp173035 (reverse _%check168091%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173036 __tmp173035))))))
          (let* ((_%g168025168042%_
                  (lambda (_%g168026168039%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168026168039%_))))
                 (_%g168024168088%_
                  (lambda (_%g168026168045%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168026168045%_))
                        (let ((_%e168029168047%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168026168045%_))))
                          (let ((_%hd168030168050%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168029168047%_)))
                                (_%tl168031168052%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168029168047%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl168031168052%_))
                                (let ((_%e168032168055%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl168031168052%_))))
                                  (let ((_%hd168033168058%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168032168055%_)))
                                        (_%tl168034168060%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168032168055%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168034168060%_))
                                        (let ((_%e168035168063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168034168060%_))))
                                          (let ((_%hd168036168066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168035168063%_)))
                                                (_%tl168037168068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168035168063%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168037168068%_))
                                                ((lambda (_%g168027168071%_
                                                          _%g168028168072%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g168028168072%_)
                                                       (_%generate-simple168018%_
                                                        _%g168028168072%_
                                                        _%g168027168071%_)
                                                       (_%generate-values168021%_
                                                        _%g168028168072%_
                                                        _%g168027168071%_)))
                                                 _%hd168036168066%_
                                                 _%hd168033168058%_)
                                                (_%g168025168042%_
                                                 _%g168026168045%_))))
                                        (_%g168025168042%_
                                         _%g168026168045%_))))
                                (_%g168025168042%_ _%g168026168045%_))))
                        (_%g168025168042%_ _%g168026168045%_)))))
            (_%g168024168088%_ _%stx168015%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self168768%_ _%stx168769%_)
        (let ((_%compiled-body?168771%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self168768%_
           _%stx168769%_
           _%compiled-body?168771%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g173037_
        (let ((_g173038_ (let () (declare (not safe)) (##length _g173037_))))
          (cond ((let () (declare (not safe)) (##fx= _g173038_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g173037_))
                ((let () (declare (not safe)) (##fx= _g173038_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g173037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g173037_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals167908%_ _%hd167909%_)
        (let _%lp167911%_ ((_%rest167913%_ _%hd167909%_)
                           (_%k167914%_ '0)
                           (_%r167915%_ '()))
          (let* ((_%__stx172202172203%_ _%rest167913%_)
                 (_%g167920167937%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172202172203%_)))))
            (let ((_%__kont172204172205%_
                   (lambda (_%g167922168000%_)
                     (_%lp167911%_
                      _%g167922168000%_
                      (let () (declare (not safe)) (##fx+ _%k167914%_ '1))
                      _%r167915%_)))
                  (_%__kont172206172207%_
                   (lambda (_%g167927167973%_ _%g167928167974%_)
                     (_%lp167911%_
                      _%g167927167973%_
                      (let () (declare (not safe)) (##fx+ _%k167914%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g167928167974%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals167908%_
                                         _%k167914%_
                                         _%g167927167973%_)
                                        '()))
                            _%r167915%_))))
                  (_%__kont172208172209%_
                   (lambda (_%g167932167949%_)
                     (let ((__tmp173039
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g167932167949%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals167908%_
                                               _%k167914%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp173039 _%r167915%_))))
                  (_%__kont172210172211%_ (lambda () (reverse _%r167915%_))))
              (let ((_%g167918167960%_
                     (lambda ()
                       (let ((_%g167932167949%_ _%__stx172202172203%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g167932167949%_))
                             (_%__kont172208172209%_ _%g167932167949%_)
                             (_%__kont172210172211%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172202172203%_))
                    (let ((_%e167923167989%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172202172203%_))))
                      (let ((_%tl167925167994%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167923167989%_)))
                            (_%hd167924167992%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167923167989%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd167924167992%_))
                            (let ((_%e167926167997%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167924167992%_))))
                              (if (equal? _%e167926167997%_ '#f)
                                  (_%__kont172204172205%_ _%tl167925167994%_)
                                  (_%__kont172206172207%_
                                   _%tl167925167994%_
                                   _%hd167924167992%_)))
                            (_%__kont172206172207%_
                             _%tl167925167994%_
                             _%hd167924167992%_))))
                    (let () (declare (not safe)) (_%g167918167960%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self167587%_ _%stx167588%_ _%compiled-body?167589%_)
        (letrec ((_%generate-simple167591%_
                  (lambda (_%hd167893%_ _%body167894%_)
                    (gxc#generate-runtime-simple-let
                     _%self167587%_
                     'letrec
                     _%hd167893%_
                     _%body167894%_
                     _%compiled-body?167589%_)))
                 (_%generate-values167592%_
                  (lambda (_%hd167672%_ _%body167673%_)
                    (let _%lp167675%_ ((_%rest167677%_ _%hd167672%_)
                                       (_%bind167678%_ '())
                                       (_%check167679%_ '())
                                       (_%post167680%_ '()))
                      (let* ((_%__stx172276172277%_ _%rest167677%_)
                             (_%g167683167694%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172276172277%_)))))
                        (let ((_%__kont172278172279%_
                               (lambda (_%g167685167721%_ _%g167686167722%_)
                                 (let* ((_%__stx172232172233%_
                                         _%g167686167722%_)
                                        (_%g167737167762%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172232172233%_)))))
                                   (let ((_%__kont172234172235%_
                                          (lambda (_%g167739167869%_
                                                   _%g167740167870%_)
                                            (let ((_%eid167884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167740167870%_)))
                                                  (_%expr167885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167587%_
                                                      _%g167739167869%_))))
                                              (_%lp167675%_
                                               _%g167685167721%_
                                               (cons (cons _%eid167884%_
                                                           (cons _%expr167885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167678%_)
                                               _%check167679%_
                                               _%post167680%_))))
                                         (_%__kont172236172237%_
                                          (lambda (_%g167750167783%_
                                                   _%g167751167784%_)
                                            (let* ((_%vals167797%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values167799%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals167797%_
                                                     _%g167751167784%_
                                                     _%g167750167783%_))
                                                   (_%refs167801%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals167797%_
                                                     _%g167751167784%_))
                                                   (_%expr167803%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167587%_
                                                       _%g167750167783%_))))
                                              (_%lp167675%_
                                               _%g167685167721%_
                                               (let ((__tmp173041
                                                      (cons (cons _%vals167797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr167803%_ '()))
                    _%bind167678%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp173040
                                                      (map (lambda (_%e167805167807%_)
                                                             (let* ((_%e167805167809167818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e167805167807%_)
                            (_%E167811167822%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e167805167809167818%_
                                        '([eid _])))
                               '#!void))
                            (_%K167812167827%_
                             (lambda (_%eid167825%_)
                               (cons _%eid167825%_ (cons '#!void '())))))
                       (if (pair? _%e167805167809167818%_)
                           (let ((_%hd167813167830%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e167805167809167818%_)))
                                 (_%tl167814167832%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e167805167809167818%_))))
                             (let ((_%eid167835%_ _%hd167813167830%_))
                               (if (pair? _%tl167814167832%_)
                                   (let ((_%tl167816167837%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl167814167832%_))))
                                     (if (null? _%tl167816167837%_)
                                         (_%K167812167827%_ _%eid167835%_)
                                         (_%E167811167822%_)))
                                   (_%E167811167822%_))))
                           (_%E167811167822%_))))
                   _%refs167801%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp173041
                                                  __tmp173040))
                                               (cons _%check-values167799%_
                                                     _%check167679%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs167801%_
                                                  _%post167680%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172232172233%_))
                                         (let ((_%e167741167845%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172232172233%_))))
                                           (let ((_%tl167743167850%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167741167845%_)))
                                                 (_%hd167742167848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167741167845%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167742167848%_))
                                                 (let ((_%e167744167853%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167742167848%_))))
                                                   (let ((_%tl167746167858%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167744167853%_)))
                                                         (_%hd167745167856%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167744167853%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167746167858%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167743167850%_))
                     (let ((_%e167747167861%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167743167850%_))))
                       (let ((_%tl167749167866%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167747167861%_)))
                             (_%hd167748167864%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167747167861%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167749167866%_))
                             (_%__kont172234172235%_
                              _%hd167748167864%_
                              _%hd167745167856%_)
                             (let ()
                               (declare (not safe))
                               (_%g167737167762%_)))))
                     (let () (declare (not safe)) (_%g167737167762%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167743167850%_))
                     (let ((_%e167755167775%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167743167850%_))))
                       (let ((_%tl167757167780%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167755167775%_)))
                             (_%hd167756167778%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167755167775%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167757167780%_))
                             (_%__kont172236172237%_
                              _%hd167756167778%_
                              _%hd167742167848%_)
                             (let ()
                               (declare (not safe))
                               (_%g167737167762%_)))))
                     (let () (declare (not safe)) (_%g167737167762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167743167850%_))
                                                     (let ((_%e167755167775%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167743167850%_))))
                                                       (let ((_%tl167757167780%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167755167775%_)))
                     (_%hd167756167778%_
                      (let () (declare (not safe)) (##car _%e167755167775%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167757167780%_))
                     (_%__kont172236172237%_
                      _%hd167756167778%_
                      _%hd167742167848%_)
                     (let () (declare (not safe)) (_%g167737167762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167737167762%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167737167762%_)))))))
                              (_%__kont172280172281%_
                               (lambda ()
                                 (let* ((_%body167701%_
                                         (if _%compiled-body?167589%_
                                             _%body167673%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167587%_
                                                _%body167673%_))))
                                        (_%body167703%_
                                         (_%generate-values-post167594%_
                                          _%post167680%_
                                          _%body167701%_))
                                        (_%body167705%_
                                         (_%generate-values-check167593%_
                                          _%check167679%_
                                          _%body167703%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind167678%_)
                                               (cons _%body167705%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172276172277%_))
                              (let ((_%e167687167713%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172276172277%_))))
                                (let ((_%tl167689167718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167687167713%_)))
                                      (_%hd167688167716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167687167713%_))))
                                  (_%__kont172278172279%_
                                   _%tl167689167718%_
                                   _%hd167688167716%_)))
                              (_%__kont172280172281%_)))))))
                 (_%generate-values-check167593%_
                  (lambda (_%check167669%_ _%body167670%_)
                    (cons 'begin
                          (let ((__tmp173043 (cons _%body167670%_ '()))
                                (__tmp173042 (reverse _%check167669%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173043 __tmp173042)))))
                 (_%generate-values-post167594%_
                  (lambda (_%post167662%_ _%body167663%_)
                    (cons 'begin
                          (let ((__tmp173047 (cons _%body167663%_ '()))
                                (__tmp173044
                                 (let ((__tmp173046
                                        (lambda (_%g167664167666%_)
                                          (cons 'set! _%g167664167666%_)))
                                       (__tmp173045 (reverse _%post167662%_)))
                                   (declare (not safe))
                                   (##map __tmp173046 __tmp173045))))
                            (declare (not safe))
                            (__foldr1 cons __tmp173047 __tmp173044))))))
          (let* ((_%g167596167613%_
                  (lambda (_%g167597167610%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167597167610%_))))
                 (_%g167595167659%_
                  (lambda (_%g167597167616%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167597167616%_))
                        (let ((_%e167600167618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167597167616%_))))
                          (let ((_%hd167601167621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167600167618%_)))
                                (_%tl167602167623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167600167618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167602167623%_))
                                (let ((_%e167603167626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167602167623%_))))
                                  (let ((_%hd167604167629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167603167626%_)))
                                        (_%tl167605167631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167603167626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167605167631%_))
                                        (let ((_%e167606167634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167605167631%_))))
                                          (let ((_%hd167607167637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167606167634%_)))
                                                (_%tl167608167639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167606167634%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167608167639%_))
                                                ((lambda (_%g167598167642%_
                                                          _%g167599167643%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167599167643%_)
                                                       (_%generate-simple167591%_
                                                        _%g167599167643%_
                                                        _%g167598167642%_)
                                                       (_%generate-values167592%_
                                                        _%g167599167643%_
                                                        _%g167598167642%_)))
                                                 _%hd167607167637%_
                                                 _%hd167604167629%_)
                                                (_%g167596167613%_
                                                 _%g167597167616%_))))
                                        (_%g167596167613%_
                                         _%g167597167616%_))))
                                (_%g167596167613%_ _%g167597167616%_))))
                        (_%g167596167613%_ _%g167597167616%_)))))
            (_%g167595167659%_ _%stx167588%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self167899%_ _%stx167900%_)
        (let ((_%compiled-body?167902%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self167899%_
           _%stx167900%_
           _%compiled-body?167902%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g173048_
        (let ((_g173049_ (let () (declare (not safe)) (##length _g173048_))))
          (cond ((let () (declare (not safe)) (##fx= _g173049_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g173048_))
                ((let () (declare (not safe)) (##fx= _g173049_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g173048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g173048_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self167168%_ _%stx167169%_)
        (letrec ((_%generate-values167171%_
                  (lambda (_%hd167414%_ _%body167415%_)
                    (let _%lp167417%_ ((_%rest167419%_ _%hd167414%_)
                                       (_%bind167420%_ '()))
                      (let* ((_%rest167421167429%_ _%rest167419%_)
                             (_%else167423167440%_
                              (lambda ()
                                (let ((_%bind167437%_ (reverse _%bind167420%_))
                                      (_%body167438%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self167168%_
                                          _%body167415%_))))
                                  (cons 'letrec*
                                        (cons _%bind167437%_
                                              (cons _%body167438%_ '()))))))
                             (_%K167425167574%_
                              (lambda (_%rest167443%_ _%hd-bind167444%_)
                                (let* ((_%__stx172290172291%_
                                        _%hd-bind167444%_)
                                       (_%g167447167472%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172290172291%_)))))
                                  (let ((_%__kont172292172293%_
                                         (lambda (_%g167449167553%_
                                                  _%g167450167554%_)
                                           (let ((_%eid167568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g167450167554%_)))
                                                 (_%expr167569%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self167168%_
                                                     _%g167449167553%_))))
                                             (_%lp167417%_
                                              _%rest167443%_
                                              (cons (cons _%eid167568%_
                                                          (cons _%expr167569%_
                                                                '()))
                                                    _%bind167420%_)))))
                                        (_%__kont172294172295%_
                                         (lambda (_%g167460167493%_
                                                  _%g167461167494%_)
                                           (let* ((_%vals167513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp167515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values167517%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp167515%_
                                                    _%g167461167494%_
                                                    _%g167460167493%_))
                                                  (_%refs167519%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals167513%_
                                                    _%g167461167494%_))
                                                  (_%expr167521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167168%_
                                                      _%g167460167493%_))))
                                             (_%lp167417%_
                                              _%rest167443%_
                                              (let ((__tmp173050
                                                     (cons (cons _%vals167513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp167515%_
                                                       (cons _%expr167521%_
                                                             '()))
                                                 '())
                                           (cons _%check-values167517%_
                                                 (cons _%tmp167515%_ '()))))
                               '()))
                   _%bind167420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp173050
                                                 _%refs167519%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx172290172291%_))
                                        (let ((_%e167451167529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx172290172291%_))))
                                          (let ((_%tl167453167534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167451167529%_)))
                                                (_%hd167452167532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167451167529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167452167532%_))
                                                (let ((_%e167454167537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167452167532%_))))
                                                  (let ((_%tl167456167542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167454167537%_)))
                                                        (_%hd167455167540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167454167537%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167456167542%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167453167534%_))
                                                            (let ((_%e167457167545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167453167534%_))))
                      (let ((_%tl167459167550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167457167545%_)))
                            (_%hd167458167548%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167457167545%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167459167550%_))
                            (_%__kont172292172293%_
                             _%hd167458167548%_
                             _%hd167455167540%_)
                            (let ()
                              (declare (not safe))
                              (_%g167447167472%_)))))
                    (let () (declare (not safe)) (_%g167447167472%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl167453167534%_))
                    (let ((_%e167465167485%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167453167534%_))))
                      (let ((_%tl167467167490%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167465167485%_)))
                            (_%hd167466167488%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167465167485%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167467167490%_))
                            (_%__kont172294172295%_
                             _%hd167466167488%_
                             _%hd167452167532%_)
                            (let ()
                              (declare (not safe))
                              (_%g167447167472%_)))))
                    (let () (declare (not safe)) (_%g167447167472%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167453167534%_))
                                                    (let ((_%e167465167485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167453167534%_))))
                                                      (let ((_%tl167467167490%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167465167485%_)))
                    (_%hd167466167488%_
                     (let () (declare (not safe)) (##car _%e167465167485%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167467167490%_))
                    (_%__kont172294172295%_
                     _%hd167466167488%_
                     _%hd167452167532%_)
                    (let () (declare (not safe)) (_%g167447167472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167447167472%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167447167472%_))))))))
                        (if (pair? _%rest167421167429%_)
                            (let ((_%hd167426167577%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167421167429%_)))
                                  (_%tl167427167579%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167421167429%_))))
                              (let* ((_%hd-bind167582%_ _%hd167426167577%_)
                                     (_%rest167584%_ _%tl167427167579%_))
                                (_%K167425167574%_
                                 _%rest167584%_
                                 _%hd-bind167582%_)))
                            (_%else167423167440%_))))))
                 (_%generate-letrec?167172%_
                  (lambda (_%hd167304%_)
                    (let _%lp167306%_ ((_%rest167308%_ _%hd167304%_))
                      (let* ((_%rest167309167317%_ _%rest167308%_)
                             (_%else167311167325%_ (lambda () '#t))
                             (_%K167313167402%_
                              (lambda (_%rest167328%_ _%hd-bind167329%_)
                                (let* ((_%g167331167348%_
                                        (lambda (_%g167332167345%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g167332167345%_))))
                                       (_%g167330167399%_
                                        (lambda (_%g167332167351%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g167332167351%_))
                                              (let ((_%e167335167353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g167332167351%_))))
                                                (let ((_%hd167336167356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167335167353%_)))
                                                      (_%tl167337167358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167335167353%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd167336167356%_))
                                                      (let ((_%e167338167361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd167336167356%_))))
                (let ((_%hd167339167364%_
                       (let () (declare (not safe)) (##car _%e167338167361%_)))
                      (_%tl167340167366%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e167338167361%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167340167366%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167337167358%_))
                          (let ((_%e167341167369%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167337167358%_))))
                            (let ((_%hd167342167372%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167341167369%_)))
                                  (_%tl167343167374%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167341167369%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167343167374%_))
                                  ((lambda (_%g167333167377%_
                                            _%g167334167378%_)
                                     (if (_%is-lambda-expr?167173%_
                                          _%g167333167377%_)
                                         (_%lp167306%_ _%rest167328%_)
                                         '#f))
                                   _%hd167342167372%_
                                   _%hd167339167364%_)
                                  (_%g167331167348%_ _%g167332167351%_))))
                          (_%g167331167348%_ _%g167332167351%_))
                      (_%g167331167348%_ _%g167332167351%_))))
              (_%g167331167348%_ _%g167332167351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g167331167348%_
                                               _%g167332167351%_)))))
                                  (_%g167330167399%_ _%hd-bind167329%_)))))
                        (if (pair? _%rest167309167317%_)
                            (let ((_%hd167314167405%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167309167317%_)))
                                  (_%tl167315167407%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167309167317%_))))
                              (let* ((_%hd-bind167410%_ _%hd167314167405%_)
                                     (_%rest167412%_ _%tl167315167407%_))
                                (_%K167313167402%_
                                 _%rest167412%_
                                 _%hd-bind167410%_)))
                            (_%else167311167325%_))))))
                 (_%is-lambda-expr?167173%_
                  (lambda (_%expr167241%_)
                    (let* ((_%__stx172334172335%_ _%expr167241%_)
                           (_%g167244167258%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx172334172335%_)))))
                      (let ((_%__kont172336172337%_
                             (lambda (_%g167246167286%_ _%g167247167287%_)
                               '#t))
                            (_%__kont172338172339%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx172334172335%_))
                            (let ((_%e167248167270%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx172334172335%_))))
                              (let ((_%tl167250167275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167248167270%_)))
                                    (_%hd167249167273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167248167270%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167249167273%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd167249167273%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167250167275%_))
                                            (let ((_%e167251167278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167250167275%_))))
                                              (let ((_%tl167253167283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167251167278%_)))
                                                    (_%hd167252167281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167251167278%_))))
                                                (_%__kont172336172337%_
                                                 _%tl167253167283%_
                                                 _%hd167252167281%_)))
                                            (_%__kont172338172339%_))
                                        (_%__kont172338172339%_))
                                    (_%__kont172338172339%_))))
                            (_%__kont172338172339%_)))))))
          (let* ((_%g167175167192%_
                  (lambda (_%g167176167189%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167176167189%_))))
                 (_%g167174167238%_
                  (lambda (_%g167176167195%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167176167195%_))
                        (let ((_%e167179167197%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167176167195%_))))
                          (let ((_%hd167180167200%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167179167197%_)))
                                (_%tl167181167202%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167179167197%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167181167202%_))
                                (let ((_%e167182167205%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167181167202%_))))
                                  (let ((_%hd167183167208%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167182167205%_)))
                                        (_%tl167184167210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167182167205%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167184167210%_))
                                        (let ((_%e167185167213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167184167210%_))))
                                          (let ((_%hd167186167216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167185167213%_)))
                                                (_%tl167187167218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167185167213%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167187167218%_))
                                                ((lambda (_%g167177167221%_
                                                          _%g167178167222%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167178167222%_)
                                                       (if (_%generate-letrec?167172%_
                                                            _%g167178167222%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167168%_
                                                            'letrec
                                                            _%g167178167222%_
                                                            _%g167177167221%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167168%_
                                                            'letrec*
                                                            _%g167178167222%_
                                                            _%g167177167221%_
                                                            '#f))
                                                       (_%generate-values167171%_
                                                        _%g167178167222%_
                                                        _%g167177167221%_)))
                                                 _%hd167186167216%_
                                                 _%hd167183167208%_)
                                                (_%g167175167192%_
                                                 _%g167176167195%_))))
                                        (_%g167175167192%_
                                         _%g167176167195%_))))
                                (_%g167175167192%_ _%g167176167195%_))))
                        (_%g167175167192%_ _%g167176167195%_)))))
            (_%g167174167238%_ _%stx167169%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd167105%_)
        (let _%lp167107%_ ((_%rest167109%_ _%hd167105%_))
          (let* ((_%rest167110167126%_ _%rest167109%_)
                 (_%else167113167134%_ (lambda () '#f)))
            (let ((_%K167116167147%_
                   (lambda (_%rest167145%_) (_%lp167107%_ _%rest167145%_)))
                  (_%K167115167139%_ (lambda () '#t)))
              (let ((_%try-match167112167142%_
                     (lambda ()
                       (if (null? _%rest167110167126%_)
                           (_%K167115167139%_)
                           (_%else167113167134%_)))))
                (if (pair? _%rest167110167126%_)
                    (let ((_%tl167118167152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest167110167126%_)))
                          (_%hd167117167150%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest167110167126%_))))
                      (if (pair? _%hd167117167150%_)
                          (let ((_%tl167120167157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd167117167150%_)))
                                (_%hd167119167155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd167117167150%_))))
                            (if (pair? _%hd167119167155%_)
                                (let ((_%tl167124167160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167119167155%_))))
                                  (if (null? _%tl167124167160%_)
                                      (if (pair? _%tl167120167157%_)
                                          (let ((_%tl167122167163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167120167157%_))))
                                            (if (null? _%tl167122167163%_)
                                                (let ((_%rest167166%_
                                                       _%tl167118167152%_))
                                                  (_%lp167107%_
                                                   _%rest167166%_))
                                                (_%else167113167134%_)))
                                          (_%else167113167134%_))
                                      (_%else167113167134%_)))
                                (_%else167113167134%_)))
                          (_%else167113167134%_)))
                    (_%try-match167112167142%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self167017%_
               _%form167018%_
               _%hd167019%_
               _%body167020%_
               _%compiled-body?167021%_)
        (letrec ((_%generate1167023%_
                  (lambda (_%bind167062%_)
                    (let* ((_%bind167063167074%_ _%bind167062%_)
                           (_%E167065167077%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind167063167074%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K167066167083%_
                            (lambda (_%expr167080%_ _%id167081%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id167081%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self167017%_
                                             _%expr167080%_))
                                          '())))))
                      (if (pair? _%bind167063167074%_)
                          (let ((_%hd167067167086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind167063167074%_)))
                                (_%tl167068167088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind167063167074%_))))
                            (if (pair? _%hd167067167086%_)
                                (let ((_%hd167071167091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd167067167086%_)))
                                      (_%tl167072167093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167067167086%_))))
                                  (let ((_%id167096%_ _%hd167071167091%_))
                                    (if (null? _%tl167072167093%_)
                                        (if (pair? _%tl167068167088%_)
                                            (let ((_%hd167069167098%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl167068167088%_)))
                                                  (_%tl167070167100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl167068167088%_))))
                                              (let ((_%expr167103%_
                                                     _%hd167069167098%_))
                                                (if (null? _%tl167070167100%_)
                                                    (_%K167066167083%_
                                                     _%expr167103%_
                                                     _%id167096%_)
                                                    (_%E167065167077%_))))
                                            (_%E167065167077%_))
                                        (_%E167065167077%_))))
                                (_%E167065167077%_)))
                          (_%E167065167077%_))))))
          (let* ((_%bind167025%_ (map _%generate1167023%_ _%hd167019%_))
                 (_%body167027%_
                  (if _%compiled-body?167021%_
                      _%body167020%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167017%_ _%body167020%_))))
                 (_%body167059%_
                  (let* ((_%body167028167036%_ _%body167027%_)
                         (_%else167030167044%_
                          (lambda () (cons _%body167027%_ '())))
                         (_%K167032167049%_
                          (lambda (_%exprs167047%_) _%exprs167047%_)))
                    (if (pair? _%body167028167036%_)
                        (let ((_%hd167033167052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body167028167036%_)))
                              (_%tl167034167054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body167028167036%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd167033167052%_ 'begin))
                              (let ((_%exprs167057%_ _%tl167034167054%_))
                                (_%K167032167049%_ _%exprs167057%_))
                              (_%else167030167044%_)))
                        (_%else167030167044%_)))))
            (cons _%form167018%_ (cons _%bind167025%_ _%body167059%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self166917%_ _%stx166918%_)
        (letrec ((_%generate1166920%_
                  (lambda (_%datum166972%_)
                    (if (or (null? _%datum166972%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum166972%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum166972%_))
                            (eof-object? _%datum166972%_))
                        _%datum166972%_
                        (if (uninterned-symbol? _%datum166972%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum166972%_
                               '#t))
                            (if (pair? _%datum166972%_)
                                (cons (_%generate1166920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum166972%_)))
                                      (_%generate1166920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum166972%_))))
                                (if (box? _%datum166972%_)
                                    (box (_%generate1166920%_
                                          (unbox _%datum166972%_)))
                                    (if (vector? _%datum166972%_)
                                        (vector-map
                                         _%generate1166920%_
                                         _%datum166972%_)
                                        (if (or (s8vector? _%datum166972%_)
                                                (u8vector? _%datum166972%_)
                                                (s16vector? _%datum166972%_)
                                                (u16vector? _%datum166972%_)
                                                (s32vector? _%datum166972%_)
                                                (u32vector? _%datum166972%_)
                                                (s64vector? _%datum166972%_)
                                                (u64vector? _%datum166972%_)
                                                (f32vector? _%datum166972%_)
                                                (f64vector? _%datum166972%_))
                                            _%datum166972%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx166918%_)))))))))))
          (let* ((_%g166922166935%_
                  (lambda (_%g166923166932%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166923166932%_))))
                 (_%g166921166969%_
                  (lambda (_%g166923166938%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166923166938%_))
                        (let ((_%e166925166940%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166923166938%_))))
                          (let ((_%hd166926166943%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166925166940%_)))
                                (_%tl166927166945%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166925166940%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166927166945%_))
                                (let ((_%e166928166948%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166927166945%_))))
                                  (let ((_%hd166929166951%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166928166948%_)))
                                        (_%tl166930166953%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166928166948%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166930166953%_))
                                        ((lambda (_%g166924166956%_)
                                           (cons 'quote
                                                 (cons (_%generate1166920%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g166924166956%_)))
                                                       '())))
                                         _%hd166929166951%_)
                                        (_%g166922166935%_
                                         _%g166923166938%_))))
                                (_%g166922166935%_ _%g166923166938%_))))
                        (_%g166922166935%_ _%g166923166938%_)))))
            (_%g166921166969%_ _%stx166918%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self166364%_ _%stx166365%_)
        (letrec ((_%compile-call166367%_
                  (lambda (_%rator166654%_ _%rands166655%_)
                    (let ((_%rator166661%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self166364%_
                              _%rator166654%_)))
                          (_%rands166662%_
                           (map (lambda (_%g166656166658%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self166364%_
                                     _%g166656166658%_)))
                                _%rands166655%_)))
                      (let* ((_%__stx172381172382%_ _%rator166661%_)
                             (_%g166665166717%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172381172382%_)))))
                        (let ((_%__kont172383172384%_
                               (lambda (_%g166667166837%_
                                        _%g166668166838%_
                                        _%g166669166839%_
                                        _%g166670166840%_)
                                 (if (let ((__tmp173053
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands166662%_)))
                                           (__tmp173051
                                            (length (let ((__tmp173052
                                                           (lambda (_%g166876166879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g166877166881%_)
                     (cons _%g166876166879%_ _%g166877166881%_))))
              (declare (not safe))
              (__foldr1 __tmp173052 '() _%g166669166839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173053 __tmp173051))
                                     (let* ((_%id166884%_ _%g166670166840%_)
                                            (_%args166893%_
                                             (let ((__tmp173054
                                                    (lambda (_%g166885166888%_
                                                             _%g166886166890%_)
                                                      (cons _%g166885166888%_
                                                            _%g166886166890%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173054
                                                '()
                                                _%g166669166839%_)))
                                            (_%body166902%_
                                             (let ((__tmp173055
                                                    (lambda (_%g166894166897%_
                                                             _%g166895166899%_)
                                                      (cons _%g166894166897%_
                                                            _%g166895166899%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173055
                                                '()
                                                _%g166668166838%_)))
                                            (_%init166904%_
                                             (map list
                                                  _%args166893%_
                                                  _%rands166662%_)))
                                       (cons 'let
                                             (cons _%id166884%_
                                                   (cons _%init166904%_
                                                         _%body166902%_))))
                                     (let ((__tmp173056
                                            (let ((__tmp173057
                                                   (lambda (_%g166906166909%_
                                                            _%g166907166911%_)
                                                     (cons _%g166906166909%_
                                                           _%g166907166911%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173057
                                               '()
                                               _%g166669166839%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx166365%_
                                        __tmp173056
                                        _%rands166662%_)))))
                              (_%__kont172389172390%_
                               (lambda ()
                                 (cons _%rator166661%_ _%rands166662%_))))
                          (let ((_%__match172448172449%_
                                 (lambda (_%e166671166729%_
                                          _%hd166672166732%_
                                          _%tl166673166734%_
                                          _%e166674166737%_
                                          _%hd166675166740%_
                                          _%tl166676166742%_
                                          _%e166677166745%_
                                          _%hd166678166748%_
                                          _%tl166679166750%_
                                          _%e166680166753%_
                                          _%hd166681166756%_
                                          _%tl166682166758%_
                                          _%e166683166761%_
                                          _%hd166684166764%_
                                          _%tl166685166766%_
                                          _%e166686166769%_
                                          _%hd166687166772%_
                                          _%tl166688166774%_
                                          _%e166689166777%_
                                          _%hd166690166780%_
                                          _%tl166691166782%_
                                          _%__splice172385172386%_
                                          _%target166692166785%_
                                          _%tl166694166787%_)
                                   (letrec ((_%loop166695166790%_
                                             (lambda (_%hd166693166793%_
                                                      _%arg166699166795%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd166693166793%_))
                                                   (let ((_%e166696166797%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd166693166793%_))))
                                                     (let ((_%lp-tl166698166802%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e166696166797%_)))
                                                           (_%lp-hd166697166800%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e166696166797%_))))
                                                       (_%loop166695166790%_
                                                        _%lp-tl166698166802%_
                                                        (cons _%lp-hd166697166800%_
                                                              _%arg166699166795%_))))
                                                   (let ((_%arg166700166805%_
                                                          (reverse _%arg166699166795%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl166691166782%_))
                                                         (let ((_%__splice172387172388%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl166691166782%_
                           '0))))
                   (let ((_%tl166703166809%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172387172388%_ '1)))
                         (_%target166701166807%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172387172388%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl166703166809%_))
                         (letrec ((_%loop166704166812%_
                                   (lambda (_%hd166702166815%_
                                            _%body166708166817%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd166702166815%_))
                                         (let ((_%e166705166819%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd166702166815%_))))
                                           (let ((_%lp-tl166707166824%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166705166819%_)))
                                                 (_%lp-hd166706166822%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166705166819%_))))
                                             (_%loop166704166812%_
                                              _%lp-tl166707166824%_
                                              (cons _%lp-hd166706166822%_
                                                    _%body166708166817%_))))
                                         (let ((_%body166709166827%_
                                                (reverse _%body166708166817%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl166685166766%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl166679166750%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl166676166742%_))
                                                       (let ((_%e166710166829%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl166676166742%_))))
                 (let ((_%tl166712166834%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e166710166829%_)))
                       (_%hd166711166832%_
                        (let ()
                          (declare (not safe))
                          (##car _%e166710166829%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl166712166834%_))
                       (let ((_%g166667166837%_ _%hd166711166832%_)
                             (_%g166668166838%_ _%body166709166827%_)
                             (_%g166669166839%_ _%arg166700166805%_)
                             (_%g166670166840%_ _%hd166681166756%_))
                         (if (eq? _%g166670166840%_ _%g166667166837%_)
                             (_%__kont172383172384%_
                              _%g166667166837%_
                              _%g166668166838%_
                              _%g166669166839%_
                              _%g166670166840%_)
                             (_%__kont172389172390%_)))
                       (_%__kont172389172390%_))))
               (_%__kont172389172390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172389172390%_))
                                               (_%__kont172389172390%_)))))))
                           (_%loop166704166812%_ _%target166701166807%_ '()))
                         (_%__kont172389172390%_))))
                 (_%__kont172389172390%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop166695166790%_
                                      _%target166692166785%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172381172382%_))
                                (let ((_%e166671166729%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172381172382%_))))
                                  (let ((_%tl166673166734%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166671166729%_)))
                                        (_%hd166672166732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166671166729%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166672166732%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd166672166732%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166673166734%_))
                                                (let ((_%e166674166737%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166673166734%_))))
                                                  (let ((_%tl166676166742%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166674166737%_)))
                                                        (_%hd166675166740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166674166737%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd166675166740%_))
                                                        (let ((_%e166677166745%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd166675166740%_))))
                  (let ((_%tl166679166750%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166677166745%_)))
                        (_%hd166678166748%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166677166745%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd166678166748%_))
                        (let ((_%e166680166753%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd166678166748%_))))
                          (let ((_%tl166682166758%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166680166753%_)))
                                (_%hd166681166756%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166680166753%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166682166758%_))
                                (let ((_%e166683166761%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166682166758%_))))
                                  (let ((_%tl166685166766%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166683166761%_)))
                                        (_%hd166684166764%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166683166761%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166684166764%_))
                                        (let ((_%e166686166769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166684166764%_))))
                                          (let ((_%tl166688166774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166686166769%_)))
                                                (_%hd166687166772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166686166769%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd166687166772%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd166687166772%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl166688166774%_))
                                                        (let ((_%e166689166777%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl166688166774%_))))
                  (let ((_%tl166691166782%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166689166777%_)))
                        (_%hd166690166780%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166689166777%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd166690166780%_))
                        (let ((_%__splice172385172386%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd166690166780%_
                                  '0))))
                          (let ((_%tl166694166787%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice172385172386%_ '1)))
                                (_%target166692166785%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice172385172386%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl166694166787%_))
                                (_%__match172448172449%_
                                 _%e166671166729%_
                                 _%hd166672166732%_
                                 _%tl166673166734%_
                                 _%e166674166737%_
                                 _%hd166675166740%_
                                 _%tl166676166742%_
                                 _%e166677166745%_
                                 _%hd166678166748%_
                                 _%tl166679166750%_
                                 _%e166680166753%_
                                 _%hd166681166756%_
                                 _%tl166682166758%_
                                 _%e166683166761%_
                                 _%hd166684166764%_
                                 _%tl166685166766%_
                                 _%e166686166769%_
                                 _%hd166687166772%_
                                 _%tl166688166774%_
                                 _%e166689166777%_
                                 _%hd166690166780%_
                                 _%tl166691166782%_
                                 _%__splice172385172386%_
                                 _%target166692166785%_
                                 _%tl166694166787%_)
                                (_%__kont172389172390%_))))
                        (_%__kont172389172390%_))))
                (_%__kont172389172390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172389172390%_))
                                                (_%__kont172389172390%_))))
                                        (_%__kont172389172390%_))))
                                (_%__kont172389172390%_))))
                        (_%__kont172389172390%_))))
                (_%__kont172389172390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172389172390%_))
                                            (_%__kont172389172390%_))
                                        (_%__kont172389172390%_))))
                                (_%__kont172389172390%_)))))))))
          (let* ((_%g166369166392%_
                  (lambda (_%g166370166389%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166370166389%_))))
                 (_%g166368166651%_
                  (lambda (_%g166370166395%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166370166395%_))
                        (let ((_%e166373166397%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166370166395%_))))
                          (let ((_%hd166374166400%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166373166397%_)))
                                (_%tl166375166402%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166373166397%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166375166402%_))
                                (let ((_%e166376166405%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166375166402%_))))
                                  (let ((_%hd166377166408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166376166405%_)))
                                        (_%tl166378166410%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166376166405%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166378166410%_))
                                        (let ((_g173058_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166378166410%_
                                                  '0))))
                                          (begin
                                            (let ((_g173059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173058_)
                                                         (##values-length
                                                          _g173058_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173059_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173059_)))
                                            (let ((_%target166379166413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173058_
                                                      0)))
                                                  (_%tl166381166415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173058_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166381166415%_))
                                                  (letrec ((_%loop166382166418%_
                                                            (lambda (_%hd166380166421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand166386166423%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166380166421%_))
                          (let ((_%e166383166425%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166380166421%_))))
                            (let ((_%lp-hd166384166428%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166383166425%_)))
                                  (_%lp-tl166385166430%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166383166425%_))))
                              (_%loop166382166418%_
                               _%lp-tl166385166430%_
                               (cons _%lp-hd166384166428%_
                                     _%rand166386166423%_))))
                          (let ((_%rand166387166433%_
                                 (reverse _%rand166386166423%_)))
                            ((lambda (_%g166371166435%_ _%g166372166436%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call166367%_
                                    _%g166372166436%_
                                    (let ((__tmp173060
                                           (lambda (_%g166453166456%_
                                                    _%g166454166458%_)
                                             (cons _%g166453166456%_
                                                   _%g166454166458%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp173060
                                       '()
                                       _%g166371166435%_)))
                                   (let* ((_%__stx172497172498%_
                                           _%g166372166436%_)
                                          (_%g166462166474%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx172497172498%_)))))
                                     (let ((_%__kont172499172500%_
                                            (lambda ()
                                              (let ((_%f166511%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self166364%_
                                                        _%g166372166436%_))))
                                                (if (and (let ((__tmp173061
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f166511%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp173061))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f166511%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp166513%_ ((_%rest166516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp173063
                                                (lambda (_%g166633166636%_
                                                         _%g166634166638%_)
                                                  (cons _%g166633166636%_
                                                        _%g166634166638%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp173063
                                            '()
                                            _%g166371166435%_))))
                               (_%bind166518%_ '())
                               (_%args166519%_ '()))
              (let* ((_%rest166520166528%_ _%rest166516%_)
                     (_%else166522166536%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind166518%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f166511%_
                                                      _%args166519%_)
                                                '()))))))
                     (_%K166524166622%_
                      (lambda (_%rest166539%_ _%e166540%_)
                        (let* ((_%__stx172451172452%_ _%e166540%_)
                               (_%g166545166563%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx172451172452%_)))))
                          (let ((_%__kont172453172454%_
                                 (lambda ()
                                   (_%lp166513%_
                                    _%rest166539%_
                                    _%bind166518%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166540%_))
                                          _%args166519%_))))
                                (_%__kont172455172456%_
                                 (lambda ()
                                   (_%lp166513%_
                                    _%rest166539%_
                                    _%bind166518%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166540%_))
                                          _%args166519%_))))
                                (_%__kont172457172458%_
                                 (lambda ()
                                   (let ((_%tmp166570%_
                                          (let ((__tmp173062
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp173062))))
                                     (_%lp166513%_
                                      _%rest166539%_
                                      (cons (cons _%tmp166570%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e166540%_))
                                                        '()))
                                            _%bind166518%_)
                                      (cons _%tmp166570%_ _%args166519%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172451172452%_))
                                (let ((_%e166547166601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172451172452%_))))
                                  (let ((_%tl166549166606%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166547166601%_)))
                                        (_%hd166548166604%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166547166601%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166548166604%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166548166604%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166549166606%_))
                                                (let ((_%e166550166609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166549166606%_))))
                                                  (let ((_%tl166552166614%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166550166609%_)))
                                                        (_%hd166551166612%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166550166609%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166552166614%_))
                                                        (_%__kont172453172454%_)
                                                        (_%__kont172457172458%_))))
                                                (_%__kont172457172458%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd166548166604%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166549166606%_))
                                                    (let ((_%e166556166586%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166549166606%_))))
                                                      (let ((_%tl166558166591%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166556166586%_)))
                    (_%hd166557166589%_
                     (let () (declare (not safe)) (##car _%e166556166586%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166558166591%_))
                    (_%__kont172455172456%_)
                    (_%__kont172457172458%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172457172458%_))
                                                (_%__kont172457172458%_)))
                                        (_%__kont172457172458%_))))
                                (_%__kont172457172458%_)))))))
                (if (pair? _%rest166520166528%_)
                    (let ((_%hd166525166625%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166520166528%_)))
                          (_%tl166526166627%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166520166528%_))))
                      (let* ((_%e166630%_ _%hd166525166625%_)
                             (_%rest166632%_ _%tl166526166627%_))
                        (_%K166524166622%_ _%rest166632%_ _%e166630%_)))
                    (_%else166522166536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call166367%_
                                                     _%g166372166436%_
                                                     (let ((__tmp173064
                                                            (lambda (_%g166640166643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g166641166645%_)
                      (cons _%g166640166643%_ _%g166641166645%_))))
               (declare (not safe))
               (__foldr1 __tmp173064 '() _%g166371166435%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont172501172502%_
                                            (lambda ()
                                              (_%compile-call166367%_
                                               _%g166372166436%_
                                               (let ((__tmp173065
                                                      (lambda (_%g166480166483%_
                                                               _%g166481166485%_)
                                                        (cons _%g166480166483%_
                                                              _%g166481166485%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173065
                                                  '()
                                                  _%g166371166435%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx172497172498%_))
                                           (let ((_%e166464166493%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx172497172498%_))))
                                             (let ((_%tl166466166498%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e166464166493%_)))
                                                   (_%hd166465166496%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e166464166493%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd166465166496%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd166465166496%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl166466166498%_))
                                                           (let ((_%e166467166501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl166466166498%_))))
                     (let ((_%tl166469166506%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e166467166501%_)))
                           (_%hd166468166504%_
                            (let ()
                              (declare (not safe))
                              (##car _%e166467166501%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl166469166506%_))
                           (_%__kont172499172500%_)
                           (_%__kont172501172502%_))))
                   (_%__kont172501172502%_))
               (_%__kont172501172502%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172501172502%_))))
                                           (_%__kont172501172502%_))))))
                             _%rand166387166433%_
                             _%hd166377166408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop166382166418%_
                                                     _%target166379166413%_
                                                     '()))
                                                  (_%g166369166392%_
                                                   _%g166370166395%_)))))
                                        (_%g166369166392%_
                                         _%g166370166395%_))))
                                (_%g166369166392%_ _%g166370166395%_))))
                        (_%g166369166392%_ _%g166370166395%_)))))
            (_%g166368166651%_ _%stx166365%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self166109%_ _%stx166110%_)
        (let* ((_%__stx172569172570%_ _%stx166110%_)
               (_%g166113166142%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172569172570%_)))))
          (let ((_%__kont172571172572%_
                 (lambda (_%g166115166208%_ _%g166116166209%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self166109%_
                        _%stx166110%_)
                       (let ((_%f166231%_
                              (let ((__tmp173066
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g166116166209%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self166109%_
                                 __tmp173066))))
                         (let _%lp166233%_ ((_%rest166236%_
                                             (reverse (let ((__tmp173068
                                                             (lambda (_%g166353166356%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g166354166358%_)
                       (cons _%g166353166356%_ _%g166354166358%_))))
                (declare (not safe))
                (__foldr1 __tmp173068 '() _%g166115166208%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind166238%_ '())
                                            (_%args166239%_ '()))
                           (let* ((_%rest166240166248%_ _%rest166236%_)
                                  (_%else166242166256%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind166238%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f166231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args166239%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K166244166342%_
                                   (lambda (_%rest166259%_ _%e166260%_)
                                     (let* ((_%__stx172523172524%_ _%e166260%_)
                                            (_%g166265166283%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx172523172524%_)))))
                                       (let ((_%__kont172525172526%_
                                              (lambda ()
                                                (_%lp166233%_
                                                 _%rest166259%_
                                                 _%bind166238%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166260%_))
                                                       _%args166239%_))))
                                             (_%__kont172527172528%_
                                              (lambda ()
                                                (_%lp166233%_
                                                 _%rest166259%_
                                                 _%bind166238%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166260%_))
                                                       _%args166239%_))))
                                             (_%__kont172529172530%_
                                              (lambda ()
                                                (let ((_%tmp166290%_
                                                       (let ((__tmp173067
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp173067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp166233%_
                                                   _%rest166259%_
                                                   (cons (cons _%tmp166290%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e166260%_))
                             '()))
                 _%bind166238%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp166290%_
                                                         _%args166239%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx172523172524%_))
                                             (let ((_%e166267166321%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx172523172524%_))))
                                               (let ((_%tl166269166326%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e166267166321%_)))
                                                     (_%hd166268166324%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e166267166321%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd166268166324%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd166268166324%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166269166326%_))
                     (let ((_%e166270166329%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166269166326%_))))
                       (let ((_%tl166272166334%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166270166329%_)))
                             (_%hd166271166332%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166270166329%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166272166334%_))
                             (_%__kont172525172526%_)
                             (_%__kont172529172530%_))))
                     (_%__kont172529172530%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd166268166324%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl166269166326%_))
                         (let ((_%e166276166306%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl166269166326%_))))
                           (let ((_%tl166278166311%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166276166306%_)))
                                 (_%hd166277166309%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166276166306%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl166278166311%_))
                                 (_%__kont172527172528%_)
                                 (_%__kont172529172530%_))))
                         (_%__kont172529172530%_))
                     (_%__kont172529172530%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172529172530%_))))
                                             (_%__kont172529172530%_)))))))
                             (if (pair? _%rest166240166248%_)
                                 (let ((_%hd166245166345%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest166240166248%_)))
                                       (_%tl166246166347%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest166240166248%_))))
                                   (let* ((_%e166350%_ _%hd166245166345%_)
                                          (_%rest166352%_ _%tl166246166347%_))
                                     (_%K166244166342%_
                                      _%rest166352%_
                                      _%e166350%_)))
                                 (_%else166242166256%_))))))))
                (_%__kont172575172576%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self166109%_ _%stx166110%_))))
            (let ((_%__match172614172615%_
                   (lambda (_%e166117166154%_
                            _%hd166118166157%_
                            _%tl166119166159%_
                            _%e166120166162%_
                            _%hd166121166165%_
                            _%tl166122166167%_
                            _%e166123166170%_
                            _%hd166124166173%_
                            _%tl166125166175%_
                            _%e166126166178%_
                            _%hd166127166181%_
                            _%tl166128166183%_
                            _%__splice172573172574%_
                            _%target166129166186%_
                            _%tl166131166188%_)
                     (letrec ((_%loop166132166191%_
                               (lambda (_%hd166130166194%_
                                        _%rand166136166196%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd166130166194%_))
                                     (let ((_%e166133166198%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd166130166194%_))))
                                       (let ((_%lp-tl166135166203%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e166133166198%_)))
                                             (_%lp-hd166134166201%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e166133166198%_))))
                                         (_%loop166132166191%_
                                          _%lp-tl166135166203%_
                                          (cons _%lp-hd166134166201%_
                                                _%rand166136166196%_))))
                                     (let ((_%rand166137166206%_
                                            (reverse _%rand166136166196%_)))
                                       (_%__kont172571172572%_
                                        _%rand166137166206%_
                                        _%hd166127166181%_))))))
                       (_%loop166132166191%_ _%target166129166186%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172569172570%_))
                  (let ((_%e166117166154%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172569172570%_))))
                    (let ((_%tl166119166159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166117166154%_)))
                          (_%hd166118166157%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166117166154%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166119166159%_))
                          (let ((_%e166120166162%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166119166159%_))))
                            (let ((_%tl166122166167%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166120166162%_)))
                                  (_%hd166121166165%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166120166162%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166121166165%_))
                                  (let ((_%e166123166170%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166121166165%_))))
                                    (let ((_%tl166125166175%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166123166170%_)))
                                          (_%hd166124166173%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166123166170%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166124166173%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166124166173%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166125166175%_))
                                                  (let ((_%e166126166178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166125166175%_))))
                                                    (let ((_%tl166128166183%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166126166178%_)))
                                                          (_%hd166127166181%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166126166178%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166128166183%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl166122166167%_))
                      (let ((_%__splice172573172574%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl166122166167%_
                                '0))))
                        (let ((_%tl166131166188%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172573172574%_ '1)))
                              (_%target166129166186%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172573172574%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl166131166188%_))
                              (_%__match172614172615%_
                               _%e166117166154%_
                               _%hd166118166157%_
                               _%tl166119166159%_
                               _%e166120166162%_
                               _%hd166121166165%_
                               _%tl166122166167%_
                               _%e166123166170%_
                               _%hd166124166173%_
                               _%tl166125166175%_
                               _%e166126166178%_
                               _%hd166127166181%_
                               _%tl166128166183%_
                               _%__splice172573172574%_
                               _%target166129166186%_
                               _%tl166131166188%_)
                              (_%__kont172575172576%_))))
                      (_%__kont172575172576%_))
                  (_%__kont172575172576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172575172576%_))
                                              (_%__kont172575172576%_))
                                          (_%__kont172575172576%_))))
                                  (_%__kont172575172576%_))))
                          (_%__kont172575172576%_))))
                  (_%__kont172575172576%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self165921%_ _%stx165922%_)
        (letrec ((_%simplify165924%_
                  (lambda (_%code166009%_)
                    (let* ((_%code166010166028%_ _%code166009%_)
                           (_%else166012166036%_ (lambda () _%code166009%_))
                           (_%K166014166072%_
                            (lambda (_%expr166039%_ _%test166040%_)
                              (let* ((_%expr166041166049%_ _%expr166039%_)
                                     (_%else166043166057%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test166040%_
                                                    (cons _%expr166039%_
                                                          '())))))
                                     (_%K166045166062%_
                                      (lambda (_%exprs166060%_)
                                        (cons 'and
                                              (cons _%test166040%_
                                                    _%exprs166060%_)))))
                                (if (pair? _%expr166041166049%_)
                                    (let ((_%hd166046166065%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr166041166049%_)))
                                          (_%tl166047166067%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr166041166049%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd166046166065%_ 'and))
                                          (let ((_%exprs166070%_
                                                 _%tl166047166067%_))
                                            (_%K166045166062%_
                                             _%exprs166070%_))
                                          (_%else166043166057%_)))
                                    (_%else166043166057%_))))))
                      (if (pair? _%code166010166028%_)
                          (let ((_%hd166015166075%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code166010166028%_)))
                                (_%tl166016166077%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code166010166028%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd166015166075%_ 'if))
                                (if (pair? _%tl166016166077%_)
                                    (let ((_%hd166017166080%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl166016166077%_)))
                                          (_%tl166018166082%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl166016166077%_))))
                                      (let ((_%test166085%_
                                             _%hd166017166080%_))
                                        (if (pair? _%tl166018166082%_)
                                            (let ((_%hd166019166087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl166018166082%_)))
                                                  (_%tl166020166089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl166018166082%_))))
                                              (let ((_%expr166092%_
                                                     _%hd166019166087%_))
                                                (if (pair? _%tl166020166089%_)
                                                    (let ((_%hd166021166094%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl166020166089%_)))
                                                          (_%tl166022166096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl166020166089%_))))
                                                      (if (pair? _%hd166021166094%_)
                                                          (let ((_%hd166023166099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd166021166094%_)))
                        (_%tl166024166101%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd166021166094%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd166023166099%_ 'quote))
                        (if (pair? _%tl166024166101%_)
                            (let ((_%hd166025166104%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl166024166101%_)))
                                  (_%tl166026166106%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl166024166101%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd166025166104%_ '#f))
                                  (if (null? _%tl166026166106%_)
                                      (if (null? _%tl166022166096%_)
                                          (_%K166014166072%_
                                           _%expr166092%_
                                           _%test166085%_)
                                          (_%else166012166036%_))
                                      (_%else166012166036%_))
                                  (_%else166012166036%_)))
                            (_%else166012166036%_))
                        (_%else166012166036%_)))
                  (_%else166012166036%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else166012166036%_))))
                                            (_%else166012166036%_))))
                                    (_%else166012166036%_))
                                (_%else166012166036%_)))
                          (_%else166012166036%_))))))
          (let* ((_%g165926165947%_
                  (lambda (_%g165927165944%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165927165944%_))))
                 (_%g165925166006%_
                  (lambda (_%g165927165950%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165927165950%_))
                        (let ((_%e165931165952%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165927165950%_))))
                          (let ((_%hd165932165955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165931165952%_)))
                                (_%tl165933165957%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165931165952%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165933165957%_))
                                (let ((_%e165934165960%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165933165957%_))))
                                  (let ((_%hd165935165963%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165934165960%_)))
                                        (_%tl165936165965%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165934165960%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165936165965%_))
                                        (let ((_%e165937165968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165936165965%_))))
                                          (let ((_%hd165938165971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165937165968%_)))
                                                (_%tl165939165973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165937165968%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165939165973%_))
                                                (let ((_%e165940165976%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165939165973%_))))
                                                  (let ((_%hd165941165979%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165940165976%_)))
                                                        (_%tl165942165981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165940165976%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165942165981%_))
                                                        ((lambda (_%g165928165984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g165929165985%_
                          _%g165930165986%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify165924%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self165921%_
                                       _%g165930165986%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165921%_
                                             _%g165929165985%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self165921%_
                                                   _%g165928165984%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp173069
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self165921%_
                                               _%g165930165986%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp173069
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165921%_
                                            _%g165929165985%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165921%_
                                                  _%g165928165984%_))
                                               '()))))))
                 _%hd165941165979%_
                 _%hd165938165971%_
                 _%hd165935165963%_)
                (_%g165926165947%_ _%g165927165950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g165926165947%_
                                                 _%g165927165950%_))))
                                        (_%g165926165947%_
                                         _%g165927165950%_))))
                                (_%g165926165947%_ _%g165927165950%_))))
                        (_%g165926165947%_ _%g165927165950%_)))))
            (_%g165925166006%_ _%stx165922%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self165869%_ _%stx165870%_)
        (let* ((_%g165872165885%_
                (lambda (_%g165873165882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165873165882%_))))
               (_%g165871165918%_
                (lambda (_%g165873165888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165873165888%_))
                      (let ((_%e165875165890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165873165888%_))))
                        (let ((_%hd165876165893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165875165890%_)))
                              (_%tl165877165895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165875165890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165877165895%_))
                              (let ((_%e165878165898%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165877165895%_))))
                                (let ((_%hd165879165901%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165878165898%_)))
                                      (_%tl165880165903%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165878165898%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165880165903%_))
                                      ((lambda (_%g165874165906%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g165874165906%_)))
                                       _%hd165879165901%_)
                                      (_%g165872165885%_ _%g165873165888%_))))
                              (_%g165872165885%_ _%g165873165888%_))))
                      (_%g165872165885%_ _%g165873165888%_)))))
          (_%g165871165918%_ _%stx165870%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self165801%_ _%stx165802%_)
        (let* ((_%g165804165821%_
                (lambda (_%g165805165818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165805165818%_))))
               (_%g165803165866%_
                (lambda (_%g165805165824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165805165824%_))
                      (let ((_%e165808165826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165805165824%_))))
                        (let ((_%hd165809165829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165808165826%_)))
                              (_%tl165810165831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165808165826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165810165831%_))
                              (let ((_%e165811165834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165810165831%_))))
                                (let ((_%hd165812165837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165811165834%_)))
                                      (_%tl165813165839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165811165834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165813165839%_))
                                      (let ((_%e165814165842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165813165839%_))))
                                        (let ((_%hd165815165845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165814165842%_)))
                                              (_%tl165816165847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165814165842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165816165847%_))
                                              ((lambda (_%g165806165850%_
                                                        _%g165807165851%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g165807165851%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self165801%_
                              _%g165806165850%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165815165845%_
                                               _%hd165812165837%_)
                                              (_%g165804165821%_
                                               _%g165805165824%_))))
                                      (_%g165804165821%_ _%g165805165824%_))))
                              (_%g165804165821%_ _%g165805165824%_))))
                      (_%g165804165821%_ _%g165805165824%_)))))
          (_%g165803165866%_ _%stx165802%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self165612%_ _%stx165613%_)
        (let* ((_%g165615165632%_
                (lambda (_%g165616165629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165616165629%_))))
               (_%g165614165798%_
                (lambda (_%g165616165635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165616165635%_))
                      (let ((_%e165619165637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165616165635%_))))
                        (let ((_%hd165620165640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165619165637%_)))
                              (_%tl165621165642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165619165637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165621165642%_))
                              (let ((_%e165622165645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165621165642%_))))
                                (let ((_%hd165623165648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165622165645%_)))
                                      (_%tl165624165650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165622165645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165624165650%_))
                                      (let ((_%e165625165653%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165624165650%_))))
                                        (let ((_%hd165626165656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165625165653%_)))
                                              (_%tl165627165658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165625165653%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165627165658%_))
                                              ((lambda (_%g165617165661%_
                                                        _%g165618165662%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165612%_ _%g165617165661%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165612%_
                                  _%g165618165662%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165677%_ ((_%rest165680%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165618165662%_
                                       (cons _%g165617165661%_ '())))
                                (_%bind165682%_ '())
                                (_%args165683%_ '()))
               (let* ((_%rest165684165692%_ _%rest165680%_)
                      (_%else165686165700%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165682%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args165683%_)
                                                 '()))))))
                      (_%K165688165786%_
                       (lambda (_%rest165703%_ _%e165704%_)
                         (let* ((_%__stx172617172618%_ _%e165704%_)
                                (_%g165709165727%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172617172618%_)))))
                           (let ((_%__kont172619172620%_
                                  (lambda ()
                                    (_%lp165677%_
                                     _%rest165703%_
                                     _%bind165682%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165704%_))
                                           _%args165683%_))))
                                 (_%__kont172621172622%_
                                  (lambda ()
                                    (_%lp165677%_
                                     _%rest165703%_
                                     _%bind165682%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165704%_))
                                           _%args165683%_))))
                                 (_%__kont172623172624%_
                                  (lambda ()
                                    (let ((_%tmp165734%_
                                           (let ((__tmp173070
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173070))))
                                      (_%lp165677%_
                                       _%rest165703%_
                                       (cons (cons _%tmp165734%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165704%_))
                                                         '()))
                                             _%bind165682%_)
                                       (cons _%tmp165734%_ _%args165683%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172617172618%_))
                                 (let ((_%e165711165765%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172617172618%_))))
                                   (let ((_%tl165713165770%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165711165765%_)))
                                         (_%hd165712165768%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165711165765%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165712165768%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165712165768%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165713165770%_))
                                                 (let ((_%e165714165773%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165713165770%_))))
                                                   (let ((_%tl165716165778%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165714165773%_)))
                                                         (_%hd165715165776%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165714165773%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165716165778%_))
                                                         (_%__kont172619172620%_)
                                                         (_%__kont172623172624%_))))
                                                 (_%__kont172623172624%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165712165768%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165713165770%_))
                                                     (let ((_%e165720165750%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165713165770%_))))
                                                       (let ((_%tl165722165755%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165720165750%_)))
                     (_%hd165721165753%_
                      (let () (declare (not safe)) (##car _%e165720165750%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165722165755%_))
                     (_%__kont172621172622%_)
                     (_%__kont172623172624%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172623172624%_))
                                                 (_%__kont172623172624%_)))
                                         (_%__kont172623172624%_))))
                                 (_%__kont172623172624%_)))))))
                 (if (pair? _%rest165684165692%_)
                     (let ((_%hd165689165789%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165684165692%_)))
                           (_%tl165690165791%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165684165692%_))))
                       (let* ((_%e165794%_ _%hd165689165789%_)
                              (_%rest165796%_ _%tl165690165791%_))
                         (_%K165688165786%_ _%rest165796%_ _%e165794%_)))
                     (_%else165686165700%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165626165656%_
                                               _%hd165623165648%_)
                                              (_%g165615165632%_
                                               _%g165616165635%_))))
                                      (_%g165615165632%_ _%g165616165635%_))))
                              (_%g165615165632%_ _%g165616165635%_))))
                      (_%g165615165632%_ _%g165616165635%_)))))
          (_%g165614165798%_ _%stx165613%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self165423%_ _%stx165424%_)
        (let* ((_%g165426165443%_
                (lambda (_%g165427165440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165427165440%_))))
               (_%g165425165609%_
                (lambda (_%g165427165446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165427165446%_))
                      (let ((_%e165430165448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165427165446%_))))
                        (let ((_%hd165431165451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165430165448%_)))
                              (_%tl165432165453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165430165448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165432165453%_))
                              (let ((_%e165433165456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165432165453%_))))
                                (let ((_%hd165434165459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165433165456%_)))
                                      (_%tl165435165461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165433165456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165435165461%_))
                                      (let ((_%e165436165464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165435165461%_))))
                                        (let ((_%hd165437165467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165436165464%_)))
                                              (_%tl165438165469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165436165464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165438165469%_))
                                              ((lambda (_%g165428165472%_
                                                        _%g165429165473%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165423%_ _%g165428165472%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165423%_
                                  _%g165429165473%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165488%_ ((_%rest165491%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165429165473%_
                                       (cons _%g165428165472%_ '())))
                                (_%bind165493%_ '())
                                (_%args165494%_ '()))
               (let* ((_%rest165495165503%_ _%rest165491%_)
                      (_%else165497165511%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165493%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args165494%_)
                                                 '()))))))
                      (_%K165499165597%_
                       (lambda (_%rest165514%_ _%e165515%_)
                         (let* ((_%__stx172663172664%_ _%e165515%_)
                                (_%g165520165538%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172663172664%_)))))
                           (let ((_%__kont172665172666%_
                                  (lambda ()
                                    (_%lp165488%_
                                     _%rest165514%_
                                     _%bind165493%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165515%_))
                                           _%args165494%_))))
                                 (_%__kont172667172668%_
                                  (lambda ()
                                    (_%lp165488%_
                                     _%rest165514%_
                                     _%bind165493%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165515%_))
                                           _%args165494%_))))
                                 (_%__kont172669172670%_
                                  (lambda ()
                                    (let ((_%tmp165545%_
                                           (let ((__tmp173071
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173071))))
                                      (_%lp165488%_
                                       _%rest165514%_
                                       (cons (cons _%tmp165545%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165515%_))
                                                         '()))
                                             _%bind165493%_)
                                       (cons _%tmp165545%_ _%args165494%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172663172664%_))
                                 (let ((_%e165522165576%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172663172664%_))))
                                   (let ((_%tl165524165581%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165522165576%_)))
                                         (_%hd165523165579%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165522165576%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165523165579%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165523165579%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165524165581%_))
                                                 (let ((_%e165525165584%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165524165581%_))))
                                                   (let ((_%tl165527165589%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165525165584%_)))
                                                         (_%hd165526165587%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165525165584%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165527165589%_))
                                                         (_%__kont172665172666%_)
                                                         (_%__kont172669172670%_))))
                                                 (_%__kont172669172670%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165523165579%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165524165581%_))
                                                     (let ((_%e165531165561%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165524165581%_))))
                                                       (let ((_%tl165533165566%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165531165561%_)))
                     (_%hd165532165564%_
                      (let () (declare (not safe)) (##car _%e165531165561%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165533165566%_))
                     (_%__kont172667172668%_)
                     (_%__kont172669172670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172669172670%_))
                                                 (_%__kont172669172670%_)))
                                         (_%__kont172669172670%_))))
                                 (_%__kont172669172670%_)))))))
                 (if (pair? _%rest165495165503%_)
                     (let ((_%hd165500165600%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165495165503%_)))
                           (_%tl165501165602%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165495165503%_))))
                       (let* ((_%e165605%_ _%hd165500165600%_)
                              (_%rest165607%_ _%tl165501165602%_))
                         (_%K165499165597%_ _%rest165607%_ _%e165605%_)))
                     (_%else165497165511%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165437165467%_
                                               _%hd165434165459%_)
                                              (_%g165426165443%_
                                               _%g165427165446%_))))
                                      (_%g165426165443%_ _%g165427165446%_))))
                              (_%g165426165443%_ _%g165427165446%_))))
                      (_%g165426165443%_ _%g165427165446%_)))))
          (_%g165425165609%_ _%stx165424%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self165339%_ _%stx165340%_)
        (let* ((_%g165342165363%_
                (lambda (_%g165343165360%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165343165360%_))))
               (_%g165341165420%_
                (lambda (_%g165343165366%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165343165366%_))
                      (let ((_%e165347165368%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165343165366%_))))
                        (let ((_%hd165348165371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165347165368%_)))
                              (_%tl165349165373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165347165368%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165349165373%_))
                              (let ((_%e165350165376%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165349165373%_))))
                                (let ((_%hd165351165379%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165350165376%_)))
                                      (_%tl165352165381%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165350165376%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165352165381%_))
                                      (let ((_%e165353165384%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165352165381%_))))
                                        (let ((_%hd165354165387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165353165384%_)))
                                              (_%tl165355165389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165353165384%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165355165389%_))
                                              (let ((_%e165356165392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165355165389%_))))
                                                (let ((_%hd165357165395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165356165392%_)))
                                                      (_%tl165358165397%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165356165392%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165358165397%_))
                                                      ((lambda (_%g165344165400%_
                                                                _%g165345165401%_
                                                                _%g165346165402%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165339%_
                                _%g165344165400%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165339%_
                                      _%g165345165401%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165339%_
                                            _%g165346165402%_))
                                         (cons ''#f '()))))))
               _%hd165357165395%_
               _%hd165354165387%_
               _%hd165351165379%_)
              (_%g165342165363%_ _%g165343165366%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165342165363%_
                                               _%g165343165366%_))))
                                      (_%g165342165363%_ _%g165343165366%_))))
                              (_%g165342165363%_ _%g165343165366%_))))
                      (_%g165342165363%_ _%g165343165366%_)))))
          (_%g165341165420%_ _%stx165340%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self165239%_ _%stx165240%_)
        (let* ((_%g165242165267%_
                (lambda (_%g165243165264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165243165264%_))))
               (_%g165241165336%_
                (lambda (_%g165243165270%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165243165270%_))
                      (let ((_%e165248165272%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165243165270%_))))
                        (let ((_%hd165249165275%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165248165272%_)))
                              (_%tl165250165277%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165248165272%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165250165277%_))
                              (let ((_%e165251165280%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165250165277%_))))
                                (let ((_%hd165252165283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165251165280%_)))
                                      (_%tl165253165285%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165251165280%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165253165285%_))
                                      (let ((_%e165254165288%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165253165285%_))))
                                        (let ((_%hd165255165291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165254165288%_)))
                                              (_%tl165256165293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165254165288%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165256165293%_))
                                              (let ((_%e165257165296%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165256165293%_))))
                                                (let ((_%hd165258165299%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165257165296%_)))
                                                      (_%tl165259165301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165257165296%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165259165301%_))
                                                      (let ((_%e165260165304%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165259165301%_))))
                (let ((_%hd165261165307%_
                       (let () (declare (not safe)) (##car _%e165260165304%_)))
                      (_%tl165262165309%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165260165304%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165262165309%_))
                      ((lambda (_%g165244165312%_
                                _%g165245165313%_
                                _%g165246165314%_
                                _%g165247165315%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165239%_
                                        _%g165245165313%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165239%_
                                              _%g165244165312%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165239%_
                                                    _%g165246165314%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165239%_
                                                          _%g165247165315%_))
                                                       (cons ''#f '())))))))
                       _%hd165261165307%_
                       _%hd165258165299%_
                       _%hd165255165291%_
                       _%hd165252165283%_)
                      (_%g165242165267%_ _%g165243165270%_))))
              (_%g165242165267%_ _%g165243165270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165242165267%_
                                               _%g165243165270%_))))
                                      (_%g165242165267%_ _%g165243165270%_))))
                              (_%g165242165267%_ _%g165243165270%_))))
                      (_%g165242165267%_ _%g165243165270%_)))))
          (_%g165241165336%_ _%stx165240%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self165155%_ _%stx165156%_)
        (let* ((_%g165158165179%_
                (lambda (_%g165159165176%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165159165176%_))))
               (_%g165157165236%_
                (lambda (_%g165159165182%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165159165182%_))
                      (let ((_%e165163165184%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165159165182%_))))
                        (let ((_%hd165164165187%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165163165184%_)))
                              (_%tl165165165189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165163165184%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165165165189%_))
                              (let ((_%e165166165192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165165165189%_))))
                                (let ((_%hd165167165195%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165166165192%_)))
                                      (_%tl165168165197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165166165192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165168165197%_))
                                      (let ((_%e165169165200%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165168165197%_))))
                                        (let ((_%hd165170165203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165169165200%_)))
                                              (_%tl165171165205%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165169165200%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165171165205%_))
                                              (let ((_%e165172165208%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165171165205%_))))
                                                (let ((_%hd165173165211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165172165208%_)))
                                                      (_%tl165174165213%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165172165208%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165174165213%_))
                                                      ((lambda (_%g165160165216%_
                                                                _%g165161165217%_
                                                                _%g165162165218%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165155%_
                                _%g165160165216%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165155%_
                                      _%g165161165217%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165155%_
                                            _%g165162165218%_))
                                         (cons ''#f '()))))))
               _%hd165173165211%_
               _%hd165170165203%_
               _%hd165167165195%_)
              (_%g165158165179%_ _%g165159165182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165158165179%_
                                               _%g165159165182%_))))
                                      (_%g165158165179%_ _%g165159165182%_))))
                              (_%g165158165179%_ _%g165159165182%_))))
                      (_%g165158165179%_ _%g165159165182%_)))))
          (_%g165157165236%_ _%stx165156%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self165055%_ _%stx165056%_)
        (let* ((_%g165058165083%_
                (lambda (_%g165059165080%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165059165080%_))))
               (_%g165057165152%_
                (lambda (_%g165059165086%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165059165086%_))
                      (let ((_%e165064165088%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165059165086%_))))
                        (let ((_%hd165065165091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165064165088%_)))
                              (_%tl165066165093%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165064165088%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165066165093%_))
                              (let ((_%e165067165096%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165066165093%_))))
                                (let ((_%hd165068165099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165067165096%_)))
                                      (_%tl165069165101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165067165096%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165069165101%_))
                                      (let ((_%e165070165104%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165069165101%_))))
                                        (let ((_%hd165071165107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165070165104%_)))
                                              (_%tl165072165109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165070165104%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165072165109%_))
                                              (let ((_%e165073165112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165072165109%_))))
                                                (let ((_%hd165074165115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165073165112%_)))
                                                      (_%tl165075165117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165073165112%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165075165117%_))
                                                      (let ((_%e165076165120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165075165117%_))))
                (let ((_%hd165077165123%_
                       (let () (declare (not safe)) (##car _%e165076165120%_)))
                      (_%tl165078165125%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165076165120%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165078165125%_))
                      ((lambda (_%g165060165128%_
                                _%g165061165129%_
                                _%g165062165130%_
                                _%g165063165131%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165055%_
                                        _%g165061165129%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165055%_
                                              _%g165060165128%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165055%_
                                                    _%g165062165130%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165055%_
                                                          _%g165063165131%_))
                                                       (cons ''#f '())))))))
                       _%hd165077165123%_
                       _%hd165074165115%_
                       _%hd165071165107%_
                       _%hd165068165099%_)
                      (_%g165058165083%_ _%g165059165086%_))))
              (_%g165058165083%_ _%g165059165086%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165058165083%_
                                               _%g165059165086%_))))
                                      (_%g165058165083%_ _%g165059165086%_))))
                              (_%g165058165083%_ _%g165059165086%_))))
                      (_%g165058165083%_ _%g165059165086%_)))))
          (_%g165057165152%_ _%stx165056%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self164850%_ _%stx164851%_)
        (let* ((_%g164853164874%_
                (lambda (_%g164854164871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164854164871%_))))
               (_%g164852165052%_
                (lambda (_%g164854164877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164854164877%_))
                      (let ((_%e164858164879%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164854164877%_))))
                        (let ((_%hd164859164882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164858164879%_)))
                              (_%tl164860164884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164858164879%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164860164884%_))
                              (let ((_%e164861164887%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164860164884%_))))
                                (let ((_%hd164862164890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164861164887%_)))
                                      (_%tl164863164892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164861164887%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164863164892%_))
                                      (let ((_%e164864164895%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164863164892%_))))
                                        (let ((_%hd164865164898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164864164895%_)))
                                              (_%tl164866164900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164864164895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164866164900%_))
                                              (let ((_%e164867164903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164866164900%_))))
                                                (let ((_%hd164868164906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164867164903%_)))
                                                      (_%tl164869164908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164867164903%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164869164908%_))
                                                      ((lambda (_%g164855164911%_
                                                                _%g164856164912%_
                                                                _%g164857164913%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self164850%_
                                    _%g164855164911%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self164850%_
                                          _%g164856164912%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp164931%_ ((_%rest164934%_
                                         (cons _%g164856164912%_
                                               (cons _%g164855164911%_ '())))
                                        (_%bind164936%_ '())
                                        (_%args164937%_ '()))
                       (let* ((_%rest164938164946%_ _%rest164934%_)
                              (_%else164940164954%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind164936%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp173072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp173072 _%args164937%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K164942165040%_
                               (lambda (_%rest164957%_ _%e164958%_)
                                 (let* ((_%__stx172709172710%_ _%e164958%_)
                                        (_%g164963164981%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172709172710%_)))))
                                   (let ((_%__kont172711172712%_
                                          (lambda ()
                                            (_%lp164931%_
                                             _%rest164957%_
                                             _%bind164936%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164958%_))
                                                   _%args164937%_))))
                                         (_%__kont172713172714%_
                                          (lambda ()
                                            (_%lp164931%_
                                             _%rest164957%_
                                             _%bind164936%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164958%_))
                                                   _%args164937%_))))
                                         (_%__kont172715172716%_
                                          (lambda ()
                                            (let ((_%tmp164988%_
                                                   (let ((__tmp173073
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp173073))))
                                              (_%lp164931%_
                                               _%rest164957%_
                                               (cons (cons _%tmp164988%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e164958%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind164936%_)
                                               (cons _%tmp164988%_
                                                     _%args164937%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172709172710%_))
                                         (let ((_%e164965165019%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172709172710%_))))
                                           (let ((_%tl164967165024%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e164965165019%_)))
                                                 (_%hd164966165022%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e164965165019%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd164966165022%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd164966165022%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl164967165024%_))
                                                         (let ((_%e164968165027%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl164967165024%_))))
                   (let ((_%tl164970165032%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e164968165027%_)))
                         (_%hd164969165030%_
                          (let ()
                            (declare (not safe))
                            (##car _%e164968165027%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl164970165032%_))
                         (_%__kont172711172712%_)
                         (_%__kont172715172716%_))))
                 (_%__kont172715172716%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd164966165022%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164967165024%_))
                     (let ((_%e164974165004%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164967165024%_))))
                       (let ((_%tl164976165009%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164974165004%_)))
                             (_%hd164975165007%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164974165004%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164976165009%_))
                             (_%__kont172713172714%_)
                             (_%__kont172715172716%_))))
                     (_%__kont172715172716%_))
                 (_%__kont172715172716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172715172716%_))))
                                         (_%__kont172715172716%_)))))))
                         (if (pair? _%rest164938164946%_)
                             (let ((_%hd164943165043%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest164938164946%_)))
                                   (_%tl164944165045%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest164938164946%_))))
                               (let* ((_%e165048%_ _%hd164943165043%_)
                                      (_%rest165050%_ _%tl164944165045%_))
                                 (_%K164942165040%_
                                  _%rest165050%_
                                  _%e165048%_)))
                             (_%else164940164954%_))))))
               _%hd164868164906%_
               _%hd164865164898%_
               _%hd164862164890%_)
              (_%g164853164874%_ _%g164854164877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164853164874%_
                                               _%g164854164877%_))))
                                      (_%g164853164874%_ _%g164854164877%_))))
                              (_%g164853164874%_ _%g164854164877%_))))
                      (_%g164853164874%_ _%g164854164877%_)))))
          (_%g164852165052%_ _%stx164851%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self164629%_ _%stx164630%_)
        (let* ((_%g164632164657%_
                (lambda (_%g164633164654%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164633164654%_))))
               (_%g164631164847%_
                (lambda (_%g164633164660%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164633164660%_))
                      (let ((_%e164638164662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164633164660%_))))
                        (let ((_%hd164639164665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164638164662%_)))
                              (_%tl164640164667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164638164662%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164640164667%_))
                              (let ((_%e164641164670%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164640164667%_))))
                                (let ((_%hd164642164673%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164641164670%_)))
                                      (_%tl164643164675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164641164670%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164643164675%_))
                                      (let ((_%e164644164678%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164643164675%_))))
                                        (let ((_%hd164645164681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164644164678%_)))
                                              (_%tl164646164683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164644164678%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164646164683%_))
                                              (let ((_%e164647164686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164646164683%_))))
                                                (let ((_%hd164648164689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164647164686%_)))
                                                      (_%tl164649164691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164647164686%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164649164691%_))
                                                      (let ((_%e164650164694%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164649164691%_))))
                (let ((_%hd164651164697%_
                       (let () (declare (not safe)) (##car _%e164650164694%_)))
                      (_%tl164652164699%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164650164694%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164652164699%_))
                      ((lambda (_%g164634164702%_
                                _%g164635164703%_
                                _%g164636164704%_
                                _%g164637164705%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164629%_
                                            _%g164635164703%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164629%_
                                                  _%g164634164702%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164629%_
                                                        _%g164636164704%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp164726%_ ((_%rest164729%_
                                                 (cons _%g164636164704%_
                                                       (cons _%g164634164702%_
                                                             (cons _%g164635164703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind164731%_ '())
                                                (_%args164732%_ '()))
                               (let* ((_%rest164733164741%_ _%rest164729%_)
                                      (_%else164735164749%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind164731%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp173074 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp173074 _%args164732%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K164737164835%_
                                       (lambda (_%rest164752%_ _%e164753%_)
                                         (let* ((_%__stx172755172756%_
                                                 _%e164753%_)
                                                (_%g164758164776%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx172755172756%_)))))
                                           (let ((_%__kont172757172758%_
                                                  (lambda ()
                                                    (_%lp164726%_
                                                     _%rest164752%_
                                                     _%bind164731%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164753%_))
                                                           _%args164732%_))))
                                                 (_%__kont172759172760%_
                                                  (lambda ()
                                                    (_%lp164726%_
                                                     _%rest164752%_
                                                     _%bind164731%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164753%_))
                                                           _%args164732%_))))
                                                 (_%__kont172761172762%_
                                                  (lambda ()
                                                    (let ((_%tmp164783%_
                                                           (let ((__tmp173075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp173075))))
              (_%lp164726%_
               _%rest164752%_
               (cons (cons _%tmp164783%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e164753%_))
                                 '()))
                     _%bind164731%_)
               (cons _%tmp164783%_ _%args164732%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx172755172756%_))
                                                 (let ((_%e164760164814%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx172755172756%_))))
                                                   (let ((_%tl164762164819%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164760164814%_)))
                                                         (_%hd164761164817%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164760164814%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd164761164817%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd164761164817%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164762164819%_))
                         (let ((_%e164763164822%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164762164819%_))))
                           (let ((_%tl164765164827%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164763164822%_)))
                                 (_%hd164764164825%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164763164822%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164765164827%_))
                                 (_%__kont172757172758%_)
                                 (_%__kont172761172762%_))))
                         (_%__kont172761172762%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd164761164817%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl164762164819%_))
                             (let ((_%e164769164799%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl164762164819%_))))
                               (let ((_%tl164771164804%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e164769164799%_)))
                                     (_%hd164770164802%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e164769164799%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl164771164804%_))
                                     (_%__kont172759172760%_)
                                     (_%__kont172761172762%_))))
                             (_%__kont172761172762%_))
                         (_%__kont172761172762%_)))
                 (_%__kont172761172762%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172761172762%_)))))))
                                 (if (pair? _%rest164733164741%_)
                                     (let ((_%hd164738164838%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest164733164741%_)))
                                           (_%tl164739164840%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest164733164741%_))))
                                       (let* ((_%e164843%_ _%hd164738164838%_)
                                              (_%rest164845%_
                                               _%tl164739164840%_))
                                         (_%K164737164835%_
                                          _%rest164845%_
                                          _%e164843%_)))
                                     (_%else164735164749%_))))))
                       _%hd164651164697%_
                       _%hd164648164689%_
                       _%hd164645164681%_
                       _%hd164642164673%_)
                      (_%g164632164657%_ _%g164633164660%_))))
              (_%g164632164657%_ _%g164633164660%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164632164657%_
                                               _%g164633164660%_))))
                                      (_%g164632164657%_ _%g164633164660%_))))
                              (_%g164632164657%_ _%g164633164660%_))))
                      (_%g164632164657%_ _%g164633164660%_)))))
          (_%g164631164847%_ _%stx164630%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self164468%_ _%stx164469%_)
        (letrec ((_%import-set-template164471%_
                  (lambda (_%in164574%_ _%phi164575%_)
                    (let ((_%iphi164577%_
                           (fx+ _%phi164575%_
                                (##direct-structure-ref
                                 _%in164574%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports164578%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in164574%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp164580%_ ((_%rest164582%_ _%imports164578%_)
                                         (_%r164583%_ '()))
                        (let* ((_%rest164584164592%_ _%rest164582%_)
                               (_%else164586164600%_ (lambda () _%r164583%_))
                               (_%K164588164617%_
                                (lambda (_%rest164603%_ _%in164604%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in164604%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi164577%_))
                                          (_%lp164580%_
                                           _%rest164603%_
                                           (cons _%in164604%_ _%r164583%_))
                                          (_%lp164580%_
                                           _%rest164603%_
                                           _%r164583%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in164604%_
                                             'gx#module-import::t))
                                          (let ((_%iphi164608%_
                                                 (fx+ _%phi164575%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in164604%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi164608%_))
                                                (_%lp164580%_
                                                 _%rest164603%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in164604%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r164583%_))
                                                (_%lp164580%_
                                                 _%rest164603%_
                                                 _%r164583%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in164604%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi164611%_
                                                     (fx+ _%iphi164577%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in164604%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi164611%_))
                                                    (_%lp164580%_
                                                     _%rest164603%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in164604%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r164583%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi164611%_))
                                                        (_%lp164580%_
                                                         _%rest164603%_
                                                         (let ((__tmp173076
                                                                (_%import-set-template164471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in164604%_
                         _%iphi164577%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r164583%_ __tmp173076)))
                (_%lp164580%_ _%rest164603%_ _%r164583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp164580%_
                                               _%rest164603%_
                                               _%r164583%_)))))))
                          (if (pair? _%rest164584164592%_)
                              (let ((_%hd164589164620%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164584164592%_)))
                                    (_%tl164590164622%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164584164592%_))))
                                (let* ((_%in164625%_ _%hd164589164620%_)
                                       (_%rest164627%_ _%tl164590164622%_))
                                  (_%K164588164617%_
                                   _%rest164627%_
                                   _%in164625%_)))
                              (_%else164586164600%_))))))))
          (let* ((_%g164473164483%_
                  (lambda (_%g164474164480%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164474164480%_))))
                 (_%g164472164571%_
                  (lambda (_%g164474164486%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164474164486%_))
                        (let ((_%e164476164488%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164474164486%_))))
                          (let ((_%hd164477164491%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164476164488%_)))
                                (_%tl164478164493%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164476164488%_))))
                            ((lambda (_%g164475164496%_)
                               (let ((_%ht164507%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp164509%_ ((_%rest164511%_
                                                     _%g164475164496%_)
                                                    (_%loads164512%_ '()))
                                   (letrec ((_%K164514%_
                                             (lambda (_%ctx164564%_
                                                      _%rest164565%_)
                                               (let ((_%id164567%_
                                                      (##structure-ref
                                                       _%ctx164564%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht164507%_
                                                        _%id164567%_))
                                                     (_%lp164509%_
                                                      _%rest164565%_
                                                      _%loads164512%_)
                                                     (let ((_%rt164569%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id164567%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht164507%_
                                                          _%id164567%_
                                                          _%rt164569%_))
                                                       (_%lp164509%_
                                                        _%rest164565%_
                                                        (cons _%rt164569%_
                                                              _%loads164512%_))))))))
                                     (let* ((_%rest164515164523%_
                                             _%rest164511%_)
                                            (_%else164517164535%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp173078
                                                            (lambda (_%g164530164532%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g164530164532%_)))
                   (__tmp173077 (reverse _%loads164512%_)))
               (declare (not safe))
               (##map __tmp173078 __tmp173077)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K164519164552%_
                                             (lambda (_%rest164538%_
                                                      _%in164539%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in164539%_
                                                      'gx#module-context::t))
                                                   (_%K164514%_
                                                    _%in164539%_
                                                    _%rest164538%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in164539%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in164539%_
                               '3
                               '#f
                               '#f)))
                   (_%K164514%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in164539%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest164538%_)
                   (_%lp164509%_ _%rest164538%_ _%loads164512%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in164539%_
                      'gx#import-set::t))
                   (let ((_%phi164544%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164539%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi164544%_)
                         (_%K164514%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164539%_
                             '1
                             '#f
                             '#f))
                          _%rest164538%_)
                         (if (fxpositive? _%phi164544%_)
                             (let ((_%deps164548%_
                                    (_%import-set-template164471%_
                                     _%in164539%_
                                     '0)))
                               (_%lp164509%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest164538%_
                                   _%deps164548%_))
                                _%loads164512%_))
                             (_%lp164509%_ _%rest164538%_ _%loads164512%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx164469%_
                      _%in164539%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest164515164523%_)
                                           (let ((_%hd164520164555%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest164515164523%_)))
                                                 (_%tl164521164557%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest164515164523%_))))
                                             (let* ((_%in164560%_
                                                     _%hd164520164555%_)
                                                    (_%rest164562%_
                                                     _%tl164521164557%_))
                                               (_%K164519164552%_
                                                _%rest164562%_
                                                _%in164560%_)))
                                           (_%else164517164535%_)))))))
                             _%tl164478164493%_)))
                        (_%g164473164483%_ _%g164474164486%_)))))
            (_%g164472164571%_ _%stx164469%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self164282%_ _%stx164283%_)
        (letrec ((_%add-lift!164285%_
                  (lambda (_%expr164466%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr164466%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote164286%_
                  (lambda (_%id164463%_ _%marks164464%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id164463%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks164464%_
                                                        '()))))))))
                 (_%generate-simple164287%_
                  (lambda (_%stxq164458%_)
                    (let ((_%gid164460%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid164461%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq164458%_))))
                      (_%add-lift!164285%_
                       (cons 'define
                             (cons _%gid164460%_
                                   (cons (_%generate-syntax-quote164286%_
                                          _%qid164461%_
                                          ''())
                                         '()))))
                      (let ((__tmp173079
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173079 _%stxq164458%_ _%gid164460%_))
                      _%gid164460%_)))
                 (_%generate-serialized164288%_
                  (lambda (_%stxq164448%_ _%marks164449%_)
                    (let* ((_%mark-refs164451%_
                            (map _%generate-mark164289%_ _%marks164449%_))
                           (_%gid164453%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid164455%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq164448%_))))
                      (_%add-lift!164285%_
                       (cons 'define
                             (cons _%gid164453%_
                                   (cons (_%generate-syntax-quote164286%_
                                          _%qid164455%_
                                          (cons 'list _%mark-refs164451%_))
                                         '()))))
                      (let ((__tmp173080
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173080 _%stxq164448%_ _%gid164453%_))
                      _%gid164453%_)))
                 (_%generate-mark164289%_
                  (lambda (_%mark164433%_)
                    (let ((_%$e164435%_
                           (let ((__tmp173081
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp173081 _%mark164433%_))))
                      (if _%$e164435%_
                          _%$e164435%_
                          (let* ((_%gid164439%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr164441%_
                                  (_%serialize-mark164290%_ _%mark164433%_))
                                 (_%ctx164443%_
                                  (let ((__tmp173082
                                         (##structure-ref
                                          _%mark164433%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp173082)))
                                 (_%ctx-ref164445%_
                                  (if (eq? _%ctx164443%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref164291%_
                                                               _%ctx164443%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp173083
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp173083
                               _%mark164433%_
                               _%gid164439%_))
                            (_%add-lift!164285%_
                             (cons 'define
                                   (cons _%gid164439%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr164441%_ '()))
                   (cons _%ctx-ref164445%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid164439%_)))))
                 (_%serialize-mark164290%_
                  (lambda (_%mark164381%_)
                    (letrec ((_%quote-e164383%_
                              (lambda (_%sym164431%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym164431%_))
                                    _%sym164431%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym164431%_))))))
                      (let* ((_%mark164384164393%_ _%mark164381%_)
                             (_%E164386164396%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark164384164393%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K164387164408%_
                              (lambda (_%trace164399%_
                                       _%phi164400%_
                                       _%ctx164401%_
                                       _%subst164402%_)
                                (let ((_%subs164404%_
                                       (if _%subst164402%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst164402%_))
                                           '())))
                                  (cons _%phi164400%_
                                        (let ((__tmp173084
                                               (lambda (_%pair164406%_)
                                                 (cons (_%quote-e164383%_
                                                        (car _%pair164406%_))
                                                       (_%quote-e164383%_
                                                        (cdr _%pair164406%_))))))
                                          (declare (not safe))
                                          (##map __tmp173084
                                                 _%subs164404%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark164384164393%_
                               'gx#expander-mark::t))
                            (let* ((_%e164388164411%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164384164393%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst164414%_ _%e164388164411%_)
                                   (_%e164389164416%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164384164393%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx164419%_ _%e164389164416%_)
                                   (_%e164390164421%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164384164393%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi164424%_ _%e164390164421%_)
                                   (_%e164391164426%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164384164393%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace164429%_ _%e164391164426%_))
                              (_%K164387164408%_
                               _%trace164429%_
                               _%phi164424%_
                               _%ctx164419%_
                               _%subst164414%_))
                            (_%E164386164396%_))))))
                 (_%context-ref164291%_
                  (lambda (_%ctx164368%_)
                    (if (let ((__tmp173085
                               (##structure-ref
                                _%ctx164368%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp173085
                           'gx#module-context::t))
                        (let ((_%ctx-ref164370%_
                               (_%context-ref-nested164293%_ _%ctx164368%_))
                              (_%ctx-origin164371%_
                               (_%context-ref-origin164292%_ _%ctx164368%_))
                              (_%origin164372%_
                               (_%context-ref-origin164292%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin164372%_ _%ctx-origin164371%_)
                              (let ((_%ref164374%_
                                     (_%context-ref-nested164293%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp164376%_ ((_%ref164378%_
                                                    (cdr _%ref164374%_))
                                                   (_%ctx-ref164379%_
                                                    (cdr _%ctx-ref164370%_)))
                                  (if (and (pair? _%ref164378%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref164378%_))
                                                (car _%ctx-ref164379%_)))
                                      (_%lp164376%_
                                       (cdr _%ref164378%_)
                                       (cdr _%ctx-ref164379%_))
                                      (cons '#f _%ctx-ref164379%_))))
                              _%ctx-ref164370%_))
                        (let ((__tmp173086
                               (##structure-ref
                                _%ctx164368%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp173086)))))
                 (_%context-ref-origin164292%_
                  (lambda (_%ctx164360%_)
                    (let _%lp164362%_ ((_%ctx164364%_ _%ctx164360%_))
                      (let ((_%super164366%_
                             (##structure-ref
                              _%ctx164364%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164366%_
                               'gx#module-context::t))
                            (_%lp164362%_ _%super164366%_)
                            _%ctx164364%_)))))
                 (_%context-ref-nested164293%_
                  (lambda (_%ctx164351%_)
                    (let _%lp164353%_ ((_%ctx164355%_ _%ctx164351%_)
                                       (_%r164356%_ '()))
                      (let ((_%super164358%_
                             (##structure-ref
                              _%ctx164355%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164358%_
                               'gx#module-context::t))
                            (_%lp164353%_
                             _%super164358%_
                             (cons (car (##structure-ref
                                         _%ctx164355%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r164356%_))
                            (cons (let ((__tmp173087
                                         (##structure-ref
                                          _%ctx164355%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp173087))
                                  _%r164356%_)))))))
          (let* ((_%g164295164308%_
                  (lambda (_%g164296164305%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164296164305%_))))
                 (_%g164294164348%_
                  (lambda (_%g164296164311%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164296164311%_))
                        (let ((_%e164298164313%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164296164311%_))))
                          (let ((_%hd164299164316%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164298164313%_)))
                                (_%tl164300164318%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164298164313%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164300164318%_))
                                (let ((_%e164301164321%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164300164318%_))))
                                  (let ((_%hd164302164324%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164301164321%_)))
                                        (_%tl164303164326%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164301164321%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164303164326%_))
                                        ((lambda (_%g164297164329%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g164297164329%_))
                                               (let ((_%$e164342%_
                                                      (let ((__tmp173088
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp173088 _%g164297164329%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e164342%_
                                                     _%$e164342%_
                                                     (let ((_%marks164346%_
                                                            (##direct-structure-ref
                                                             _%g164297164329%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks164346%_)
                                                           (_%generate-simple164287%_
                                                            _%g164297164329%_)
                                                           (_%generate-serialized164288%_
                                                            _%g164297164329%_
                                                            _%marks164346%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g164297164329%_))))
                                         _%hd164302164324%_)
                                        (_%g164295164308%_
                                         _%g164296164311%_))))
                                (_%g164295164308%_ _%g164296164311%_))))
                        (_%g164295164308%_ _%g164296164311%_)))))
            (_%g164294164348%_ _%stx164283%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self164214%_ _%stx164215%_)
        (let* ((_%g164217164234%_
                (lambda (_%g164218164231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164218164231%_))))
               (_%g164216164279%_
                (lambda (_%g164218164237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164218164237%_))
                      (let ((_%e164221164239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164218164237%_))))
                        (let ((_%hd164222164242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164221164239%_)))
                              (_%tl164223164244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164221164239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164223164244%_))
                              (let ((_%e164224164247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164223164244%_))))
                                (let ((_%hd164225164250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164224164247%_)))
                                      (_%tl164226164252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164224164247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164226164252%_))
                                      (let ((_%e164227164255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164226164252%_))))
                                        (let ((_%hd164228164258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164227164255%_)))
                                              (_%tl164229164260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164227164255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164229164260%_))
                                              ((lambda (_%g164219164263%_
                                                        _%g164220164264%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g164220164264%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164214%_
                              _%g164219164263%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164228164258%_
                                               _%hd164225164250%_)
                                              (_%g164217164234%_
                                               _%g164218164237%_))))
                                      (_%g164217164234%_ _%g164218164237%_))))
                              (_%g164217164234%_ _%g164218164237%_))))
                      (_%g164217164234%_ _%g164218164237%_)))))
          (_%g164216164279%_ _%stx164215%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self164163%_ _%stx164164%_)
        (let* ((_%g164166164176%_
                (lambda (_%g164167164173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164167164173%_))))
               (_%g164165164211%_
                (lambda (_%g164167164179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164167164179%_))
                      (let ((_%e164169164181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164167164179%_))))
                        (let ((_%hd164170164184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164169164181%_)))
                              (_%tl164171164186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164169164181%_))))
                          ((lambda (_%g164168164189%_)
                             (let* ((_%c-body164203%_
                                     (map (lambda (_%g164198164200%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self164163%_
                                               _%g164198164200%_)))
                                          _%g164168164189%_))
                                    (_%c-body164208%_
                                     (let ((__tmp173089
                                            (lambda (_%$obj164205%_)
                                              (not (eq? _%$obj164205%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp173089
                                        _%c-body164203%_))))
                               (cons '%#begin _%c-body164208%_)))
                           _%tl164171164186%_)))
                      (_%g164166164176%_ _%g164167164179%_)))))
          (_%g164165164211%_ _%stx164164%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self164068%_ _%stx164069%_)
        (let* ((_%g164071164081%_
                (lambda (_%g164072164078%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164072164078%_))))
               (_%g164070164160%_
                (lambda (_%g164072164084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164072164084%_))
                      (let ((_%e164074164086%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164072164084%_))))
                        (let ((_%hd164075164089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164074164086%_)))
                              (_%tl164076164091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164074164086%_))))
                          ((lambda (_%g164073164094%_)
                             (let* ((_%phi164104%_
                                     (let ((__tmp173090
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp173090 '1)))
                                    (_%block164106%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self164068%_ 'state))
                                      _%phi164104%_))
                                    (_%compiled164109%_
                                     (let ((__tmp173091
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self164068%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g164073164094%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp173091
                                        gx#current-expander-phi
                                        _%phi164104%_)))
                                    (_%g164112164122%_
                                     (lambda (_%g164113164119%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g164113164119%_))))
                                    (_%g164111164157%_
                                     (lambda (_%g164113164125%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g164113164125%_))
                                           (let ((_%e164115164127%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g164113164125%_))))
                                             (let ((_%hd164116164130%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e164115164127%_)))
                                                   (_%tl164117164132%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e164115164127%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd164116164130%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd164116164130%_))
                                                       ((lambda (_%g164114164135%_)
                                                          (let ((_%c-body164152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj164149%_)
                                   (not (eq? _%$obj164149%_ '#!void)))
                                 _%g164114164135%_)))
                    (if _%block164106%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block164106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body164152%_))
                        (if (null? _%c-body164152%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body164152%_)))))
                _%tl164117164132%_)
               (_%g164112164122%_ _%g164113164125%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g164112164122%_
                                                    _%g164113164125%_))))
                                           (_%g164112164122%_
                                            _%g164113164125%_)))))
                               (_%g164111164157%_ _%compiled164109%_)))
                           _%tl164076164091%_)))
                      (_%g164071164081%_ _%g164072164084%_)))))
          (_%g164070164160%_ _%stx164069%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self163999%_ _%stx164000%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163999%_ 'state)))
        (let* ((_%g164002164016%_
                (lambda (_%g164003164013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164003164013%_))))
               (_%g164001164065%_
                (lambda (_%g164003164019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164003164019%_))
                      (let ((_%e164006164021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164003164019%_))))
                        (let ((_%hd164007164024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164006164021%_)))
                              (_%tl164008164026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164006164021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164008164026%_))
                              (let ((_%e164009164029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164008164026%_))))
                                (let ((_%hd164010164032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164009164029%_)))
                                      (_%tl164011164034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164009164029%_))))
                                  ((lambda (_%g164004164037%_
                                            _%g164005164038%_)
                                     (let ((_%key164051%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g164005164038%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key164051%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx164000%_
                                              _%g164005164038%_
                                              _%key164051%_)))
                                       (let* ((_%ctx164053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g164005164038%_)))
                                              (_%code164056%_
                                               (let ((__tmp173092
                                                      (lambda ()
                                                        (let ((__tmp173093
                                                               (##structure-ref
                                                                _%ctx164053%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self163999%_
                                                           __tmp173093)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp173092
                                                  gx#current-expander-context
                                                  _%ctx164053%_)))
                                              (_%rt164058%_
                                               (let ((__tmp173094
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp173094
                                                  _%ctx164053%_)))
                                              (_%loader164060%_
                                               (if _%rt164058%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt164058%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid164062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g164005164038%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self163999%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid164062%_
                                                     (cons _%code164056%_
                                                           _%loader164060%_))))))
                                   _%tl164011164034%_
                                   _%hd164010164032%_)))
                              (_%g164002164016%_ _%g164003164019%_))))
                      (_%g164002164016%_ _%g164003164019%_)))))
          (_%g164001164065%_ _%stx164000%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx163986%_ _%context-chain163987%_)
        (let _%lp163989%_ ((_%ctx163991%_ _%ctx163986%_) (_%path163992%_ '()))
          (let ((_%super163994%_
                 (##structure-ref _%ctx163991%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super163994%_ _%context-chain163987%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx163991%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path163992%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super163994%_
                       'gx#module-context::t))
                    (_%lp163989%_
                     _%super163994%_
                     (cons (car (##structure-ref
                                 _%ctx163991%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path163992%_))
                    (cons (let ((__tmp173095
                                 (##structure-ref
                                  _%ctx163991%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp173095))
                          _%path163992%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp163979%_ ((_%ctx163981%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r163982%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx163981%_ 'gx#module-context::t))
              (_%lp163979%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx163981%_ '3 '#f '#f))
               (cons _%ctx163981%_ _%r163982%_))
              _%r163982%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self163744%_ _%stx163745%_)
        (letrec* ((_%context-chain163747%_ (gxc#current-context-chain))
                  (_%make-import-spec163748%_
                   (lambda (_%in163916%_)
                     (let* ((_%in163917163929%_ _%in163916%_)
                            (_%E163919163932%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in163917163929%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K163920163942%_
                             (lambda (_%phi163935%_
                                      _%name163936%_
                                      _%src-name163937%_
                                      _%src-phi163938%_
                                      _%src-key163939%_
                                      _%src-ctx163940%_)
                               (cons _%phi163935%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name163936%_))
                                           (cons _%src-phi163938%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name163937%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in163917163929%_
                              'gx#module-import::t))
                           (let ((_%e163921163945%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in163917163929%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e163921163945%_
                                    'gx#module-export::t))
                                 (let* ((_%e163924163948%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163921163945%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx163951%_ _%e163924163948%_)
                                        (_%e163925163953%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163921163945%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key163956%_ _%e163925163953%_)
                                        (_%e163926163958%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163921163945%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi163961%_ _%e163926163958%_)
                                        (_%e163927163963%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163921163945%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name163966%_ _%e163927163963%_)
                                        (_%e163922163968%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163917163929%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name163971%_ _%e163922163968%_)
                                        (_%e163923163973%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163917163929%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi163976%_ _%e163923163973%_))
                                   (_%K163920163942%_
                                    _%phi163976%_
                                    _%name163971%_
                                    _%src-name163966%_
                                    _%src-phi163961%_
                                    _%src-key163956%_
                                    _%src-ctx163951%_))
                                 (_%E163919163932%_)))
                           (_%E163919163932%_)))))
                  (_%make-import-path163749%_
                   (lambda (_%ctx163914%_)
                     (gxc#generate-meta-import-path
                      _%ctx163914%_
                      _%context-chain163747%_)))
                  (_%make-import-spec-in163750%_
                   (lambda (_%ctx163911%_ _%in163912%_)
                     (cons 'spec:
                           (cons (_%make-import-path163749%_ _%ctx163911%_)
                                 (reverse _%in163912%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self163744%_ 'state)))
          (let* ((_%g163752163762%_
                  (lambda (_%g163753163759%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163753163759%_))))
                 (_%g163751163908%_
                  (lambda (_%g163753163765%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163753163765%_))
                        (let ((_%e163755163767%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163753163765%_))))
                          (let ((_%hd163756163770%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163755163767%_)))
                                (_%tl163757163772%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163755163767%_))))
                            ((lambda (_%g163754163775%_)
                               (let _%lp163786%_ ((_%rest163788%_
                                                   _%g163754163775%_)
                                                  (_%current-src163789%_ '#f)
                                                  (_%current-in163790%_ '())
                                                  (_%r163791%_ '()))
                                 (let* ((_%rest163792163800%_ _%rest163788%_)
                                        (_%else163794163810%_
                                         (lambda ()
                                           (let ((_%r163808%_
                                                  (if _%current-src163789%_
                                                      (cons (_%make-import-spec-in163750%_
                                                             _%current-src163789%_
                                                             _%current-in163790%_)
                                                            _%r163791%_)
                                                      _%r163791%_)))
                                             (cons '%#import
                                                   (reverse _%r163808%_)))))
                                        (_%K163796163896%_
                                         (lambda (_%rest163813%_ _%in163814%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in163814%_
                                                  'gx#module-import::t))
                                               (let* ((_%in163816163823%_
                                                       _%in163814%_)
                                                      (_%E163818163826%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in163816163823%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K163819163834%_
               (lambda (_%src-ctx163829%_)
                 (if (eq? _%current-src163789%_ _%src-ctx163829%_)
                     (_%lp163786%_
                      _%rest163813%_
                      _%current-src163789%_
                      (cons (_%make-import-spec163748%_ _%in163814%_)
                            _%current-in163790%_)
                      _%r163791%_)
                     (if _%current-src163789%_
                         (_%lp163786%_
                          _%rest163813%_
                          _%src-ctx163829%_
                          (cons (_%make-import-spec163748%_ _%in163814%_) '())
                          (cons (_%make-import-spec-in163750%_
                                 _%current-src163789%_
                                 _%current-in163790%_)
                                _%r163791%_))
                         (_%lp163786%_
                          _%rest163813%_
                          _%src-ctx163829%_
                          (cons (_%make-import-spec163748%_ _%in163814%_) '())
                          _%r163791%_)))))
              (_%e163820163837%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in163816163823%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e163820163837%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163821163840%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e163820163837%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx163843%_ _%e163821163840%_))
               (_%K163819163834%_ _%src-ctx163843%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163818163826%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in163814%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi163846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163814%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src163848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163814%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in163888%_
                                                           (let* ((_%g163849163858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path163749%_ _%src163848%_))
                          (_%E163852163862%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g163849163858%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K163854163878%_
                            (lambda (_%path163876%_) _%path163876%_))
                           (_%K163853163868%_
                            (lambda (_%path163866%_)
                              (cons 'in: _%path163866%_))))
                       (if (pair? _%g163849163858%_)
                           (let ((_%tl163856163883%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g163849163858%_)))
                                 (_%hd163855163881%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g163849163858%_))))
                             (if (null? _%tl163856163883%_)
                                 (let ((_%path163886%_ _%hd163855163881%_))
                                   (_%K163854163878%_ _%path163886%_))
                                 (let ((_%path163871%_ _%g163849163858%_))
                                   (_%K163853163868%_ _%path163871%_))))
                           (let ((_%path163871%_ _%g163849163858%_))
                             (_%K163853163868%_ _%path163871%_))))))
                  (_%r163890%_
                   (if _%current-src163789%_
                       (cons (_%make-import-spec-in163750%_
                              _%current-src163789%_
                              _%current-in163790%_)
                             _%r163791%_)
                       _%r163791%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp163786%_
                                                      _%rest163813%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi163846%_)
                                                                _%src-in163888%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi163846%_
                                    (cons _%src-in163888%_ '()))))
                    _%r163890%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in163814%_
                                                          'gx#module-context::t))
                                                       (let ((_%r163894%_
                                                              (if _%current-src163789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in163750%_
                                 _%current-src163789%_
                                 _%current-in163790%_)
                                _%r163791%_)
                          _%r163791%_)))
                 (_%lp163786%_
                  _%rest163813%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path163749%_ _%in163814%_))
                        _%r163894%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest163792163800%_)
                                       (let ((_%hd163797163899%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163792163800%_)))
                                             (_%tl163798163901%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163792163800%_))))
                                         (let* ((_%in163904%_
                                                 _%hd163797163899%_)
                                                (_%rest163906%_
                                                 _%tl163798163901%_))
                                           (_%K163796163896%_
                                            _%rest163906%_
                                            _%in163904%_)))
                                       (_%else163794163810%_)))))
                             _%tl163757163772%_)))
                        (_%g163752163762%_ _%g163753163765%_)))))
            (_%g163751163908%_ _%stx163745%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self163554%_ _%stx163555%_)
        (letrec* ((_%context-chain163557%_ (gxc#current-context-chain))
                  (_%make-import-path163558%_
                   (lambda (_%ctx163742%_)
                     (gxc#generate-meta-import-path
                      _%ctx163742%_
                      _%context-chain163557%_))))
          (let* ((_%g163560163570%_
                  (lambda (_%g163561163567%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163561163567%_))))
                 (_%g163559163739%_
                  (lambda (_%g163561163573%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163561163573%_))
                        (let ((_%e163563163575%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163561163573%_))))
                          (let ((_%hd163564163578%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163563163575%_)))
                                (_%tl163565163580%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163563163575%_))))
                            ((lambda (_%g163562163583%_)
                               (let _%lp163594%_ ((_%rest163596%_
                                                   _%g163562163583%_)
                                                  (_%r163597%_ '()))
                                 (let* ((_%rest163598163606%_ _%rest163596%_)
                                        (_%else163600163614%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r163597%_))))
                                        (_%K163602163727%_
                                         (lambda (_%rest163617%_ _%out163618%_)
                                           (let* ((_%out163619163632%_
                                                   _%out163618%_)
                                                  (_%E163622163636%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out163619163632%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163626163706%_
                                                    (lambda (_%name163702%_
                                                             _%phi163703%_
                                                             _%key163704%_)
                                                      (_%lp163594%_
                                                       _%rest163617%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi163703%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key163704%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name163702%_))
                                             '()))))
                     _%r163597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163623163686%_
                                                    (lambda (_%phi163640%_
                                                             _%src163641%_)
                                                      (let* ((_%out163681%_
                                                              (if _%src163641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g163642163651%_
                                              (_%make-import-path163558%_
                                               _%src163641%_))
                                             (_%E163645163655%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g163642163651%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K163647163671%_
                                               (lambda (_%path163669%_)
                                                 _%path163669%_))
                                              (_%K163646163661%_
                                               (lambda (_%path163659%_)
                                                 (cons 'in: _%path163659%_))))
                                          (if (pair? _%g163642163651%_)
                                              (let ((_%tl163649163676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g163642163651%_)))
                                                    (_%hd163648163674%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g163642163651%_))))
                                                (if (null? _%tl163649163676%_)
                                                    (let ((_%path163679%_
                                                           _%hd163648163674%_))
                                                      (_%K163647163671%_
                                                       _%path163679%_))
                                                    (let ((_%path163664%_
                                                           _%g163642163651%_))
                                                      (_%K163646163661%_
                                                       _%path163664%_))))
                                              (let ((_%path163664%_
                                                     _%g163642163651%_))
                                                (_%K163646163661%_
                                                 _%path163664%_)))))
                                      '()))
                          '#t))
                     (_%out163683%_
                      (if (fxzero? _%phi163640%_)
                          _%out163681%_
                          (cons 'phi:
                                (cons _%phi163640%_
                                      (cons _%out163681%_ '()))))))
                (_%lp163594%_
                 _%rest163617%_
                 (cons _%out163683%_ _%r163597%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match163621163699%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out163619163632%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e163624163689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163619163632%_
                               '1
                               '#f
                               '#f)))
                           (_%e163625163694%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163619163632%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src163692%_ _%e163624163689%_)
                            (_%phi163697%_ _%e163625163694%_))
                        (_%K163623163686%_ _%phi163697%_ _%src163692%_)))
                    (_%E163622163636%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out163619163632%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163627163709%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out163619163632%_
                        '1
                        '#f
                        '#f)))
                    (_%e163628163712%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163619163632%_
                        '2
                        '#f
                        '#f)))
                    (_%e163629163717%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163619163632%_
                        '3
                        '#f
                        '#f)))
                    (_%e163630163722%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163619163632%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key163715%_ _%e163628163712%_)
                     (_%phi163720%_ _%e163629163717%_)
                     (_%name163725%_ _%e163630163722%_))
                 (_%K163626163706%_
                  _%name163725%_
                  _%phi163720%_
                  _%key163715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match163621163699%_))))))))
                                   (if (pair? _%rest163598163606%_)
                                       (let ((_%hd163603163730%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163598163606%_)))
                                             (_%tl163604163732%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163598163606%_))))
                                         (let* ((_%out163735%_
                                                 _%hd163603163730%_)
                                                (_%rest163737%_
                                                 _%tl163604163732%_))
                                           (_%K163602163727%_
                                            _%rest163737%_
                                            _%out163735%_)))
                                       (_%else163600163614%_)))))
                             _%tl163565163580%_)))
                        (_%g163560163570%_ _%g163561163573%_)))))
            (_%g163559163739%_ _%stx163555%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self163515%_ _%stx163516%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163515%_ 'state)))
        (let* ((_%g163518163528%_
                (lambda (_%g163519163525%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163519163525%_))))
               (_%g163517163551%_
                (lambda (_%g163519163531%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163519163531%_))
                      (let ((_%e163521163533%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163519163531%_))))
                        (let ((_%hd163522163536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163521163533%_)))
                              (_%tl163523163538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163521163533%_))))
                          ((lambda (_%g163520163541%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g163520163541%_)))
                           _%tl163523163538%_)))
                      (_%g163518163528%_ _%g163519163531%_)))))
          (_%g163517163551%_ _%stx163516%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self163390%_ _%stx163391%_)
        (letrec ((_%generate1163393%_
                  (lambda (_%id163510%_ _%eid163511%_)
                    (let ((_%eid163513%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid163511%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid163513%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx163391%_
                             _%eid163513%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id163510%_))
                            (cons _%eid163513%_ '()))))))
          (let* ((_%g163395163423%_
                  (lambda (_%g163396163420%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163396163420%_))))
                 (_%g163394163507%_
                  (lambda (_%g163396163426%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163396163426%_))
                        (let ((_%e163399163428%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163396163426%_))))
                          (let ((_%hd163400163431%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163399163428%_)))
                                (_%tl163401163433%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163399163428%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl163401163433%_))
                                (let ((_g173096_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl163401163433%_
                                          '0))))
                                  (begin
                                    (let ((_g173097_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173096_)
                                                 (##values-length _g173096_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173097_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173097_)))
                                    (let ((_%target163402163436%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173096_ 0)))
                                          (_%tl163404163438%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173096_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163404163438%_))
                                          (letrec ((_%loop163405163441%_
                                                    (lambda (_%hd163403163444%_
                                                             _%eid163409163446%_
                                                             _%id163410163447%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd163403163444%_))
                                                          (let ((_%e163406163449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd163403163444%_))))
                    (let ((_%lp-hd163407163452%_
                           (let ()
                             (declare (not safe))
                             (##car _%e163406163449%_)))
                          (_%lp-tl163408163454%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e163406163449%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd163407163452%_))
                          (let ((_%e163413163457%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd163407163452%_))))
                            (let ((_%hd163414163460%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e163413163457%_)))
                                  (_%tl163415163462%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e163413163457%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl163415163462%_))
                                  (let ((_%e163416163465%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl163415163462%_))))
                                    (let ((_%hd163417163468%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e163416163465%_)))
                                          (_%tl163418163470%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e163416163465%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163418163470%_))
                                          (_%loop163405163441%_
                                           _%lp-tl163408163454%_
                                           (cons _%hd163417163468%_
                                                 _%eid163409163446%_)
                                           (cons _%hd163414163460%_
                                                 _%id163410163447%_))
                                          (_%g163395163423%_
                                           _%g163396163426%_))))
                                  (_%g163395163423%_ _%g163396163426%_))))
                          (_%g163395163423%_ _%g163396163426%_))))
                  (let ((_%eid163411163473%_ (reverse _%eid163409163446%_))
                        (_%id163412163474%_ (reverse _%id163410163447%_)))
                    ((lambda (_%g163397163476%_ _%g163398163477%_)
                       (cons '%#extern
                             (map _%generate1163393%_
                                  (let ((__tmp173098
                                         (lambda (_%g163492163495%_
                                                  _%g163493163497%_)
                                           (cons _%g163492163495%_
                                                 _%g163493163497%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173098
                                     '()
                                     _%g163398163477%_))
                                  (let ((__tmp173099
                                         (lambda (_%g163499163502%_
                                                  _%g163500163504%_)
                                           (cons _%g163499163502%_
                                                 _%g163500163504%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173099
                                     '()
                                     _%g163397163476%_)))))
                     _%eid163411163473%_
                     _%id163412163474%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop163405163441%_
                                             _%target163402163436%_
                                             '()
                                             '()))
                                          (_%g163395163423%_
                                           _%g163396163426%_)))))
                                (_%g163395163423%_ _%g163396163426%_))))
                        (_%g163395163423%_ _%g163396163426%_)))))
            (_%g163394163507%_ _%stx163391%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self163179%_ _%stx163180%_)
        (letrec ((_%generate1163182%_
                  (lambda (_%id163384%_)
                    (let ((_%eid163386%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id163384%_)))
                          (_%ident163387%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id163384%_)))
                          (_%props163388%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id163384%_))))
                      (cons '%#define-runtime
                            (cons _%ident163387%_
                                  (cons _%eid163386%_ _%props163388%_))))))
                 (_%generate*163183%_
                  (lambda (_%all163352%_)
                    (let* ((_%all163353163361%_ _%all163352%_)
                           (_%else163355163369%_
                            (lambda () (cons '%#begin _%all163352%_)))
                           (_%K163357163374%_
                            (lambda (_%one163372%_) _%one163372%_)))
                      (if (pair? _%all163353163361%_)
                          (let ((_%hd163358163377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all163353163361%_)))
                                (_%tl163359163379%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all163353163361%_))))
                            (let ((_%one163382%_ _%hd163358163377%_))
                              (if (null? _%tl163359163379%_)
                                  (_%K163357163374%_ _%one163382%_)
                                  (_%else163355163369%_))))
                          (_%else163355163369%_))))))
          (let* ((_%g163185163202%_
                  (lambda (_%g163186163199%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163186163199%_))))
                 (_%g163184163349%_
                  (lambda (_%g163186163205%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163186163205%_))
                        (let ((_%e163189163207%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163186163205%_))))
                          (let ((_%hd163190163210%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163189163207%_)))
                                (_%tl163191163212%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163189163207%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl163191163212%_))
                                (let ((_%e163192163215%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl163191163212%_))))
                                  (let ((_%hd163193163218%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e163192163215%_)))
                                        (_%tl163194163220%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e163192163215%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl163194163220%_))
                                        (let ((_%e163195163223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl163194163220%_))))
                                          (let ((_%hd163196163226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e163195163223%_)))
                                                (_%tl163197163228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e163195163223%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl163197163228%_))
                                                ((lambda (_%g163187163231%_
                                                          _%g163188163232%_)
                                                   (let _%lp163248%_ ((_%rest163250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g163188163232%_)
                              (_%r163251%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx172834172835%_
                                                             _%rest163250%_)
                                                            (_%g163256163273%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx172834172835%_)))))
               (let ((_%__kont172836172837%_
                      (lambda (_%g163258163336%_)
                        (_%lp163248%_ _%g163258163336%_ _%r163251%_)))
                     (_%__kont172838172839%_
                      (lambda (_%g163263163309%_ _%g163264163310%_)
                        (_%lp163248%_
                         _%g163263163309%_
                         (cons (_%generate1163182%_ _%g163264163310%_)
                               _%r163251%_))))
                     (_%__kont172840172841%_
                      (lambda (_%g163268163285%_)
                        (_%generate*163183%_
                         (let ((__tmp173100
                                (cons (_%generate1163182%_ _%g163268163285%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp173100 _%r163251%_)))))
                     (_%__kont172842172843%_
                      (lambda ()
                        (_%generate*163183%_ (reverse! _%r163251%_)))))
                 (let ((_%g163254163296%_
                        (lambda ()
                          (let ((_%g163268163285%_ _%__stx172834172835%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g163268163285%_))
                                (_%__kont172840172841%_ _%g163268163285%_)
                                (_%__kont172842172843%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx172834172835%_))
                       (let ((_%e163259163325%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx172834172835%_))))
                         (let ((_%tl163261163330%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e163259163325%_)))
                               (_%hd163260163328%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e163259163325%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd163260163328%_))
                               (let ((_%e163262163333%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd163260163328%_))))
                                 (if (equal? _%e163262163333%_ '#f)
                                     (_%__kont172836172837%_
                                      _%tl163261163330%_)
                                     (_%__kont172838172839%_
                                      _%tl163261163330%_
                                      _%hd163260163328%_)))
                               (_%__kont172838172839%_
                                _%tl163261163330%_
                                _%hd163260163328%_))))
                       (let () (declare (not safe)) (_%g163254163296%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd163196163226%_
                                                 _%hd163193163218%_)
                                                (_%g163185163202%_
                                                 _%g163186163205%_))))
                                        (_%g163185163202%_
                                         _%g163186163205%_))))
                                (_%g163185163202%_ _%g163186163205%_))))
                        (_%g163185163202%_ _%g163186163205%_)))))
            (_%g163184163349%_ _%stx163180%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self163076%_ _%stx163077%_)
        (let* ((_%g163079163096%_
                (lambda (_%g163080163093%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163080163093%_))))
               (_%g163078163176%_
                (lambda (_%g163080163099%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163080163099%_))
                      (let ((_%e163083163101%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163080163099%_))))
                        (let ((_%hd163084163104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163083163101%_)))
                              (_%tl163085163106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163083163101%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163085163106%_))
                              (let ((_%e163086163109%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163085163106%_))))
                                (let ((_%hd163087163112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163086163109%_)))
                                      (_%tl163088163114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163086163109%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163088163114%_))
                                      (let ((_%e163089163117%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163088163114%_))))
                                        (let ((_%hd163090163120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163089163117%_)))
                                              (_%tl163091163122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163089163117%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163091163122%_))
                                              ((lambda (_%g163081163125%_
                                                        _%g163082163126%_)
                                                 (let* ((_%eid163141%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g163082163126%_)))
                                                        (_%phi163143%_
                                                         (let ((__tmp173101
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp173101 '1)))
                (_%block163145%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self163076%_ 'state))
                  _%phi163143%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g163148163155%_
                                                           (lambda (_%g163149163152%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g163149163152%_))))
                  (_%g163147163173%_
                   (lambda (_%g163149163158%_)
                     ((lambda (_%g163150163160%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self163076%_ 'state))
                         _%phi163143%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g163150163160%_
                                     (cons _%g163081163125%_ '())))))
                      _%g163149163158%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g163147163173%_
                                                      _%eid163141%_))
                                                   (if _%block163145%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block163145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g163082163126%_))
                                             (cons _%eid163141%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g163082163126%_))
                           (cons _%eid163141%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163090163120%_
                                               _%hd163087163112%_)
                                              (_%g163079163096%_
                                               _%g163080163099%_))))
                                      (_%g163079163096%_ _%g163080163099%_))))
                              (_%g163079163096%_ _%g163080163099%_))))
                      (_%g163079163096%_ _%g163080163099%_)))))
          (_%g163078163176%_ _%stx163077%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self163008%_ _%stx163009%_)
        (let* ((_%g163011163028%_
                (lambda (_%g163012163025%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163012163025%_))))
               (_%g163010163073%_
                (lambda (_%g163012163031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163012163031%_))
                      (let ((_%e163015163033%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163012163031%_))))
                        (let ((_%hd163016163036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163015163033%_)))
                              (_%tl163017163038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163015163033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163017163038%_))
                              (let ((_%e163018163041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163017163038%_))))
                                (let ((_%hd163019163044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163018163041%_)))
                                      (_%tl163020163046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163018163041%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163020163046%_))
                                      (let ((_%e163021163049%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163020163046%_))))
                                        (let ((_%hd163022163052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163021163049%_)))
                                              (_%tl163023163054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163021163049%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163023163054%_))
                                              ((lambda (_%g163013163057%_
                                                        _%g163014163058%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g163014163058%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g163013163057%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163022163052%_
                                               _%hd163019163044%_)
                                              (_%g163011163028%_
                                               _%g163012163031%_))))
                                      (_%g163011163028%_ _%g163012163031%_))))
                              (_%g163011163028%_ _%g163012163031%_))))
                      (_%g163011163028%_ _%g163012163031%_)))))
          (_%g163010163073%_ _%stx163009%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self163005%_ _%stx163006%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163005%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx163006%_)
        (gxc#generate-meta-define-values% _%self163005%_ _%stx163006%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self163002%_ _%stx163003%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163002%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx163003%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp173103 (list)) (__tmp173102 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp173103
         '(src n open blocks)
         __tmp173102
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args162999%_
        (apply make-instance gxc#meta-state::t _%$args162999%_)))
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
      (lambda (_%self162985%_ _%ctx162986%_)
        (let ((_%self162989%_ _%self162985%_))
          (if (let ((__tmp173104
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162989%_))))
                (declare (not safe))
                (##fx< '4 __tmp173104))
              (begin
                (let ((__tmp173105
                       (let ((__tmp173106
                              (##structure-ref
                               _%ctx162986%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp173106))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162989%_
                   __tmp173105
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162989%_ '1 '2 '#f '#f))
                (let ((__tmp173107
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162989%_
                   __tmp173107
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162989%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp173108
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162989%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self162989%_
                       '4
                       __tmp173108))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp173110 (list)) (__tmp173109 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp173110
         '(ctx phi n code)
         __tmp173109
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args162860%_
        (apply make-instance gxc#meta-state-block::t _%$args162860%_)))
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
      (lambda (_%state162820%_ _%phi162821%_)
        (let* ((_%state162822162830%_ _%state162820%_)
               (_%E162824162833%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state162822162830%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K162825162842%_
                (lambda (_%open162836%_ _%n162837%_ _%src162838%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open162836%_ _%phi162821%_))
                      '#f
                      (let ((_%block-ref162840%_
                             (let ((__tmp173111 (number->string _%n162837%_)))
                               (declare (not safe))
                               (##string-append
                                _%src162838%_
                                '"~"
                                __tmp173111))))
                        (##structure-set!
                         _%state162820%_
                         (let () (declare (not safe)) (##fx+ _%n162837%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp173112
                               (let ((__tmp173113
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp173113
                                  _%phi162821%_
                                  _%n162837%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open162836%_ _%phi162821%_ __tmp173112))
                        _%block-ref162840%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state162822162830%_
                 'gxc#meta-state::t))
              (let* ((_%e162826162845%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162822162830%_
                         '1
                         '#f
                         '#f)))
                     (_%src162848%_ _%e162826162845%_)
                     (_%e162827162850%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162822162830%_
                         '2
                         '#f
                         '#f)))
                     (_%n162853%_ _%e162827162850%_)
                     (_%e162828162855%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162822162830%_
                         '3
                         '#f
                         '#f)))
                     (_%open162858%_ _%e162828162855%_))
                (_%K162825162842%_ _%open162858%_ _%n162853%_ _%src162848%_))
              (_%E162824162833%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state162814%_ _%phi162815%_ _%stx162816%_)
        (let ((_%block162818%_
               (let ((__tmp173114
                      (##structure-ref
                       _%state162814%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp173114 _%phi162815%_))))
          (##structure-set!
           _%block162818%_
           (cons _%stx162816%_
                 (##structure-ref
                  _%block162818%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state162808%_)
        (##structure-set!
         _%state162808%_
         (let ((__tmp173117
                (lambda (_%_162810%_ _%block162811%_ _%r162812%_)
                  (cons _%block162811%_ _%r162812%_)))
               (__tmp173116
                (##structure-ref _%state162808%_ '4 gxc#meta-state::t '#f))
               (__tmp173115
                (##structure-ref _%state162808%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp173117 __tmp173116 __tmp173115))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state162808%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state162761%_)
        (gxc#meta-state-end-phi! _%state162761%_)
        (let ((__tmp173119
               (lambda (_%block162763%_ _%r162764%_)
                 (let* ((_%block162765162774%_ _%block162763%_)
                        (_%E162767162777%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block162765162774%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K162768162785%_
                         (lambda (_%code162780%_
                                  _%n162781%_
                                  _%phi162782%_
                                  _%ctx162783%_)
                           (if (null? _%code162780%_)
                               _%r162764%_
                               (cons (cons _%ctx162783%_
                                           (cons _%phi162782%_
                                                 (cons _%n162781%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code162780%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r162764%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block162765162774%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e162769162788%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162765162774%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx162791%_ _%e162769162788%_)
                              (_%e162770162793%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162765162774%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi162796%_ _%e162770162793%_)
                              (_%e162771162798%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162765162774%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n162801%_ _%e162771162798%_)
                              (_%e162772162803%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162765162774%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code162806%_ _%e162772162803%_))
                         (_%K162768162785%_
                          _%code162806%_
                          _%n162801%_
                          _%phi162796%_
                          _%ctx162791%_))
                       (_%E162767162777%_)))))
              (__tmp173118
               (##structure-ref _%state162761%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp173119 '() __tmp173118))))
    (define gxc#collect-expression-refs
      (lambda (_%stx162757%_)
        (let ((_%ht162759%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht162759%_ _%stx162757%_)
          _%ht162759%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self162700%_ _%stx162701%_)
        (let* ((_%g162703162716%_
                (lambda (_%g162704162713%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162704162713%_))))
               (_%g162702162754%_
                (lambda (_%g162704162719%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162704162719%_))
                      (let ((_%e162706162721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162704162719%_))))
                        (let ((_%hd162707162724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162706162721%_)))
                              (_%tl162708162726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162706162721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162708162726%_))
                              (let ((_%e162709162729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162708162726%_))))
                                (let ((_%hd162710162732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162709162729%_)))
                                      (_%tl162711162734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162709162729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162711162734%_))
                                      ((lambda (_%g162705162737%_)
                                         (let* ((_%bind162749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g162705162737%_)))
                                                (_%eid162751%_
                                                 (if _%bind162749%_
                                                     (##structure-ref
                                                      _%bind162749%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g162705162737%_))))
                                                (__tmp173120
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162700%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp173120
                                            _%eid162751%_
                                            _%eid162751%_)))
                                       _%hd162710162732%_)
                                      (_%g162703162716%_ _%g162704162719%_))))
                              (_%g162703162716%_ _%g162704162719%_))))
                      (_%g162703162716%_ _%g162704162719%_)))))
          (_%g162702162754%_ _%stx162701%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self162627%_ _%stx162628%_)
        (let* ((_%g162630162647%_
                (lambda (_%g162631162644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162631162644%_))))
               (_%g162629162697%_
                (lambda (_%g162631162650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162631162650%_))
                      (let ((_%e162634162652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162631162650%_))))
                        (let ((_%hd162635162655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162634162652%_)))
                              (_%tl162636162657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162634162652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162636162657%_))
                              (let ((_%e162637162660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162636162657%_))))
                                (let ((_%hd162638162663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162637162660%_)))
                                      (_%tl162639162665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162637162660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162639162665%_))
                                      (let ((_%e162640162668%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162639162665%_))))
                                        (let ((_%hd162641162671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162640162668%_)))
                                              (_%tl162642162673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162640162668%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162642162673%_))
                                              ((lambda (_%g162632162676%_
                                                        _%g162633162677%_)
                                                 (let* ((_%bind162692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g162633162677%_)))
                                                        (_%eid162694%_
                                                         (if _%bind162692%_
                                                             (##structure-ref
                                                              _%bind162692%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162633162677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp173121
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self162627%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp173121
                                                      _%eid162694%_
                                                      _%eid162694%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162627%_
                                                      _%g162632162676%_))))
                                               _%hd162641162671%_
                                               _%hd162638162663%_)
                                              (_%g162630162647%_
                                               _%g162631162650%_))))
                                      (_%g162630162647%_ _%g162631162650%_))))
                              (_%g162630162647%_ _%g162631162650%_))))
                      (_%g162630162647%_ _%g162631162650%_)))))
          (_%g162629162697%_ _%stx162628%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self162584%_ _%stx162585%_)
        (let* ((_%g162587162597%_
                (lambda (_%g162588162594%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162588162594%_))))
               (_%g162586162624%_
                (lambda (_%g162588162600%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162588162600%_))
                      (let ((_%e162590162602%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162588162600%_))))
                        (let ((_%hd162591162605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162590162602%_)))
                              (_%tl162592162607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162590162602%_))))
                          ((lambda (_%g162589162610%_)
                             (let ((__tmp173122
                                    (lambda (_%g162619162621%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self162584%_
                                         _%g162619162621%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp173122 _%g162589162610%_)))
                           _%tl162592162607%_)))
                      (_%g162587162597%_ _%g162588162600%_)))))
          (_%g162586162624%_ _%stx162585%_))))
    (define gxc#count-values-single%
      (lambda (_%self162581%_ _%stx162582%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self162449%_ _%stx162450%_)
        (let* ((_%__stx172864172865%_ _%stx162450%_)
               (_%g162453162482%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172864172865%_)))))
          (let ((_%__kont172866172867%_
                 (lambda (_%g162455162548%_ _%g162456162549%_)
                   (length (let ((__tmp173123
                                  (lambda (_%g162570162573%_ _%g162571162575%_)
                                    (cons _%g162570162573%_
                                          _%g162571162575%_))))
                             (declare (not safe))
                             (__foldr1 __tmp173123 '() _%g162455162548%_)))))
                (_%__kont172870172871%_ (lambda () '#f)))
            (let ((_%__match172909172910%_
                   (lambda (_%e162457162494%_
                            _%hd162458162497%_
                            _%tl162459162499%_
                            _%e162460162502%_
                            _%hd162461162505%_
                            _%tl162462162507%_
                            _%e162463162510%_
                            _%hd162464162513%_
                            _%tl162465162515%_
                            _%e162466162518%_
                            _%hd162467162521%_
                            _%tl162468162523%_
                            _%__splice172868172869%_
                            _%target162469162526%_
                            _%tl162471162528%_)
                     (letrec ((_%loop162472162531%_
                               (lambda (_%hd162470162534%_
                                        _%rand162476162536%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd162470162534%_))
                                     (let ((_%e162473162538%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd162470162534%_))))
                                       (let ((_%lp-tl162475162543%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e162473162538%_)))
                                             (_%lp-hd162474162541%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e162473162538%_))))
                                         (_%loop162472162531%_
                                          _%lp-tl162475162543%_
                                          (cons _%lp-hd162474162541%_
                                                _%rand162476162536%_))))
                                     (let ((_%rand162477162546%_
                                            (reverse _%rand162476162536%_)))
                                       (let ((_%g162455162548%_
                                              _%rand162477162546%_)
                                             (_%g162456162549%_
                                              _%hd162467162521%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g162456162549%_
                                                'values))
                                             (_%__kont172866172867%_
                                              _%g162455162548%_
                                              _%g162456162549%_)
                                             (_%__kont172870172871%_))))))))
                       (_%loop162472162531%_ _%target162469162526%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172864172865%_))
                  (let ((_%e162457162494%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172864172865%_))))
                    (let ((_%tl162459162499%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e162457162494%_)))
                          (_%hd162458162497%_
                           (let ()
                             (declare (not safe))
                             (##car _%e162457162494%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl162459162499%_))
                          (let ((_%e162460162502%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl162459162499%_))))
                            (let ((_%tl162462162507%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e162460162502%_)))
                                  (_%hd162461162505%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e162460162502%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd162461162505%_))
                                  (let ((_%e162463162510%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd162461162505%_))))
                                    (let ((_%tl162465162515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e162463162510%_)))
                                          (_%hd162464162513%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e162463162510%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd162464162513%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd162464162513%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl162465162515%_))
                                                  (let ((_%e162466162518%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl162465162515%_))))
                                                    (let ((_%tl162468162523%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e162466162518%_)))
                                                          (_%hd162467162521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e162466162518%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl162468162523%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl162462162507%_))
                      (let ((_%__splice172868172869%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl162462162507%_
                                '0))))
                        (let ((_%tl162471162528%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172868172869%_ '1)))
                              (_%target162469162526%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172868172869%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl162471162528%_))
                              (_%__match172909172910%_
                               _%e162457162494%_
                               _%hd162458162497%_
                               _%tl162459162499%_
                               _%e162460162502%_
                               _%hd162461162505%_
                               _%tl162462162507%_
                               _%e162463162510%_
                               _%hd162464162513%_
                               _%tl162465162515%_
                               _%e162466162518%_
                               _%hd162467162521%_
                               _%tl162468162523%_
                               _%__splice172868172869%_
                               _%target162469162526%_
                               _%tl162471162528%_)
                              (_%__kont172870172871%_))))
                      (_%__kont172870172871%_))
                  (_%__kont172870172871%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172870172871%_))
                                              (_%__kont172870172871%_))
                                          (_%__kont172870172871%_))))
                                  (_%__kont172870172871%_))))
                          (_%__kont172870172871%_))))
                  (_%__kont172870172871%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self162354%_ _%stx162355%_)
        (let* ((_%g162357162378%_
                (lambda (_%g162358162375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162358162375%_))))
               (_%g162356162446%_
                (lambda (_%g162358162381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162358162381%_))
                      (let ((_%e162362162383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162358162381%_))))
                        (let ((_%hd162363162386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162362162383%_)))
                              (_%tl162364162388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162362162383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162364162388%_))
                              (let ((_%e162365162391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162364162388%_))))
                                (let ((_%hd162366162394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162365162391%_)))
                                      (_%tl162367162396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162365162391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162367162396%_))
                                      (let ((_%e162368162399%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162367162396%_))))
                                        (let ((_%hd162369162402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162368162399%_)))
                                              (_%tl162370162404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162368162399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl162370162404%_))
                                              (let ((_%e162371162407%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl162370162404%_))))
                                                (let ((_%hd162372162410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e162371162407%_)))
                                                      (_%tl162373162412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e162371162407%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl162373162412%_))
                                                      ((lambda (_%g162359162415%_
                                                                _%g162360162416%_
                                                                _%g162361162417%_)
                                                         (let ((_%c1162434162436%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self162354%_
                           _%g162360162416%_))))
                   (if _%c1162434162436%_
                       (let* ((_%c1162438%_ _%c1162434162436%_)
                              (_%c2162439162441%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self162354%_
                                  _%g162359162415%_))))
                         (if _%c2162439162441%_
                             (let ((_%c2162443%_ _%c2162439162441%_))
                               (if (fx= _%c1162438%_ _%c2162443%_)
                                   _%c1162438%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd162372162410%_
               _%hd162369162402%_
               _%hd162366162394%_)
              (_%g162357162378%_ _%g162358162381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g162357162378%_
                                               _%g162358162381%_))))
                                      (_%g162357162378%_ _%g162358162381%_))))
                              (_%g162357162378%_ _%g162358162381%_))))
                      (_%g162357162378%_ _%g162358162381%_)))))
          (_%g162356162446%_ _%stx162355%_))))))
