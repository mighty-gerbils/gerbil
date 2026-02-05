(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770333055)
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
      (let ((__tmp172934 (list gxc#::void::t))
            (__tmp172933 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp172934
         '()
         __tmp172933
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args171548%_
        (apply make-instance gxc#::collect-bindings::t _%$args171548%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp172935
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
        (__make-atomic-promise __tmp172935)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx171540%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self171543%_
                (let ((__obj172909
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj172909))
               (__tmp172936
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171543%_ _%stx171540%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172936
           gxc#current-compile-method
           _%self171543%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp172938 (list gxc#::void::t))
            (__tmp172937 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp172938
         '(modules)
         __tmp172937
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args171537%_
        (apply make-instance gxc#::lift-modules::t _%$args171537%_)))
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
      (let ((__tmp172939
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
        (__make-atomic-promise __tmp172939)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords171512%_ _%modules171509171513%_ _%stx171514%_)
        (let ((_%modules171517%_
               (if (eq? _%modules171509171513%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules171509171513%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self171519%_
                  (let ((__obj172911
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172911
                       _%modules171517%_
                       '1
                       '#f
                       '#f))
                    __obj172911))
                 (__tmp172940
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171519%_ _%stx171514%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172940
             gxc#current-compile-method
             _%self171519%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords171526%_ . _%args171527%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords171526%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171526%_
                  'modules:
                  absent-value))
               _%args171527%_)))
    (define gxc#apply-lift-modules
      (lambda _%args171510171533%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args171510171533%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp172942 (list)) (__tmp172941 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp172942
         '()
         __tmp172941
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args171505%_
        (apply make-instance gxc#::find-runtime-code::t _%$args171505%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp172943
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
        (__make-atomic-promise __tmp172943)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx171497%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self171500%_
                (let ((__obj172913
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj172913))
               (__tmp172944
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171500%_ _%stx171497%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172944
           gxc#current-compile-method
           _%self171500%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp172946 (list gxc#::false::t))
            (__tmp172945 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp172946
         '()
         __tmp172945
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args171494%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args171494%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp172947
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
        (__make-atomic-promise __tmp172947)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx171486%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self171489%_
                (let ((__obj172915
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj172915))
               (__tmp172948
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171489%_ _%stx171486%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172948
           gxc#current-compile-method
           _%self171489%_))))
    (define gxc#::count-values::t
      (let ((__tmp172950 (list gxc#::false-expression::t))
            (__tmp172949 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp172950
         '()
         __tmp172949
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args171483%_
        (apply make-instance gxc#::count-values::t _%$args171483%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp172951
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
        (__make-atomic-promise __tmp172951)))
    (define gxc#apply-count-values
      (lambda (_%stx171475%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self171478%_
                (let ((__obj172917
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj172917))
               (__tmp172952
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171478%_ _%stx171475%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172952
           gxc#current-compile-method
           _%self171478%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp172953 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp172953
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args171472%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args171472%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp172954
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
        (__make-atomic-promise __tmp172954)))
    (define gxc#::generate-loader::t
      (let ((__tmp172956 (list gxc#::generate-runtime-empty::t))
            (__tmp172955 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp172956
         '()
         __tmp172955
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args171468%_
        (apply make-instance gxc#::generate-loader::t _%$args171468%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp172957
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
        (__make-atomic-promise __tmp172957)))
    (define gxc#apply-generate-loader
      (lambda (_%stx171460%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self171463%_
                (let ((__obj172920
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj172920))
               (__tmp172958
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171463%_ _%stx171460%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172958
           gxc#current-compile-method
           _%self171463%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp172959 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp172959
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args171457%_
        (apply make-instance gxc#::generate-runtime::t _%$args171457%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp172960
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
        (__make-atomic-promise __tmp172960)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx171449%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self171452%_
                (let ((__obj172922
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj172922))
               (__tmp172961
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171452%_ _%stx171449%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172961
           gxc#current-compile-method
           _%self171452%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp172963 (list gxc#::generate-runtime::t))
            (__tmp172962 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp172963
         '()
         __tmp172962
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args171446%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args171446%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp172964
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
        (__make-atomic-promise __tmp172964)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx171438%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self171441%_
                (let ((__obj172924
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj172924))
               (__tmp172965
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171441%_ _%stx171438%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172965
           gxc#current-compile-method
           _%self171441%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp172966 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp172966
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args171435%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args171435%_)))
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
      (let ((__tmp172967
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
        (__make-atomic-promise __tmp172967)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords171410%_ _%table171407171411%_ _%stx171412%_)
        (let ((_%table171415%_
               (if (eq? _%table171407171411%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table171407171411%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self171417%_
                  (let ((__obj172926
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172926
                       _%table171415%_
                       '1
                       '#f
                       '#f))
                    __obj172926))
                 (__tmp172968
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171417%_ _%stx171412%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172968
             gxc#current-compile-method
             _%self171417%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords171424%_ . _%args171425%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords171424%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171424%_
                  'table:
                  absent-value))
               _%args171425%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args171408171431%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args171408171431%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp172970 (list gxc#::void-expression::t))
            (__tmp172969 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp172970
         '(state)
         __tmp172969
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args171403%_
        (apply make-instance gxc#::generate-meta::t _%$args171403%_)))
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
      (let ((__tmp172971
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
        (__make-atomic-promise __tmp172971)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords171378%_ _%state171375171379%_ _%stx171380%_)
        (let ((_%state171383%_
               (if (eq? _%state171375171379%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171375171379%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self171385%_
                  (let ((__obj172928
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172928
                       _%state171383%_
                       '1
                       '#f
                       '#f))
                    __obj172928))
                 (__tmp172972
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171385%_ _%stx171380%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172972
             gxc#current-compile-method
             _%self171385%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords171392%_ . _%args171393%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords171392%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171392%_
                  'state:
                  absent-value))
               _%args171393%_)))
    (define gxc#apply-generate-meta
      (lambda _%args171376171399%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args171376171399%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp172974 (list)) (__tmp172973 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp172974
         '(state)
         __tmp172973
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args171371%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args171371%_)))
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
      (let ((__tmp172975
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
        (__make-atomic-promise __tmp172975)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords171346%_ _%state171343171347%_ _%stx171348%_)
        (let ((_%state171351%_
               (if (eq? _%state171343171347%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171343171347%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self171353%_
                  (let ((__obj172930
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172930
                       _%state171351%_
                       '1
                       '#f
                       '#f))
                    __obj172930))
                 (__tmp172976
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171353%_ _%stx171348%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172976
             gxc#current-compile-method
             _%self171353%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords171360%_ . _%args171361%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords171360%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171360%_
                  'state:
                  absent-value))
               _%args171361%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args171344171367%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args171344171367%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self171272%_ _%stx171273%_)
        (let* ((_%g171275171292%_
                (lambda (_%g171276171289%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171276171289%_))))
               (_%g171274171339%_
                (lambda (_%g171276171295%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171276171295%_))
                      (let ((_%e171279171297%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171276171295%_))))
                        (let ((_%hd171280171300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171279171297%_)))
                              (_%tl171281171302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171279171297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171281171302%_))
                              (let ((_%e171282171305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171281171302%_))))
                                (let ((_%hd171283171308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171282171305%_)))
                                      (_%tl171284171310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171282171305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171284171310%_))
                                      (let ((_%e171285171313%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171284171310%_))))
                                        (let ((_%hd171286171316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171285171313%_)))
                                              (_%tl171287171318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171285171313%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171287171318%_))
                                              ((lambda (_%g171277171321%_
                                                        _%g171278171322%_)
                                                 (let ((__tmp172977
                                                        (lambda (_%bind171337%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind171337%_))
                      (gxc#add-module-binding! _%bind171337%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp172977
                                                    _%g171278171322%_)))
                                               _%hd171286171316%_
                                               _%hd171283171308%_)
                                              (_%g171275171292%_
                                               _%g171276171295%_))))
                                      (_%g171275171292%_ _%g171276171295%_))))
                              (_%g171275171292%_ _%g171276171295%_))))
                      (_%g171275171292%_ _%g171276171295%_)))))
          (_%g171274171339%_ _%stx171273%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self171204%_ _%stx171205%_)
        (let* ((_%g171207171224%_
                (lambda (_%g171208171221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171208171221%_))))
               (_%g171206171269%_
                (lambda (_%g171208171227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171208171227%_))
                      (let ((_%e171211171229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171208171227%_))))
                        (let ((_%hd171212171232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171211171229%_)))
                              (_%tl171213171234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171211171229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171213171234%_))
                              (let ((_%e171214171237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171213171234%_))))
                                (let ((_%hd171215171240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171214171237%_)))
                                      (_%tl171216171242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171214171237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171216171242%_))
                                      (let ((_%e171217171245%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171216171242%_))))
                                        (let ((_%hd171218171248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171217171245%_)))
                                              (_%tl171219171250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171217171245%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171219171250%_))
                                              ((lambda (_%g171209171253%_
                                                        _%g171210171254%_)
                                                 (gxc#add-module-binding!
                                                  _%g171210171254%_
                                                  '#t))
                                               _%hd171218171248%_
                                               _%hd171215171240%_)
                                              (_%g171207171224%_
                                               _%g171208171227%_))))
                                      (_%g171207171224%_ _%g171208171227%_))))
                              (_%g171207171224%_ _%g171208171227%_))))
                      (_%g171207171224%_ _%g171208171227%_)))))
          (_%g171206171269%_ _%stx171205%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self171146%_ _%stx171147%_)
        (let* ((_%g171149171163%_
                (lambda (_%g171150171160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171150171160%_))))
               (_%g171148171201%_
                (lambda (_%g171150171166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171150171166%_))
                      (let ((_%e171153171168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171150171166%_))))
                        (let ((_%hd171154171171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171153171168%_)))
                              (_%tl171155171173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171153171168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171155171173%_))
                              (let ((_%e171156171176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171155171173%_))))
                                (let ((_%hd171157171179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171156171176%_)))
                                      (_%tl171158171181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171156171176%_))))
                                  ((lambda (_%g171151171184%_
                                            _%g171152171185%_)
                                     (let ((_%ctx171198%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g171152171185%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171146%_
                                           'modules))
                                        (cons _%ctx171198%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171146%_
                                                        'modules)))))
                                       (let ((__tmp172978
                                              (lambda ()
                                                (let ((__tmp172979
                                                       (##structure-ref
                                                        _%ctx171198%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self171146%_
                                                   __tmp172979)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp172978
                                          gx#current-expander-context
                                          _%ctx171198%_))))
                                   _%tl171158171181%_
                                   _%hd171157171179%_)))
                              (_%g171149171163%_ _%g171150171166%_))))
                      (_%g171149171163%_ _%g171150171166%_)))))
          (_%g171148171201%_ _%stx171147%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls171100171102%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls171100171102%_
              (let ((_%decls171104%_ _%decls171100171102%_))
                (let _%lp171106%_ ((_%rest171108%_ _%decls171104%_))
                  (let* ((_%rest171109171117%_ _%rest171108%_)
                         (_%else171111171125%_ (lambda () '#f))
                         (_%K171113171134%_
                          (lambda (_%decls171128%_ _%decl171129%_)
                            (if (equal? _%decl171129%_ '(not safe))
                                '#t
                                (if (equal? _%decl171129%_ '(safe))
                                    '#f
                                    (_%lp171106%_ _%decls171128%_))))))
                    (if (pair? _%rest171109171117%_)
                        (let ((_%hd171114171137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest171109171117%_)))
                              (_%tl171115171139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest171109171117%_))))
                          (let* ((_%decl171142%_ _%hd171114171137%_)
                                 (_%decls171144%_ _%tl171115171139%_))
                            (_%K171113171134%_
                             _%decls171144%_
                             _%decl171142%_)))
                        (_%else171111171125%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id171094%_ _%syntax?171095%_)
        (let ((_%eid171097%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id171094%_))
                '1
                gx#binding::t
                '#f))
              (_%ht171098%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid171097%_))
              '#!void
              (let ((__tmp172980
                     (let ((__tmp172981
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid171097%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp172981 _%syntax?171095%_))))
                (declare (not safe))
                (hash-put! _%ht171098%_ _%eid171097%_ __tmp172980))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self171091%_ _%stx171092%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self170938%_ _%stx170939%_)
        (letrec ((_%simplify170941%_
                  (lambda (_%body170989%_)
                    (let _%lp170991%_ ((_%rest170993%_ _%body170989%_)
                                       (_%r170994%_ '()))
                      (let* ((_%rest170995171003%_ _%rest170993%_)
                             (_%else170997171011%_
                              (lambda () (reverse _%r170994%_)))
                             (_%K170999171079%_
                              (lambda (_%rest171014%_ _%hd171015%_)
                                (let* ((_%hd171016171032%_ _%hd171015%_)
                                       (_%else171020171040%_
                                        (lambda ()
                                          (_%lp170991%_
                                           _%rest171014%_
                                           (cons _%hd171015%_ _%r170994%_)))))
                                  (let ((_%K171028171069%_
                                         (lambda (_%exprs171067%_)
                                           (_%lp170991%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest171014%_
                                               _%exprs171067%_))
                                            _%r170994%_)))
                                        (_%K171023171053%_
                                         (lambda ()
                                           (if (null? _%rest171014%_)
                                               (_%lp170991%_
                                                _%rest171014%_
                                                (cons _%hd171015%_
                                                      _%r170994%_))
                                               (_%lp170991%_
                                                _%rest171014%_
                                                _%r170994%_))))
                                        (_%K171022171045%_
                                         (lambda ()
                                           (if (null? _%rest171014%_)
                                               (_%lp170991%_
                                                _%rest171014%_
                                                (cons _%hd171015%_
                                                      _%r170994%_))
                                               (_%lp170991%_
                                                _%rest171014%_
                                                _%r170994%_)))))
                                    (let ((_%try-match171019171048%_
                                           (lambda ()
                                             (if (symbol? _%hd171016171032%_)
                                                 (_%K171022171045%_)
                                                 (_%else171020171040%_)))))
                                      (if (pair? _%hd171016171032%_)
                                          (let ((_%tl171030171074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd171016171032%_)))
                                                (_%hd171029171072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd171016171032%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd171029171072%_
                                                         'begin))
                                                (let ((_%exprs171077%_
                                                       _%tl171030171074%_))
                                                  (_%K171028171069%_
                                                   _%exprs171077%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd171029171072%_
                                                             'quote))
                                                    (if (pair? _%tl171030171074%_)
                                                        (let ((_%tl171027171061%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl171030171074%_))))
                  (if (null? _%tl171027171061%_)
                      (_%K171023171053%_)
                      (_%try-match171019171048%_)))
                (_%try-match171019171048%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match171019171048%_))))
                                          (_%try-match171019171048%_))))))))
                        (if (pair? _%rest170995171003%_)
                            (let ((_%hd171000171082%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest170995171003%_)))
                                  (_%tl171001171084%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest170995171003%_))))
                              (let* ((_%hd171087%_ _%hd171000171082%_)
                                     (_%rest171089%_ _%tl171001171084%_))
                                (_%K170999171079%_
                                 _%rest171089%_
                                 _%hd171087%_)))
                            (_%else170997171011%_)))))))
          (let* ((_%g170943170953%_
                  (lambda (_%g170944170950%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g170944170950%_))))
                 (_%g170942170986%_
                  (lambda (_%g170944170956%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g170944170956%_))
                        (let ((_%e170946170958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170944170956%_))))
                          (let ((_%hd170947170961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170946170958%_)))
                                (_%tl170948170963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170946170958%_))))
                            ((lambda (_%g170945170966%_)
                               (let* ((_%body170981%_
                                       (map (lambda (_%g170976170978%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self170938%_
                                                 _%g170976170978%_)))
                                            _%g170945170966%_))
                                      (_%body170983%_
                                       (_%simplify170941%_ _%body170981%_)))
                                 (if (let ((__tmp172982
                                            (length _%body170983%_)))
                                       (declare (not safe))
                                       (##fx= __tmp172982 '1))
                                     (car _%body170983%_)
                                     (cons 'begin _%body170983%_))))
                             _%tl170948170963%_)))
                        (_%g170943170953%_ _%g170944170956%_)))))
            (_%g170942170986%_ _%stx170939%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self170899%_ _%stx170900%_)
        (let* ((_%g170902170912%_
                (lambda (_%g170903170909%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170903170909%_))))
               (_%g170901170935%_
                (lambda (_%g170903170915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170903170915%_))
                      (let ((_%e170905170917%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170903170915%_))))
                        (let ((_%hd170906170920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170905170917%_)))
                              (_%tl170907170922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170905170917%_))))
                          ((lambda (_%g170904170925%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g170904170925%_))))
                           _%tl170907170922%_)))
                      (_%g170902170912%_ _%g170903170915%_)))))
          (_%g170901170935%_ _%stx170900%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self170665%_ _%stx170666%_)
        (let* ((_%__stx171572171573%_ _%stx170666%_)
               (_%g170670170722%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171572171573%_)))))
          (let ((_%__kont171574171575%_
                 (lambda (_%g170672170881%_ _%g170673170882%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170665%_ _%g170672170881%_))))
                (_%__kont171576171577%_
                 (lambda (_%g170683170829%_
                          _%g170684170830%_
                          _%g170685170831%_)
                   (if (let ((__tmp172983
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g170685170831%_))))
                         (declare (not safe))
                         (##memq __tmp172983 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self170665%_
                          _%g170683170829%_)))))
                (_%__kont171580171581%_
                 (lambda (_%g170707170751%_ _%g170708170752%_)
                   (let ((_%decls170767%_
                          (map gx#syntax->datum _%g170708170752%_)))
                     (let ((__tmp172986
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls170767%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170665%_
                                                   _%g170707170751%_))
                                                '())))))
                           (__tmp172984
                            (let ((__tmp172985
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp172985 _%decls170767%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp172986
                        gxc#current-compile-decls
                        __tmp172984))))))
            (let* ((_%__match171627171628%_
                    (lambda (_%e170686170775%_
                             _%hd170687170778%_
                             _%tl170688170780%_
                             _%e170689170783%_
                             _%hd170690170786%_
                             _%tl170691170788%_
                             _%e170692170791%_
                             _%hd170693170794%_
                             _%tl170694170796%_
                             _%__splice171578171579%_
                             _%target170695170799%_
                             _%tl170697170801%_)
                      (letrec ((_%loop170698170804%_
                                (lambda (_%hd170696170807%_
                                         _%param170702170809%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170696170807%_))
                                      (let ((_%e170699170811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170696170807%_))))
                                        (let ((_%lp-tl170701170816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170699170811%_)))
                                              (_%lp-hd170700170814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170699170811%_))))
                                          (_%loop170698170804%_
                                           _%lp-tl170701170816%_
                                           (cons _%lp-hd170700170814%_
                                                 _%param170702170809%_))))
                                      (let ((_%param170703170819%_
                                             (reverse _%param170702170809%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170691170788%_))
                                            (let ((_%e170704170821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170691170788%_))))
                                              (let ((_%tl170706170826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170704170821%_)))
                                                    (_%hd170705170824%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170704170821%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170706170826%_))
                                                    (let ((_%g170683170829%_
                                                           _%hd170705170824%_)
                                                          (_%g170684170830%_
                                                           _%param170703170819%_)
                                                          (_%g170685170831%_
                                                           _%hd170693170794%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g170685170831%_))
                       (not (let ((__tmp172987
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170685170831%_))))
                              (declare (not safe))
                              (##memq __tmp172987 gxc#gambit-annotations))))
                  (_%__kont171576171577%_
                   _%g170683170829%_
                   _%g170684170830%_
                   _%g170685170831%_)
                  (_%__kont171580171581%_
                   _%hd170705170824%_
                   _%hd170690170786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170670170722%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170670170722%_))))))))
                        (_%loop170698170804%_ _%target170695170799%_ '()))))
                   (_%__match171601171602%_
                    (lambda (_%e170674170857%_
                             _%hd170675170860%_
                             _%tl170676170862%_
                             _%e170677170865%_
                             _%hd170678170868%_
                             _%tl170679170870%_
                             _%e170680170873%_
                             _%hd170681170876%_
                             _%tl170682170878%_)
                      (let ((_%g170672170881%_ _%hd170681170876%_)
                            (_%g170673170882%_ _%hd170678170868%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g170673170882%_))
                            (_%__kont171574171575%_
                             _%g170672170881%_
                             _%g170673170882%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170678170868%_))
                                (let ((_%e170692170791%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170678170868%_))))
                                  (let ((_%tl170694170796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170692170791%_)))
                                        (_%hd170693170794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170692170791%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170694170796%_))
                                        (let ((_%__splice171578171579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl170694170796%_
                                                  '0))))
                                          (let ((_%tl170697170801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171578171579%_
                                                    '1)))
                                                (_%target170695170799%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171578171579%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170697170801%_))
                                                (_%__match171627171628%_
                                                 _%e170674170857%_
                                                 _%hd170675170860%_
                                                 _%tl170676170862%_
                                                 _%e170677170865%_
                                                 _%hd170678170868%_
                                                 _%tl170679170870%_
                                                 _%e170692170791%_
                                                 _%hd170693170794%_
                                                 _%tl170694170796%_
                                                 _%__splice171578171579%_
                                                 _%target170695170799%_
                                                 _%tl170697170801%_)
                                                (_%__kont171580171581%_
                                                 _%hd170681170876%_
                                                 _%hd170678170868%_))))
                                        (_%__kont171580171581%_
                                         _%hd170681170876%_
                                         _%hd170678170868%_))))
                                (_%__kont171580171581%_
                                 _%hd170681170876%_
                                 _%hd170678170868%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171572171573%_))
                  (let ((_%e170674170857%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171572171573%_))))
                    (let ((_%tl170676170862%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170674170857%_)))
                          (_%hd170675170860%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170674170857%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170676170862%_))
                          (let ((_%e170677170865%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170676170862%_))))
                            (let ((_%tl170679170870%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170677170865%_)))
                                  (_%hd170678170868%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170677170865%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170679170870%_))
                                  (let ((_%e170680170873%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170679170870%_))))
                                    (let ((_%tl170682170878%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170680170873%_)))
                                          (_%hd170681170876%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170680170873%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170682170878%_))
                                          (_%__match171601171602%_
                                           _%e170674170857%_
                                           _%hd170675170860%_
                                           _%tl170676170862%_
                                           _%e170677170865%_
                                           _%hd170678170868%_
                                           _%tl170679170870%_
                                           _%e170680170873%_
                                           _%hd170681170876%_
                                           _%tl170682170878%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170678170868%_))
                                              (let ((_%e170692170791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170678170868%_))))
                                                (let ((_%tl170694170796%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170692170791%_)))
                                                      (_%hd170693170794%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170692170791%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170694170796%_))
                                                      (let ((_%__splice171578171579%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl170694170796%_
                        '0))))
                (let ((_%tl170697170801%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171578171579%_ '1)))
                      (_%target170695170799%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171578171579%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170697170801%_))
                      (_%__match171627171628%_
                       _%e170674170857%_
                       _%hd170675170860%_
                       _%tl170676170862%_
                       _%e170677170865%_
                       _%hd170678170868%_
                       _%tl170679170870%_
                       _%e170692170791%_
                       _%hd170693170794%_
                       _%tl170694170796%_
                       _%__splice171578171579%_
                       _%target170695170799%_
                       _%tl170697170801%_)
                      (let () (declare (not safe)) (_%g170670170722%_)))))
              (let () (declare (not safe)) (_%g170670170722%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170670170722%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170678170868%_))
                                      (let ((_%e170692170791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170678170868%_))))
                                        (let ((_%tl170694170796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170692170791%_)))
                                              (_%hd170693170794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170692170791%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl170694170796%_))
                                              (let ((_%__splice171578171579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl170694170796%_
                                                        '0))))
                                                (let ((_%tl170697170801%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171578171579%_
                                                          '1)))
                                                      (_%target170695170799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171578171579%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170697170801%_))
                                                      (_%__match171627171628%_
                                                       _%e170674170857%_
                                                       _%hd170675170860%_
                                                       _%tl170676170862%_
                                                       _%e170677170865%_
                                                       _%hd170678170868%_
                                                       _%tl170679170870%_
                                                       _%e170692170791%_
                                                       _%hd170693170794%_
                                                       _%tl170694170796%_
                                                       _%__splice171578171579%_
                                                       _%target170695170799%_
                                                       _%tl170697170801%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g170670170722%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170670170722%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170670170722%_))))))
                          (let () (declare (not safe)) (_%g170670170722%_)))))
                  (let () (declare (not safe)) (_%g170670170722%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self170624%_ _%stx170625%_)
        (let* ((_%g170627170637%_
                (lambda (_%g170628170634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170628170634%_))))
               (_%g170626170662%_
                (lambda (_%g170628170640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170628170640%_))
                      (let ((_%e170630170642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170628170640%_))))
                        (let ((_%hd170631170645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170630170642%_)))
                              (_%tl170632170647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170630170642%_))))
                          ((lambda (_%g170629170650%_)
                             (let ((_%decls170660%_
                                    (map gx#syntax->datum _%g170629170650%_)))
                               (let ((__tmp172988
                                      (let ((__tmp172989
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp172989
                                         _%decls170660%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp172988))
                               (cons 'declare _%decls170660%_)))
                           _%tl170632170647%_)))
                      (_%g170627170637%_ _%g170628170640%_)))))
          (_%g170626170662%_ _%stx170625%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self170371%_ _%stx170372%_)
        (let* ((_%g170374170391%_
                (lambda (_%g170375170388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170375170388%_))))
               (_%g170373170621%_
                (lambda (_%g170375170394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170375170394%_))
                      (let ((_%e170378170396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170375170394%_))))
                        (let ((_%hd170379170399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170378170396%_)))
                              (_%tl170380170401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170378170396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170380170401%_))
                              (let ((_%e170381170404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170380170401%_))))
                                (let ((_%hd170382170407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170381170404%_)))
                                      (_%tl170383170409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170381170404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170383170409%_))
                                      (let ((_%e170384170412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170383170409%_))))
                                        (let ((_%hd170385170415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170384170412%_)))
                                              (_%tl170386170417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170384170412%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170386170417%_))
                                              ((lambda (_%g170376170420%_
                                                        _%g170377170421%_)
                                                 (let* ((_%__stx171680171681%_
                                                         _%g170377170421%_)
                                                        (_%g170438170452%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171680171681%_)))))
                                                   (let ((_%__kont171682171683%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self170371%_
                                                               _%g170376170420%_))))
                                                         (_%__kont171684171685%_
                                                          (lambda (_%g170444170584%_)
                                                            (let ((_%eid170593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g170444170584%_))))
                      (let ((_%lambda-expr170594170596%_
                             (gxc#apply-find-lambda-expression
                              _%g170376170420%_)))
                        (if _%lambda-expr170594170596%_
                            (let* ((_%lambda-expr170598%_
                                    _%lambda-expr170594170596%_)
                                   (__tmp172990
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172990
                               _%lambda-expr170598%_
                               _%eid170593%_))
                            '#f))
                      (cons 'define
                            (cons _%eid170593%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self170371%_
                                           _%g170376170420%_))
                                        '()))))))
                 (_%__kont171686171687%_
                  (lambda ()
                    (let* ((_%tmp170459%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body170568%_
                            (let _%lp170461%_ ((_%rest170463%_
                                                _%g170377170421%_)
                                               (_%k170464%_ '0)
                                               (_%r170465%_ '()))
                              (let* ((_%__stx171650171651%_ _%rest170463%_)
                                     (_%g170470170487%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171650171651%_)))))
                                (let ((_%__kont171652171653%_
                                       (lambda (_%g170472170555%_)
                                         (_%lp170461%_
                                          _%g170472170555%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170464%_ '1))
                                          _%r170465%_)))
                                      (_%__kont171654171655%_
                                       (lambda (_%g170477170528%_
                                                _%g170478170529%_)
                                         (_%lp170461%_
                                          _%g170477170528%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170464%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g170478170529%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp170459%_
                           _%k170464%_
                           _%g170477170528%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r170465%_))))
                                      (_%__kont171656171657%_
                                       (lambda (_%g170482170499%_)
                                         (let ((__tmp172991
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g170482170499%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp170459%_
                                 _%k170464%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp172991
                                            _%r170465%_))))
                                      (_%__kont171658171659%_
                                       (lambda () (reverse _%r170465%_))))
                                  (let ((_%g170468170515%_
                                         (lambda ()
                                           (let ((_%g170482170499%_
                                                  _%__stx171650171651%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g170482170499%_))
                                                 (_%__kont171656171657%_
                                                  _%g170482170499%_)
                                                 (_%__kont171658171659%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx171650171651%_))
                                        (let ((_%e170473170544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx171650171651%_))))
                                          (let ((_%tl170475170549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170473170544%_)))
                                                (_%hd170474170547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170473170544%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd170474170547%_))
                                                (let ((_%e170476170552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd170474170547%_))))
                                                  (if (equal? _%e170476170552%_
                                                              '#f)
                                                      (_%__kont171652171653%_
                                                       _%tl170475170549%_)
                                                      (_%__kont171654171655%_
                                                       _%tl170475170549%_
                                                       _%hd170474170547%_)))
                                                (_%__kont171654171655%_
                                                 _%tl170475170549%_
                                                 _%hd170474170547%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170468170515%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp170459%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self170371%_
                                                       _%g170376170420%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp170459%_
                                         _%g170377170421%_
                                         _%g170376170420%_)
                                        _%body170568%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171680171681%_))
                                                         (let ((_%e170440170605%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171680171681%_))))
                   (let ((_%tl170442170610%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170440170605%_)))
                         (_%hd170441170608%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170440170605%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd170441170608%_))
                         (let ((_%e170443170613%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170441170608%_))))
                           (if (equal? _%e170443170613%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170442170610%_))
                                   (_%__kont171682171683%_)
                                   (_%__kont171686171687%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170442170610%_))
                                   (_%__kont171684171685%_ _%hd170441170608%_)
                                   (_%__kont171686171687%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl170442170610%_))
                             (_%__kont171684171685%_ _%hd170441170608%_)
                             (_%__kont171686171687%_)))))
                 (_%__kont171686171687%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd170385170415%_
                                               _%hd170382170407%_)
                                              (_%g170374170391%_
                                               _%g170375170394%_))))
                                      (_%g170374170391%_ _%g170375170394%_))))
                              (_%g170374170391%_ _%g170375170394%_))))
                      (_%g170374170391%_ _%g170375170394%_)))))
          (_%g170373170621%_ _%stx170372%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals170346%_ _%hd170347%_ _%expr170348%_)
        (let ((_%$e170350%_ (gxc#apply-count-values _%expr170348%_)))
          (if _%$e170350%_
              ((lambda (_%count170353%_)
                 (let ((_%len170355%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd170347%_)))
                       (_%cmp170356%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd170347%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len170355%_ '0))
                           (_%cmp170356%_ _%count170353%_ _%len170355%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr170348%_
                          _%hd170347%_)))))
               _%$e170350%_)
              (let* ((_%len170362%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd170347%_)))
                     (_%cmp170364%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd170347%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg170366%_
                      (let ((__tmp172993
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd170347%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp172992 (number->string _%len170362%_)))
                        (declare (not safe))
                        (##string-append __tmp172993 __tmp172992 '" values")))
                     (_%count170368%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd170347%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len170362%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count170368%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals170346%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp170364%_
                                (cons _%count170368%_
                                      (cons _%len170362%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp170364%_
                                                        (cons _%count170368%_
                                                              (cons _%len170362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg170366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count170368%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var170341%_)
        (letrec ((_%generate-inline170343%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var170341%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var170341%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170343%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170343%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var170334%_ _%i170335%_ _%rest170336%_)
        (letrec ((_%generate-inline170338%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i170335%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest170336%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var170334%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var170334%_
                                                      (cons '0 '())))
                                          (cons _%var170334%_ '()))))
                        (cons '##values-ref
                              (cons _%var170334%_ (cons _%i170335%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170338%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170338%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var170328%_ _%i170329%_)
        (if (let () (declare (not safe)) (##fx= _%i170329%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var170328%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var170328%_ '()))
                                  (cons (cons 'list (cons _%var170328%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var170328%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var170328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var170328%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i170329%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var170328%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var170328%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var170328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var170328%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var170328%_ '()))
                                (cons _%i170329%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var170328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i170329%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self170260%_ _%stx170261%_)
        (let* ((_%g170263170280%_
                (lambda (_%g170264170277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170264170277%_))))
               (_%g170262170325%_
                (lambda (_%g170264170283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170264170283%_))
                      (let ((_%e170267170285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170264170283%_))))
                        (let ((_%hd170268170288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170267170285%_)))
                              (_%tl170269170290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170267170285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170269170290%_))
                              (let ((_%e170270170293%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170269170290%_))))
                                (let ((_%hd170271170296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170270170293%_)))
                                      (_%tl170272170298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170270170293%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170272170298%_))
                                      (let ((_%e170273170301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170272170298%_))))
                                        (let ((_%hd170274170304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170273170301%_)))
                                              (_%tl170275170306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170273170301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170275170306%_))
                                              ((lambda (_%g170265170309%_
                                                        _%g170266170310%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self170260%_
                                                  _%g170266170310%_
                                                  _%g170265170309%_))
                                               _%hd170274170304%_
                                               _%hd170271170296%_)
                                              (_%g170263170280%_
                                               _%g170264170283%_))))
                                      (_%g170263170280%_ _%g170264170283%_))))
                              (_%g170263170280%_ _%g170264170283%_))))
                      (_%g170263170280%_ _%g170264170283%_)))))
          (_%g170262170325%_ _%stx170261%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self170219%_ _%hd170220%_ _%body170221%_)
        (let* ((_%hd170223%_ (gxc#generate-runtime-lambda-head _%hd170220%_))
               (_%body170225%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self170219%_ _%body170221%_)))
               (_%body170257%_
                (let* ((_%body170226170234%_ _%body170225%_)
                       (_%else170228170242%_
                        (lambda () (cons _%body170225%_ '())))
                       (_%K170230170247%_
                        (lambda (_%exprs170245%_) _%exprs170245%_)))
                  (if (pair? _%body170226170234%_)
                      (let ((_%hd170231170250%_
                             (let ()
                               (declare (not safe))
                               (##car _%body170226170234%_)))
                            (_%tl170232170252%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body170226170234%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd170231170250%_ 'begin))
                            (let ((_%exprs170255%_ _%tl170232170252%_))
                              (_%K170230170247%_ _%exprs170255%_))
                            (_%else170228170242%_)))
                      (_%else170228170242%_)))))
          (cons 'lambda (cons _%hd170223%_ _%body170257%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd170217%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd170217%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self168774%_ _%stx168775%_)
        (letrec ((_%dispatch-case?168777%_
                  (lambda (_%hd169455%_ _%body169456%_)
                    (let* ((_%form169458%_
                            (cons _%hd169455%_ (cons _%body169456%_ '())))
                           (_%__stx171712171713%_ _%form169458%_)
                           (_%g169463169620%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171712171713%_)))))
                      (let ((_%__kont171714171715%_
                             (lambda (_%g169465170137%_
                                      _%g169466170138%_
                                      _%g169467170139%_)
                               '#t))
                            (_%__kont171720171721%_
                             (lambda (_%g169510169929%_
                                      _%g169511169930%_
                                      _%g169512169931%_
                                      _%g169513169932%_
                                      _%g169514169933%_
                                      _%g169515169934%_)
                               '#t))
                            (_%__kont171726171727%_
                             (lambda (_%g169576169728%_
                                      _%g169577169729%_
                                      _%g169578169730%_
                                      _%g169579169731%_)
                               '#t))
                            (_%__kont171728171729%_ (lambda () '#f)))
                        (let* ((_%__match171853171854%_
                                (lambda (_%e169580169632%_
                                         _%hd169581169635%_
                                         _%tl169582169637%_
                                         _%e169583169640%_
                                         _%hd169584169643%_
                                         _%tl169585169645%_
                                         _%e169586169648%_
                                         _%hd169587169651%_
                                         _%tl169588169653%_
                                         _%e169589169656%_
                                         _%hd169590169659%_
                                         _%tl169591169661%_
                                         _%e169592169664%_
                                         _%hd169593169667%_
                                         _%tl169594169669%_
                                         _%e169595169672%_
                                         _%hd169596169675%_
                                         _%tl169597169677%_
                                         _%e169598169680%_
                                         _%hd169599169683%_
                                         _%tl169600169685%_
                                         _%e169601169688%_
                                         _%hd169602169691%_
                                         _%tl169603169693%_
                                         _%e169604169696%_
                                         _%hd169605169699%_
                                         _%tl169606169701%_
                                         _%e169607169704%_
                                         _%hd169608169707%_
                                         _%tl169609169709%_
                                         _%e169610169712%_
                                         _%hd169611169715%_
                                         _%tl169612169717%_
                                         _%e169613169720%_
                                         _%hd169614169723%_
                                         _%tl169615169725%_)
                                  (let ((_%g169576169728%_ _%hd169614169723%_)
                                        (_%g169577169729%_ _%hd169605169699%_)
                                        (_%g169578169730%_ _%hd169596169675%_)
                                        (_%g169579169731%_ _%hd169581169635%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g169579169731%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g169578169730%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g169579169731%_
                                                _%g169576169728%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g169577169729%_
                                                     _%g169579169731%_))))
                                        (_%__kont171726171727%_
                                         _%g169576169728%_
                                         _%g169577169729%_
                                         _%g169578169730%_
                                         _%g169579169731%_)
                                        (_%__kont171728171729%_)))))
                               (_%__match171825171826%_
                                (lambda (_%e169580169632%_
                                         _%hd169581169635%_
                                         _%tl169582169637%_
                                         _%e169583169640%_
                                         _%hd169584169643%_
                                         _%tl169585169645%_
                                         _%e169586169648%_
                                         _%hd169587169651%_
                                         _%tl169588169653%_
                                         _%e169589169656%_
                                         _%hd169590169659%_
                                         _%tl169591169661%_
                                         _%e169592169664%_
                                         _%hd169593169667%_
                                         _%tl169594169669%_
                                         _%e169595169672%_
                                         _%hd169596169675%_
                                         _%tl169597169677%_
                                         _%e169598169680%_
                                         _%hd169599169683%_
                                         _%tl169600169685%_
                                         _%e169601169688%_
                                         _%hd169602169691%_
                                         _%tl169603169693%_
                                         _%e169604169696%_
                                         _%hd169605169699%_
                                         _%tl169606169701%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169600169685%_))
                                      (let ((_%e169607169704%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169600169685%_))))
                                        (let ((_%tl169609169709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169607169704%_)))
                                              (_%hd169608169707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169607169704%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169608169707%_))
                                              (let ((_%e169610169712%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169608169707%_))))
                                                (let ((_%tl169612169717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169610169712%_)))
                                                      (_%hd169611169715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169610169712%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169611169715%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169611169715%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169612169717%_))
                      (let ((_%e169613169720%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169612169717%_))))
                        (let ((_%tl169615169725%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169613169720%_)))
                              (_%hd169614169723%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169613169720%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169615169725%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169609169709%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169585169645%_))
                                      (_%__match171853171854%_
                                       _%e169580169632%_
                                       _%hd169581169635%_
                                       _%tl169582169637%_
                                       _%e169583169640%_
                                       _%hd169584169643%_
                                       _%tl169585169645%_
                                       _%e169586169648%_
                                       _%hd169587169651%_
                                       _%tl169588169653%_
                                       _%e169589169656%_
                                       _%hd169590169659%_
                                       _%tl169591169661%_
                                       _%e169592169664%_
                                       _%hd169593169667%_
                                       _%tl169594169669%_
                                       _%e169595169672%_
                                       _%hd169596169675%_
                                       _%tl169597169677%_
                                       _%e169598169680%_
                                       _%hd169599169683%_
                                       _%tl169600169685%_
                                       _%e169601169688%_
                                       _%hd169602169691%_
                                       _%tl169603169693%_
                                       _%e169604169696%_
                                       _%hd169605169699%_
                                       _%tl169606169701%_
                                       _%e169607169704%_
                                       _%hd169608169707%_
                                       _%tl169609169709%_
                                       _%e169610169712%_
                                       _%hd169611169715%_
                                       _%tl169612169717%_
                                       _%e169613169720%_
                                       _%hd169614169723%_
                                       _%tl169615169725%_)
                                      (_%__kont171728171729%_))
                                  (_%__kont171728171729%_))
                              (_%__kont171728171729%_))))
                      (_%__kont171728171729%_))
                  (_%__kont171728171729%_))
              (_%__kont171728171729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171728171729%_))))
                                      (_%__kont171728171729%_))))
                               (_%__match171755171756%_
                                (lambda (_%e169516169773%_
                                         _%hd169517169776%_
                                         _%tl169518169778%_
                                         _%__splice171722171723%_
                                         _%target169519169781%_
                                         _%tl169521169783%_)
                                  (letrec ((_%loop169522169786%_
                                            (lambda (_%hd169520169789%_
                                                     _%arg169526169791%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169520169789%_))
                                                  (let ((_%e169523169793%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169520169789%_))))
                                                    (let ((_%lp-tl169525169798%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169523169793%_)))
                                                          (_%lp-hd169524169796%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169523169793%_))))
                                                      (_%loop169522169786%_
                                                       _%lp-tl169525169798%_
                                                       (cons _%lp-hd169524169796%_
                                                             _%arg169526169791%_))))
                                                  (let ((_%arg169527169801%_
                                                         (reverse _%arg169526169791%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169518169778%_))
                                                        (let ((_%e169528169803%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169518169778%_))))
                  (let ((_%tl169530169808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169528169803%_)))
                        (_%hd169529169806%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169528169803%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169529169806%_))
                        (let ((_%e169531169811%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169529169806%_))))
                          (let ((_%tl169533169816%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169531169811%_)))
                                (_%hd169532169814%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169531169811%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169532169814%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169532169814%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169533169816%_))
                                        (let ((_%e169534169819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169533169816%_))))
                                          (let ((_%tl169536169824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169534169819%_)))
                                                (_%hd169535169822%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169534169819%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169535169822%_))
                                                (let ((_%e169537169827%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169535169822%_))))
                                                  (let ((_%tl169539169832%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169537169827%_)))
                                                        (_%hd169538169830%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169537169827%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169538169830%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169538169830%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169539169832%_))
                        (let ((_%e169540169835%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169539169832%_))))
                          (let ((_%tl169542169840%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169540169835%_)))
                                (_%hd169541169838%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169540169835%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169542169840%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169536169824%_))
                                    (let ((_%e169543169843%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169536169824%_))))
                                      (let ((_%tl169545169848%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169543169843%_)))
                                            (_%hd169544169846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169543169843%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169544169846%_))
                                            (let ((_%e169546169851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169544169846%_))))
                                              (let ((_%tl169548169856%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169546169851%_)))
                                                    (_%hd169547169854%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169546169851%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169547169854%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169547169854%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169548169856%_))
                                                            (let ((_%e169549169859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169548169856%_))))
                      (let ((_%tl169551169864%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169549169859%_)))
                            (_%hd169550169862%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169549169859%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169551169864%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169545169848%_))
                                (if (let ((__tmp172994
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl169545169848%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp172994 '1))
                                    (let ((_%__splice171724171725%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169545169848%_
                                              '1))))
                                      (let ((_%tl169554169869%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171724171725%_
                                                '1)))
                                            (_%target169552169867%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171724171725%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169554169869%_))
                                            (let ((_%e169561169872%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169554169869%_))))
                                              (let ((_%tl169563169877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169561169872%_)))
                                                    (_%hd169562169875%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169561169872%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169562169875%_))
                                                    (let ((_%e169564169880%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169562169875%_))))
                                                      (let ((_%tl169566169885%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169564169880%_)))
                    (_%hd169565169883%_
                     (let () (declare (not safe)) (##car _%e169564169880%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169565169883%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd169565169883%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169566169885%_))
                            (let ((_%e169567169888%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169566169885%_))))
                              (let ((_%tl169569169893%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169567169888%_)))
                                    (_%hd169568169891%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169567169888%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169569169893%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169563169877%_))
                                        (letrec ((_%loop169555169896%_
                                                  (lambda (_%hd169553169899%_
                                                           _%xarg169559169901%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd169553169899%_))
                                                        (let ((_%e169556169903%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd169553169899%_))))
                  (let ((_%lp-tl169558169908%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169556169903%_)))
                        (_%lp-hd169557169906%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169556169903%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd169557169906%_))
                        (let ((_%e169570169911%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd169557169906%_))))
                          (let ((_%tl169572169916%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169570169911%_)))
                                (_%hd169571169914%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169570169911%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169571169914%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd169571169914%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169572169916%_))
                                        (let ((_%e169573169919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169572169916%_))))
                                          (let ((_%tl169575169924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169573169919%_)))
                                                (_%hd169574169922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169573169919%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169575169924%_))
                                                (_%loop169555169896%_
                                                 _%lp-tl169558169908%_
                                                 (cons _%hd169574169922%_
                                                       _%xarg169559169901%_))
                                                (_%__match171825171826%_
                                                 _%e169516169773%_
                                                 _%hd169517169776%_
                                                 _%tl169518169778%_
                                                 _%e169528169803%_
                                                 _%hd169529169806%_
                                                 _%tl169530169808%_
                                                 _%e169531169811%_
                                                 _%hd169532169814%_
                                                 _%tl169533169816%_
                                                 _%e169534169819%_
                                                 _%hd169535169822%_
                                                 _%tl169536169824%_
                                                 _%e169537169827%_
                                                 _%hd169538169830%_
                                                 _%tl169539169832%_
                                                 _%e169540169835%_
                                                 _%hd169541169838%_
                                                 _%tl169542169840%_
                                                 _%e169543169843%_
                                                 _%hd169544169846%_
                                                 _%tl169545169848%_
                                                 _%e169546169851%_
                                                 _%hd169547169854%_
                                                 _%tl169548169856%_
                                                 _%e169549169859%_
                                                 _%hd169550169862%_
                                                 _%tl169551169864%_))))
                                        (_%__match171825171826%_
                                         _%e169516169773%_
                                         _%hd169517169776%_
                                         _%tl169518169778%_
                                         _%e169528169803%_
                                         _%hd169529169806%_
                                         _%tl169530169808%_
                                         _%e169531169811%_
                                         _%hd169532169814%_
                                         _%tl169533169816%_
                                         _%e169534169819%_
                                         _%hd169535169822%_
                                         _%tl169536169824%_
                                         _%e169537169827%_
                                         _%hd169538169830%_
                                         _%tl169539169832%_
                                         _%e169540169835%_
                                         _%hd169541169838%_
                                         _%tl169542169840%_
                                         _%e169543169843%_
                                         _%hd169544169846%_
                                         _%tl169545169848%_
                                         _%e169546169851%_
                                         _%hd169547169854%_
                                         _%tl169548169856%_
                                         _%e169549169859%_
                                         _%hd169550169862%_
                                         _%tl169551169864%_))
                                    (_%__match171825171826%_
                                     _%e169516169773%_
                                     _%hd169517169776%_
                                     _%tl169518169778%_
                                     _%e169528169803%_
                                     _%hd169529169806%_
                                     _%tl169530169808%_
                                     _%e169531169811%_
                                     _%hd169532169814%_
                                     _%tl169533169816%_
                                     _%e169534169819%_
                                     _%hd169535169822%_
                                     _%tl169536169824%_
                                     _%e169537169827%_
                                     _%hd169538169830%_
                                     _%tl169539169832%_
                                     _%e169540169835%_
                                     _%hd169541169838%_
                                     _%tl169542169840%_
                                     _%e169543169843%_
                                     _%hd169544169846%_
                                     _%tl169545169848%_
                                     _%e169546169851%_
                                     _%hd169547169854%_
                                     _%tl169548169856%_
                                     _%e169549169859%_
                                     _%hd169550169862%_
                                     _%tl169551169864%_))
                                (_%__match171825171826%_
                                 _%e169516169773%_
                                 _%hd169517169776%_
                                 _%tl169518169778%_
                                 _%e169528169803%_
                                 _%hd169529169806%_
                                 _%tl169530169808%_
                                 _%e169531169811%_
                                 _%hd169532169814%_
                                 _%tl169533169816%_
                                 _%e169534169819%_
                                 _%hd169535169822%_
                                 _%tl169536169824%_
                                 _%e169537169827%_
                                 _%hd169538169830%_
                                 _%tl169539169832%_
                                 _%e169540169835%_
                                 _%hd169541169838%_
                                 _%tl169542169840%_
                                 _%e169543169843%_
                                 _%hd169544169846%_
                                 _%tl169545169848%_
                                 _%e169546169851%_
                                 _%hd169547169854%_
                                 _%tl169548169856%_
                                 _%e169549169859%_
                                 _%hd169550169862%_
                                 _%tl169551169864%_))))
                        (_%__match171825171826%_
                         _%e169516169773%_
                         _%hd169517169776%_
                         _%tl169518169778%_
                         _%e169528169803%_
                         _%hd169529169806%_
                         _%tl169530169808%_
                         _%e169531169811%_
                         _%hd169532169814%_
                         _%tl169533169816%_
                         _%e169534169819%_
                         _%hd169535169822%_
                         _%tl169536169824%_
                         _%e169537169827%_
                         _%hd169538169830%_
                         _%tl169539169832%_
                         _%e169540169835%_
                         _%hd169541169838%_
                         _%tl169542169840%_
                         _%e169543169843%_
                         _%hd169544169846%_
                         _%tl169545169848%_
                         _%e169546169851%_
                         _%hd169547169854%_
                         _%tl169548169856%_
                         _%e169549169859%_
                         _%hd169550169862%_
                         _%tl169551169864%_))))
                (let ((_%xarg169560169927%_ (reverse _%xarg169559169901%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169530169808%_))
                      (let ((_%g169510169929%_ _%hd169568169891%_)
                            (_%g169511169930%_ _%xarg169560169927%_)
                            (_%g169512169931%_ _%hd169550169862%_)
                            (_%g169513169932%_ _%hd169541169838%_)
                            (_%g169514169933%_ _%tl169521169783%_)
                            (_%g169515169934%_ _%arg169527169801%_))
                        (if (and (let ((__tmp172995
                                        (let ((__tmp172996
                                               (lambda (_%g169977169980%_
                                                        _%g169978169982%_)
                                                 (cons _%g169977169980%_
                                                       _%g169978169982%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172996
                                           '()
                                           _%g169515169934%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp172995))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g169514169933%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g169513169932%_
                                    'apply))
                                 (let ((__tmp172999
                                        (length (let ((__tmp173000
                                                       (lambda (_%g169984169987%_
                                                                _%g169985169989%_)
                                                         (cons _%g169984169987%_
                                                               _%g169985169989%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp173000
                                                   '()
                                                   _%g169515169934%_))))
                                       (__tmp172997
                                        (length (let ((__tmp172998
                                                       (lambda (_%g169991169994%_
                                                                _%g169992169996%_)
                                                         (cons _%g169991169994%_
                                                               _%g169992169996%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172998
                                                   '()
                                                   _%g169511169930%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp172999 __tmp172997))
                                 (let ((__tmp173003
                                        (let ((__tmp173004
                                               (lambda (_%g169998170001%_
                                                        _%g169999170003%_)
                                                 (cons _%g169998170001%_
                                                       _%g169999170003%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173004
                                           '()
                                           _%g169515169934%_)))
                                       (__tmp173001
                                        (let ((__tmp173002
                                               (lambda (_%g170005170008%_
                                                        _%g170006170010%_)
                                                 (cons _%g170005170008%_
                                                       _%g170006170010%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173002
                                           '()
                                           _%g169511169930%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp173003
                                    __tmp173001))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g169514169933%_
                                    _%g169510169929%_))
                                 (not (let ((__tmp173008
                                             (lambda (_%g170012170014%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g170012170014%_
                                                  _%g169512169931%_))))
                                            (__tmp173005
                                             (let ((__tmp173007
                                                    (lambda (_%g170016170019%_
                                                             _%g170017170021%_)
                                                      (cons _%g170016170019%_
                                                            _%g170017170021%_)))
                                                   (__tmp173006
                                                    (cons _%g169514169933%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173007
                                                __tmp173006
                                                _%g169515169934%_))))
                                        (declare (not safe))
                                        (__find __tmp173008 __tmp173005))))
                            (_%__kont171720171721%_
                             _%g169510169929%_
                             _%g169511169930%_
                             _%g169512169931%_
                             _%g169513169932%_
                             _%g169514169933%_
                             _%g169515169934%_)
                            (_%__match171825171826%_
                             _%e169516169773%_
                             _%hd169517169776%_
                             _%tl169518169778%_
                             _%e169528169803%_
                             _%hd169529169806%_
                             _%tl169530169808%_
                             _%e169531169811%_
                             _%hd169532169814%_
                             _%tl169533169816%_
                             _%e169534169819%_
                             _%hd169535169822%_
                             _%tl169536169824%_
                             _%e169537169827%_
                             _%hd169538169830%_
                             _%tl169539169832%_
                             _%e169540169835%_
                             _%hd169541169838%_
                             _%tl169542169840%_
                             _%e169543169843%_
                             _%hd169544169846%_
                             _%tl169545169848%_
                             _%e169546169851%_
                             _%hd169547169854%_
                             _%tl169548169856%_
                             _%e169549169859%_
                             _%hd169550169862%_
                             _%tl169551169864%_)))
                      (_%__match171825171826%_
                       _%e169516169773%_
                       _%hd169517169776%_
                       _%tl169518169778%_
                       _%e169528169803%_
                       _%hd169529169806%_
                       _%tl169530169808%_
                       _%e169531169811%_
                       _%hd169532169814%_
                       _%tl169533169816%_
                       _%e169534169819%_
                       _%hd169535169822%_
                       _%tl169536169824%_
                       _%e169537169827%_
                       _%hd169538169830%_
                       _%tl169539169832%_
                       _%e169540169835%_
                       _%hd169541169838%_
                       _%tl169542169840%_
                       _%e169543169843%_
                       _%hd169544169846%_
                       _%tl169545169848%_
                       _%e169546169851%_
                       _%hd169547169854%_
                       _%tl169548169856%_
                       _%e169549169859%_
                       _%hd169550169862%_
                       _%tl169551169864%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop169555169896%_
                                           _%target169552169867%_
                                           '()))
                                        (_%__match171825171826%_
                                         _%e169516169773%_
                                         _%hd169517169776%_
                                         _%tl169518169778%_
                                         _%e169528169803%_
                                         _%hd169529169806%_
                                         _%tl169530169808%_
                                         _%e169531169811%_
                                         _%hd169532169814%_
                                         _%tl169533169816%_
                                         _%e169534169819%_
                                         _%hd169535169822%_
                                         _%tl169536169824%_
                                         _%e169537169827%_
                                         _%hd169538169830%_
                                         _%tl169539169832%_
                                         _%e169540169835%_
                                         _%hd169541169838%_
                                         _%tl169542169840%_
                                         _%e169543169843%_
                                         _%hd169544169846%_
                                         _%tl169545169848%_
                                         _%e169546169851%_
                                         _%hd169547169854%_
                                         _%tl169548169856%_
                                         _%e169549169859%_
                                         _%hd169550169862%_
                                         _%tl169551169864%_))
                                    (_%__match171825171826%_
                                     _%e169516169773%_
                                     _%hd169517169776%_
                                     _%tl169518169778%_
                                     _%e169528169803%_
                                     _%hd169529169806%_
                                     _%tl169530169808%_
                                     _%e169531169811%_
                                     _%hd169532169814%_
                                     _%tl169533169816%_
                                     _%e169534169819%_
                                     _%hd169535169822%_
                                     _%tl169536169824%_
                                     _%e169537169827%_
                                     _%hd169538169830%_
                                     _%tl169539169832%_
                                     _%e169540169835%_
                                     _%hd169541169838%_
                                     _%tl169542169840%_
                                     _%e169543169843%_
                                     _%hd169544169846%_
                                     _%tl169545169848%_
                                     _%e169546169851%_
                                     _%hd169547169854%_
                                     _%tl169548169856%_
                                     _%e169549169859%_
                                     _%hd169550169862%_
                                     _%tl169551169864%_))))
                            (_%__match171825171826%_
                             _%e169516169773%_
                             _%hd169517169776%_
                             _%tl169518169778%_
                             _%e169528169803%_
                             _%hd169529169806%_
                             _%tl169530169808%_
                             _%e169531169811%_
                             _%hd169532169814%_
                             _%tl169533169816%_
                             _%e169534169819%_
                             _%hd169535169822%_
                             _%tl169536169824%_
                             _%e169537169827%_
                             _%hd169538169830%_
                             _%tl169539169832%_
                             _%e169540169835%_
                             _%hd169541169838%_
                             _%tl169542169840%_
                             _%e169543169843%_
                             _%hd169544169846%_
                             _%tl169545169848%_
                             _%e169546169851%_
                             _%hd169547169854%_
                             _%tl169548169856%_
                             _%e169549169859%_
                             _%hd169550169862%_
                             _%tl169551169864%_))
                        (_%__match171825171826%_
                         _%e169516169773%_
                         _%hd169517169776%_
                         _%tl169518169778%_
                         _%e169528169803%_
                         _%hd169529169806%_
                         _%tl169530169808%_
                         _%e169531169811%_
                         _%hd169532169814%_
                         _%tl169533169816%_
                         _%e169534169819%_
                         _%hd169535169822%_
                         _%tl169536169824%_
                         _%e169537169827%_
                         _%hd169538169830%_
                         _%tl169539169832%_
                         _%e169540169835%_
                         _%hd169541169838%_
                         _%tl169542169840%_
                         _%e169543169843%_
                         _%hd169544169846%_
                         _%tl169545169848%_
                         _%e169546169851%_
                         _%hd169547169854%_
                         _%tl169548169856%_
                         _%e169549169859%_
                         _%hd169550169862%_
                         _%tl169551169864%_))
                    (_%__match171825171826%_
                     _%e169516169773%_
                     _%hd169517169776%_
                     _%tl169518169778%_
                     _%e169528169803%_
                     _%hd169529169806%_
                     _%tl169530169808%_
                     _%e169531169811%_
                     _%hd169532169814%_
                     _%tl169533169816%_
                     _%e169534169819%_
                     _%hd169535169822%_
                     _%tl169536169824%_
                     _%e169537169827%_
                     _%hd169538169830%_
                     _%tl169539169832%_
                     _%e169540169835%_
                     _%hd169541169838%_
                     _%tl169542169840%_
                     _%e169543169843%_
                     _%hd169544169846%_
                     _%tl169545169848%_
                     _%e169546169851%_
                     _%hd169547169854%_
                     _%tl169548169856%_
                     _%e169549169859%_
                     _%hd169550169862%_
                     _%tl169551169864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171825171826%_
                                                     _%e169516169773%_
                                                     _%hd169517169776%_
                                                     _%tl169518169778%_
                                                     _%e169528169803%_
                                                     _%hd169529169806%_
                                                     _%tl169530169808%_
                                                     _%e169531169811%_
                                                     _%hd169532169814%_
                                                     _%tl169533169816%_
                                                     _%e169534169819%_
                                                     _%hd169535169822%_
                                                     _%tl169536169824%_
                                                     _%e169537169827%_
                                                     _%hd169538169830%_
                                                     _%tl169539169832%_
                                                     _%e169540169835%_
                                                     _%hd169541169838%_
                                                     _%tl169542169840%_
                                                     _%e169543169843%_
                                                     _%hd169544169846%_
                                                     _%tl169545169848%_
                                                     _%e169546169851%_
                                                     _%hd169547169854%_
                                                     _%tl169548169856%_
                                                     _%e169549169859%_
                                                     _%hd169550169862%_
                                                     _%tl169551169864%_))))
                                            (_%__match171825171826%_
                                             _%e169516169773%_
                                             _%hd169517169776%_
                                             _%tl169518169778%_
                                             _%e169528169803%_
                                             _%hd169529169806%_
                                             _%tl169530169808%_
                                             _%e169531169811%_
                                             _%hd169532169814%_
                                             _%tl169533169816%_
                                             _%e169534169819%_
                                             _%hd169535169822%_
                                             _%tl169536169824%_
                                             _%e169537169827%_
                                             _%hd169538169830%_
                                             _%tl169539169832%_
                                             _%e169540169835%_
                                             _%hd169541169838%_
                                             _%tl169542169840%_
                                             _%e169543169843%_
                                             _%hd169544169846%_
                                             _%tl169545169848%_
                                             _%e169546169851%_
                                             _%hd169547169854%_
                                             _%tl169548169856%_
                                             _%e169549169859%_
                                             _%hd169550169862%_
                                             _%tl169551169864%_))))
                                    (_%__match171825171826%_
                                     _%e169516169773%_
                                     _%hd169517169776%_
                                     _%tl169518169778%_
                                     _%e169528169803%_
                                     _%hd169529169806%_
                                     _%tl169530169808%_
                                     _%e169531169811%_
                                     _%hd169532169814%_
                                     _%tl169533169816%_
                                     _%e169534169819%_
                                     _%hd169535169822%_
                                     _%tl169536169824%_
                                     _%e169537169827%_
                                     _%hd169538169830%_
                                     _%tl169539169832%_
                                     _%e169540169835%_
                                     _%hd169541169838%_
                                     _%tl169542169840%_
                                     _%e169543169843%_
                                     _%hd169544169846%_
                                     _%tl169545169848%_
                                     _%e169546169851%_
                                     _%hd169547169854%_
                                     _%tl169548169856%_
                                     _%e169549169859%_
                                     _%hd169550169862%_
                                     _%tl169551169864%_))
                                (_%__match171825171826%_
                                 _%e169516169773%_
                                 _%hd169517169776%_
                                 _%tl169518169778%_
                                 _%e169528169803%_
                                 _%hd169529169806%_
                                 _%tl169530169808%_
                                 _%e169531169811%_
                                 _%hd169532169814%_
                                 _%tl169533169816%_
                                 _%e169534169819%_
                                 _%hd169535169822%_
                                 _%tl169536169824%_
                                 _%e169537169827%_
                                 _%hd169538169830%_
                                 _%tl169539169832%_
                                 _%e169540169835%_
                                 _%hd169541169838%_
                                 _%tl169542169840%_
                                 _%e169543169843%_
                                 _%hd169544169846%_
                                 _%tl169545169848%_
                                 _%e169546169851%_
                                 _%hd169547169854%_
                                 _%tl169548169856%_
                                 _%e169549169859%_
                                 _%hd169550169862%_
                                 _%tl169551169864%_))
                            (_%__kont171728171729%_))))
                    (_%__kont171728171729%_))
                (_%__kont171728171729%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171728171729%_))))
                                            (_%__kont171728171729%_))))
                                    (_%__kont171728171729%_))
                                (_%__kont171728171729%_))))
                        (_%__kont171728171729%_))
                    (_%__kont171728171729%_))
                (_%__kont171728171729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171728171729%_))))
                                        (_%__kont171728171729%_))
                                    (_%__kont171728171729%_))
                                (_%__kont171728171729%_))))
                        (_%__kont171728171729%_))))
                (_%__kont171728171729%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169522169786%_
                                     _%target169519169781%_
                                     '()))))
                               (_%__match171743171744%_
                                (lambda (_%e169468170029%_
                                         _%hd169469170032%_
                                         _%tl169470170034%_
                                         _%__splice171716171717%_
                                         _%target169471170037%_
                                         _%tl169473170039%_)
                                  (letrec ((_%loop169474170042%_
                                            (lambda (_%hd169472170045%_
                                                     _%arg169478170047%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169472170045%_))
                                                  (let ((_%e169475170049%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169472170045%_))))
                                                    (let ((_%lp-tl169477170054%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169475170049%_)))
                                                          (_%lp-hd169476170052%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169475170049%_))))
                                                      (_%loop169474170042%_
                                                       _%lp-tl169477170054%_
                                                       (cons _%lp-hd169476170052%_
                                                             _%arg169478170047%_))))
                                                  (let ((_%arg169479170057%_
                                                         (reverse _%arg169478170047%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169470170034%_))
                                                        (let ((_%e169480170059%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169470170034%_))))
                  (let ((_%tl169482170064%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169480170059%_)))
                        (_%hd169481170062%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169480170059%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169481170062%_))
                        (let ((_%e169483170067%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169481170062%_))))
                          (let ((_%tl169485170072%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169483170067%_)))
                                (_%hd169484170070%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169483170067%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169484170070%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169484170070%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169485170072%_))
                                        (let ((_%e169486170075%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169485170072%_))))
                                          (let ((_%tl169488170080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169486170075%_)))
                                                (_%hd169487170078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169486170075%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169487170078%_))
                                                (let ((_%e169489170083%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169487170078%_))))
                                                  (let ((_%tl169491170088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169489170083%_)))
                                                        (_%hd169490170086%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169489170083%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169490170086%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169490170086%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169491170088%_))
                        (let ((_%e169492170091%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169491170088%_))))
                          (let ((_%tl169494170096%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169492170091%_)))
                                (_%hd169493170094%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169492170091%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169494170096%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169488170080%_))
                                    (let ((_%__splice171718171719%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169488170080%_
                                              '0))))
                                      (let ((_%tl169497170101%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171718171719%_
                                                '1)))
                                            (_%target169495170099%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171718171719%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169497170101%_))
                                            (letrec ((_%loop169498170104%_
                                                      (lambda (_%hd169496170107%_
                                                               _%xarg169502170109%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd169496170107%_))
                                                            (let ((_%e169499170111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169496170107%_))))
                      (let ((_%lp-tl169501170116%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169499170111%_)))
                            (_%lp-hd169500170114%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169499170111%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd169500170114%_))
                            (let ((_%e169504170119%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd169500170114%_))))
                              (let ((_%tl169506170124%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169504170119%_)))
                                    (_%hd169505170122%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169504170119%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169505170122%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd169505170122%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169506170124%_))
                                            (let ((_%e169507170127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169506170124%_))))
                                              (let ((_%tl169509170132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169507170127%_)))
                                                    (_%hd169508170130%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169507170127%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169509170132%_))
                                                    (_%loop169498170104%_
                                                     _%lp-tl169501170116%_
                                                     (cons _%hd169508170130%_
                                                           _%xarg169502170109%_))
                                                    (_%__match171755171756%_
                                                     _%e169468170029%_
                                                     _%hd169469170032%_
                                                     _%tl169470170034%_
                                                     _%__splice171716171717%_
                                                     _%target169471170037%_
                                                     _%tl169473170039%_))))
                                            (_%__match171755171756%_
                                             _%e169468170029%_
                                             _%hd169469170032%_
                                             _%tl169470170034%_
                                             _%__splice171716171717%_
                                             _%target169471170037%_
                                             _%tl169473170039%_))
                                        (_%__match171755171756%_
                                         _%e169468170029%_
                                         _%hd169469170032%_
                                         _%tl169470170034%_
                                         _%__splice171716171717%_
                                         _%target169471170037%_
                                         _%tl169473170039%_))
                                    (_%__match171755171756%_
                                     _%e169468170029%_
                                     _%hd169469170032%_
                                     _%tl169470170034%_
                                     _%__splice171716171717%_
                                     _%target169471170037%_
                                     _%tl169473170039%_))))
                            (_%__match171755171756%_
                             _%e169468170029%_
                             _%hd169469170032%_
                             _%tl169470170034%_
                             _%__splice171716171717%_
                             _%target169471170037%_
                             _%tl169473170039%_))))
                    (let ((_%xarg169503170135%_
                           (reverse _%xarg169502170109%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169482170064%_))
                          (let ((_%g169465170137%_ _%xarg169503170135%_)
                                (_%g169466170138%_ _%hd169493170094%_)
                                (_%g169467170139%_ _%arg169479170057%_))
                            (if (and (let ((__tmp173009
                                            (let ((__tmp173010
                                                   (lambda (_%g170167170170%_
                                                            _%g170168170172%_)
                                                     (cons _%g170167170170%_
                                                           _%g170168170172%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173010
                                               '()
                                               _%g169467170139%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp173009))
                                     (let ((__tmp173013
                                            (length (let ((__tmp173014
                                                           (lambda (_%g170174170177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170175170179%_)
                     (cons _%g170174170177%_ _%g170175170179%_))))
              (declare (not safe))
              (__foldr1 __tmp173014 '() _%g169467170139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp173011
                                            (length (let ((__tmp173012
                                                           (lambda (_%g170181170184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170182170186%_)
                     (cons _%g170181170184%_ _%g170182170186%_))))
              (declare (not safe))
              (__foldr1 __tmp173012 '() _%g169465170137%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173013 __tmp173011))
                                     (let ((__tmp173017
                                            (let ((__tmp173018
                                                   (lambda (_%g170188170191%_
                                                            _%g170189170193%_)
                                                     (cons _%g170188170191%_
                                                           _%g170189170193%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173018
                                               '()
                                               _%g169467170139%_)))
                                           (__tmp173015
                                            (let ((__tmp173016
                                                   (lambda (_%g170195170198%_
                                                            _%g170196170200%_)
                                                     (cons _%g170195170198%_
                                                           _%g170196170200%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173016
                                               '()
                                               _%g169465170137%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp173017
                                        __tmp173015))
                                     (not (let ((__tmp173021
                                                 (lambda (_%g170202170204%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g170202170204%_
                                                      _%g169466170138%_))))
                                                (__tmp173019
                                                 (let ((__tmp173020
                                                        (lambda (_%g170206170209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170207170211%_)
                  (cons _%g170206170209%_ _%g170207170211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp173020
                                                    '()
                                                    _%g169467170139%_))))
                                            (declare (not safe))
                                            (__find __tmp173021 __tmp173019))))
                                (_%__kont171714171715%_
                                 _%g169465170137%_
                                 _%g169466170138%_
                                 _%g169467170139%_)
                                (_%__match171755171756%_
                                 _%e169468170029%_
                                 _%hd169469170032%_
                                 _%tl169470170034%_
                                 _%__splice171716171717%_
                                 _%target169471170037%_
                                 _%tl169473170039%_)))
                          (_%__match171755171756%_
                           _%e169468170029%_
                           _%hd169469170032%_
                           _%tl169470170034%_
                           _%__splice171716171717%_
                           _%target169471170037%_
                           _%tl169473170039%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop169498170104%_
                                               _%target169495170099%_
                                               '()))
                                            (_%__match171755171756%_
                                             _%e169468170029%_
                                             _%hd169469170032%_
                                             _%tl169470170034%_
                                             _%__splice171716171717%_
                                             _%target169471170037%_
                                             _%tl169473170039%_))))
                                    (_%__match171755171756%_
                                     _%e169468170029%_
                                     _%hd169469170032%_
                                     _%tl169470170034%_
                                     _%__splice171716171717%_
                                     _%target169471170037%_
                                     _%tl169473170039%_))
                                (_%__match171755171756%_
                                 _%e169468170029%_
                                 _%hd169469170032%_
                                 _%tl169470170034%_
                                 _%__splice171716171717%_
                                 _%target169471170037%_
                                 _%tl169473170039%_))))
                        (_%__match171755171756%_
                         _%e169468170029%_
                         _%hd169469170032%_
                         _%tl169470170034%_
                         _%__splice171716171717%_
                         _%target169471170037%_
                         _%tl169473170039%_))
                    (_%__match171755171756%_
                     _%e169468170029%_
                     _%hd169469170032%_
                     _%tl169470170034%_
                     _%__splice171716171717%_
                     _%target169471170037%_
                     _%tl169473170039%_))
                (_%__match171755171756%_
                 _%e169468170029%_
                 _%hd169469170032%_
                 _%tl169470170034%_
                 _%__splice171716171717%_
                 _%target169471170037%_
                 _%tl169473170039%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171755171756%_
                                                 _%e169468170029%_
                                                 _%hd169469170032%_
                                                 _%tl169470170034%_
                                                 _%__splice171716171717%_
                                                 _%target169471170037%_
                                                 _%tl169473170039%_))))
                                        (_%__match171755171756%_
                                         _%e169468170029%_
                                         _%hd169469170032%_
                                         _%tl169470170034%_
                                         _%__splice171716171717%_
                                         _%target169471170037%_
                                         _%tl169473170039%_))
                                    (_%__match171755171756%_
                                     _%e169468170029%_
                                     _%hd169469170032%_
                                     _%tl169470170034%_
                                     _%__splice171716171717%_
                                     _%target169471170037%_
                                     _%tl169473170039%_))
                                (_%__match171755171756%_
                                 _%e169468170029%_
                                 _%hd169469170032%_
                                 _%tl169470170034%_
                                 _%__splice171716171717%_
                                 _%target169471170037%_
                                 _%tl169473170039%_))))
                        (_%__match171755171756%_
                         _%e169468170029%_
                         _%hd169469170032%_
                         _%tl169470170034%_
                         _%__splice171716171717%_
                         _%target169471170037%_
                         _%tl169473170039%_))))
                (_%__match171755171756%_
                 _%e169468170029%_
                 _%hd169469170032%_
                 _%tl169470170034%_
                 _%__splice171716171717%_
                 _%target169471170037%_
                 _%tl169473170039%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169474170042%_
                                     _%target169471170037%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171712171713%_))
                              (let ((_%e169468170029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171712171713%_))))
                                (let ((_%tl169470170034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169468170029%_)))
                                      (_%hd169469170032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169468170029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd169469170032%_))
                                      (let ((_%__splice171716171717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd169469170032%_
                                                '0))))
                                        (let ((_%tl169473170039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171716171717%_
                                                  '1)))
                                              (_%target169471170037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171716171717%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169473170039%_))
                                              (_%__match171743171744%_
                                               _%e169468170029%_
                                               _%hd169469170032%_
                                               _%tl169470170034%_
                                               _%__splice171716171717%_
                                               _%target169471170037%_
                                               _%tl169473170039%_)
                                              (_%__match171755171756%_
                                               _%e169468170029%_
                                               _%hd169469170032%_
                                               _%tl169470170034%_
                                               _%__splice171716171717%_
                                               _%target169471170037%_
                                               _%tl169473170039%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169470170034%_))
                                          (let ((_%e169583169640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169470170034%_))))
                                            (let ((_%tl169585169645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169583169640%_)))
                                                  (_%hd169584169643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169583169640%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169584169643%_))
                                                  (let ((_%e169586169648%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169584169643%_))))
                                                    (let ((_%tl169588169653%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169586169648%_)))
                                                          (_%hd169587169651%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169586169648%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169587169651%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169587169651%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169588169653%_))
                          (let ((_%e169589169656%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169588169653%_))))
                            (let ((_%tl169591169661%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169589169656%_)))
                                  (_%hd169590169659%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169589169656%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169590169659%_))
                                  (let ((_%e169592169664%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169590169659%_))))
                                    (let ((_%tl169594169669%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169592169664%_)))
                                          (_%hd169593169667%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169592169664%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169593169667%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169593169667%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169594169669%_))
                                                  (let ((_%e169595169672%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169594169669%_))))
                                                    (let ((_%tl169597169677%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169595169672%_)))
                                                          (_%hd169596169675%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169595169672%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169597169677%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169591169661%_))
                      (let ((_%e169598169680%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169591169661%_))))
                        (let ((_%tl169600169685%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169598169680%_)))
                              (_%hd169599169683%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169598169680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169599169683%_))
                              (let ((_%e169601169688%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169599169683%_))))
                                (let ((_%tl169603169693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169601169688%_)))
                                      (_%hd169602169691%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169601169688%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169602169691%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169602169691%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169603169693%_))
                                              (let ((_%e169604169696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169603169693%_))))
                                                (let ((_%tl169606169701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169604169696%_)))
                                                      (_%hd169605169699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169604169696%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169606169701%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169600169685%_))
                                                          (let ((_%e169607169704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169600169685%_))))
                    (let ((_%tl169609169709%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169607169704%_)))
                          (_%hd169608169707%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169607169704%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169608169707%_))
                          (let ((_%e169610169712%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169608169707%_))))
                            (let ((_%tl169612169717%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169610169712%_)))
                                  (_%hd169611169715%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169610169712%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169611169715%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd169611169715%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169612169717%_))
                                          (let ((_%e169613169720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169612169717%_))))
                                            (let ((_%tl169615169725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169613169720%_)))
                                                  (_%hd169614169723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169613169720%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169615169725%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169609169709%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169585169645%_))
                                                          (_%__match171853171854%_
                                                           _%e169468170029%_
                                                           _%hd169469170032%_
                                                           _%tl169470170034%_
                                                           _%e169583169640%_
                                                           _%hd169584169643%_
                                                           _%tl169585169645%_
                                                           _%e169586169648%_
                                                           _%hd169587169651%_
                                                           _%tl169588169653%_
                                                           _%e169589169656%_
                                                           _%hd169590169659%_
                                                           _%tl169591169661%_
                                                           _%e169592169664%_
                                                           _%hd169593169667%_
                                                           _%tl169594169669%_
                                                           _%e169595169672%_
                                                           _%hd169596169675%_
                                                           _%tl169597169677%_
                                                           _%e169598169680%_
                                                           _%hd169599169683%_
                                                           _%tl169600169685%_
                                                           _%e169601169688%_
                                                           _%hd169602169691%_
                                                           _%tl169603169693%_
                                                           _%e169604169696%_
                                                           _%hd169605169699%_
                                                           _%tl169606169701%_
                                                           _%e169607169704%_
                                                           _%hd169608169707%_
                                                           _%tl169609169709%_
                                                           _%e169610169712%_
                                                           _%hd169611169715%_
                                                           _%tl169612169717%_
                                                           _%e169613169720%_
                                                           _%hd169614169723%_
                                                           _%tl169615169725%_)
                                                          (_%__kont171728171729%_))
                                                      (_%__kont171728171729%_))
                                                  (_%__kont171728171729%_))))
                                          (_%__kont171728171729%_))
                                      (_%__kont171728171729%_))
                                  (_%__kont171728171729%_))))
                          (_%__kont171728171729%_))))
                  (_%__kont171728171729%_))
              (_%__kont171728171729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171728171729%_))
                                          (_%__kont171728171729%_))
                                      (_%__kont171728171729%_))))
                              (_%__kont171728171729%_))))
                      (_%__kont171728171729%_))
                  (_%__kont171728171729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171728171729%_))
                                              (_%__kont171728171729%_))
                                          (_%__kont171728171729%_))))
                                  (_%__kont171728171729%_))))
                          (_%__kont171728171729%_))
                      (_%__kont171728171729%_))
                  (_%__kont171728171729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171728171729%_))))
                                          (_%__kont171728171729%_)))))
                              (_%__kont171728171729%_)))))))
                 (_%dispatch-case-e168778%_
                  (lambda (_%hd168925%_ _%body168926%_)
                    (let* ((_%form168928%_
                            (cons _%hd168925%_ (cons _%body168926%_ '())))
                           (_%__stx171856171857%_ _%form168928%_)
                           (_%g168932169056%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171856171857%_)))))
                      (let ((_%__kont171858171859%_
                             (lambda (_%g168934169421%_
                                      _%g168935169422%_
                                      _%g168936169423%_)
                               (let ((__tmp173022
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168935169422%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168774%_
                                  __tmp173022))))
                            (_%__kont171864171865%_
                             (lambda (_%g168979169273%_
                                      _%g168980169274%_
                                      _%g168981169275%_
                                      _%g168982169276%_)
                               (let ((__tmp173023
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168979169273%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168774%_
                                  __tmp173023))))
                            (_%__kont171868171869%_
                             (lambda (_%g169019169141%_
                                      _%g169020169142%_
                                      _%g169021169143%_)
                               (let ((__tmp173024
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g169019169141%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168774%_
                                  __tmp173024)))))
                        (let* ((_%__match171965171966%_
                                (lambda (_%e169022169061%_
                                         _%hd169023169064%_
                                         _%tl169024169066%_
                                         _%e169025169069%_
                                         _%hd169026169072%_
                                         _%tl169027169074%_
                                         _%e169028169077%_
                                         _%hd169029169080%_
                                         _%tl169030169082%_
                                         _%e169031169085%_
                                         _%hd169032169088%_
                                         _%tl169033169090%_
                                         _%e169034169093%_
                                         _%hd169035169096%_
                                         _%tl169036169098%_
                                         _%e169037169101%_
                                         _%hd169038169104%_
                                         _%tl169039169106%_
                                         _%e169040169109%_
                                         _%hd169041169112%_
                                         _%tl169042169114%_
                                         _%e169043169117%_
                                         _%hd169044169120%_
                                         _%tl169045169122%_
                                         _%e169046169125%_
                                         _%hd169047169128%_
                                         _%tl169048169130%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169042169114%_))
                                      (let ((_%e169049169133%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169042169114%_))))
                                        (let ((_%tl169051169138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169049169133%_)))
                                              (_%hd169050169136%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169049169133%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169051169138%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169027169074%_))
                                                  (_%__kont171868171869%_
                                                   _%hd169047169128%_
                                                   _%hd169038169104%_
                                                   _%hd169023169064%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168932169056%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168932169056%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168932169056%_)))))
                               (_%__match171895171896%_
                                (lambda (_%e168983169179%_
                                         _%hd168984169182%_
                                         _%tl168985169184%_
                                         _%__splice171866171867%_
                                         _%target168986169187%_
                                         _%tl168988169189%_)
                                  (letrec ((_%loop168989169192%_
                                            (lambda (_%hd168987169195%_
                                                     _%arg168993169197%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168987169195%_))
                                                  (let ((_%e168990169199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168987169195%_))))
                                                    (let ((_%lp-tl168992169204%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168990169199%_)))
                                                          (_%lp-hd168991169202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168990169199%_))))
                                                      (_%loop168989169192%_
                                                       _%lp-tl168992169204%_
                                                       (cons _%lp-hd168991169202%_
                                                             _%arg168993169197%_))))
                                                  (let ((_%arg168994169207%_
                                                         (reverse _%arg168993169197%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168985169184%_))
                                                        (let ((_%e168995169209%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168985169184%_))))
                  (let ((_%tl168997169214%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168995169209%_)))
                        (_%hd168996169212%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168995169209%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168996169212%_))
                        (let ((_%e168998169217%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168996169212%_))))
                          (let ((_%tl169000169222%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168998169217%_)))
                                (_%hd168999169220%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168998169217%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168999169220%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168999169220%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169000169222%_))
                                        (let ((_%e169001169225%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169000169222%_))))
                                          (let ((_%tl169003169230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169001169225%_)))
                                                (_%hd169002169228%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169001169225%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169002169228%_))
                                                (let ((_%e169004169233%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169002169228%_))))
                                                  (let ((_%tl169006169238%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169004169233%_)))
                                                        (_%hd169005169236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169004169233%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169005169236%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169005169236%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169006169238%_))
                        (let ((_%e169007169241%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169006169238%_))))
                          (let ((_%tl169009169246%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169007169241%_)))
                                (_%hd169008169244%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169007169241%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169009169246%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169003169230%_))
                                    (let ((_%e169010169249%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169003169230%_))))
                                      (let ((_%tl169012169254%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169010169249%_)))
                                            (_%hd169011169252%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169010169249%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169011169252%_))
                                            (let ((_%e169013169257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169011169252%_))))
                                              (let ((_%tl169015169262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169013169257%_)))
                                                    (_%hd169014169260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169013169257%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169014169260%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169014169260%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169015169262%_))
                                                            (let ((_%e169016169265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169015169262%_))))
                      (let ((_%tl169018169270%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169016169265%_)))
                            (_%hd169017169268%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169016169265%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169018169270%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168997169214%_))
                                (_%__kont171864171865%_
                                 _%hd169017169268%_
                                 _%hd169008169244%_
                                 _%tl168988169189%_
                                 _%arg168994169207%_)
                                (_%__match171965171966%_
                                 _%e168983169179%_
                                 _%hd168984169182%_
                                 _%tl168985169184%_
                                 _%e168995169209%_
                                 _%hd168996169212%_
                                 _%tl168997169214%_
                                 _%e168998169217%_
                                 _%hd168999169220%_
                                 _%tl169000169222%_
                                 _%e169001169225%_
                                 _%hd169002169228%_
                                 _%tl169003169230%_
                                 _%e169004169233%_
                                 _%hd169005169236%_
                                 _%tl169006169238%_
                                 _%e169007169241%_
                                 _%hd169008169244%_
                                 _%tl169009169246%_
                                 _%e169010169249%_
                                 _%hd169011169252%_
                                 _%tl169012169254%_
                                 _%e169013169257%_
                                 _%hd169014169260%_
                                 _%tl169015169262%_
                                 _%e169016169265%_
                                 _%hd169017169268%_
                                 _%tl169018169270%_))
                            (let ()
                              (declare (not safe))
                              (_%g168932169056%_)))))
                    (let () (declare (not safe)) (_%g168932169056%_)))
                (let () (declare (not safe)) (_%g168932169056%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168932169056%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168932169056%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168932169056%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168932169056%_)))))
                        (let () (declare (not safe)) (_%g168932169056%_)))
                    (let () (declare (not safe)) (_%g168932169056%_)))
                (let () (declare (not safe)) (_%g168932169056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168932169056%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168932169056%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168932169056%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168932169056%_)))))
                        (let () (declare (not safe)) (_%g168932169056%_)))))
                (let () (declare (not safe)) (_%g168932169056%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168989169192%_
                                     _%target168986169187%_
                                     '()))))
                               (_%__match171883171884%_
                                (lambda (_%e168937169313%_
                                         _%hd168938169316%_
                                         _%tl168939169318%_
                                         _%__splice171860171861%_
                                         _%target168940169321%_
                                         _%tl168942169323%_)
                                  (letrec ((_%loop168943169326%_
                                            (lambda (_%hd168941169329%_
                                                     _%arg168947169331%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168941169329%_))
                                                  (let ((_%e168944169333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168941169329%_))))
                                                    (let ((_%lp-tl168946169338%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168944169333%_)))
                                                          (_%lp-hd168945169336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168944169333%_))))
                                                      (_%loop168943169326%_
                                                       _%lp-tl168946169338%_
                                                       (cons _%lp-hd168945169336%_
                                                             _%arg168947169331%_))))
                                                  (let ((_%arg168948169341%_
                                                         (reverse _%arg168947169331%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168939169318%_))
                                                        (let ((_%e168949169343%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168939169318%_))))
                  (let ((_%tl168951169348%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168949169343%_)))
                        (_%hd168950169346%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168949169343%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168950169346%_))
                        (let ((_%e168952169351%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168950169346%_))))
                          (let ((_%tl168954169356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168952169351%_)))
                                (_%hd168953169354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168952169351%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168953169354%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168953169354%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168954169356%_))
                                        (let ((_%e168955169359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168954169356%_))))
                                          (let ((_%tl168957169364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168955169359%_)))
                                                (_%hd168956169362%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168955169359%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168956169362%_))
                                                (let ((_%e168958169367%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168956169362%_))))
                                                  (let ((_%tl168960169372%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168958169367%_)))
                                                        (_%hd168959169370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168958169367%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168959169370%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168959169370%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168960169372%_))
                        (let ((_%e168961169375%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168960169372%_))))
                          (let ((_%tl168963169380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168961169375%_)))
                                (_%hd168962169378%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168961169375%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168963169380%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168957169364%_))
                                    (let ((_%__splice171862171863%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl168957169364%_
                                              '0))))
                                      (let ((_%tl168966169385%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171862171863%_
                                                '1)))
                                            (_%target168964169383%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171862171863%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168966169385%_))
                                            (letrec ((_%loop168967169388%_
                                                      (lambda (_%hd168965169391%_
                                                               _%xarg168971169393%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd168965169391%_))
                                                            (let ((_%e168968169395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168965169391%_))))
                      (let ((_%lp-tl168970169400%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168968169395%_)))
                            (_%lp-hd168969169398%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168968169395%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd168969169398%_))
                            (let ((_%e168973169403%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd168969169398%_))))
                              (let ((_%tl168975169408%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168973169403%_)))
                                    (_%hd168974169406%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168973169403%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168974169406%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd168974169406%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168975169408%_))
                                            (let ((_%e168976169411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168975169408%_))))
                                              (let ((_%tl168978169416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168976169411%_)))
                                                    (_%hd168977169414%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168976169411%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168978169416%_))
                                                    (_%loop168967169388%_
                                                     _%lp-tl168970169400%_
                                                     (cons _%hd168977169414%_
                                                           _%xarg168971169393%_))
                                                    (_%__match171895171896%_
                                                     _%e168937169313%_
                                                     _%hd168938169316%_
                                                     _%tl168939169318%_
                                                     _%__splice171860171861%_
                                                     _%target168940169321%_
                                                     _%tl168942169323%_))))
                                            (_%__match171895171896%_
                                             _%e168937169313%_
                                             _%hd168938169316%_
                                             _%tl168939169318%_
                                             _%__splice171860171861%_
                                             _%target168940169321%_
                                             _%tl168942169323%_))
                                        (_%__match171895171896%_
                                         _%e168937169313%_
                                         _%hd168938169316%_
                                         _%tl168939169318%_
                                         _%__splice171860171861%_
                                         _%target168940169321%_
                                         _%tl168942169323%_))
                                    (_%__match171895171896%_
                                     _%e168937169313%_
                                     _%hd168938169316%_
                                     _%tl168939169318%_
                                     _%__splice171860171861%_
                                     _%target168940169321%_
                                     _%tl168942169323%_))))
                            (_%__match171895171896%_
                             _%e168937169313%_
                             _%hd168938169316%_
                             _%tl168939169318%_
                             _%__splice171860171861%_
                             _%target168940169321%_
                             _%tl168942169323%_))))
                    (let ((_%xarg168972169419%_
                           (reverse _%xarg168971169393%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168951169348%_))
                          (_%__kont171858171859%_
                           _%xarg168972169419%_
                           _%hd168962169378%_
                           _%arg168948169341%_)
                          (_%__match171895171896%_
                           _%e168937169313%_
                           _%hd168938169316%_
                           _%tl168939169318%_
                           _%__splice171860171861%_
                           _%target168940169321%_
                           _%tl168942169323%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop168967169388%_
                                               _%target168964169383%_
                                               '()))
                                            (_%__match171895171896%_
                                             _%e168937169313%_
                                             _%hd168938169316%_
                                             _%tl168939169318%_
                                             _%__splice171860171861%_
                                             _%target168940169321%_
                                             _%tl168942169323%_))))
                                    (_%__match171895171896%_
                                     _%e168937169313%_
                                     _%hd168938169316%_
                                     _%tl168939169318%_
                                     _%__splice171860171861%_
                                     _%target168940169321%_
                                     _%tl168942169323%_))
                                (_%__match171895171896%_
                                 _%e168937169313%_
                                 _%hd168938169316%_
                                 _%tl168939169318%_
                                 _%__splice171860171861%_
                                 _%target168940169321%_
                                 _%tl168942169323%_))))
                        (_%__match171895171896%_
                         _%e168937169313%_
                         _%hd168938169316%_
                         _%tl168939169318%_
                         _%__splice171860171861%_
                         _%target168940169321%_
                         _%tl168942169323%_))
                    (_%__match171895171896%_
                     _%e168937169313%_
                     _%hd168938169316%_
                     _%tl168939169318%_
                     _%__splice171860171861%_
                     _%target168940169321%_
                     _%tl168942169323%_))
                (_%__match171895171896%_
                 _%e168937169313%_
                 _%hd168938169316%_
                 _%tl168939169318%_
                 _%__splice171860171861%_
                 _%target168940169321%_
                 _%tl168942169323%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171895171896%_
                                                 _%e168937169313%_
                                                 _%hd168938169316%_
                                                 _%tl168939169318%_
                                                 _%__splice171860171861%_
                                                 _%target168940169321%_
                                                 _%tl168942169323%_))))
                                        (_%__match171895171896%_
                                         _%e168937169313%_
                                         _%hd168938169316%_
                                         _%tl168939169318%_
                                         _%__splice171860171861%_
                                         _%target168940169321%_
                                         _%tl168942169323%_))
                                    (_%__match171895171896%_
                                     _%e168937169313%_
                                     _%hd168938169316%_
                                     _%tl168939169318%_
                                     _%__splice171860171861%_
                                     _%target168940169321%_
                                     _%tl168942169323%_))
                                (_%__match171895171896%_
                                 _%e168937169313%_
                                 _%hd168938169316%_
                                 _%tl168939169318%_
                                 _%__splice171860171861%_
                                 _%target168940169321%_
                                 _%tl168942169323%_))))
                        (_%__match171895171896%_
                         _%e168937169313%_
                         _%hd168938169316%_
                         _%tl168939169318%_
                         _%__splice171860171861%_
                         _%target168940169321%_
                         _%tl168942169323%_))))
                (_%__match171895171896%_
                 _%e168937169313%_
                 _%hd168938169316%_
                 _%tl168939169318%_
                 _%__splice171860171861%_
                 _%target168940169321%_
                 _%tl168942169323%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168943169326%_
                                     _%target168940169321%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171856171857%_))
                              (let ((_%e168937169313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171856171857%_))))
                                (let ((_%tl168939169318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168937169313%_)))
                                      (_%hd168938169316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168937169313%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd168938169316%_))
                                      (let ((_%__splice171860171861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd168938169316%_
                                                '0))))
                                        (let ((_%tl168942169323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171860171861%_
                                                  '1)))
                                              (_%target168940169321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171860171861%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168942169323%_))
                                              (_%__match171883171884%_
                                               _%e168937169313%_
                                               _%hd168938169316%_
                                               _%tl168939169318%_
                                               _%__splice171860171861%_
                                               _%target168940169321%_
                                               _%tl168942169323%_)
                                              (_%__match171895171896%_
                                               _%e168937169313%_
                                               _%hd168938169316%_
                                               _%tl168939169318%_
                                               _%__splice171860171861%_
                                               _%target168940169321%_
                                               _%tl168942169323%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168939169318%_))
                                          (let ((_%e169025169069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168939169318%_))))
                                            (let ((_%tl169027169074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169025169069%_)))
                                                  (_%hd169026169072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169025169069%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169026169072%_))
                                                  (let ((_%e169028169077%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169026169072%_))))
                                                    (let ((_%tl169030169082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169028169077%_)))
                                                          (_%hd169029169080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169028169077%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169029169080%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169029169080%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169030169082%_))
                          (let ((_%e169031169085%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169030169082%_))))
                            (let ((_%tl169033169090%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169031169085%_)))
                                  (_%hd169032169088%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169031169085%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169032169088%_))
                                  (let ((_%e169034169093%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169032169088%_))))
                                    (let ((_%tl169036169098%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169034169093%_)))
                                          (_%hd169035169096%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169034169093%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169035169096%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169035169096%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169036169098%_))
                                                  (let ((_%e169037169101%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169036169098%_))))
                                                    (let ((_%tl169039169106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169037169101%_)))
                                                          (_%hd169038169104%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169037169101%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169039169106%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169033169090%_))
                      (let ((_%e169040169109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169033169090%_))))
                        (let ((_%tl169042169114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169040169109%_)))
                              (_%hd169041169112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169040169109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169041169112%_))
                              (let ((_%e169043169117%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169041169112%_))))
                                (let ((_%tl169045169122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169043169117%_)))
                                      (_%hd169044169120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169043169117%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169044169120%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169044169120%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169045169122%_))
                                              (let ((_%e169046169125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169045169122%_))))
                                                (let ((_%tl169048169130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169046169125%_)))
                                                      (_%hd169047169128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169046169125%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169048169130%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169042169114%_))
                                                          (let ((_%e169049169133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169042169114%_))))
                    (let ((_%tl169051169138%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169049169133%_)))
                          (_%hd169050169136%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169049169133%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169051169138%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169027169074%_))
                              (_%__kont171868171869%_
                               _%hd169047169128%_
                               _%hd169038169104%_
                               _%hd168938169316%_)
                              (let ()
                                (declare (not safe))
                                (_%g168932169056%_)))
                          (let () (declare (not safe)) (_%g168932169056%_)))))
                  (let () (declare (not safe)) (_%g168932169056%_)))
              (let () (declare (not safe)) (_%g168932169056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168932169056%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168932169056%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168932169056%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168932169056%_)))))
                      (let () (declare (not safe)) (_%g168932169056%_)))
                  (let () (declare (not safe)) (_%g168932169056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168932169056%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168932169056%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168932169056%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168932169056%_)))))
                          (let () (declare (not safe)) (_%g168932169056%_)))
                      (let () (declare (not safe)) (_%g168932169056%_)))
                  (let () (declare (not safe)) (_%g168932169056%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168932169056%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168932169056%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168932169056%_))))))))
                 (_%generate1168779%_
                  (lambda (_%args168910%_
                           _%arglen168911%_
                           _%hd168912%_
                           _%body168913%_)
                    (let* ((_%len168915%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd168912%_)))
                           (_%condition168920%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd168912%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen168911%_
                                                (cons _%len168915%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen168911%_ (cons _%len168915%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len168915%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen168911%_
                                                    (cons _%len168915%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen168911%_ (cons _%len168915%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch168922%_
                            (if (_%dispatch-case?168777%_
                                 _%hd168912%_
                                 _%body168913%_)
                                (_%dispatch-case-e168778%_
                                 _%hd168912%_
                                 _%body168913%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self168774%_
                                 _%hd168912%_
                                 _%body168913%_))))
                      (cons _%condition168920%_
                            (cons (cons 'apply
                                        (cons _%dispatch168922%_
                                              (cons _%args168910%_ '())))
                                  '()))))))
          (let* ((_%g168781168809%_
                  (lambda (_%g168782168806%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168782168806%_))))
                 (_%g168780168907%_
                  (lambda (_%g168782168812%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168782168812%_))
                        (let ((_%e168785168814%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168782168812%_))))
                          (let ((_%hd168786168817%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168785168814%_)))
                                (_%tl168787168819%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168785168814%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl168787168819%_))
                                (let ((_g173025_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl168787168819%_
                                          '0))))
                                  (begin
                                    (let ((_g173026_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173025_)
                                                 (##values-length _g173025_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173026_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173026_)))
                                    (let ((_%target168788168822%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173025_ 0)))
                                          (_%tl168790168824%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173025_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168790168824%_))
                                          (letrec ((_%loop168791168827%_
                                                    (lambda (_%hd168789168830%_
                                                             _%body168795168832%_
                                                             _%hd168796168833%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd168789168830%_))
                                                          (let ((_%e168792168835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd168789168830%_))))
                    (let ((_%lp-hd168793168838%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168792168835%_)))
                          (_%lp-tl168794168840%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168792168835%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd168793168838%_))
                          (let ((_%e168799168843%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd168793168838%_))))
                            (let ((_%hd168800168846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168799168843%_)))
                                  (_%tl168801168848%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168799168843%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168801168848%_))
                                  (let ((_%e168802168851%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168801168848%_))))
                                    (let ((_%hd168803168854%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168802168851%_)))
                                          (_%tl168804168856%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168802168851%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168804168856%_))
                                          (_%loop168791168827%_
                                           _%lp-tl168794168840%_
                                           (cons _%hd168803168854%_
                                                 _%body168795168832%_)
                                           (cons _%hd168800168846%_
                                                 _%hd168796168833%_))
                                          (_%g168781168809%_
                                           _%g168782168812%_))))
                                  (_%g168781168809%_ _%g168782168812%_))))
                          (_%g168781168809%_ _%g168782168812%_))))
                  (let ((_%body168797168859%_ (reverse _%body168795168832%_))
                        (_%hd168798168860%_ (reverse _%hd168796168833%_)))
                    ((lambda (_%g168783168862%_ _%g168784168863%_)
                       (let ((_%args168882%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen168883%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name168884%_
                              (let ((_%$e168879%_
                                     (let ((__tmp173027
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp173027 _%stx168775%_))))
                                (if _%$e168879%_
                                    _%$e168879%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args168882%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen168883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args168882%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args168882%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp173031
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name168884%_
                                                                (cons _%args168882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp173028
                                  (map (lambda (_%g168885168888%_
                                                _%g168886168890%_)
                                         (_%generate1168779%_
                                          _%args168882%_
                                          _%arglen168883%_
                                          _%g168885168888%_
                                          _%g168886168890%_))
                                       (let ((__tmp173029
                                              (lambda (_%g168892168895%_
                                                       _%g168893168897%_)
                                                (cons _%g168892168895%_
                                                      _%g168893168897%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173029
                                          '()
                                          _%g168784168863%_))
                                       (let ((__tmp173030
                                              (lambda (_%g168899168902%_
                                                       _%g168900168904%_)
                                                (cons _%g168899168902%_
                                                      _%g168900168904%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173030
                                          '()
                                          _%g168783168862%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp173031 __tmp173028)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body168797168859%_
                     _%hd168798168860%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop168791168827%_
                                             _%target168788168822%_
                                             '()
                                             '()))
                                          (_%g168781168809%_
                                           _%g168782168812%_)))))
                                (_%g168781168809%_ _%g168782168812%_))))
                        (_%g168781168809%_ _%g168782168812%_)))))
            (_%g168780168907%_ _%stx168775%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self168011%_ _%stx168012%_ _%compiled-body?168013%_)
        (letrec ((_%generate-simple168015%_
                  (lambda (_%hd168759%_ _%body168760%_)
                    (_%coalesce-boolean168016%_
                     (_%simplify-let168017%_
                      (gxc#generate-runtime-simple-let
                       _%self168011%_
                       'let
                       _%hd168759%_
                       _%body168760%_
                       _%compiled-body?168013%_)))))
                 (_%coalesce-boolean168016%_
                  (lambda (_%code168620%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code168621168647%_ _%code168620%_)
                               (_%else168623168655%_
                                (lambda () _%code168620%_))
                               (_%K168625168692%_
                                (lambda (_%expr2168658%_
                                         _%expr1168659%_
                                         _%id168660%_)
                                  (let* ((_%expr2168661168669%_
                                          _%expr2168658%_)
                                         (_%else168663168677%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1168659%_
                                                        (cons _%expr2168658%_
                                                              '())))))
                                         (_%K168665168682%_
                                          (lambda (_%exprs168680%_)
                                            (cons 'or
                                                  (cons _%expr1168659%_
                                                        _%exprs168680%_)))))
                                    (if (pair? _%expr2168661168669%_)
                                        (let ((_%hd168666168685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2168661168669%_)))
                                              (_%tl168667168687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2168661168669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168666168685%_ 'or))
                                              (let ((_%exprs168690%_
                                                     _%tl168667168687%_))
                                                (_%K168665168682%_
                                                 _%exprs168690%_))
                                              (_%else168663168677%_)))
                                        (_%else168663168677%_))))))
                          (if (pair? _%code168621168647%_)
                              (let ((_%hd168626168695%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code168621168647%_)))
                                    (_%tl168627168697%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code168621168647%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd168626168695%_ 'let))
                                    (if (pair? _%tl168627168697%_)
                                        (let ((_%hd168628168700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl168627168697%_)))
                                              (_%tl168629168702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl168627168697%_))))
                                          (if (pair? _%hd168628168700%_)
                                              (let ((_%hd168640168705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd168628168700%_)))
                                                    (_%tl168641168707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd168628168700%_))))
                                                (if (pair? _%hd168640168705%_)
                                                    (let ((_%hd168642168710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd168640168705%_)))
                                                          (_%tl168643168712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd168640168705%_))))
                                                      (let ((_%id168715%_
                                                             _%hd168642168710%_))
                                                        (if (pair? _%tl168643168712%_)
                                                            (let ((_%hd168644168717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl168643168712%_)))
                          (_%tl168645168719%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168643168712%_))))
                      (let ((_%expr1168722%_ _%hd168644168717%_))
                        (if (null? _%tl168645168719%_)
                            (if (null? _%tl168641168707%_)
                                (if (pair? _%tl168629168702%_)
                                    (let ((_%hd168630168724%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl168629168702%_)))
                                          (_%tl168631168726%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl168629168702%_))))
                                      (if (pair? _%hd168630168724%_)
                                          (let ((_%hd168632168729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd168630168724%_)))
                                                (_%tl168633168731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd168630168724%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd168632168729%_
                                                         'if))
                                                (if (pair? _%tl168633168731%_)
                                                    (let ((_%hd168634168734%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl168633168731%_)))
                                                          (_%tl168635168736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl168633168731%_))))
                                                      (if ((lambda (_%g168738168740%_)
                                                             (eq? _%g168738168740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168715%_))
                   _%hd168634168734%_)
                  (if (pair? _%tl168635168736%_)
                      (let ((_%hd168636168743%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl168635168736%_)))
                            (_%tl168637168745%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl168635168736%_))))
                        (if ((lambda (_%g168747168749%_)
                               (eq? _%g168747168749%_ _%id168715%_))
                             _%hd168636168743%_)
                            (if (pair? _%tl168637168745%_)
                                (let ((_%hd168638168752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168637168745%_)))
                                      (_%tl168639168754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168637168745%_))))
                                  (let ((_%expr2168757%_ _%hd168638168752%_))
                                    (if (null? _%tl168639168754%_)
                                        (if (null? _%tl168631168726%_)
                                            (_%K168625168692%_
                                             _%expr2168757%_
                                             _%expr1168722%_
                                             _%id168715%_)
                                            (_%else168623168655%_))
                                        (_%else168623168655%_))))
                                (_%else168623168655%_))
                            (_%else168623168655%_)))
                      (_%else168623168655%_))
                  (_%else168623168655%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168623168655%_))
                                                (_%else168623168655%_)))
                                          (_%else168623168655%_)))
                                    (_%else168623168655%_))
                                (_%else168623168655%_))
                            (_%else168623168655%_))))
                    (_%else168623168655%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168623168655%_)))
                                              (_%else168623168655%_)))
                                        (_%else168623168655%_))
                                    (_%else168623168655%_)))
                              (_%else168623168655%_)))
                        _%code168620%_)))
                 (_%simplify-let168017%_
                  (lambda (_%code168319%_)
                    (let* ((_%code168320168392%_ _%code168319%_)
                           (_%else168325168400%_ (lambda () _%code168319%_)))
                      (let ((_%K168384168600%_
                             (lambda (_%expr168598%_) _%expr168598%_))
                            (_%K168367168546%_
                             (lambda (_%body168542%_
                                      _%expr168543%_
                                      _%id168544%_)
                               (cons 'let
                                     (cons (cons (cons _%id168544%_
                                                       (cons _%expr168543%_
                                                             '()))
                                                 '())
                                           _%body168542%_))))
                            (_%K168344168470%_
                             (lambda (_%body168464%_
                                      _%expr2168465%_
                                      _%id2168466%_
                                      _%expr1168467%_
                                      _%id1168468%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168468%_
                                                       (cons _%expr1168467%_
                                                             '()))
                                                 (cons (cons _%id2168466%_
                                                             (cons _%expr2168465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body168464%_))))
                            (_%K168327168409%_
                             (lambda (_%body168404%_
                                      _%bind168405%_
                                      _%expr1168406%_
                                      _%id1168407%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168407%_
                                                       (cons _%expr1168406%_
                                                             '()))
                                                 _%bind168405%_)
                                           _%body168404%_)))))
                        (if (pair? _%code168320168392%_)
                            (let ((_%tl168386168605%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code168320168392%_)))
                                  (_%hd168385168603%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code168320168392%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd168385168603%_ 'let))
                                  (if (pair? _%tl168386168605%_)
                                      (let ((_%tl168388168610%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl168386168605%_)))
                                            (_%hd168387168608%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl168386168605%_))))
                                        (if (null? _%hd168387168608%_)
                                            (if (pair? _%tl168388168610%_)
                                                (let ((_%tl168390168615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl168388168610%_)))
                                                      (_%hd168389168613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl168388168610%_))))
                                                  (if (null? _%tl168390168615%_)
                                                      (let ((_%expr168618%_
                                                             _%hd168389168613%_))
                                                        (_%K168384168600%_
                                                         _%expr168618%_))
                                                      (_%else168325168400%_)))
                                                (_%else168325168400%_))
                                            (if (pair? _%hd168387168608%_)
                                                (let ((_%tl168379168561%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168387168608%_)))
                                                      (_%hd168378168559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168387168608%_))))
                                                  (if (pair? _%hd168378168559%_)
                                                      (let ((_%tl168381168566%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd168378168559%_)))
                    (_%hd168380168564%_
                     (let () (declare (not safe)) (##car _%hd168378168559%_))))
                (if (pair? _%tl168381168566%_)
                    (let ((_%tl168383168573%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168381168566%_)))
                          (_%hd168382168571%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl168381168566%_))))
                      (if (null? _%tl168383168573%_)
                          (if (null? _%tl168379168561%_)
                              (if (pair? _%tl168388168610%_)
                                  (let ((_%tl168373168580%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl168388168610%_)))
                                        (_%hd168372168578%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl168388168610%_))))
                                    (if (pair? _%hd168372168578%_)
                                        (let ((_%tl168375168585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd168372168578%_)))
                                              (_%hd168374168583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd168372168578%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168374168583%_
                                                       'let))
                                              (if (pair? _%tl168375168585%_)
                                                  (let ((_%tl168377168590%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl168375168585%_)))
                                                        (_%hd168376168588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl168375168585%_))))
                                                    (if (null? _%hd168376168588%_)
                                                        (if (null? _%tl168373168580%_)
                                                            (let ((_%id168569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd168380168564%_)
                          (_%expr168576%_ _%hd168382168571%_)
                          (_%body168593%_ _%tl168377168590%_))
                      (_%K168367168546%_
                       _%body168593%_
                       _%expr168576%_
                       _%id168569%_))
                    (_%else168325168400%_))
                (if (pair? _%hd168376168588%_)
                    (let ((_%tl168356168519%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd168376168588%_)))
                          (_%hd168355168517%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd168376168588%_))))
                      (if (pair? _%hd168355168517%_)
                          (let ((_%tl168358168524%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd168355168517%_)))
                                (_%hd168357168522%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd168355168517%_))))
                            (if (pair? _%tl168358168524%_)
                                (let ((_%tl168360168531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168358168524%_)))
                                      (_%hd168359168529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168358168524%_))))
                                  (if (null? _%tl168360168531%_)
                                      (if (null? _%tl168356168519%_)
                                          (if (null? _%tl168373168580%_)
                                              (let ((_%id1168493%_
                                                     _%hd168380168564%_)
                                                    (_%expr1168500%_
                                                     _%hd168382168571%_)
                                                    (_%id2168527%_
                                                     _%hd168357168522%_)
                                                    (_%expr2168534%_
                                                     _%hd168359168529%_)
                                                    (_%body168536%_
                                                     _%tl168377168590%_))
                                                (_%K168344168470%_
                                                 _%body168536%_
                                                 _%expr2168534%_
                                                 _%id2168527%_
                                                 _%expr1168500%_
                                                 _%id1168493%_))
                                              (_%else168325168400%_))
                                          (_%else168325168400%_))
                                      (_%else168325168400%_)))
                                (_%else168325168400%_)))
                          (_%else168325168400%_)))
                    (_%else168325168400%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168325168400%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd168374168583%_
                                                           'let*))
                                                  (if (pair? _%tl168375168585%_)
                                                      (let ((_%tl168337168453%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl168375168585%_)))
                    (_%hd168336168451%_
                     (let () (declare (not safe)) (##car _%tl168375168585%_))))
                (if (null? _%tl168373168580%_)
                    (let ((_%id1168432%_ _%hd168380168564%_)
                          (_%expr1168439%_ _%hd168382168571%_)
                          (_%bind168456%_ _%hd168336168451%_)
                          (_%body168458%_ _%tl168337168453%_))
                      (_%K168327168409%_
                       _%body168458%_
                       _%bind168456%_
                       _%expr1168439%_
                       _%id1168432%_))
                    (_%else168325168400%_)))
              (_%else168325168400%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168325168400%_))))
                                        (_%else168325168400%_)))
                                  (_%else168325168400%_))
                              (_%else168325168400%_))
                          (_%else168325168400%_)))
                    (_%else168325168400%_)))
              (_%else168325168400%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else168325168400%_))))
                                      (_%else168325168400%_))
                                  (_%else168325168400%_)))
                            (_%else168325168400%_))))))
                 (_%generate-values168018%_
                  (lambda (_%hd168132%_ _%body168133%_)
                    (let _%lp168135%_ ((_%rest168137%_ _%hd168132%_)
                                       (_%bind168138%_ '())
                                       (_%check168139%_ '())
                                       (_%post168140%_ '()))
                      (let* ((_%__stx172185172186%_ _%rest168137%_)
                             (_%g168143168154%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172185172186%_)))))
                        (let ((_%__kont172187172188%_
                               (lambda (_%g168145168181%_ _%g168146168182%_)
                                 (let* ((_%__stx172141172142%_
                                         _%g168146168182%_)
                                        (_%g168197168222%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172141172142%_)))))
                                   (let ((_%__kont172143172144%_
                                          (lambda (_%g168199168295%_
                                                   _%g168200168296%_)
                                            (let ((_%eid168310%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g168200168296%_)))
                                                  (_%expr168311%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self168011%_
                                                      _%g168199168295%_))))
                                              (_%lp168135%_
                                               _%g168145168181%_
                                               (cons (cons _%eid168310%_
                                                           (cons _%expr168311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168138%_)
                                               _%check168139%_
                                               _%post168140%_))))
                                         (_%__kont172145172146%_
                                          (lambda (_%g168210168243%_
                                                   _%g168211168244%_)
                                            (let* ((_%vals168257%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values168259%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals168257%_
                                                     _%g168211168244%_
                                                     _%g168210168243%_))
                                                   (_%refs168261%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals168257%_
                                                     _%g168211168244%_))
                                                   (_%expr168263%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self168011%_
                                                       _%g168210168243%_))))
                                              (_%lp168135%_
                                               _%g168145168181%_
                                               (cons (cons _%vals168257%_
                                                           (cons _%expr168263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168138%_)
                                               (cons _%check-values168259%_
                                                     _%check168139%_)
                                               (cons _%refs168261%_
                                                     _%post168140%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172141172142%_))
                                         (let ((_%e168201168271%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172141172142%_))))
                                           (let ((_%tl168203168276%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168201168271%_)))
                                                 (_%hd168202168274%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168201168271%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168202168274%_))
                                                 (let ((_%e168204168279%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168202168274%_))))
                                                   (let ((_%tl168206168284%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168204168279%_)))
                                                         (_%hd168205168282%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168204168279%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168206168284%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl168203168276%_))
                     (let ((_%e168207168287%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168203168276%_))))
                       (let ((_%tl168209168292%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168207168287%_)))
                             (_%hd168208168290%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168207168287%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168209168292%_))
                             (_%__kont172143172144%_
                              _%hd168208168290%_
                              _%hd168205168282%_)
                             (let ()
                               (declare (not safe))
                               (_%g168197168222%_)))))
                     (let () (declare (not safe)) (_%g168197168222%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168203168276%_))
                     (let ((_%e168215168235%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168203168276%_))))
                       (let ((_%tl168217168240%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168215168235%_)))
                             (_%hd168216168238%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168215168235%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168217168240%_))
                             (_%__kont172145172146%_
                              _%hd168216168238%_
                              _%hd168202168274%_)
                             (let ()
                               (declare (not safe))
                               (_%g168197168222%_)))))
                     (let () (declare (not safe)) (_%g168197168222%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168203168276%_))
                                                     (let ((_%e168215168235%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168203168276%_))))
                                                       (let ((_%tl168217168240%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168215168235%_)))
                     (_%hd168216168238%_
                      (let () (declare (not safe)) (##car _%e168215168235%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl168217168240%_))
                     (_%__kont172145172146%_
                      _%hd168216168238%_
                      _%hd168202168274%_)
                     (let () (declare (not safe)) (_%g168197168222%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168197168222%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168197168222%_)))))))
                              (_%__kont172189172190%_
                               (lambda ()
                                 (let* ((_%body168161%_
                                         (if _%compiled-body?168013%_
                                             _%body168133%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self168011%_
                                                _%body168133%_))))
                                        (_%body168163%_
                                         (_%generate-values-post168019%_
                                          _%post168140%_
                                          _%body168161%_))
                                        (_%body168165%_
                                         (_%generate-values-check168020%_
                                          _%check168139%_
                                          _%body168163%_)))
                                   (cons 'let
                                         (cons (reverse _%bind168138%_)
                                               (cons _%body168165%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172185172186%_))
                              (let ((_%e168147168173%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172185172186%_))))
                                (let ((_%tl168149168178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168147168173%_)))
                                      (_%hd168148168176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168147168173%_))))
                                  (_%__kont172187172188%_
                                   _%tl168149168178%_
                                   _%hd168148168176%_)))
                              (_%__kont172189172190%_)))))))
                 (_%generate-values-post168019%_
                  (lambda (_%post168091%_ _%body168092%_)
                    (let _%lp168094%_ ((_%rest168096%_ _%post168091%_)
                                       (_%body168097%_ _%body168092%_))
                      (let* ((_%rest168098168106%_ _%rest168096%_)
                             (_%else168100168114%_ (lambda () _%body168097%_))
                             (_%K168102168120%_
                              (lambda (_%rest168117%_ _%bind168118%_)
                                (_%lp168094%_
                                 _%rest168117%_
                                 (cons 'let
                                       (cons _%bind168118%_
                                             (cons _%body168097%_ '())))))))
                        (if (pair? _%rest168098168106%_)
                            (let ((_%hd168103168123%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168098168106%_)))
                                  (_%tl168104168125%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168098168106%_))))
                              (let* ((_%bind168128%_ _%hd168103168123%_)
                                     (_%rest168130%_ _%tl168104168125%_))
                                (_%K168102168120%_
                                 _%rest168130%_
                                 _%bind168128%_)))
                            (_%else168100168114%_))))))
                 (_%generate-values-check168020%_
                  (lambda (_%check168088%_ _%body168089%_)
                    (cons 'begin
                          (let ((__tmp173033 (cons _%body168089%_ '()))
                                (__tmp173032 (reverse _%check168088%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173033 __tmp173032))))))
          (let* ((_%g168022168039%_
                  (lambda (_%g168023168036%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168023168036%_))))
                 (_%g168021168085%_
                  (lambda (_%g168023168042%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168023168042%_))
                        (let ((_%e168026168044%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168023168042%_))))
                          (let ((_%hd168027168047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168026168044%_)))
                                (_%tl168028168049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168026168044%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl168028168049%_))
                                (let ((_%e168029168052%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl168028168049%_))))
                                  (let ((_%hd168030168055%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168029168052%_)))
                                        (_%tl168031168057%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168029168052%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168031168057%_))
                                        (let ((_%e168032168060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168031168057%_))))
                                          (let ((_%hd168033168063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168032168060%_)))
                                                (_%tl168034168065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168032168060%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168034168065%_))
                                                ((lambda (_%g168024168068%_
                                                          _%g168025168069%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g168025168069%_)
                                                       (_%generate-simple168015%_
                                                        _%g168025168069%_
                                                        _%g168024168068%_)
                                                       (_%generate-values168018%_
                                                        _%g168025168069%_
                                                        _%g168024168068%_)))
                                                 _%hd168033168063%_
                                                 _%hd168030168055%_)
                                                (_%g168022168039%_
                                                 _%g168023168042%_))))
                                        (_%g168022168039%_
                                         _%g168023168042%_))))
                                (_%g168022168039%_ _%g168023168042%_))))
                        (_%g168022168039%_ _%g168023168042%_)))))
            (_%g168021168085%_ _%stx168012%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self168765%_ _%stx168766%_)
        (let ((_%compiled-body?168768%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self168765%_
           _%stx168766%_
           _%compiled-body?168768%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g173034_
        (let ((_g173035_ (let () (declare (not safe)) (##length _g173034_))))
          (cond ((let () (declare (not safe)) (##fx= _g173035_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g173034_))
                ((let () (declare (not safe)) (##fx= _g173035_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g173034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g173034_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals167905%_ _%hd167906%_)
        (let _%lp167908%_ ((_%rest167910%_ _%hd167906%_)
                           (_%k167911%_ '0)
                           (_%r167912%_ '()))
          (let* ((_%__stx172199172200%_ _%rest167910%_)
                 (_%g167917167934%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172199172200%_)))))
            (let ((_%__kont172201172202%_
                   (lambda (_%g167919167997%_)
                     (_%lp167908%_
                      _%g167919167997%_
                      (let () (declare (not safe)) (##fx+ _%k167911%_ '1))
                      _%r167912%_)))
                  (_%__kont172203172204%_
                   (lambda (_%g167924167970%_ _%g167925167971%_)
                     (_%lp167908%_
                      _%g167924167970%_
                      (let () (declare (not safe)) (##fx+ _%k167911%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g167925167971%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals167905%_
                                         _%k167911%_
                                         _%g167924167970%_)
                                        '()))
                            _%r167912%_))))
                  (_%__kont172205172206%_
                   (lambda (_%g167929167946%_)
                     (let ((__tmp173036
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g167929167946%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals167905%_
                                               _%k167911%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp173036 _%r167912%_))))
                  (_%__kont172207172208%_ (lambda () (reverse _%r167912%_))))
              (let ((_%g167915167957%_
                     (lambda ()
                       (let ((_%g167929167946%_ _%__stx172199172200%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g167929167946%_))
                             (_%__kont172205172206%_ _%g167929167946%_)
                             (_%__kont172207172208%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172199172200%_))
                    (let ((_%e167920167986%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172199172200%_))))
                      (let ((_%tl167922167991%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167920167986%_)))
                            (_%hd167921167989%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167920167986%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd167921167989%_))
                            (let ((_%e167923167994%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167921167989%_))))
                              (if (equal? _%e167923167994%_ '#f)
                                  (_%__kont172201172202%_ _%tl167922167991%_)
                                  (_%__kont172203172204%_
                                   _%tl167922167991%_
                                   _%hd167921167989%_)))
                            (_%__kont172203172204%_
                             _%tl167922167991%_
                             _%hd167921167989%_))))
                    (let () (declare (not safe)) (_%g167915167957%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self167584%_ _%stx167585%_ _%compiled-body?167586%_)
        (letrec ((_%generate-simple167588%_
                  (lambda (_%hd167890%_ _%body167891%_)
                    (gxc#generate-runtime-simple-let
                     _%self167584%_
                     'letrec
                     _%hd167890%_
                     _%body167891%_
                     _%compiled-body?167586%_)))
                 (_%generate-values167589%_
                  (lambda (_%hd167669%_ _%body167670%_)
                    (let _%lp167672%_ ((_%rest167674%_ _%hd167669%_)
                                       (_%bind167675%_ '())
                                       (_%check167676%_ '())
                                       (_%post167677%_ '()))
                      (let* ((_%__stx172273172274%_ _%rest167674%_)
                             (_%g167680167691%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172273172274%_)))))
                        (let ((_%__kont172275172276%_
                               (lambda (_%g167682167718%_ _%g167683167719%_)
                                 (let* ((_%__stx172229172230%_
                                         _%g167683167719%_)
                                        (_%g167734167759%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172229172230%_)))))
                                   (let ((_%__kont172231172232%_
                                          (lambda (_%g167736167866%_
                                                   _%g167737167867%_)
                                            (let ((_%eid167881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167737167867%_)))
                                                  (_%expr167882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167584%_
                                                      _%g167736167866%_))))
                                              (_%lp167672%_
                                               _%g167682167718%_
                                               (cons (cons _%eid167881%_
                                                           (cons _%expr167882%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167675%_)
                                               _%check167676%_
                                               _%post167677%_))))
                                         (_%__kont172233172234%_
                                          (lambda (_%g167747167780%_
                                                   _%g167748167781%_)
                                            (let* ((_%vals167794%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values167796%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals167794%_
                                                     _%g167748167781%_
                                                     _%g167747167780%_))
                                                   (_%refs167798%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals167794%_
                                                     _%g167748167781%_))
                                                   (_%expr167800%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167584%_
                                                       _%g167747167780%_))))
                                              (_%lp167672%_
                                               _%g167682167718%_
                                               (let ((__tmp173038
                                                      (cons (cons _%vals167794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr167800%_ '()))
                    _%bind167675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp173037
                                                      (map (lambda (_%e167802167804%_)
                                                             (let* ((_%e167802167806167815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e167802167804%_)
                            (_%E167808167819%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e167802167806167815%_
                                        '([eid _])))
                               '#!void))
                            (_%K167809167824%_
                             (lambda (_%eid167822%_)
                               (cons _%eid167822%_ (cons '#!void '())))))
                       (if (pair? _%e167802167806167815%_)
                           (let ((_%hd167810167827%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e167802167806167815%_)))
                                 (_%tl167811167829%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e167802167806167815%_))))
                             (let ((_%eid167832%_ _%hd167810167827%_))
                               (if (pair? _%tl167811167829%_)
                                   (let ((_%tl167813167834%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl167811167829%_))))
                                     (if (null? _%tl167813167834%_)
                                         (_%K167809167824%_ _%eid167832%_)
                                         (_%E167808167819%_)))
                                   (_%E167808167819%_))))
                           (_%E167808167819%_))))
                   _%refs167798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp173038
                                                  __tmp173037))
                                               (cons _%check-values167796%_
                                                     _%check167676%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs167798%_
                                                  _%post167677%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172229172230%_))
                                         (let ((_%e167738167842%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172229172230%_))))
                                           (let ((_%tl167740167847%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167738167842%_)))
                                                 (_%hd167739167845%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167738167842%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167739167845%_))
                                                 (let ((_%e167741167850%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167739167845%_))))
                                                   (let ((_%tl167743167855%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167741167850%_)))
                                                         (_%hd167742167853%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167741167850%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167743167855%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167740167847%_))
                     (let ((_%e167744167858%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167740167847%_))))
                       (let ((_%tl167746167863%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167744167858%_)))
                             (_%hd167745167861%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167744167858%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167746167863%_))
                             (_%__kont172231172232%_
                              _%hd167745167861%_
                              _%hd167742167853%_)
                             (let ()
                               (declare (not safe))
                               (_%g167734167759%_)))))
                     (let () (declare (not safe)) (_%g167734167759%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167740167847%_))
                     (let ((_%e167752167772%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167740167847%_))))
                       (let ((_%tl167754167777%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167752167772%_)))
                             (_%hd167753167775%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167752167772%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167754167777%_))
                             (_%__kont172233172234%_
                              _%hd167753167775%_
                              _%hd167739167845%_)
                             (let ()
                               (declare (not safe))
                               (_%g167734167759%_)))))
                     (let () (declare (not safe)) (_%g167734167759%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167740167847%_))
                                                     (let ((_%e167752167772%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167740167847%_))))
                                                       (let ((_%tl167754167777%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167752167772%_)))
                     (_%hd167753167775%_
                      (let () (declare (not safe)) (##car _%e167752167772%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167754167777%_))
                     (_%__kont172233172234%_
                      _%hd167753167775%_
                      _%hd167739167845%_)
                     (let () (declare (not safe)) (_%g167734167759%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167734167759%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167734167759%_)))))))
                              (_%__kont172277172278%_
                               (lambda ()
                                 (let* ((_%body167698%_
                                         (if _%compiled-body?167586%_
                                             _%body167670%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167584%_
                                                _%body167670%_))))
                                        (_%body167700%_
                                         (_%generate-values-post167591%_
                                          _%post167677%_
                                          _%body167698%_))
                                        (_%body167702%_
                                         (_%generate-values-check167590%_
                                          _%check167676%_
                                          _%body167700%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind167675%_)
                                               (cons _%body167702%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172273172274%_))
                              (let ((_%e167684167710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172273172274%_))))
                                (let ((_%tl167686167715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167684167710%_)))
                                      (_%hd167685167713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167684167710%_))))
                                  (_%__kont172275172276%_
                                   _%tl167686167715%_
                                   _%hd167685167713%_)))
                              (_%__kont172277172278%_)))))))
                 (_%generate-values-check167590%_
                  (lambda (_%check167666%_ _%body167667%_)
                    (cons 'begin
                          (let ((__tmp173040 (cons _%body167667%_ '()))
                                (__tmp173039 (reverse _%check167666%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173040 __tmp173039)))))
                 (_%generate-values-post167591%_
                  (lambda (_%post167659%_ _%body167660%_)
                    (cons 'begin
                          (let ((__tmp173044 (cons _%body167660%_ '()))
                                (__tmp173041
                                 (let ((__tmp173043
                                        (lambda (_%g167661167663%_)
                                          (cons 'set! _%g167661167663%_)))
                                       (__tmp173042 (reverse _%post167659%_)))
                                   (declare (not safe))
                                   (##map __tmp173043 __tmp173042))))
                            (declare (not safe))
                            (__foldr1 cons __tmp173044 __tmp173041))))))
          (let* ((_%g167593167610%_
                  (lambda (_%g167594167607%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167594167607%_))))
                 (_%g167592167656%_
                  (lambda (_%g167594167613%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167594167613%_))
                        (let ((_%e167597167615%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167594167613%_))))
                          (let ((_%hd167598167618%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167597167615%_)))
                                (_%tl167599167620%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167597167615%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167599167620%_))
                                (let ((_%e167600167623%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167599167620%_))))
                                  (let ((_%hd167601167626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167600167623%_)))
                                        (_%tl167602167628%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167600167623%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167602167628%_))
                                        (let ((_%e167603167631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167602167628%_))))
                                          (let ((_%hd167604167634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167603167631%_)))
                                                (_%tl167605167636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167603167631%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167605167636%_))
                                                ((lambda (_%g167595167639%_
                                                          _%g167596167640%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167596167640%_)
                                                       (_%generate-simple167588%_
                                                        _%g167596167640%_
                                                        _%g167595167639%_)
                                                       (_%generate-values167589%_
                                                        _%g167596167640%_
                                                        _%g167595167639%_)))
                                                 _%hd167604167634%_
                                                 _%hd167601167626%_)
                                                (_%g167593167610%_
                                                 _%g167594167613%_))))
                                        (_%g167593167610%_
                                         _%g167594167613%_))))
                                (_%g167593167610%_ _%g167594167613%_))))
                        (_%g167593167610%_ _%g167594167613%_)))))
            (_%g167592167656%_ _%stx167585%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self167896%_ _%stx167897%_)
        (let ((_%compiled-body?167899%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self167896%_
           _%stx167897%_
           _%compiled-body?167899%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g173045_
        (let ((_g173046_ (let () (declare (not safe)) (##length _g173045_))))
          (cond ((let () (declare (not safe)) (##fx= _g173046_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g173045_))
                ((let () (declare (not safe)) (##fx= _g173046_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g173045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g173045_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self167165%_ _%stx167166%_)
        (letrec ((_%generate-values167168%_
                  (lambda (_%hd167411%_ _%body167412%_)
                    (let _%lp167414%_ ((_%rest167416%_ _%hd167411%_)
                                       (_%bind167417%_ '()))
                      (let* ((_%rest167418167426%_ _%rest167416%_)
                             (_%else167420167437%_
                              (lambda ()
                                (let ((_%bind167434%_ (reverse _%bind167417%_))
                                      (_%body167435%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self167165%_
                                          _%body167412%_))))
                                  (cons 'letrec*
                                        (cons _%bind167434%_
                                              (cons _%body167435%_ '()))))))
                             (_%K167422167571%_
                              (lambda (_%rest167440%_ _%hd-bind167441%_)
                                (let* ((_%__stx172287172288%_
                                        _%hd-bind167441%_)
                                       (_%g167444167469%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172287172288%_)))))
                                  (let ((_%__kont172289172290%_
                                         (lambda (_%g167446167550%_
                                                  _%g167447167551%_)
                                           (let ((_%eid167565%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g167447167551%_)))
                                                 (_%expr167566%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self167165%_
                                                     _%g167446167550%_))))
                                             (_%lp167414%_
                                              _%rest167440%_
                                              (cons (cons _%eid167565%_
                                                          (cons _%expr167566%_
                                                                '()))
                                                    _%bind167417%_)))))
                                        (_%__kont172291172292%_
                                         (lambda (_%g167457167490%_
                                                  _%g167458167491%_)
                                           (let* ((_%vals167510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp167512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values167514%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp167512%_
                                                    _%g167458167491%_
                                                    _%g167457167490%_))
                                                  (_%refs167516%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals167510%_
                                                    _%g167458167491%_))
                                                  (_%expr167518%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167165%_
                                                      _%g167457167490%_))))
                                             (_%lp167414%_
                                              _%rest167440%_
                                              (let ((__tmp173047
                                                     (cons (cons _%vals167510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp167512%_
                                                       (cons _%expr167518%_
                                                             '()))
                                                 '())
                                           (cons _%check-values167514%_
                                                 (cons _%tmp167512%_ '()))))
                               '()))
                   _%bind167417%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp173047
                                                 _%refs167516%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx172287172288%_))
                                        (let ((_%e167448167526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx172287172288%_))))
                                          (let ((_%tl167450167531%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167448167526%_)))
                                                (_%hd167449167529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167448167526%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167449167529%_))
                                                (let ((_%e167451167534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167449167529%_))))
                                                  (let ((_%tl167453167539%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167451167534%_)))
                                                        (_%hd167452167537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167451167534%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167453167539%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167450167531%_))
                                                            (let ((_%e167454167542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167450167531%_))))
                      (let ((_%tl167456167547%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167454167542%_)))
                            (_%hd167455167545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167454167542%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167456167547%_))
                            (_%__kont172289172290%_
                             _%hd167455167545%_
                             _%hd167452167537%_)
                            (let ()
                              (declare (not safe))
                              (_%g167444167469%_)))))
                    (let () (declare (not safe)) (_%g167444167469%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl167450167531%_))
                    (let ((_%e167462167482%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167450167531%_))))
                      (let ((_%tl167464167487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167462167482%_)))
                            (_%hd167463167485%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167462167482%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167464167487%_))
                            (_%__kont172291172292%_
                             _%hd167463167485%_
                             _%hd167449167529%_)
                            (let ()
                              (declare (not safe))
                              (_%g167444167469%_)))))
                    (let () (declare (not safe)) (_%g167444167469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167450167531%_))
                                                    (let ((_%e167462167482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167450167531%_))))
                                                      (let ((_%tl167464167487%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167462167482%_)))
                    (_%hd167463167485%_
                     (let () (declare (not safe)) (##car _%e167462167482%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167464167487%_))
                    (_%__kont172291172292%_
                     _%hd167463167485%_
                     _%hd167449167529%_)
                    (let () (declare (not safe)) (_%g167444167469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167444167469%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167444167469%_))))))))
                        (if (pair? _%rest167418167426%_)
                            (let ((_%hd167423167574%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167418167426%_)))
                                  (_%tl167424167576%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167418167426%_))))
                              (let* ((_%hd-bind167579%_ _%hd167423167574%_)
                                     (_%rest167581%_ _%tl167424167576%_))
                                (_%K167422167571%_
                                 _%rest167581%_
                                 _%hd-bind167579%_)))
                            (_%else167420167437%_))))))
                 (_%generate-letrec?167169%_
                  (lambda (_%hd167301%_)
                    (let _%lp167303%_ ((_%rest167305%_ _%hd167301%_))
                      (let* ((_%rest167306167314%_ _%rest167305%_)
                             (_%else167308167322%_ (lambda () '#t))
                             (_%K167310167399%_
                              (lambda (_%rest167325%_ _%hd-bind167326%_)
                                (let* ((_%g167328167345%_
                                        (lambda (_%g167329167342%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g167329167342%_))))
                                       (_%g167327167396%_
                                        (lambda (_%g167329167348%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g167329167348%_))
                                              (let ((_%e167332167350%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g167329167348%_))))
                                                (let ((_%hd167333167353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167332167350%_)))
                                                      (_%tl167334167355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167332167350%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd167333167353%_))
                                                      (let ((_%e167335167358%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd167333167353%_))))
                (let ((_%hd167336167361%_
                       (let () (declare (not safe)) (##car _%e167335167358%_)))
                      (_%tl167337167363%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e167335167358%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167337167363%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167334167355%_))
                          (let ((_%e167338167366%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167334167355%_))))
                            (let ((_%hd167339167369%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167338167366%_)))
                                  (_%tl167340167371%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167338167366%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167340167371%_))
                                  ((lambda (_%g167330167374%_
                                            _%g167331167375%_)
                                     (if (_%is-lambda-expr?167170%_
                                          _%g167330167374%_)
                                         (_%lp167303%_ _%rest167325%_)
                                         '#f))
                                   _%hd167339167369%_
                                   _%hd167336167361%_)
                                  (_%g167328167345%_ _%g167329167348%_))))
                          (_%g167328167345%_ _%g167329167348%_))
                      (_%g167328167345%_ _%g167329167348%_))))
              (_%g167328167345%_ _%g167329167348%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g167328167345%_
                                               _%g167329167348%_)))))
                                  (_%g167327167396%_ _%hd-bind167326%_)))))
                        (if (pair? _%rest167306167314%_)
                            (let ((_%hd167311167402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167306167314%_)))
                                  (_%tl167312167404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167306167314%_))))
                              (let* ((_%hd-bind167407%_ _%hd167311167402%_)
                                     (_%rest167409%_ _%tl167312167404%_))
                                (_%K167310167399%_
                                 _%rest167409%_
                                 _%hd-bind167407%_)))
                            (_%else167308167322%_))))))
                 (_%is-lambda-expr?167170%_
                  (lambda (_%expr167238%_)
                    (let* ((_%__stx172331172332%_ _%expr167238%_)
                           (_%g167241167255%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx172331172332%_)))))
                      (let ((_%__kont172333172334%_
                             (lambda (_%g167243167283%_ _%g167244167284%_)
                               '#t))
                            (_%__kont172335172336%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx172331172332%_))
                            (let ((_%e167245167267%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx172331172332%_))))
                              (let ((_%tl167247167272%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167245167267%_)))
                                    (_%hd167246167270%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167245167267%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167246167270%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd167246167270%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167247167272%_))
                                            (let ((_%e167248167275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167247167272%_))))
                                              (let ((_%tl167250167280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167248167275%_)))
                                                    (_%hd167249167278%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167248167275%_))))
                                                (_%__kont172333172334%_
                                                 _%tl167250167280%_
                                                 _%hd167249167278%_)))
                                            (_%__kont172335172336%_))
                                        (_%__kont172335172336%_))
                                    (_%__kont172335172336%_))))
                            (_%__kont172335172336%_)))))))
          (let* ((_%g167172167189%_
                  (lambda (_%g167173167186%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167173167186%_))))
                 (_%g167171167235%_
                  (lambda (_%g167173167192%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167173167192%_))
                        (let ((_%e167176167194%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167173167192%_))))
                          (let ((_%hd167177167197%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167176167194%_)))
                                (_%tl167178167199%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167176167194%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167178167199%_))
                                (let ((_%e167179167202%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167178167199%_))))
                                  (let ((_%hd167180167205%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167179167202%_)))
                                        (_%tl167181167207%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167179167202%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167181167207%_))
                                        (let ((_%e167182167210%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167181167207%_))))
                                          (let ((_%hd167183167213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167182167210%_)))
                                                (_%tl167184167215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167182167210%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167184167215%_))
                                                ((lambda (_%g167174167218%_
                                                          _%g167175167219%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167175167219%_)
                                                       (if (_%generate-letrec?167169%_
                                                            _%g167175167219%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167165%_
                                                            'letrec
                                                            _%g167175167219%_
                                                            _%g167174167218%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167165%_
                                                            'letrec*
                                                            _%g167175167219%_
                                                            _%g167174167218%_
                                                            '#f))
                                                       (_%generate-values167168%_
                                                        _%g167175167219%_
                                                        _%g167174167218%_)))
                                                 _%hd167183167213%_
                                                 _%hd167180167205%_)
                                                (_%g167172167189%_
                                                 _%g167173167192%_))))
                                        (_%g167172167189%_
                                         _%g167173167192%_))))
                                (_%g167172167189%_ _%g167173167192%_))))
                        (_%g167172167189%_ _%g167173167192%_)))))
            (_%g167171167235%_ _%stx167166%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd167102%_)
        (let _%lp167104%_ ((_%rest167106%_ _%hd167102%_))
          (let* ((_%rest167107167123%_ _%rest167106%_)
                 (_%else167110167131%_ (lambda () '#f)))
            (let ((_%K167113167144%_
                   (lambda (_%rest167142%_) (_%lp167104%_ _%rest167142%_)))
                  (_%K167112167136%_ (lambda () '#t)))
              (let ((_%try-match167109167139%_
                     (lambda ()
                       (if (null? _%rest167107167123%_)
                           (_%K167112167136%_)
                           (_%else167110167131%_)))))
                (if (pair? _%rest167107167123%_)
                    (let ((_%tl167115167149%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest167107167123%_)))
                          (_%hd167114167147%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest167107167123%_))))
                      (if (pair? _%hd167114167147%_)
                          (let ((_%tl167117167154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd167114167147%_)))
                                (_%hd167116167152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd167114167147%_))))
                            (if (pair? _%hd167116167152%_)
                                (let ((_%tl167121167157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167116167152%_))))
                                  (if (null? _%tl167121167157%_)
                                      (if (pair? _%tl167117167154%_)
                                          (let ((_%tl167119167160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167117167154%_))))
                                            (if (null? _%tl167119167160%_)
                                                (let ((_%rest167163%_
                                                       _%tl167115167149%_))
                                                  (_%lp167104%_
                                                   _%rest167163%_))
                                                (_%else167110167131%_)))
                                          (_%else167110167131%_))
                                      (_%else167110167131%_)))
                                (_%else167110167131%_)))
                          (_%else167110167131%_)))
                    (_%try-match167109167139%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self167014%_
               _%form167015%_
               _%hd167016%_
               _%body167017%_
               _%compiled-body?167018%_)
        (letrec ((_%generate1167020%_
                  (lambda (_%bind167059%_)
                    (let* ((_%bind167060167071%_ _%bind167059%_)
                           (_%E167062167074%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind167060167071%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K167063167080%_
                            (lambda (_%expr167077%_ _%id167078%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id167078%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self167014%_
                                             _%expr167077%_))
                                          '())))))
                      (if (pair? _%bind167060167071%_)
                          (let ((_%hd167064167083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind167060167071%_)))
                                (_%tl167065167085%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind167060167071%_))))
                            (if (pair? _%hd167064167083%_)
                                (let ((_%hd167068167088%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd167064167083%_)))
                                      (_%tl167069167090%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167064167083%_))))
                                  (let ((_%id167093%_ _%hd167068167088%_))
                                    (if (null? _%tl167069167090%_)
                                        (if (pair? _%tl167065167085%_)
                                            (let ((_%hd167066167095%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl167065167085%_)))
                                                  (_%tl167067167097%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl167065167085%_))))
                                              (let ((_%expr167100%_
                                                     _%hd167066167095%_))
                                                (if (null? _%tl167067167097%_)
                                                    (_%K167063167080%_
                                                     _%expr167100%_
                                                     _%id167093%_)
                                                    (_%E167062167074%_))))
                                            (_%E167062167074%_))
                                        (_%E167062167074%_))))
                                (_%E167062167074%_)))
                          (_%E167062167074%_))))))
          (let* ((_%bind167022%_ (map _%generate1167020%_ _%hd167016%_))
                 (_%body167024%_
                  (if _%compiled-body?167018%_
                      _%body167017%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167014%_ _%body167017%_))))
                 (_%body167056%_
                  (let* ((_%body167025167033%_ _%body167024%_)
                         (_%else167027167041%_
                          (lambda () (cons _%body167024%_ '())))
                         (_%K167029167046%_
                          (lambda (_%exprs167044%_) _%exprs167044%_)))
                    (if (pair? _%body167025167033%_)
                        (let ((_%hd167030167049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body167025167033%_)))
                              (_%tl167031167051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body167025167033%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd167030167049%_ 'begin))
                              (let ((_%exprs167054%_ _%tl167031167051%_))
                                (_%K167029167046%_ _%exprs167054%_))
                              (_%else167027167041%_)))
                        (_%else167027167041%_)))))
            (cons _%form167015%_ (cons _%bind167022%_ _%body167056%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self166914%_ _%stx166915%_)
        (letrec ((_%generate1166917%_
                  (lambda (_%datum166969%_)
                    (if (or (null? _%datum166969%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum166969%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum166969%_))
                            (eof-object? _%datum166969%_))
                        _%datum166969%_
                        (if (uninterned-symbol? _%datum166969%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum166969%_
                               '#t))
                            (if (pair? _%datum166969%_)
                                (cons (_%generate1166917%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum166969%_)))
                                      (_%generate1166917%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum166969%_))))
                                (if (box? _%datum166969%_)
                                    (box (_%generate1166917%_
                                          (unbox _%datum166969%_)))
                                    (if (vector? _%datum166969%_)
                                        (vector-map
                                         _%generate1166917%_
                                         _%datum166969%_)
                                        (if (or (s8vector? _%datum166969%_)
                                                (u8vector? _%datum166969%_)
                                                (s16vector? _%datum166969%_)
                                                (u16vector? _%datum166969%_)
                                                (s32vector? _%datum166969%_)
                                                (u32vector? _%datum166969%_)
                                                (s64vector? _%datum166969%_)
                                                (u64vector? _%datum166969%_)
                                                (f32vector? _%datum166969%_)
                                                (f64vector? _%datum166969%_))
                                            _%datum166969%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx166915%_)))))))))))
          (let* ((_%g166919166932%_
                  (lambda (_%g166920166929%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166920166929%_))))
                 (_%g166918166966%_
                  (lambda (_%g166920166935%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166920166935%_))
                        (let ((_%e166922166937%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166920166935%_))))
                          (let ((_%hd166923166940%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166922166937%_)))
                                (_%tl166924166942%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166922166937%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166924166942%_))
                                (let ((_%e166925166945%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166924166942%_))))
                                  (let ((_%hd166926166948%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166925166945%_)))
                                        (_%tl166927166950%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166925166945%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166927166950%_))
                                        ((lambda (_%g166921166953%_)
                                           (cons 'quote
                                                 (cons (_%generate1166917%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g166921166953%_)))
                                                       '())))
                                         _%hd166926166948%_)
                                        (_%g166919166932%_
                                         _%g166920166935%_))))
                                (_%g166919166932%_ _%g166920166935%_))))
                        (_%g166919166932%_ _%g166920166935%_)))))
            (_%g166918166966%_ _%stx166915%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self166361%_ _%stx166362%_)
        (letrec ((_%compile-call166364%_
                  (lambda (_%rator166651%_ _%rands166652%_)
                    (let ((_%rator166658%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self166361%_
                              _%rator166651%_)))
                          (_%rands166659%_
                           (map (lambda (_%g166653166655%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self166361%_
                                     _%g166653166655%_)))
                                _%rands166652%_)))
                      (let* ((_%__stx172378172379%_ _%rator166658%_)
                             (_%g166662166714%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172378172379%_)))))
                        (let ((_%__kont172380172381%_
                               (lambda (_%g166664166834%_
                                        _%g166665166835%_
                                        _%g166666166836%_
                                        _%g166667166837%_)
                                 (if (let ((__tmp173050
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands166659%_)))
                                           (__tmp173048
                                            (length (let ((__tmp173049
                                                           (lambda (_%g166873166876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g166874166878%_)
                     (cons _%g166873166876%_ _%g166874166878%_))))
              (declare (not safe))
              (__foldr1 __tmp173049 '() _%g166666166836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173050 __tmp173048))
                                     (let* ((_%id166881%_ _%g166667166837%_)
                                            (_%args166890%_
                                             (let ((__tmp173051
                                                    (lambda (_%g166882166885%_
                                                             _%g166883166887%_)
                                                      (cons _%g166882166885%_
                                                            _%g166883166887%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173051
                                                '()
                                                _%g166666166836%_)))
                                            (_%body166899%_
                                             (let ((__tmp173052
                                                    (lambda (_%g166891166894%_
                                                             _%g166892166896%_)
                                                      (cons _%g166891166894%_
                                                            _%g166892166896%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173052
                                                '()
                                                _%g166665166835%_)))
                                            (_%init166901%_
                                             (map list
                                                  _%args166890%_
                                                  _%rands166659%_)))
                                       (cons 'let
                                             (cons _%id166881%_
                                                   (cons _%init166901%_
                                                         _%body166899%_))))
                                     (let ((__tmp173053
                                            (let ((__tmp173054
                                                   (lambda (_%g166903166906%_
                                                            _%g166904166908%_)
                                                     (cons _%g166903166906%_
                                                           _%g166904166908%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173054
                                               '()
                                               _%g166666166836%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx166362%_
                                        __tmp173053
                                        _%rands166659%_)))))
                              (_%__kont172386172387%_
                               (lambda ()
                                 (cons _%rator166658%_ _%rands166659%_))))
                          (let ((_%__match172445172446%_
                                 (lambda (_%e166668166726%_
                                          _%hd166669166729%_
                                          _%tl166670166731%_
                                          _%e166671166734%_
                                          _%hd166672166737%_
                                          _%tl166673166739%_
                                          _%e166674166742%_
                                          _%hd166675166745%_
                                          _%tl166676166747%_
                                          _%e166677166750%_
                                          _%hd166678166753%_
                                          _%tl166679166755%_
                                          _%e166680166758%_
                                          _%hd166681166761%_
                                          _%tl166682166763%_
                                          _%e166683166766%_
                                          _%hd166684166769%_
                                          _%tl166685166771%_
                                          _%e166686166774%_
                                          _%hd166687166777%_
                                          _%tl166688166779%_
                                          _%__splice172382172383%_
                                          _%target166689166782%_
                                          _%tl166691166784%_)
                                   (letrec ((_%loop166692166787%_
                                             (lambda (_%hd166690166790%_
                                                      _%arg166696166792%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd166690166790%_))
                                                   (let ((_%e166693166794%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd166690166790%_))))
                                                     (let ((_%lp-tl166695166799%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e166693166794%_)))
                                                           (_%lp-hd166694166797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e166693166794%_))))
                                                       (_%loop166692166787%_
                                                        _%lp-tl166695166799%_
                                                        (cons _%lp-hd166694166797%_
                                                              _%arg166696166792%_))))
                                                   (let ((_%arg166697166802%_
                                                          (reverse _%arg166696166792%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl166688166779%_))
                                                         (let ((_%__splice172384172385%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl166688166779%_
                           '0))))
                   (let ((_%tl166700166806%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172384172385%_ '1)))
                         (_%target166698166804%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172384172385%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl166700166806%_))
                         (letrec ((_%loop166701166809%_
                                   (lambda (_%hd166699166812%_
                                            _%body166705166814%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd166699166812%_))
                                         (let ((_%e166702166816%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd166699166812%_))))
                                           (let ((_%lp-tl166704166821%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166702166816%_)))
                                                 (_%lp-hd166703166819%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166702166816%_))))
                                             (_%loop166701166809%_
                                              _%lp-tl166704166821%_
                                              (cons _%lp-hd166703166819%_
                                                    _%body166705166814%_))))
                                         (let ((_%body166706166824%_
                                                (reverse _%body166705166814%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl166682166763%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl166676166747%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl166673166739%_))
                                                       (let ((_%e166707166826%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl166673166739%_))))
                 (let ((_%tl166709166831%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e166707166826%_)))
                       (_%hd166708166829%_
                        (let ()
                          (declare (not safe))
                          (##car _%e166707166826%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl166709166831%_))
                       (let ((_%g166664166834%_ _%hd166708166829%_)
                             (_%g166665166835%_ _%body166706166824%_)
                             (_%g166666166836%_ _%arg166697166802%_)
                             (_%g166667166837%_ _%hd166678166753%_))
                         (if (eq? _%g166667166837%_ _%g166664166834%_)
                             (_%__kont172380172381%_
                              _%g166664166834%_
                              _%g166665166835%_
                              _%g166666166836%_
                              _%g166667166837%_)
                             (_%__kont172386172387%_)))
                       (_%__kont172386172387%_))))
               (_%__kont172386172387%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172386172387%_))
                                               (_%__kont172386172387%_)))))))
                           (_%loop166701166809%_ _%target166698166804%_ '()))
                         (_%__kont172386172387%_))))
                 (_%__kont172386172387%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop166692166787%_
                                      _%target166689166782%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172378172379%_))
                                (let ((_%e166668166726%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172378172379%_))))
                                  (let ((_%tl166670166731%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166668166726%_)))
                                        (_%hd166669166729%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166668166726%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166669166729%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd166669166729%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166670166731%_))
                                                (let ((_%e166671166734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166670166731%_))))
                                                  (let ((_%tl166673166739%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166671166734%_)))
                                                        (_%hd166672166737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166671166734%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd166672166737%_))
                                                        (let ((_%e166674166742%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd166672166737%_))))
                  (let ((_%tl166676166747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166674166742%_)))
                        (_%hd166675166745%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166674166742%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd166675166745%_))
                        (let ((_%e166677166750%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd166675166745%_))))
                          (let ((_%tl166679166755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166677166750%_)))
                                (_%hd166678166753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166677166750%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166679166755%_))
                                (let ((_%e166680166758%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166679166755%_))))
                                  (let ((_%tl166682166763%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166680166758%_)))
                                        (_%hd166681166761%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166680166758%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166681166761%_))
                                        (let ((_%e166683166766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166681166761%_))))
                                          (let ((_%tl166685166771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166683166766%_)))
                                                (_%hd166684166769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166683166766%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd166684166769%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd166684166769%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl166685166771%_))
                                                        (let ((_%e166686166774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl166685166771%_))))
                  (let ((_%tl166688166779%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166686166774%_)))
                        (_%hd166687166777%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166686166774%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd166687166777%_))
                        (let ((_%__splice172382172383%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd166687166777%_
                                  '0))))
                          (let ((_%tl166691166784%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice172382172383%_ '1)))
                                (_%target166689166782%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice172382172383%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl166691166784%_))
                                (_%__match172445172446%_
                                 _%e166668166726%_
                                 _%hd166669166729%_
                                 _%tl166670166731%_
                                 _%e166671166734%_
                                 _%hd166672166737%_
                                 _%tl166673166739%_
                                 _%e166674166742%_
                                 _%hd166675166745%_
                                 _%tl166676166747%_
                                 _%e166677166750%_
                                 _%hd166678166753%_
                                 _%tl166679166755%_
                                 _%e166680166758%_
                                 _%hd166681166761%_
                                 _%tl166682166763%_
                                 _%e166683166766%_
                                 _%hd166684166769%_
                                 _%tl166685166771%_
                                 _%e166686166774%_
                                 _%hd166687166777%_
                                 _%tl166688166779%_
                                 _%__splice172382172383%_
                                 _%target166689166782%_
                                 _%tl166691166784%_)
                                (_%__kont172386172387%_))))
                        (_%__kont172386172387%_))))
                (_%__kont172386172387%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172386172387%_))
                                                (_%__kont172386172387%_))))
                                        (_%__kont172386172387%_))))
                                (_%__kont172386172387%_))))
                        (_%__kont172386172387%_))))
                (_%__kont172386172387%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172386172387%_))
                                            (_%__kont172386172387%_))
                                        (_%__kont172386172387%_))))
                                (_%__kont172386172387%_)))))))))
          (let* ((_%g166366166389%_
                  (lambda (_%g166367166386%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166367166386%_))))
                 (_%g166365166648%_
                  (lambda (_%g166367166392%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166367166392%_))
                        (let ((_%e166370166394%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166367166392%_))))
                          (let ((_%hd166371166397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166370166394%_)))
                                (_%tl166372166399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166370166394%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166372166399%_))
                                (let ((_%e166373166402%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166372166399%_))))
                                  (let ((_%hd166374166405%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166373166402%_)))
                                        (_%tl166375166407%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166373166402%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166375166407%_))
                                        (let ((_g173055_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166375166407%_
                                                  '0))))
                                          (begin
                                            (let ((_g173056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173055_)
                                                         (##values-length
                                                          _g173055_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173056_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173056_)))
                                            (let ((_%target166376166410%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173055_
                                                      0)))
                                                  (_%tl166378166412%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173055_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166378166412%_))
                                                  (letrec ((_%loop166379166415%_
                                                            (lambda (_%hd166377166418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand166383166420%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166377166418%_))
                          (let ((_%e166380166422%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166377166418%_))))
                            (let ((_%lp-hd166381166425%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166380166422%_)))
                                  (_%lp-tl166382166427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166380166422%_))))
                              (_%loop166379166415%_
                               _%lp-tl166382166427%_
                               (cons _%lp-hd166381166425%_
                                     _%rand166383166420%_))))
                          (let ((_%rand166384166430%_
                                 (reverse _%rand166383166420%_)))
                            ((lambda (_%g166368166432%_ _%g166369166433%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call166364%_
                                    _%g166369166433%_
                                    (let ((__tmp173057
                                           (lambda (_%g166450166453%_
                                                    _%g166451166455%_)
                                             (cons _%g166450166453%_
                                                   _%g166451166455%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp173057
                                       '()
                                       _%g166368166432%_)))
                                   (let* ((_%__stx172494172495%_
                                           _%g166369166433%_)
                                          (_%g166459166471%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx172494172495%_)))))
                                     (let ((_%__kont172496172497%_
                                            (lambda ()
                                              (let ((_%f166508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self166361%_
                                                        _%g166369166433%_))))
                                                (if (and (let ((__tmp173058
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f166508%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp173058))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f166508%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp166510%_ ((_%rest166513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp173060
                                                (lambda (_%g166630166633%_
                                                         _%g166631166635%_)
                                                  (cons _%g166630166633%_
                                                        _%g166631166635%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp173060
                                            '()
                                            _%g166368166432%_))))
                               (_%bind166515%_ '())
                               (_%args166516%_ '()))
              (let* ((_%rest166517166525%_ _%rest166513%_)
                     (_%else166519166533%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind166515%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f166508%_
                                                      _%args166516%_)
                                                '()))))))
                     (_%K166521166619%_
                      (lambda (_%rest166536%_ _%e166537%_)
                        (let* ((_%__stx172448172449%_ _%e166537%_)
                               (_%g166542166560%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx172448172449%_)))))
                          (let ((_%__kont172450172451%_
                                 (lambda ()
                                   (_%lp166510%_
                                    _%rest166536%_
                                    _%bind166515%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166537%_))
                                          _%args166516%_))))
                                (_%__kont172452172453%_
                                 (lambda ()
                                   (_%lp166510%_
                                    _%rest166536%_
                                    _%bind166515%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166537%_))
                                          _%args166516%_))))
                                (_%__kont172454172455%_
                                 (lambda ()
                                   (let ((_%tmp166567%_
                                          (let ((__tmp173059
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp173059))))
                                     (_%lp166510%_
                                      _%rest166536%_
                                      (cons (cons _%tmp166567%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e166537%_))
                                                        '()))
                                            _%bind166515%_)
                                      (cons _%tmp166567%_ _%args166516%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172448172449%_))
                                (let ((_%e166544166598%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172448172449%_))))
                                  (let ((_%tl166546166603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166544166598%_)))
                                        (_%hd166545166601%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166544166598%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166545166601%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166545166601%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166546166603%_))
                                                (let ((_%e166547166606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166546166603%_))))
                                                  (let ((_%tl166549166611%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166547166606%_)))
                                                        (_%hd166548166609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166547166606%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166549166611%_))
                                                        (_%__kont172450172451%_)
                                                        (_%__kont172454172455%_))))
                                                (_%__kont172454172455%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd166545166601%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166546166603%_))
                                                    (let ((_%e166553166583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166546166603%_))))
                                                      (let ((_%tl166555166588%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166553166583%_)))
                    (_%hd166554166586%_
                     (let () (declare (not safe)) (##car _%e166553166583%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166555166588%_))
                    (_%__kont172452172453%_)
                    (_%__kont172454172455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172454172455%_))
                                                (_%__kont172454172455%_)))
                                        (_%__kont172454172455%_))))
                                (_%__kont172454172455%_)))))))
                (if (pair? _%rest166517166525%_)
                    (let ((_%hd166522166622%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166517166525%_)))
                          (_%tl166523166624%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166517166525%_))))
                      (let* ((_%e166627%_ _%hd166522166622%_)
                             (_%rest166629%_ _%tl166523166624%_))
                        (_%K166521166619%_ _%rest166629%_ _%e166627%_)))
                    (_%else166519166533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call166364%_
                                                     _%g166369166433%_
                                                     (let ((__tmp173061
                                                            (lambda (_%g166637166640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g166638166642%_)
                      (cons _%g166637166640%_ _%g166638166642%_))))
               (declare (not safe))
               (__foldr1 __tmp173061 '() _%g166368166432%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont172498172499%_
                                            (lambda ()
                                              (_%compile-call166364%_
                                               _%g166369166433%_
                                               (let ((__tmp173062
                                                      (lambda (_%g166477166480%_
                                                               _%g166478166482%_)
                                                        (cons _%g166477166480%_
                                                              _%g166478166482%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173062
                                                  '()
                                                  _%g166368166432%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx172494172495%_))
                                           (let ((_%e166461166490%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx172494172495%_))))
                                             (let ((_%tl166463166495%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e166461166490%_)))
                                                   (_%hd166462166493%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e166461166490%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd166462166493%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd166462166493%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl166463166495%_))
                                                           (let ((_%e166464166498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl166463166495%_))))
                     (let ((_%tl166466166503%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e166464166498%_)))
                           (_%hd166465166501%_
                            (let ()
                              (declare (not safe))
                              (##car _%e166464166498%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl166466166503%_))
                           (_%__kont172496172497%_)
                           (_%__kont172498172499%_))))
                   (_%__kont172498172499%_))
               (_%__kont172498172499%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172498172499%_))))
                                           (_%__kont172498172499%_))))))
                             _%rand166384166430%_
                             _%hd166374166405%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop166379166415%_
                                                     _%target166376166410%_
                                                     '()))
                                                  (_%g166366166389%_
                                                   _%g166367166392%_)))))
                                        (_%g166366166389%_
                                         _%g166367166392%_))))
                                (_%g166366166389%_ _%g166367166392%_))))
                        (_%g166366166389%_ _%g166367166392%_)))))
            (_%g166365166648%_ _%stx166362%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self166106%_ _%stx166107%_)
        (let* ((_%__stx172566172567%_ _%stx166107%_)
               (_%g166110166139%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172566172567%_)))))
          (let ((_%__kont172568172569%_
                 (lambda (_%g166112166205%_ _%g166113166206%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self166106%_
                        _%stx166107%_)
                       (let ((_%f166228%_
                              (let ((__tmp173063
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g166113166206%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self166106%_
                                 __tmp173063))))
                         (let _%lp166230%_ ((_%rest166233%_
                                             (reverse (let ((__tmp173065
                                                             (lambda (_%g166350166353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g166351166355%_)
                       (cons _%g166350166353%_ _%g166351166355%_))))
                (declare (not safe))
                (__foldr1 __tmp173065 '() _%g166112166205%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind166235%_ '())
                                            (_%args166236%_ '()))
                           (let* ((_%rest166237166245%_ _%rest166233%_)
                                  (_%else166239166253%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind166235%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f166228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args166236%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K166241166339%_
                                   (lambda (_%rest166256%_ _%e166257%_)
                                     (let* ((_%__stx172520172521%_ _%e166257%_)
                                            (_%g166262166280%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx172520172521%_)))))
                                       (let ((_%__kont172522172523%_
                                              (lambda ()
                                                (_%lp166230%_
                                                 _%rest166256%_
                                                 _%bind166235%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166257%_))
                                                       _%args166236%_))))
                                             (_%__kont172524172525%_
                                              (lambda ()
                                                (_%lp166230%_
                                                 _%rest166256%_
                                                 _%bind166235%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166257%_))
                                                       _%args166236%_))))
                                             (_%__kont172526172527%_
                                              (lambda ()
                                                (let ((_%tmp166287%_
                                                       (let ((__tmp173064
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp173064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp166230%_
                                                   _%rest166256%_
                                                   (cons (cons _%tmp166287%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e166257%_))
                             '()))
                 _%bind166235%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp166287%_
                                                         _%args166236%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx172520172521%_))
                                             (let ((_%e166264166318%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx172520172521%_))))
                                               (let ((_%tl166266166323%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e166264166318%_)))
                                                     (_%hd166265166321%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e166264166318%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd166265166321%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd166265166321%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166266166323%_))
                     (let ((_%e166267166326%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166266166323%_))))
                       (let ((_%tl166269166331%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166267166326%_)))
                             (_%hd166268166329%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166267166326%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166269166331%_))
                             (_%__kont172522172523%_)
                             (_%__kont172526172527%_))))
                     (_%__kont172526172527%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd166265166321%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl166266166323%_))
                         (let ((_%e166273166303%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl166266166323%_))))
                           (let ((_%tl166275166308%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166273166303%_)))
                                 (_%hd166274166306%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166273166303%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl166275166308%_))
                                 (_%__kont172524172525%_)
                                 (_%__kont172526172527%_))))
                         (_%__kont172526172527%_))
                     (_%__kont172526172527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172526172527%_))))
                                             (_%__kont172526172527%_)))))))
                             (if (pair? _%rest166237166245%_)
                                 (let ((_%hd166242166342%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest166237166245%_)))
                                       (_%tl166243166344%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest166237166245%_))))
                                   (let* ((_%e166347%_ _%hd166242166342%_)
                                          (_%rest166349%_ _%tl166243166344%_))
                                     (_%K166241166339%_
                                      _%rest166349%_
                                      _%e166347%_)))
                                 (_%else166239166253%_))))))))
                (_%__kont172572172573%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self166106%_ _%stx166107%_))))
            (let ((_%__match172611172612%_
                   (lambda (_%e166114166151%_
                            _%hd166115166154%_
                            _%tl166116166156%_
                            _%e166117166159%_
                            _%hd166118166162%_
                            _%tl166119166164%_
                            _%e166120166167%_
                            _%hd166121166170%_
                            _%tl166122166172%_
                            _%e166123166175%_
                            _%hd166124166178%_
                            _%tl166125166180%_
                            _%__splice172570172571%_
                            _%target166126166183%_
                            _%tl166128166185%_)
                     (letrec ((_%loop166129166188%_
                               (lambda (_%hd166127166191%_
                                        _%rand166133166193%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd166127166191%_))
                                     (let ((_%e166130166195%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd166127166191%_))))
                                       (let ((_%lp-tl166132166200%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e166130166195%_)))
                                             (_%lp-hd166131166198%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e166130166195%_))))
                                         (_%loop166129166188%_
                                          _%lp-tl166132166200%_
                                          (cons _%lp-hd166131166198%_
                                                _%rand166133166193%_))))
                                     (let ((_%rand166134166203%_
                                            (reverse _%rand166133166193%_)))
                                       (_%__kont172568172569%_
                                        _%rand166134166203%_
                                        _%hd166124166178%_))))))
                       (_%loop166129166188%_ _%target166126166183%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172566172567%_))
                  (let ((_%e166114166151%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172566172567%_))))
                    (let ((_%tl166116166156%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166114166151%_)))
                          (_%hd166115166154%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166114166151%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166116166156%_))
                          (let ((_%e166117166159%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166116166156%_))))
                            (let ((_%tl166119166164%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166117166159%_)))
                                  (_%hd166118166162%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166117166159%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166118166162%_))
                                  (let ((_%e166120166167%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166118166162%_))))
                                    (let ((_%tl166122166172%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166120166167%_)))
                                          (_%hd166121166170%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166120166167%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166121166170%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166121166170%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166122166172%_))
                                                  (let ((_%e166123166175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166122166172%_))))
                                                    (let ((_%tl166125166180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166123166175%_)))
                                                          (_%hd166124166178%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166123166175%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166125166180%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl166119166164%_))
                      (let ((_%__splice172570172571%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl166119166164%_
                                '0))))
                        (let ((_%tl166128166185%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172570172571%_ '1)))
                              (_%target166126166183%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172570172571%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl166128166185%_))
                              (_%__match172611172612%_
                               _%e166114166151%_
                               _%hd166115166154%_
                               _%tl166116166156%_
                               _%e166117166159%_
                               _%hd166118166162%_
                               _%tl166119166164%_
                               _%e166120166167%_
                               _%hd166121166170%_
                               _%tl166122166172%_
                               _%e166123166175%_
                               _%hd166124166178%_
                               _%tl166125166180%_
                               _%__splice172570172571%_
                               _%target166126166183%_
                               _%tl166128166185%_)
                              (_%__kont172572172573%_))))
                      (_%__kont172572172573%_))
                  (_%__kont172572172573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172572172573%_))
                                              (_%__kont172572172573%_))
                                          (_%__kont172572172573%_))))
                                  (_%__kont172572172573%_))))
                          (_%__kont172572172573%_))))
                  (_%__kont172572172573%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self165918%_ _%stx165919%_)
        (letrec ((_%simplify165921%_
                  (lambda (_%code166006%_)
                    (let* ((_%code166007166025%_ _%code166006%_)
                           (_%else166009166033%_ (lambda () _%code166006%_))
                           (_%K166011166069%_
                            (lambda (_%expr166036%_ _%test166037%_)
                              (let* ((_%expr166038166046%_ _%expr166036%_)
                                     (_%else166040166054%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test166037%_
                                                    (cons _%expr166036%_
                                                          '())))))
                                     (_%K166042166059%_
                                      (lambda (_%exprs166057%_)
                                        (cons 'and
                                              (cons _%test166037%_
                                                    _%exprs166057%_)))))
                                (if (pair? _%expr166038166046%_)
                                    (let ((_%hd166043166062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr166038166046%_)))
                                          (_%tl166044166064%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr166038166046%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd166043166062%_ 'and))
                                          (let ((_%exprs166067%_
                                                 _%tl166044166064%_))
                                            (_%K166042166059%_
                                             _%exprs166067%_))
                                          (_%else166040166054%_)))
                                    (_%else166040166054%_))))))
                      (if (pair? _%code166007166025%_)
                          (let ((_%hd166012166072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code166007166025%_)))
                                (_%tl166013166074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code166007166025%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd166012166072%_ 'if))
                                (if (pair? _%tl166013166074%_)
                                    (let ((_%hd166014166077%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl166013166074%_)))
                                          (_%tl166015166079%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl166013166074%_))))
                                      (let ((_%test166082%_
                                             _%hd166014166077%_))
                                        (if (pair? _%tl166015166079%_)
                                            (let ((_%hd166016166084%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl166015166079%_)))
                                                  (_%tl166017166086%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl166015166079%_))))
                                              (let ((_%expr166089%_
                                                     _%hd166016166084%_))
                                                (if (pair? _%tl166017166086%_)
                                                    (let ((_%hd166018166091%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl166017166086%_)))
                                                          (_%tl166019166093%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl166017166086%_))))
                                                      (if (pair? _%hd166018166091%_)
                                                          (let ((_%hd166020166096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd166018166091%_)))
                        (_%tl166021166098%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd166018166091%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd166020166096%_ 'quote))
                        (if (pair? _%tl166021166098%_)
                            (let ((_%hd166022166101%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl166021166098%_)))
                                  (_%tl166023166103%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl166021166098%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd166022166101%_ '#f))
                                  (if (null? _%tl166023166103%_)
                                      (if (null? _%tl166019166093%_)
                                          (_%K166011166069%_
                                           _%expr166089%_
                                           _%test166082%_)
                                          (_%else166009166033%_))
                                      (_%else166009166033%_))
                                  (_%else166009166033%_)))
                            (_%else166009166033%_))
                        (_%else166009166033%_)))
                  (_%else166009166033%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else166009166033%_))))
                                            (_%else166009166033%_))))
                                    (_%else166009166033%_))
                                (_%else166009166033%_)))
                          (_%else166009166033%_))))))
          (let* ((_%g165923165944%_
                  (lambda (_%g165924165941%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165924165941%_))))
                 (_%g165922166003%_
                  (lambda (_%g165924165947%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165924165947%_))
                        (let ((_%e165928165949%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165924165947%_))))
                          (let ((_%hd165929165952%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165928165949%_)))
                                (_%tl165930165954%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165928165949%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165930165954%_))
                                (let ((_%e165931165957%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165930165954%_))))
                                  (let ((_%hd165932165960%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165931165957%_)))
                                        (_%tl165933165962%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165931165957%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165933165962%_))
                                        (let ((_%e165934165965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165933165962%_))))
                                          (let ((_%hd165935165968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165934165965%_)))
                                                (_%tl165936165970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165934165965%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165936165970%_))
                                                (let ((_%e165937165973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165936165970%_))))
                                                  (let ((_%hd165938165976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165937165973%_)))
                                                        (_%tl165939165978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165937165973%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165939165978%_))
                                                        ((lambda (_%g165925165981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g165926165982%_
                          _%g165927165983%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify165921%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self165918%_
                                       _%g165927165983%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165918%_
                                             _%g165926165982%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self165918%_
                                                   _%g165925165981%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp173066
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self165918%_
                                               _%g165927165983%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp173066
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165918%_
                                            _%g165926165982%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165918%_
                                                  _%g165925165981%_))
                                               '()))))))
                 _%hd165938165976%_
                 _%hd165935165968%_
                 _%hd165932165960%_)
                (_%g165923165944%_ _%g165924165947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g165923165944%_
                                                 _%g165924165947%_))))
                                        (_%g165923165944%_
                                         _%g165924165947%_))))
                                (_%g165923165944%_ _%g165924165947%_))))
                        (_%g165923165944%_ _%g165924165947%_)))))
            (_%g165922166003%_ _%stx165919%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self165866%_ _%stx165867%_)
        (let* ((_%g165869165882%_
                (lambda (_%g165870165879%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165870165879%_))))
               (_%g165868165915%_
                (lambda (_%g165870165885%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165870165885%_))
                      (let ((_%e165872165887%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165870165885%_))))
                        (let ((_%hd165873165890%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165872165887%_)))
                              (_%tl165874165892%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165872165887%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165874165892%_))
                              (let ((_%e165875165895%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165874165892%_))))
                                (let ((_%hd165876165898%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165875165895%_)))
                                      (_%tl165877165900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165875165895%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165877165900%_))
                                      ((lambda (_%g165871165903%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g165871165903%_)))
                                       _%hd165876165898%_)
                                      (_%g165869165882%_ _%g165870165885%_))))
                              (_%g165869165882%_ _%g165870165885%_))))
                      (_%g165869165882%_ _%g165870165885%_)))))
          (_%g165868165915%_ _%stx165867%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self165798%_ _%stx165799%_)
        (let* ((_%g165801165818%_
                (lambda (_%g165802165815%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165802165815%_))))
               (_%g165800165863%_
                (lambda (_%g165802165821%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165802165821%_))
                      (let ((_%e165805165823%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165802165821%_))))
                        (let ((_%hd165806165826%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165805165823%_)))
                              (_%tl165807165828%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165805165823%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165807165828%_))
                              (let ((_%e165808165831%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165807165828%_))))
                                (let ((_%hd165809165834%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165808165831%_)))
                                      (_%tl165810165836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165808165831%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165810165836%_))
                                      (let ((_%e165811165839%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165810165836%_))))
                                        (let ((_%hd165812165842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165811165839%_)))
                                              (_%tl165813165844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165811165839%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165813165844%_))
                                              ((lambda (_%g165803165847%_
                                                        _%g165804165848%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g165804165848%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self165798%_
                              _%g165803165847%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165812165842%_
                                               _%hd165809165834%_)
                                              (_%g165801165818%_
                                               _%g165802165821%_))))
                                      (_%g165801165818%_ _%g165802165821%_))))
                              (_%g165801165818%_ _%g165802165821%_))))
                      (_%g165801165818%_ _%g165802165821%_)))))
          (_%g165800165863%_ _%stx165799%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self165609%_ _%stx165610%_)
        (let* ((_%g165612165629%_
                (lambda (_%g165613165626%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165613165626%_))))
               (_%g165611165795%_
                (lambda (_%g165613165632%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165613165632%_))
                      (let ((_%e165616165634%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165613165632%_))))
                        (let ((_%hd165617165637%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165616165634%_)))
                              (_%tl165618165639%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165616165634%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165618165639%_))
                              (let ((_%e165619165642%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165618165639%_))))
                                (let ((_%hd165620165645%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165619165642%_)))
                                      (_%tl165621165647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165619165642%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165621165647%_))
                                      (let ((_%e165622165650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165621165647%_))))
                                        (let ((_%hd165623165653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165622165650%_)))
                                              (_%tl165624165655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165622165650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165624165655%_))
                                              ((lambda (_%g165614165658%_
                                                        _%g165615165659%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165609%_ _%g165614165658%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165609%_
                                  _%g165615165659%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165674%_ ((_%rest165677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165615165659%_
                                       (cons _%g165614165658%_ '())))
                                (_%bind165679%_ '())
                                (_%args165680%_ '()))
               (let* ((_%rest165681165689%_ _%rest165677%_)
                      (_%else165683165697%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165679%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args165680%_)
                                                 '()))))))
                      (_%K165685165783%_
                       (lambda (_%rest165700%_ _%e165701%_)
                         (let* ((_%__stx172614172615%_ _%e165701%_)
                                (_%g165706165724%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172614172615%_)))))
                           (let ((_%__kont172616172617%_
                                  (lambda ()
                                    (_%lp165674%_
                                     _%rest165700%_
                                     _%bind165679%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165701%_))
                                           _%args165680%_))))
                                 (_%__kont172618172619%_
                                  (lambda ()
                                    (_%lp165674%_
                                     _%rest165700%_
                                     _%bind165679%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165701%_))
                                           _%args165680%_))))
                                 (_%__kont172620172621%_
                                  (lambda ()
                                    (let ((_%tmp165731%_
                                           (let ((__tmp173067
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173067))))
                                      (_%lp165674%_
                                       _%rest165700%_
                                       (cons (cons _%tmp165731%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165701%_))
                                                         '()))
                                             _%bind165679%_)
                                       (cons _%tmp165731%_ _%args165680%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172614172615%_))
                                 (let ((_%e165708165762%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172614172615%_))))
                                   (let ((_%tl165710165767%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165708165762%_)))
                                         (_%hd165709165765%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165708165762%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165709165765%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165709165765%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165710165767%_))
                                                 (let ((_%e165711165770%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165710165767%_))))
                                                   (let ((_%tl165713165775%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165711165770%_)))
                                                         (_%hd165712165773%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165711165770%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165713165775%_))
                                                         (_%__kont172616172617%_)
                                                         (_%__kont172620172621%_))))
                                                 (_%__kont172620172621%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165709165765%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165710165767%_))
                                                     (let ((_%e165717165747%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165710165767%_))))
                                                       (let ((_%tl165719165752%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165717165747%_)))
                     (_%hd165718165750%_
                      (let () (declare (not safe)) (##car _%e165717165747%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165719165752%_))
                     (_%__kont172618172619%_)
                     (_%__kont172620172621%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172620172621%_))
                                                 (_%__kont172620172621%_)))
                                         (_%__kont172620172621%_))))
                                 (_%__kont172620172621%_)))))))
                 (if (pair? _%rest165681165689%_)
                     (let ((_%hd165686165786%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165681165689%_)))
                           (_%tl165687165788%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165681165689%_))))
                       (let* ((_%e165791%_ _%hd165686165786%_)
                              (_%rest165793%_ _%tl165687165788%_))
                         (_%K165685165783%_ _%rest165793%_ _%e165791%_)))
                     (_%else165683165697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165623165653%_
                                               _%hd165620165645%_)
                                              (_%g165612165629%_
                                               _%g165613165632%_))))
                                      (_%g165612165629%_ _%g165613165632%_))))
                              (_%g165612165629%_ _%g165613165632%_))))
                      (_%g165612165629%_ _%g165613165632%_)))))
          (_%g165611165795%_ _%stx165610%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self165420%_ _%stx165421%_)
        (let* ((_%g165423165440%_
                (lambda (_%g165424165437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165424165437%_))))
               (_%g165422165606%_
                (lambda (_%g165424165443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165424165443%_))
                      (let ((_%e165427165445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165424165443%_))))
                        (let ((_%hd165428165448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165427165445%_)))
                              (_%tl165429165450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165427165445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165429165450%_))
                              (let ((_%e165430165453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165429165450%_))))
                                (let ((_%hd165431165456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165430165453%_)))
                                      (_%tl165432165458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165430165453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165432165458%_))
                                      (let ((_%e165433165461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165432165458%_))))
                                        (let ((_%hd165434165464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165433165461%_)))
                                              (_%tl165435165466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165433165461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165435165466%_))
                                              ((lambda (_%g165425165469%_
                                                        _%g165426165470%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165420%_ _%g165425165469%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165420%_
                                  _%g165426165470%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165485%_ ((_%rest165488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165426165470%_
                                       (cons _%g165425165469%_ '())))
                                (_%bind165490%_ '())
                                (_%args165491%_ '()))
               (let* ((_%rest165492165500%_ _%rest165488%_)
                      (_%else165494165508%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165490%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args165491%_)
                                                 '()))))))
                      (_%K165496165594%_
                       (lambda (_%rest165511%_ _%e165512%_)
                         (let* ((_%__stx172660172661%_ _%e165512%_)
                                (_%g165517165535%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172660172661%_)))))
                           (let ((_%__kont172662172663%_
                                  (lambda ()
                                    (_%lp165485%_
                                     _%rest165511%_
                                     _%bind165490%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165512%_))
                                           _%args165491%_))))
                                 (_%__kont172664172665%_
                                  (lambda ()
                                    (_%lp165485%_
                                     _%rest165511%_
                                     _%bind165490%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165512%_))
                                           _%args165491%_))))
                                 (_%__kont172666172667%_
                                  (lambda ()
                                    (let ((_%tmp165542%_
                                           (let ((__tmp173068
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173068))))
                                      (_%lp165485%_
                                       _%rest165511%_
                                       (cons (cons _%tmp165542%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165512%_))
                                                         '()))
                                             _%bind165490%_)
                                       (cons _%tmp165542%_ _%args165491%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172660172661%_))
                                 (let ((_%e165519165573%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172660172661%_))))
                                   (let ((_%tl165521165578%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165519165573%_)))
                                         (_%hd165520165576%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165519165573%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165520165576%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165520165576%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165521165578%_))
                                                 (let ((_%e165522165581%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165521165578%_))))
                                                   (let ((_%tl165524165586%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165522165581%_)))
                                                         (_%hd165523165584%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165522165581%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165524165586%_))
                                                         (_%__kont172662172663%_)
                                                         (_%__kont172666172667%_))))
                                                 (_%__kont172666172667%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165520165576%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165521165578%_))
                                                     (let ((_%e165528165558%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165521165578%_))))
                                                       (let ((_%tl165530165563%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165528165558%_)))
                     (_%hd165529165561%_
                      (let () (declare (not safe)) (##car _%e165528165558%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165530165563%_))
                     (_%__kont172664172665%_)
                     (_%__kont172666172667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172666172667%_))
                                                 (_%__kont172666172667%_)))
                                         (_%__kont172666172667%_))))
                                 (_%__kont172666172667%_)))))))
                 (if (pair? _%rest165492165500%_)
                     (let ((_%hd165497165597%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165492165500%_)))
                           (_%tl165498165599%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165492165500%_))))
                       (let* ((_%e165602%_ _%hd165497165597%_)
                              (_%rest165604%_ _%tl165498165599%_))
                         (_%K165496165594%_ _%rest165604%_ _%e165602%_)))
                     (_%else165494165508%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165434165464%_
                                               _%hd165431165456%_)
                                              (_%g165423165440%_
                                               _%g165424165443%_))))
                                      (_%g165423165440%_ _%g165424165443%_))))
                              (_%g165423165440%_ _%g165424165443%_))))
                      (_%g165423165440%_ _%g165424165443%_)))))
          (_%g165422165606%_ _%stx165421%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self165336%_ _%stx165337%_)
        (let* ((_%g165339165360%_
                (lambda (_%g165340165357%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165340165357%_))))
               (_%g165338165417%_
                (lambda (_%g165340165363%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165340165363%_))
                      (let ((_%e165344165365%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165340165363%_))))
                        (let ((_%hd165345165368%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165344165365%_)))
                              (_%tl165346165370%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165344165365%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165346165370%_))
                              (let ((_%e165347165373%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165346165370%_))))
                                (let ((_%hd165348165376%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165347165373%_)))
                                      (_%tl165349165378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165347165373%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165349165378%_))
                                      (let ((_%e165350165381%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165349165378%_))))
                                        (let ((_%hd165351165384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165350165381%_)))
                                              (_%tl165352165386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165350165381%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165352165386%_))
                                              (let ((_%e165353165389%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165352165386%_))))
                                                (let ((_%hd165354165392%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165353165389%_)))
                                                      (_%tl165355165394%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165353165389%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165355165394%_))
                                                      ((lambda (_%g165341165397%_
                                                                _%g165342165398%_
                                                                _%g165343165399%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165336%_
                                _%g165341165397%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165336%_
                                      _%g165342165398%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165336%_
                                            _%g165343165399%_))
                                         (cons ''#f '()))))))
               _%hd165354165392%_
               _%hd165351165384%_
               _%hd165348165376%_)
              (_%g165339165360%_ _%g165340165363%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165339165360%_
                                               _%g165340165363%_))))
                                      (_%g165339165360%_ _%g165340165363%_))))
                              (_%g165339165360%_ _%g165340165363%_))))
                      (_%g165339165360%_ _%g165340165363%_)))))
          (_%g165338165417%_ _%stx165337%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self165236%_ _%stx165237%_)
        (let* ((_%g165239165264%_
                (lambda (_%g165240165261%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165240165261%_))))
               (_%g165238165333%_
                (lambda (_%g165240165267%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165240165267%_))
                      (let ((_%e165245165269%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165240165267%_))))
                        (let ((_%hd165246165272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165245165269%_)))
                              (_%tl165247165274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165245165269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165247165274%_))
                              (let ((_%e165248165277%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165247165274%_))))
                                (let ((_%hd165249165280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165248165277%_)))
                                      (_%tl165250165282%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165248165277%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165250165282%_))
                                      (let ((_%e165251165285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165250165282%_))))
                                        (let ((_%hd165252165288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165251165285%_)))
                                              (_%tl165253165290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165251165285%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165253165290%_))
                                              (let ((_%e165254165293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165253165290%_))))
                                                (let ((_%hd165255165296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165254165293%_)))
                                                      (_%tl165256165298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165254165293%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165256165298%_))
                                                      (let ((_%e165257165301%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165256165298%_))))
                (let ((_%hd165258165304%_
                       (let () (declare (not safe)) (##car _%e165257165301%_)))
                      (_%tl165259165306%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165257165301%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165259165306%_))
                      ((lambda (_%g165241165309%_
                                _%g165242165310%_
                                _%g165243165311%_
                                _%g165244165312%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165236%_
                                        _%g165242165310%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165236%_
                                              _%g165241165309%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165236%_
                                                    _%g165243165311%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165236%_
                                                          _%g165244165312%_))
                                                       (cons ''#f '())))))))
                       _%hd165258165304%_
                       _%hd165255165296%_
                       _%hd165252165288%_
                       _%hd165249165280%_)
                      (_%g165239165264%_ _%g165240165267%_))))
              (_%g165239165264%_ _%g165240165267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165239165264%_
                                               _%g165240165267%_))))
                                      (_%g165239165264%_ _%g165240165267%_))))
                              (_%g165239165264%_ _%g165240165267%_))))
                      (_%g165239165264%_ _%g165240165267%_)))))
          (_%g165238165333%_ _%stx165237%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self165152%_ _%stx165153%_)
        (let* ((_%g165155165176%_
                (lambda (_%g165156165173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165156165173%_))))
               (_%g165154165233%_
                (lambda (_%g165156165179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165156165179%_))
                      (let ((_%e165160165181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165156165179%_))))
                        (let ((_%hd165161165184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165160165181%_)))
                              (_%tl165162165186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165160165181%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165162165186%_))
                              (let ((_%e165163165189%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165162165186%_))))
                                (let ((_%hd165164165192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165163165189%_)))
                                      (_%tl165165165194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165163165189%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165165165194%_))
                                      (let ((_%e165166165197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165165165194%_))))
                                        (let ((_%hd165167165200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165166165197%_)))
                                              (_%tl165168165202%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165166165197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165168165202%_))
                                              (let ((_%e165169165205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165168165202%_))))
                                                (let ((_%hd165170165208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165169165205%_)))
                                                      (_%tl165171165210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165169165205%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165171165210%_))
                                                      ((lambda (_%g165157165213%_
                                                                _%g165158165214%_
                                                                _%g165159165215%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165152%_
                                _%g165157165213%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165152%_
                                      _%g165158165214%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165152%_
                                            _%g165159165215%_))
                                         (cons ''#f '()))))))
               _%hd165170165208%_
               _%hd165167165200%_
               _%hd165164165192%_)
              (_%g165155165176%_ _%g165156165179%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165155165176%_
                                               _%g165156165179%_))))
                                      (_%g165155165176%_ _%g165156165179%_))))
                              (_%g165155165176%_ _%g165156165179%_))))
                      (_%g165155165176%_ _%g165156165179%_)))))
          (_%g165154165233%_ _%stx165153%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self165052%_ _%stx165053%_)
        (let* ((_%g165055165080%_
                (lambda (_%g165056165077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165056165077%_))))
               (_%g165054165149%_
                (lambda (_%g165056165083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165056165083%_))
                      (let ((_%e165061165085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165056165083%_))))
                        (let ((_%hd165062165088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165061165085%_)))
                              (_%tl165063165090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165061165085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165063165090%_))
                              (let ((_%e165064165093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165063165090%_))))
                                (let ((_%hd165065165096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165064165093%_)))
                                      (_%tl165066165098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165064165093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165066165098%_))
                                      (let ((_%e165067165101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165066165098%_))))
                                        (let ((_%hd165068165104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165067165101%_)))
                                              (_%tl165069165106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165067165101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165069165106%_))
                                              (let ((_%e165070165109%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165069165106%_))))
                                                (let ((_%hd165071165112%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165070165109%_)))
                                                      (_%tl165072165114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165070165109%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165072165114%_))
                                                      (let ((_%e165073165117%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165072165114%_))))
                (let ((_%hd165074165120%_
                       (let () (declare (not safe)) (##car _%e165073165117%_)))
                      (_%tl165075165122%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165073165117%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165075165122%_))
                      ((lambda (_%g165057165125%_
                                _%g165058165126%_
                                _%g165059165127%_
                                _%g165060165128%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165052%_
                                        _%g165058165126%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165052%_
                                              _%g165057165125%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165052%_
                                                    _%g165059165127%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165052%_
                                                          _%g165060165128%_))
                                                       (cons ''#f '())))))))
                       _%hd165074165120%_
                       _%hd165071165112%_
                       _%hd165068165104%_
                       _%hd165065165096%_)
                      (_%g165055165080%_ _%g165056165083%_))))
              (_%g165055165080%_ _%g165056165083%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165055165080%_
                                               _%g165056165083%_))))
                                      (_%g165055165080%_ _%g165056165083%_))))
                              (_%g165055165080%_ _%g165056165083%_))))
                      (_%g165055165080%_ _%g165056165083%_)))))
          (_%g165054165149%_ _%stx165053%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self164847%_ _%stx164848%_)
        (let* ((_%g164850164871%_
                (lambda (_%g164851164868%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164851164868%_))))
               (_%g164849165049%_
                (lambda (_%g164851164874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164851164874%_))
                      (let ((_%e164855164876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164851164874%_))))
                        (let ((_%hd164856164879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164855164876%_)))
                              (_%tl164857164881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164855164876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164857164881%_))
                              (let ((_%e164858164884%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164857164881%_))))
                                (let ((_%hd164859164887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164858164884%_)))
                                      (_%tl164860164889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164858164884%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164860164889%_))
                                      (let ((_%e164861164892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164860164889%_))))
                                        (let ((_%hd164862164895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164861164892%_)))
                                              (_%tl164863164897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164861164892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164863164897%_))
                                              (let ((_%e164864164900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164863164897%_))))
                                                (let ((_%hd164865164903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164864164900%_)))
                                                      (_%tl164866164905%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164864164900%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164866164905%_))
                                                      ((lambda (_%g164852164908%_
                                                                _%g164853164909%_
                                                                _%g164854164910%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self164847%_
                                    _%g164852164908%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self164847%_
                                          _%g164853164909%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp164928%_ ((_%rest164931%_
                                         (cons _%g164853164909%_
                                               (cons _%g164852164908%_ '())))
                                        (_%bind164933%_ '())
                                        (_%args164934%_ '()))
                       (let* ((_%rest164935164943%_ _%rest164931%_)
                              (_%else164937164951%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind164933%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp173069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp173069 _%args164934%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K164939165037%_
                               (lambda (_%rest164954%_ _%e164955%_)
                                 (let* ((_%__stx172706172707%_ _%e164955%_)
                                        (_%g164960164978%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172706172707%_)))))
                                   (let ((_%__kont172708172709%_
                                          (lambda ()
                                            (_%lp164928%_
                                             _%rest164954%_
                                             _%bind164933%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164955%_))
                                                   _%args164934%_))))
                                         (_%__kont172710172711%_
                                          (lambda ()
                                            (_%lp164928%_
                                             _%rest164954%_
                                             _%bind164933%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164955%_))
                                                   _%args164934%_))))
                                         (_%__kont172712172713%_
                                          (lambda ()
                                            (let ((_%tmp164985%_
                                                   (let ((__tmp173070
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp173070))))
                                              (_%lp164928%_
                                               _%rest164954%_
                                               (cons (cons _%tmp164985%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e164955%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind164933%_)
                                               (cons _%tmp164985%_
                                                     _%args164934%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172706172707%_))
                                         (let ((_%e164962165016%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172706172707%_))))
                                           (let ((_%tl164964165021%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e164962165016%_)))
                                                 (_%hd164963165019%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e164962165016%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd164963165019%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd164963165019%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl164964165021%_))
                                                         (let ((_%e164965165024%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl164964165021%_))))
                   (let ((_%tl164967165029%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e164965165024%_)))
                         (_%hd164966165027%_
                          (let ()
                            (declare (not safe))
                            (##car _%e164965165024%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl164967165029%_))
                         (_%__kont172708172709%_)
                         (_%__kont172712172713%_))))
                 (_%__kont172712172713%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd164963165019%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164964165021%_))
                     (let ((_%e164971165001%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164964165021%_))))
                       (let ((_%tl164973165006%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164971165001%_)))
                             (_%hd164972165004%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164971165001%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164973165006%_))
                             (_%__kont172710172711%_)
                             (_%__kont172712172713%_))))
                     (_%__kont172712172713%_))
                 (_%__kont172712172713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172712172713%_))))
                                         (_%__kont172712172713%_)))))))
                         (if (pair? _%rest164935164943%_)
                             (let ((_%hd164940165040%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest164935164943%_)))
                                   (_%tl164941165042%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest164935164943%_))))
                               (let* ((_%e165045%_ _%hd164940165040%_)
                                      (_%rest165047%_ _%tl164941165042%_))
                                 (_%K164939165037%_
                                  _%rest165047%_
                                  _%e165045%_)))
                             (_%else164937164951%_))))))
               _%hd164865164903%_
               _%hd164862164895%_
               _%hd164859164887%_)
              (_%g164850164871%_ _%g164851164874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164850164871%_
                                               _%g164851164874%_))))
                                      (_%g164850164871%_ _%g164851164874%_))))
                              (_%g164850164871%_ _%g164851164874%_))))
                      (_%g164850164871%_ _%g164851164874%_)))))
          (_%g164849165049%_ _%stx164848%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self164626%_ _%stx164627%_)
        (let* ((_%g164629164654%_
                (lambda (_%g164630164651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164630164651%_))))
               (_%g164628164844%_
                (lambda (_%g164630164657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164630164657%_))
                      (let ((_%e164635164659%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164630164657%_))))
                        (let ((_%hd164636164662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164635164659%_)))
                              (_%tl164637164664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164635164659%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164637164664%_))
                              (let ((_%e164638164667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164637164664%_))))
                                (let ((_%hd164639164670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164638164667%_)))
                                      (_%tl164640164672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164638164667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164640164672%_))
                                      (let ((_%e164641164675%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164640164672%_))))
                                        (let ((_%hd164642164678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164641164675%_)))
                                              (_%tl164643164680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164641164675%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164643164680%_))
                                              (let ((_%e164644164683%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164643164680%_))))
                                                (let ((_%hd164645164686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164644164683%_)))
                                                      (_%tl164646164688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164644164683%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164646164688%_))
                                                      (let ((_%e164647164691%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164646164688%_))))
                (let ((_%hd164648164694%_
                       (let () (declare (not safe)) (##car _%e164647164691%_)))
                      (_%tl164649164696%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164647164691%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164649164696%_))
                      ((lambda (_%g164631164699%_
                                _%g164632164700%_
                                _%g164633164701%_
                                _%g164634164702%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164626%_
                                            _%g164632164700%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164626%_
                                                  _%g164631164699%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164626%_
                                                        _%g164633164701%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp164723%_ ((_%rest164726%_
                                                 (cons _%g164633164701%_
                                                       (cons _%g164631164699%_
                                                             (cons _%g164632164700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind164728%_ '())
                                                (_%args164729%_ '()))
                               (let* ((_%rest164730164738%_ _%rest164726%_)
                                      (_%else164732164746%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind164728%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp173071 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp173071 _%args164729%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K164734164832%_
                                       (lambda (_%rest164749%_ _%e164750%_)
                                         (let* ((_%__stx172752172753%_
                                                 _%e164750%_)
                                                (_%g164755164773%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx172752172753%_)))))
                                           (let ((_%__kont172754172755%_
                                                  (lambda ()
                                                    (_%lp164723%_
                                                     _%rest164749%_
                                                     _%bind164728%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164750%_))
                                                           _%args164729%_))))
                                                 (_%__kont172756172757%_
                                                  (lambda ()
                                                    (_%lp164723%_
                                                     _%rest164749%_
                                                     _%bind164728%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164750%_))
                                                           _%args164729%_))))
                                                 (_%__kont172758172759%_
                                                  (lambda ()
                                                    (let ((_%tmp164780%_
                                                           (let ((__tmp173072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp173072))))
              (_%lp164723%_
               _%rest164749%_
               (cons (cons _%tmp164780%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e164750%_))
                                 '()))
                     _%bind164728%_)
               (cons _%tmp164780%_ _%args164729%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx172752172753%_))
                                                 (let ((_%e164757164811%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx172752172753%_))))
                                                   (let ((_%tl164759164816%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164757164811%_)))
                                                         (_%hd164758164814%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164757164811%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd164758164814%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd164758164814%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164759164816%_))
                         (let ((_%e164760164819%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164759164816%_))))
                           (let ((_%tl164762164824%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164760164819%_)))
                                 (_%hd164761164822%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164760164819%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164762164824%_))
                                 (_%__kont172754172755%_)
                                 (_%__kont172758172759%_))))
                         (_%__kont172758172759%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd164758164814%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl164759164816%_))
                             (let ((_%e164766164796%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl164759164816%_))))
                               (let ((_%tl164768164801%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e164766164796%_)))
                                     (_%hd164767164799%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e164766164796%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl164768164801%_))
                                     (_%__kont172756172757%_)
                                     (_%__kont172758172759%_))))
                             (_%__kont172758172759%_))
                         (_%__kont172758172759%_)))
                 (_%__kont172758172759%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172758172759%_)))))))
                                 (if (pair? _%rest164730164738%_)
                                     (let ((_%hd164735164835%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest164730164738%_)))
                                           (_%tl164736164837%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest164730164738%_))))
                                       (let* ((_%e164840%_ _%hd164735164835%_)
                                              (_%rest164842%_
                                               _%tl164736164837%_))
                                         (_%K164734164832%_
                                          _%rest164842%_
                                          _%e164840%_)))
                                     (_%else164732164746%_))))))
                       _%hd164648164694%_
                       _%hd164645164686%_
                       _%hd164642164678%_
                       _%hd164639164670%_)
                      (_%g164629164654%_ _%g164630164657%_))))
              (_%g164629164654%_ _%g164630164657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164629164654%_
                                               _%g164630164657%_))))
                                      (_%g164629164654%_ _%g164630164657%_))))
                              (_%g164629164654%_ _%g164630164657%_))))
                      (_%g164629164654%_ _%g164630164657%_)))))
          (_%g164628164844%_ _%stx164627%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self164465%_ _%stx164466%_)
        (letrec ((_%import-set-template164468%_
                  (lambda (_%in164571%_ _%phi164572%_)
                    (let ((_%iphi164574%_
                           (fx+ _%phi164572%_
                                (##direct-structure-ref
                                 _%in164571%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports164575%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in164571%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp164577%_ ((_%rest164579%_ _%imports164575%_)
                                         (_%r164580%_ '()))
                        (let* ((_%rest164581164589%_ _%rest164579%_)
                               (_%else164583164597%_ (lambda () _%r164580%_))
                               (_%K164585164614%_
                                (lambda (_%rest164600%_ _%in164601%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in164601%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi164574%_))
                                          (_%lp164577%_
                                           _%rest164600%_
                                           (cons _%in164601%_ _%r164580%_))
                                          (_%lp164577%_
                                           _%rest164600%_
                                           _%r164580%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in164601%_
                                             'gx#module-import::t))
                                          (let ((_%iphi164605%_
                                                 (fx+ _%phi164572%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in164601%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi164605%_))
                                                (_%lp164577%_
                                                 _%rest164600%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in164601%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r164580%_))
                                                (_%lp164577%_
                                                 _%rest164600%_
                                                 _%r164580%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in164601%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi164608%_
                                                     (fx+ _%iphi164574%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in164601%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi164608%_))
                                                    (_%lp164577%_
                                                     _%rest164600%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in164601%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r164580%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi164608%_))
                                                        (_%lp164577%_
                                                         _%rest164600%_
                                                         (let ((__tmp173073
                                                                (_%import-set-template164468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in164601%_
                         _%iphi164574%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r164580%_ __tmp173073)))
                (_%lp164577%_ _%rest164600%_ _%r164580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp164577%_
                                               _%rest164600%_
                                               _%r164580%_)))))))
                          (if (pair? _%rest164581164589%_)
                              (let ((_%hd164586164617%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164581164589%_)))
                                    (_%tl164587164619%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164581164589%_))))
                                (let* ((_%in164622%_ _%hd164586164617%_)
                                       (_%rest164624%_ _%tl164587164619%_))
                                  (_%K164585164614%_
                                   _%rest164624%_
                                   _%in164622%_)))
                              (_%else164583164597%_))))))))
          (let* ((_%g164470164480%_
                  (lambda (_%g164471164477%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164471164477%_))))
                 (_%g164469164568%_
                  (lambda (_%g164471164483%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164471164483%_))
                        (let ((_%e164473164485%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164471164483%_))))
                          (let ((_%hd164474164488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164473164485%_)))
                                (_%tl164475164490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164473164485%_))))
                            ((lambda (_%g164472164493%_)
                               (let ((_%ht164504%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp164506%_ ((_%rest164508%_
                                                     _%g164472164493%_)
                                                    (_%loads164509%_ '()))
                                   (letrec ((_%K164511%_
                                             (lambda (_%ctx164561%_
                                                      _%rest164562%_)
                                               (let ((_%id164564%_
                                                      (##structure-ref
                                                       _%ctx164561%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht164504%_
                                                        _%id164564%_))
                                                     (_%lp164506%_
                                                      _%rest164562%_
                                                      _%loads164509%_)
                                                     (let ((_%rt164566%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id164564%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht164504%_
                                                          _%id164564%_
                                                          _%rt164566%_))
                                                       (_%lp164506%_
                                                        _%rest164562%_
                                                        (cons _%rt164566%_
                                                              _%loads164509%_))))))))
                                     (let* ((_%rest164512164520%_
                                             _%rest164508%_)
                                            (_%else164514164532%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp173075
                                                            (lambda (_%g164527164529%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g164527164529%_)))
                   (__tmp173074 (reverse _%loads164509%_)))
               (declare (not safe))
               (##map __tmp173075 __tmp173074)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K164516164549%_
                                             (lambda (_%rest164535%_
                                                      _%in164536%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in164536%_
                                                      'gx#module-context::t))
                                                   (_%K164511%_
                                                    _%in164536%_
                                                    _%rest164535%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in164536%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in164536%_
                               '3
                               '#f
                               '#f)))
                   (_%K164511%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in164536%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest164535%_)
                   (_%lp164506%_ _%rest164535%_ _%loads164509%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in164536%_
                      'gx#import-set::t))
                   (let ((_%phi164541%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164536%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi164541%_)
                         (_%K164511%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164536%_
                             '1
                             '#f
                             '#f))
                          _%rest164535%_)
                         (if (fxpositive? _%phi164541%_)
                             (let ((_%deps164545%_
                                    (_%import-set-template164468%_
                                     _%in164536%_
                                     '0)))
                               (_%lp164506%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest164535%_
                                   _%deps164545%_))
                                _%loads164509%_))
                             (_%lp164506%_ _%rest164535%_ _%loads164509%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx164466%_
                      _%in164536%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest164512164520%_)
                                           (let ((_%hd164517164552%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest164512164520%_)))
                                                 (_%tl164518164554%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest164512164520%_))))
                                             (let* ((_%in164557%_
                                                     _%hd164517164552%_)
                                                    (_%rest164559%_
                                                     _%tl164518164554%_))
                                               (_%K164516164549%_
                                                _%rest164559%_
                                                _%in164557%_)))
                                           (_%else164514164532%_)))))))
                             _%tl164475164490%_)))
                        (_%g164470164480%_ _%g164471164483%_)))))
            (_%g164469164568%_ _%stx164466%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self164279%_ _%stx164280%_)
        (letrec ((_%add-lift!164282%_
                  (lambda (_%expr164463%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr164463%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote164283%_
                  (lambda (_%id164460%_ _%marks164461%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id164460%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks164461%_
                                                        '()))))))))
                 (_%generate-simple164284%_
                  (lambda (_%stxq164455%_)
                    (let ((_%gid164457%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid164458%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq164455%_))))
                      (_%add-lift!164282%_
                       (cons 'define
                             (cons _%gid164457%_
                                   (cons (_%generate-syntax-quote164283%_
                                          _%qid164458%_
                                          ''())
                                         '()))))
                      (let ((__tmp173076
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173076 _%stxq164455%_ _%gid164457%_))
                      _%gid164457%_)))
                 (_%generate-serialized164285%_
                  (lambda (_%stxq164445%_ _%marks164446%_)
                    (let* ((_%mark-refs164448%_
                            (map _%generate-mark164286%_ _%marks164446%_))
                           (_%gid164450%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid164452%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq164445%_))))
                      (_%add-lift!164282%_
                       (cons 'define
                             (cons _%gid164450%_
                                   (cons (_%generate-syntax-quote164283%_
                                          _%qid164452%_
                                          (cons 'list _%mark-refs164448%_))
                                         '()))))
                      (let ((__tmp173077
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173077 _%stxq164445%_ _%gid164450%_))
                      _%gid164450%_)))
                 (_%generate-mark164286%_
                  (lambda (_%mark164430%_)
                    (let ((_%$e164432%_
                           (let ((__tmp173078
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp173078 _%mark164430%_))))
                      (if _%$e164432%_
                          _%$e164432%_
                          (let* ((_%gid164436%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr164438%_
                                  (_%serialize-mark164287%_ _%mark164430%_))
                                 (_%ctx164440%_
                                  (let ((__tmp173079
                                         (##structure-ref
                                          _%mark164430%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp173079)))
                                 (_%ctx-ref164442%_
                                  (if (eq? _%ctx164440%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref164288%_
                                                               _%ctx164440%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp173080
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp173080
                               _%mark164430%_
                               _%gid164436%_))
                            (_%add-lift!164282%_
                             (cons 'define
                                   (cons _%gid164436%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr164438%_ '()))
                   (cons _%ctx-ref164442%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid164436%_)))))
                 (_%serialize-mark164287%_
                  (lambda (_%mark164378%_)
                    (letrec ((_%quote-e164380%_
                              (lambda (_%sym164428%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym164428%_))
                                    _%sym164428%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym164428%_))))))
                      (let* ((_%mark164381164390%_ _%mark164378%_)
                             (_%E164383164393%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark164381164390%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K164384164405%_
                              (lambda (_%trace164396%_
                                       _%phi164397%_
                                       _%ctx164398%_
                                       _%subst164399%_)
                                (let ((_%subs164401%_
                                       (if _%subst164399%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst164399%_))
                                           '())))
                                  (cons _%phi164397%_
                                        (let ((__tmp173081
                                               (lambda (_%pair164403%_)
                                                 (cons (_%quote-e164380%_
                                                        (car _%pair164403%_))
                                                       (_%quote-e164380%_
                                                        (cdr _%pair164403%_))))))
                                          (declare (not safe))
                                          (##map __tmp173081
                                                 _%subs164401%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark164381164390%_
                               'gx#expander-mark::t))
                            (let* ((_%e164385164408%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164381164390%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst164411%_ _%e164385164408%_)
                                   (_%e164386164413%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164381164390%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx164416%_ _%e164386164413%_)
                                   (_%e164387164418%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164381164390%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi164421%_ _%e164387164418%_)
                                   (_%e164388164423%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164381164390%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace164426%_ _%e164388164423%_))
                              (_%K164384164405%_
                               _%trace164426%_
                               _%phi164421%_
                               _%ctx164416%_
                               _%subst164411%_))
                            (_%E164383164393%_))))))
                 (_%context-ref164288%_
                  (lambda (_%ctx164365%_)
                    (if (let ((__tmp173082
                               (##structure-ref
                                _%ctx164365%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp173082
                           'gx#module-context::t))
                        (let ((_%ctx-ref164367%_
                               (_%context-ref-nested164290%_ _%ctx164365%_))
                              (_%ctx-origin164368%_
                               (_%context-ref-origin164289%_ _%ctx164365%_))
                              (_%origin164369%_
                               (_%context-ref-origin164289%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin164369%_ _%ctx-origin164368%_)
                              (let ((_%ref164371%_
                                     (_%context-ref-nested164290%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp164373%_ ((_%ref164375%_
                                                    (cdr _%ref164371%_))
                                                   (_%ctx-ref164376%_
                                                    (cdr _%ctx-ref164367%_)))
                                  (if (and (pair? _%ref164375%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref164375%_))
                                                (car _%ctx-ref164376%_)))
                                      (_%lp164373%_
                                       (cdr _%ref164375%_)
                                       (cdr _%ctx-ref164376%_))
                                      (cons '#f _%ctx-ref164376%_))))
                              _%ctx-ref164367%_))
                        (let ((__tmp173083
                               (##structure-ref
                                _%ctx164365%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp173083)))))
                 (_%context-ref-origin164289%_
                  (lambda (_%ctx164357%_)
                    (let _%lp164359%_ ((_%ctx164361%_ _%ctx164357%_))
                      (let ((_%super164363%_
                             (##structure-ref
                              _%ctx164361%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164363%_
                               'gx#module-context::t))
                            (_%lp164359%_ _%super164363%_)
                            _%ctx164361%_)))))
                 (_%context-ref-nested164290%_
                  (lambda (_%ctx164348%_)
                    (let _%lp164350%_ ((_%ctx164352%_ _%ctx164348%_)
                                       (_%r164353%_ '()))
                      (let ((_%super164355%_
                             (##structure-ref
                              _%ctx164352%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164355%_
                               'gx#module-context::t))
                            (_%lp164350%_
                             _%super164355%_
                             (cons (car (##structure-ref
                                         _%ctx164352%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r164353%_))
                            (cons (let ((__tmp173084
                                         (##structure-ref
                                          _%ctx164352%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp173084))
                                  _%r164353%_)))))))
          (let* ((_%g164292164305%_
                  (lambda (_%g164293164302%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164293164302%_))))
                 (_%g164291164345%_
                  (lambda (_%g164293164308%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164293164308%_))
                        (let ((_%e164295164310%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164293164308%_))))
                          (let ((_%hd164296164313%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164295164310%_)))
                                (_%tl164297164315%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164295164310%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164297164315%_))
                                (let ((_%e164298164318%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164297164315%_))))
                                  (let ((_%hd164299164321%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164298164318%_)))
                                        (_%tl164300164323%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164298164318%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164300164323%_))
                                        ((lambda (_%g164294164326%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g164294164326%_))
                                               (let ((_%$e164339%_
                                                      (let ((__tmp173085
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp173085 _%g164294164326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e164339%_
                                                     _%$e164339%_
                                                     (let ((_%marks164343%_
                                                            (##direct-structure-ref
                                                             _%g164294164326%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks164343%_)
                                                           (_%generate-simple164284%_
                                                            _%g164294164326%_)
                                                           (_%generate-serialized164285%_
                                                            _%g164294164326%_
                                                            _%marks164343%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g164294164326%_))))
                                         _%hd164299164321%_)
                                        (_%g164292164305%_
                                         _%g164293164308%_))))
                                (_%g164292164305%_ _%g164293164308%_))))
                        (_%g164292164305%_ _%g164293164308%_)))))
            (_%g164291164345%_ _%stx164280%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self164211%_ _%stx164212%_)
        (let* ((_%g164214164231%_
                (lambda (_%g164215164228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164215164228%_))))
               (_%g164213164276%_
                (lambda (_%g164215164234%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164215164234%_))
                      (let ((_%e164218164236%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164215164234%_))))
                        (let ((_%hd164219164239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164218164236%_)))
                              (_%tl164220164241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164218164236%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164220164241%_))
                              (let ((_%e164221164244%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164220164241%_))))
                                (let ((_%hd164222164247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164221164244%_)))
                                      (_%tl164223164249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164221164244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164223164249%_))
                                      (let ((_%e164224164252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164223164249%_))))
                                        (let ((_%hd164225164255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164224164252%_)))
                                              (_%tl164226164257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164224164252%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164226164257%_))
                                              ((lambda (_%g164216164260%_
                                                        _%g164217164261%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g164217164261%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164211%_
                              _%g164216164260%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164225164255%_
                                               _%hd164222164247%_)
                                              (_%g164214164231%_
                                               _%g164215164234%_))))
                                      (_%g164214164231%_ _%g164215164234%_))))
                              (_%g164214164231%_ _%g164215164234%_))))
                      (_%g164214164231%_ _%g164215164234%_)))))
          (_%g164213164276%_ _%stx164212%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self164160%_ _%stx164161%_)
        (let* ((_%g164163164173%_
                (lambda (_%g164164164170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164164164170%_))))
               (_%g164162164208%_
                (lambda (_%g164164164176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164164164176%_))
                      (let ((_%e164166164178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164164164176%_))))
                        (let ((_%hd164167164181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164166164178%_)))
                              (_%tl164168164183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164166164178%_))))
                          ((lambda (_%g164165164186%_)
                             (let* ((_%c-body164200%_
                                     (map (lambda (_%g164195164197%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self164160%_
                                               _%g164195164197%_)))
                                          _%g164165164186%_))
                                    (_%c-body164205%_
                                     (let ((__tmp173086
                                            (lambda (_%$obj164202%_)
                                              (not (eq? _%$obj164202%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp173086
                                        _%c-body164200%_))))
                               (cons '%#begin _%c-body164205%_)))
                           _%tl164168164183%_)))
                      (_%g164163164173%_ _%g164164164176%_)))))
          (_%g164162164208%_ _%stx164161%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self164065%_ _%stx164066%_)
        (let* ((_%g164068164078%_
                (lambda (_%g164069164075%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164069164075%_))))
               (_%g164067164157%_
                (lambda (_%g164069164081%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164069164081%_))
                      (let ((_%e164071164083%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164069164081%_))))
                        (let ((_%hd164072164086%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164071164083%_)))
                              (_%tl164073164088%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164071164083%_))))
                          ((lambda (_%g164070164091%_)
                             (let* ((_%phi164101%_
                                     (let ((__tmp173087
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp173087 '1)))
                                    (_%block164103%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self164065%_ 'state))
                                      _%phi164101%_))
                                    (_%compiled164106%_
                                     (let ((__tmp173088
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self164065%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g164070164091%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp173088
                                        gx#current-expander-phi
                                        _%phi164101%_)))
                                    (_%g164109164119%_
                                     (lambda (_%g164110164116%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g164110164116%_))))
                                    (_%g164108164154%_
                                     (lambda (_%g164110164122%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g164110164122%_))
                                           (let ((_%e164112164124%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g164110164122%_))))
                                             (let ((_%hd164113164127%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e164112164124%_)))
                                                   (_%tl164114164129%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e164112164124%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd164113164127%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd164113164127%_))
                                                       ((lambda (_%g164111164132%_)
                                                          (let ((_%c-body164149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj164146%_)
                                   (not (eq? _%$obj164146%_ '#!void)))
                                 _%g164111164132%_)))
                    (if _%block164103%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block164103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body164149%_))
                        (if (null? _%c-body164149%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body164149%_)))))
                _%tl164114164129%_)
               (_%g164109164119%_ _%g164110164122%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g164109164119%_
                                                    _%g164110164122%_))))
                                           (_%g164109164119%_
                                            _%g164110164122%_)))))
                               (_%g164108164154%_ _%compiled164106%_)))
                           _%tl164073164088%_)))
                      (_%g164068164078%_ _%g164069164081%_)))))
          (_%g164067164157%_ _%stx164066%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self163996%_ _%stx163997%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163996%_ 'state)))
        (let* ((_%g163999164013%_
                (lambda (_%g164000164010%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164000164010%_))))
               (_%g163998164062%_
                (lambda (_%g164000164016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164000164016%_))
                      (let ((_%e164003164018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164000164016%_))))
                        (let ((_%hd164004164021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164003164018%_)))
                              (_%tl164005164023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164003164018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164005164023%_))
                              (let ((_%e164006164026%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164005164023%_))))
                                (let ((_%hd164007164029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164006164026%_)))
                                      (_%tl164008164031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164006164026%_))))
                                  ((lambda (_%g164001164034%_
                                            _%g164002164035%_)
                                     (let ((_%key164048%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g164002164035%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key164048%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx163997%_
                                              _%g164002164035%_
                                              _%key164048%_)))
                                       (let* ((_%ctx164050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g164002164035%_)))
                                              (_%code164053%_
                                               (let ((__tmp173089
                                                      (lambda ()
                                                        (let ((__tmp173090
                                                               (##structure-ref
                                                                _%ctx164050%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self163996%_
                                                           __tmp173090)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp173089
                                                  gx#current-expander-context
                                                  _%ctx164050%_)))
                                              (_%rt164055%_
                                               (let ((__tmp173091
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp173091
                                                  _%ctx164050%_)))
                                              (_%loader164057%_
                                               (if _%rt164055%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt164055%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid164059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g164002164035%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self163996%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid164059%_
                                                     (cons _%code164053%_
                                                           _%loader164057%_))))))
                                   _%tl164008164031%_
                                   _%hd164007164029%_)))
                              (_%g163999164013%_ _%g164000164016%_))))
                      (_%g163999164013%_ _%g164000164016%_)))))
          (_%g163998164062%_ _%stx163997%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx163983%_ _%context-chain163984%_)
        (let _%lp163986%_ ((_%ctx163988%_ _%ctx163983%_) (_%path163989%_ '()))
          (let ((_%super163991%_
                 (##structure-ref _%ctx163988%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super163991%_ _%context-chain163984%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx163988%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path163989%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super163991%_
                       'gx#module-context::t))
                    (_%lp163986%_
                     _%super163991%_
                     (cons (car (##structure-ref
                                 _%ctx163988%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path163989%_))
                    (cons (let ((__tmp173092
                                 (##structure-ref
                                  _%ctx163988%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp173092))
                          _%path163989%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp163976%_ ((_%ctx163978%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r163979%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx163978%_ 'gx#module-context::t))
              (_%lp163976%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx163978%_ '3 '#f '#f))
               (cons _%ctx163978%_ _%r163979%_))
              _%r163979%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self163741%_ _%stx163742%_)
        (letrec* ((_%context-chain163744%_ (gxc#current-context-chain))
                  (_%make-import-spec163745%_
                   (lambda (_%in163913%_)
                     (let* ((_%in163914163926%_ _%in163913%_)
                            (_%E163916163929%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in163914163926%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K163917163939%_
                             (lambda (_%phi163932%_
                                      _%name163933%_
                                      _%src-name163934%_
                                      _%src-phi163935%_
                                      _%src-key163936%_
                                      _%src-ctx163937%_)
                               (cons _%phi163932%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name163933%_))
                                           (cons _%src-phi163935%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name163934%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in163914163926%_
                              'gx#module-import::t))
                           (let ((_%e163918163942%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in163914163926%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e163918163942%_
                                    'gx#module-export::t))
                                 (let* ((_%e163921163945%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163918163942%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx163948%_ _%e163921163945%_)
                                        (_%e163922163950%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163918163942%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key163953%_ _%e163922163950%_)
                                        (_%e163923163955%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163918163942%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi163958%_ _%e163923163955%_)
                                        (_%e163924163960%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163918163942%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name163963%_ _%e163924163960%_)
                                        (_%e163919163965%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163914163926%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name163968%_ _%e163919163965%_)
                                        (_%e163920163970%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163914163926%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi163973%_ _%e163920163970%_))
                                   (_%K163917163939%_
                                    _%phi163973%_
                                    _%name163968%_
                                    _%src-name163963%_
                                    _%src-phi163958%_
                                    _%src-key163953%_
                                    _%src-ctx163948%_))
                                 (_%E163916163929%_)))
                           (_%E163916163929%_)))))
                  (_%make-import-path163746%_
                   (lambda (_%ctx163911%_)
                     (gxc#generate-meta-import-path
                      _%ctx163911%_
                      _%context-chain163744%_)))
                  (_%make-import-spec-in163747%_
                   (lambda (_%ctx163908%_ _%in163909%_)
                     (cons 'spec:
                           (cons (_%make-import-path163746%_ _%ctx163908%_)
                                 (reverse _%in163909%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self163741%_ 'state)))
          (let* ((_%g163749163759%_
                  (lambda (_%g163750163756%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163750163756%_))))
                 (_%g163748163905%_
                  (lambda (_%g163750163762%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163750163762%_))
                        (let ((_%e163752163764%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163750163762%_))))
                          (let ((_%hd163753163767%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163752163764%_)))
                                (_%tl163754163769%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163752163764%_))))
                            ((lambda (_%g163751163772%_)
                               (let _%lp163783%_ ((_%rest163785%_
                                                   _%g163751163772%_)
                                                  (_%current-src163786%_ '#f)
                                                  (_%current-in163787%_ '())
                                                  (_%r163788%_ '()))
                                 (let* ((_%rest163789163797%_ _%rest163785%_)
                                        (_%else163791163807%_
                                         (lambda ()
                                           (let ((_%r163805%_
                                                  (if _%current-src163786%_
                                                      (cons (_%make-import-spec-in163747%_
                                                             _%current-src163786%_
                                                             _%current-in163787%_)
                                                            _%r163788%_)
                                                      _%r163788%_)))
                                             (cons '%#import
                                                   (reverse _%r163805%_)))))
                                        (_%K163793163893%_
                                         (lambda (_%rest163810%_ _%in163811%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in163811%_
                                                  'gx#module-import::t))
                                               (let* ((_%in163813163820%_
                                                       _%in163811%_)
                                                      (_%E163815163823%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in163813163820%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K163816163831%_
               (lambda (_%src-ctx163826%_)
                 (if (eq? _%current-src163786%_ _%src-ctx163826%_)
                     (_%lp163783%_
                      _%rest163810%_
                      _%current-src163786%_
                      (cons (_%make-import-spec163745%_ _%in163811%_)
                            _%current-in163787%_)
                      _%r163788%_)
                     (if _%current-src163786%_
                         (_%lp163783%_
                          _%rest163810%_
                          _%src-ctx163826%_
                          (cons (_%make-import-spec163745%_ _%in163811%_) '())
                          (cons (_%make-import-spec-in163747%_
                                 _%current-src163786%_
                                 _%current-in163787%_)
                                _%r163788%_))
                         (_%lp163783%_
                          _%rest163810%_
                          _%src-ctx163826%_
                          (cons (_%make-import-spec163745%_ _%in163811%_) '())
                          _%r163788%_)))))
              (_%e163817163834%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in163813163820%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e163817163834%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163818163837%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e163817163834%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx163840%_ _%e163818163837%_))
               (_%K163816163831%_ _%src-ctx163840%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163815163823%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in163811%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi163843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163811%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src163845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163811%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in163885%_
                                                           (let* ((_%g163846163855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path163746%_ _%src163845%_))
                          (_%E163849163859%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g163846163855%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K163851163875%_
                            (lambda (_%path163873%_) _%path163873%_))
                           (_%K163850163865%_
                            (lambda (_%path163863%_)
                              (cons 'in: _%path163863%_))))
                       (if (pair? _%g163846163855%_)
                           (let ((_%tl163853163880%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g163846163855%_)))
                                 (_%hd163852163878%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g163846163855%_))))
                             (if (null? _%tl163853163880%_)
                                 (let ((_%path163883%_ _%hd163852163878%_))
                                   (_%K163851163875%_ _%path163883%_))
                                 (let ((_%path163868%_ _%g163846163855%_))
                                   (_%K163850163865%_ _%path163868%_))))
                           (let ((_%path163868%_ _%g163846163855%_))
                             (_%K163850163865%_ _%path163868%_))))))
                  (_%r163887%_
                   (if _%current-src163786%_
                       (cons (_%make-import-spec-in163747%_
                              _%current-src163786%_
                              _%current-in163787%_)
                             _%r163788%_)
                       _%r163788%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp163783%_
                                                      _%rest163810%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi163843%_)
                                                                _%src-in163885%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi163843%_
                                    (cons _%src-in163885%_ '()))))
                    _%r163887%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in163811%_
                                                          'gx#module-context::t))
                                                       (let ((_%r163891%_
                                                              (if _%current-src163786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in163747%_
                                 _%current-src163786%_
                                 _%current-in163787%_)
                                _%r163788%_)
                          _%r163788%_)))
                 (_%lp163783%_
                  _%rest163810%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path163746%_ _%in163811%_))
                        _%r163891%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest163789163797%_)
                                       (let ((_%hd163794163896%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163789163797%_)))
                                             (_%tl163795163898%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163789163797%_))))
                                         (let* ((_%in163901%_
                                                 _%hd163794163896%_)
                                                (_%rest163903%_
                                                 _%tl163795163898%_))
                                           (_%K163793163893%_
                                            _%rest163903%_
                                            _%in163901%_)))
                                       (_%else163791163807%_)))))
                             _%tl163754163769%_)))
                        (_%g163749163759%_ _%g163750163762%_)))))
            (_%g163748163905%_ _%stx163742%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self163551%_ _%stx163552%_)
        (letrec* ((_%context-chain163554%_ (gxc#current-context-chain))
                  (_%make-import-path163555%_
                   (lambda (_%ctx163739%_)
                     (gxc#generate-meta-import-path
                      _%ctx163739%_
                      _%context-chain163554%_))))
          (let* ((_%g163557163567%_
                  (lambda (_%g163558163564%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163558163564%_))))
                 (_%g163556163736%_
                  (lambda (_%g163558163570%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163558163570%_))
                        (let ((_%e163560163572%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163558163570%_))))
                          (let ((_%hd163561163575%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163560163572%_)))
                                (_%tl163562163577%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163560163572%_))))
                            ((lambda (_%g163559163580%_)
                               (let _%lp163591%_ ((_%rest163593%_
                                                   _%g163559163580%_)
                                                  (_%r163594%_ '()))
                                 (let* ((_%rest163595163603%_ _%rest163593%_)
                                        (_%else163597163611%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r163594%_))))
                                        (_%K163599163724%_
                                         (lambda (_%rest163614%_ _%out163615%_)
                                           (let* ((_%out163616163629%_
                                                   _%out163615%_)
                                                  (_%E163619163633%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out163616163629%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163623163703%_
                                                    (lambda (_%name163699%_
                                                             _%phi163700%_
                                                             _%key163701%_)
                                                      (_%lp163591%_
                                                       _%rest163614%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi163700%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key163701%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name163699%_))
                                             '()))))
                     _%r163594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163620163683%_
                                                    (lambda (_%phi163637%_
                                                             _%src163638%_)
                                                      (let* ((_%out163678%_
                                                              (if _%src163638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g163639163648%_
                                              (_%make-import-path163555%_
                                               _%src163638%_))
                                             (_%E163642163652%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g163639163648%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K163644163668%_
                                               (lambda (_%path163666%_)
                                                 _%path163666%_))
                                              (_%K163643163658%_
                                               (lambda (_%path163656%_)
                                                 (cons 'in: _%path163656%_))))
                                          (if (pair? _%g163639163648%_)
                                              (let ((_%tl163646163673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g163639163648%_)))
                                                    (_%hd163645163671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g163639163648%_))))
                                                (if (null? _%tl163646163673%_)
                                                    (let ((_%path163676%_
                                                           _%hd163645163671%_))
                                                      (_%K163644163668%_
                                                       _%path163676%_))
                                                    (let ((_%path163661%_
                                                           _%g163639163648%_))
                                                      (_%K163643163658%_
                                                       _%path163661%_))))
                                              (let ((_%path163661%_
                                                     _%g163639163648%_))
                                                (_%K163643163658%_
                                                 _%path163661%_)))))
                                      '()))
                          '#t))
                     (_%out163680%_
                      (if (fxzero? _%phi163637%_)
                          _%out163678%_
                          (cons 'phi:
                                (cons _%phi163637%_
                                      (cons _%out163678%_ '()))))))
                (_%lp163591%_
                 _%rest163614%_
                 (cons _%out163680%_ _%r163594%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match163618163696%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out163616163629%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e163621163686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163616163629%_
                               '1
                               '#f
                               '#f)))
                           (_%e163622163691%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163616163629%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src163689%_ _%e163621163686%_)
                            (_%phi163694%_ _%e163622163691%_))
                        (_%K163620163683%_ _%phi163694%_ _%src163689%_)))
                    (_%E163619163633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out163616163629%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163624163706%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out163616163629%_
                        '1
                        '#f
                        '#f)))
                    (_%e163625163709%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163616163629%_
                        '2
                        '#f
                        '#f)))
                    (_%e163626163714%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163616163629%_
                        '3
                        '#f
                        '#f)))
                    (_%e163627163719%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163616163629%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key163712%_ _%e163625163709%_)
                     (_%phi163717%_ _%e163626163714%_)
                     (_%name163722%_ _%e163627163719%_))
                 (_%K163623163703%_
                  _%name163722%_
                  _%phi163717%_
                  _%key163712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match163618163696%_))))))))
                                   (if (pair? _%rest163595163603%_)
                                       (let ((_%hd163600163727%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163595163603%_)))
                                             (_%tl163601163729%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163595163603%_))))
                                         (let* ((_%out163732%_
                                                 _%hd163600163727%_)
                                                (_%rest163734%_
                                                 _%tl163601163729%_))
                                           (_%K163599163724%_
                                            _%rest163734%_
                                            _%out163732%_)))
                                       (_%else163597163611%_)))))
                             _%tl163562163577%_)))
                        (_%g163557163567%_ _%g163558163570%_)))))
            (_%g163556163736%_ _%stx163552%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self163512%_ _%stx163513%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163512%_ 'state)))
        (let* ((_%g163515163525%_
                (lambda (_%g163516163522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163516163522%_))))
               (_%g163514163548%_
                (lambda (_%g163516163528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163516163528%_))
                      (let ((_%e163518163530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163516163528%_))))
                        (let ((_%hd163519163533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163518163530%_)))
                              (_%tl163520163535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163518163530%_))))
                          ((lambda (_%g163517163538%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g163517163538%_)))
                           _%tl163520163535%_)))
                      (_%g163515163525%_ _%g163516163528%_)))))
          (_%g163514163548%_ _%stx163513%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self163387%_ _%stx163388%_)
        (letrec ((_%generate1163390%_
                  (lambda (_%id163507%_ _%eid163508%_)
                    (let ((_%eid163510%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid163508%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid163510%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx163388%_
                             _%eid163510%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id163507%_))
                            (cons _%eid163510%_ '()))))))
          (let* ((_%g163392163420%_
                  (lambda (_%g163393163417%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163393163417%_))))
                 (_%g163391163504%_
                  (lambda (_%g163393163423%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163393163423%_))
                        (let ((_%e163396163425%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163393163423%_))))
                          (let ((_%hd163397163428%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163396163425%_)))
                                (_%tl163398163430%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163396163425%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl163398163430%_))
                                (let ((_g173093_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl163398163430%_
                                          '0))))
                                  (begin
                                    (let ((_g173094_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173093_)
                                                 (##values-length _g173093_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173094_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173094_)))
                                    (let ((_%target163399163433%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173093_ 0)))
                                          (_%tl163401163435%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173093_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163401163435%_))
                                          (letrec ((_%loop163402163438%_
                                                    (lambda (_%hd163400163441%_
                                                             _%eid163406163443%_
                                                             _%id163407163444%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd163400163441%_))
                                                          (let ((_%e163403163446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd163400163441%_))))
                    (let ((_%lp-hd163404163449%_
                           (let ()
                             (declare (not safe))
                             (##car _%e163403163446%_)))
                          (_%lp-tl163405163451%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e163403163446%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd163404163449%_))
                          (let ((_%e163410163454%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd163404163449%_))))
                            (let ((_%hd163411163457%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e163410163454%_)))
                                  (_%tl163412163459%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e163410163454%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl163412163459%_))
                                  (let ((_%e163413163462%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl163412163459%_))))
                                    (let ((_%hd163414163465%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e163413163462%_)))
                                          (_%tl163415163467%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e163413163462%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163415163467%_))
                                          (_%loop163402163438%_
                                           _%lp-tl163405163451%_
                                           (cons _%hd163414163465%_
                                                 _%eid163406163443%_)
                                           (cons _%hd163411163457%_
                                                 _%id163407163444%_))
                                          (_%g163392163420%_
                                           _%g163393163423%_))))
                                  (_%g163392163420%_ _%g163393163423%_))))
                          (_%g163392163420%_ _%g163393163423%_))))
                  (let ((_%eid163408163470%_ (reverse _%eid163406163443%_))
                        (_%id163409163471%_ (reverse _%id163407163444%_)))
                    ((lambda (_%g163394163473%_ _%g163395163474%_)
                       (cons '%#extern
                             (map _%generate1163390%_
                                  (let ((__tmp173095
                                         (lambda (_%g163489163492%_
                                                  _%g163490163494%_)
                                           (cons _%g163489163492%_
                                                 _%g163490163494%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173095
                                     '()
                                     _%g163395163474%_))
                                  (let ((__tmp173096
                                         (lambda (_%g163496163499%_
                                                  _%g163497163501%_)
                                           (cons _%g163496163499%_
                                                 _%g163497163501%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173096
                                     '()
                                     _%g163394163473%_)))))
                     _%eid163408163470%_
                     _%id163409163471%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop163402163438%_
                                             _%target163399163433%_
                                             '()
                                             '()))
                                          (_%g163392163420%_
                                           _%g163393163423%_)))))
                                (_%g163392163420%_ _%g163393163423%_))))
                        (_%g163392163420%_ _%g163393163423%_)))))
            (_%g163391163504%_ _%stx163388%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self163176%_ _%stx163177%_)
        (letrec ((_%generate1163179%_
                  (lambda (_%id163381%_)
                    (let ((_%eid163383%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id163381%_)))
                          (_%ident163384%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id163381%_)))
                          (_%props163385%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id163381%_))))
                      (cons '%#define-runtime
                            (cons _%ident163384%_
                                  (cons _%eid163383%_ _%props163385%_))))))
                 (_%generate*163180%_
                  (lambda (_%all163349%_)
                    (let* ((_%all163350163358%_ _%all163349%_)
                           (_%else163352163366%_
                            (lambda () (cons '%#begin _%all163349%_)))
                           (_%K163354163371%_
                            (lambda (_%one163369%_) _%one163369%_)))
                      (if (pair? _%all163350163358%_)
                          (let ((_%hd163355163374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all163350163358%_)))
                                (_%tl163356163376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all163350163358%_))))
                            (let ((_%one163379%_ _%hd163355163374%_))
                              (if (null? _%tl163356163376%_)
                                  (_%K163354163371%_ _%one163379%_)
                                  (_%else163352163366%_))))
                          (_%else163352163366%_))))))
          (let* ((_%g163182163199%_
                  (lambda (_%g163183163196%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163183163196%_))))
                 (_%g163181163346%_
                  (lambda (_%g163183163202%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163183163202%_))
                        (let ((_%e163186163204%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163183163202%_))))
                          (let ((_%hd163187163207%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163186163204%_)))
                                (_%tl163188163209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163186163204%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl163188163209%_))
                                (let ((_%e163189163212%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl163188163209%_))))
                                  (let ((_%hd163190163215%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e163189163212%_)))
                                        (_%tl163191163217%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e163189163212%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl163191163217%_))
                                        (let ((_%e163192163220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl163191163217%_))))
                                          (let ((_%hd163193163223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e163192163220%_)))
                                                (_%tl163194163225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e163192163220%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl163194163225%_))
                                                ((lambda (_%g163184163228%_
                                                          _%g163185163229%_)
                                                   (let _%lp163245%_ ((_%rest163247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g163185163229%_)
                              (_%r163248%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx172831172832%_
                                                             _%rest163247%_)
                                                            (_%g163253163270%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx172831172832%_)))))
               (let ((_%__kont172833172834%_
                      (lambda (_%g163255163333%_)
                        (_%lp163245%_ _%g163255163333%_ _%r163248%_)))
                     (_%__kont172835172836%_
                      (lambda (_%g163260163306%_ _%g163261163307%_)
                        (_%lp163245%_
                         _%g163260163306%_
                         (cons (_%generate1163179%_ _%g163261163307%_)
                               _%r163248%_))))
                     (_%__kont172837172838%_
                      (lambda (_%g163265163282%_)
                        (_%generate*163180%_
                         (let ((__tmp173097
                                (cons (_%generate1163179%_ _%g163265163282%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp173097 _%r163248%_)))))
                     (_%__kont172839172840%_
                      (lambda ()
                        (_%generate*163180%_ (reverse! _%r163248%_)))))
                 (let ((_%g163251163293%_
                        (lambda ()
                          (let ((_%g163265163282%_ _%__stx172831172832%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g163265163282%_))
                                (_%__kont172837172838%_ _%g163265163282%_)
                                (_%__kont172839172840%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx172831172832%_))
                       (let ((_%e163256163322%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx172831172832%_))))
                         (let ((_%tl163258163327%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e163256163322%_)))
                               (_%hd163257163325%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e163256163322%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd163257163325%_))
                               (let ((_%e163259163330%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd163257163325%_))))
                                 (if (equal? _%e163259163330%_ '#f)
                                     (_%__kont172833172834%_
                                      _%tl163258163327%_)
                                     (_%__kont172835172836%_
                                      _%tl163258163327%_
                                      _%hd163257163325%_)))
                               (_%__kont172835172836%_
                                _%tl163258163327%_
                                _%hd163257163325%_))))
                       (let () (declare (not safe)) (_%g163251163293%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd163193163223%_
                                                 _%hd163190163215%_)
                                                (_%g163182163199%_
                                                 _%g163183163202%_))))
                                        (_%g163182163199%_
                                         _%g163183163202%_))))
                                (_%g163182163199%_ _%g163183163202%_))))
                        (_%g163182163199%_ _%g163183163202%_)))))
            (_%g163181163346%_ _%stx163177%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self163073%_ _%stx163074%_)
        (let* ((_%g163076163093%_
                (lambda (_%g163077163090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163077163090%_))))
               (_%g163075163173%_
                (lambda (_%g163077163096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163077163096%_))
                      (let ((_%e163080163098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163077163096%_))))
                        (let ((_%hd163081163101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163080163098%_)))
                              (_%tl163082163103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163080163098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163082163103%_))
                              (let ((_%e163083163106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163082163103%_))))
                                (let ((_%hd163084163109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163083163106%_)))
                                      (_%tl163085163111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163083163106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163085163111%_))
                                      (let ((_%e163086163114%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163085163111%_))))
                                        (let ((_%hd163087163117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163086163114%_)))
                                              (_%tl163088163119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163086163114%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163088163119%_))
                                              ((lambda (_%g163078163122%_
                                                        _%g163079163123%_)
                                                 (let* ((_%eid163138%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g163079163123%_)))
                                                        (_%phi163140%_
                                                         (let ((__tmp173098
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp173098 '1)))
                (_%block163142%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self163073%_ 'state))
                  _%phi163140%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g163145163152%_
                                                           (lambda (_%g163146163149%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g163146163149%_))))
                  (_%g163144163170%_
                   (lambda (_%g163146163155%_)
                     ((lambda (_%g163147163157%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self163073%_ 'state))
                         _%phi163140%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g163147163157%_
                                     (cons _%g163078163122%_ '())))))
                      _%g163146163155%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g163144163170%_
                                                      _%eid163138%_))
                                                   (if _%block163142%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block163142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g163079163123%_))
                                             (cons _%eid163138%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g163079163123%_))
                           (cons _%eid163138%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163087163117%_
                                               _%hd163084163109%_)
                                              (_%g163076163093%_
                                               _%g163077163096%_))))
                                      (_%g163076163093%_ _%g163077163096%_))))
                              (_%g163076163093%_ _%g163077163096%_))))
                      (_%g163076163093%_ _%g163077163096%_)))))
          (_%g163075163173%_ _%stx163074%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self163005%_ _%stx163006%_)
        (let* ((_%g163008163025%_
                (lambda (_%g163009163022%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163009163022%_))))
               (_%g163007163070%_
                (lambda (_%g163009163028%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163009163028%_))
                      (let ((_%e163012163030%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163009163028%_))))
                        (let ((_%hd163013163033%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163012163030%_)))
                              (_%tl163014163035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163012163030%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163014163035%_))
                              (let ((_%e163015163038%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163014163035%_))))
                                (let ((_%hd163016163041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163015163038%_)))
                                      (_%tl163017163043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163015163038%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163017163043%_))
                                      (let ((_%e163018163046%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163017163043%_))))
                                        (let ((_%hd163019163049%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163018163046%_)))
                                              (_%tl163020163051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163018163046%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163020163051%_))
                                              ((lambda (_%g163010163054%_
                                                        _%g163011163055%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g163011163055%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g163010163054%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163019163049%_
                                               _%hd163016163041%_)
                                              (_%g163008163025%_
                                               _%g163009163028%_))))
                                      (_%g163008163025%_ _%g163009163028%_))))
                              (_%g163008163025%_ _%g163009163028%_))))
                      (_%g163008163025%_ _%g163009163028%_)))))
          (_%g163007163070%_ _%stx163006%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self163002%_ _%stx163003%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163002%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx163003%_)
        (gxc#generate-meta-define-values% _%self163002%_ _%stx163003%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self162999%_ _%stx163000%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162999%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx163000%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp173100 (list)) (__tmp173099 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp173100
         '(src n open blocks)
         __tmp173099
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args162996%_
        (apply make-instance gxc#meta-state::t _%$args162996%_)))
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
      (lambda (_%self162982%_ _%ctx162983%_)
        (let ((_%self162986%_ _%self162982%_))
          (if (let ((__tmp173101
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162986%_))))
                (declare (not safe))
                (##fx< '4 __tmp173101))
              (begin
                (let ((__tmp173102
                       (let ((__tmp173103
                              (##structure-ref
                               _%ctx162983%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp173103))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162986%_
                   __tmp173102
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162986%_ '1 '2 '#f '#f))
                (let ((__tmp173104
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162986%_
                   __tmp173104
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162986%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp173105
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162986%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self162986%_
                       '4
                       __tmp173105))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp173107 (list)) (__tmp173106 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp173107
         '(ctx phi n code)
         __tmp173106
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args162857%_
        (apply make-instance gxc#meta-state-block::t _%$args162857%_)))
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
      (lambda (_%state162817%_ _%phi162818%_)
        (let* ((_%state162819162827%_ _%state162817%_)
               (_%E162821162830%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state162819162827%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K162822162839%_
                (lambda (_%open162833%_ _%n162834%_ _%src162835%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open162833%_ _%phi162818%_))
                      '#f
                      (let ((_%block-ref162837%_
                             (let ((__tmp173108 (number->string _%n162834%_)))
                               (declare (not safe))
                               (##string-append
                                _%src162835%_
                                '"~"
                                __tmp173108))))
                        (##structure-set!
                         _%state162817%_
                         (let () (declare (not safe)) (##fx+ _%n162834%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp173109
                               (let ((__tmp173110
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp173110
                                  _%phi162818%_
                                  _%n162834%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open162833%_ _%phi162818%_ __tmp173109))
                        _%block-ref162837%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state162819162827%_
                 'gxc#meta-state::t))
              (let* ((_%e162823162842%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162819162827%_
                         '1
                         '#f
                         '#f)))
                     (_%src162845%_ _%e162823162842%_)
                     (_%e162824162847%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162819162827%_
                         '2
                         '#f
                         '#f)))
                     (_%n162850%_ _%e162824162847%_)
                     (_%e162825162852%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162819162827%_
                         '3
                         '#f
                         '#f)))
                     (_%open162855%_ _%e162825162852%_))
                (_%K162822162839%_ _%open162855%_ _%n162850%_ _%src162845%_))
              (_%E162821162830%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state162811%_ _%phi162812%_ _%stx162813%_)
        (let ((_%block162815%_
               (let ((__tmp173111
                      (##structure-ref
                       _%state162811%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp173111 _%phi162812%_))))
          (##structure-set!
           _%block162815%_
           (cons _%stx162813%_
                 (##structure-ref
                  _%block162815%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state162805%_)
        (##structure-set!
         _%state162805%_
         (let ((__tmp173114
                (lambda (_%_162807%_ _%block162808%_ _%r162809%_)
                  (cons _%block162808%_ _%r162809%_)))
               (__tmp173113
                (##structure-ref _%state162805%_ '4 gxc#meta-state::t '#f))
               (__tmp173112
                (##structure-ref _%state162805%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp173114 __tmp173113 __tmp173112))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state162805%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state162758%_)
        (gxc#meta-state-end-phi! _%state162758%_)
        (let ((__tmp173116
               (lambda (_%block162760%_ _%r162761%_)
                 (let* ((_%block162762162771%_ _%block162760%_)
                        (_%E162764162774%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block162762162771%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K162765162782%_
                         (lambda (_%code162777%_
                                  _%n162778%_
                                  _%phi162779%_
                                  _%ctx162780%_)
                           (if (null? _%code162777%_)
                               _%r162761%_
                               (cons (cons _%ctx162780%_
                                           (cons _%phi162779%_
                                                 (cons _%n162778%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code162777%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r162761%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block162762162771%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e162766162785%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162762162771%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx162788%_ _%e162766162785%_)
                              (_%e162767162790%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162762162771%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi162793%_ _%e162767162790%_)
                              (_%e162768162795%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162762162771%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n162798%_ _%e162768162795%_)
                              (_%e162769162800%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162762162771%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code162803%_ _%e162769162800%_))
                         (_%K162765162782%_
                          _%code162803%_
                          _%n162798%_
                          _%phi162793%_
                          _%ctx162788%_))
                       (_%E162764162774%_)))))
              (__tmp173115
               (##structure-ref _%state162758%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp173116 '() __tmp173115))))
    (define gxc#collect-expression-refs
      (lambda (_%stx162754%_)
        (let ((_%ht162756%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht162756%_ _%stx162754%_)
          _%ht162756%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self162697%_ _%stx162698%_)
        (let* ((_%g162700162713%_
                (lambda (_%g162701162710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162701162710%_))))
               (_%g162699162751%_
                (lambda (_%g162701162716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162701162716%_))
                      (let ((_%e162703162718%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162701162716%_))))
                        (let ((_%hd162704162721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162703162718%_)))
                              (_%tl162705162723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162703162718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162705162723%_))
                              (let ((_%e162706162726%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162705162723%_))))
                                (let ((_%hd162707162729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162706162726%_)))
                                      (_%tl162708162731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162706162726%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162708162731%_))
                                      ((lambda (_%g162702162734%_)
                                         (let* ((_%bind162746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g162702162734%_)))
                                                (_%eid162748%_
                                                 (if _%bind162746%_
                                                     (##structure-ref
                                                      _%bind162746%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g162702162734%_))))
                                                (__tmp173117
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162697%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp173117
                                            _%eid162748%_
                                            _%eid162748%_)))
                                       _%hd162707162729%_)
                                      (_%g162700162713%_ _%g162701162716%_))))
                              (_%g162700162713%_ _%g162701162716%_))))
                      (_%g162700162713%_ _%g162701162716%_)))))
          (_%g162699162751%_ _%stx162698%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self162624%_ _%stx162625%_)
        (let* ((_%g162627162644%_
                (lambda (_%g162628162641%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162628162641%_))))
               (_%g162626162694%_
                (lambda (_%g162628162647%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162628162647%_))
                      (let ((_%e162631162649%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162628162647%_))))
                        (let ((_%hd162632162652%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162631162649%_)))
                              (_%tl162633162654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162631162649%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162633162654%_))
                              (let ((_%e162634162657%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162633162654%_))))
                                (let ((_%hd162635162660%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162634162657%_)))
                                      (_%tl162636162662%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162634162657%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162636162662%_))
                                      (let ((_%e162637162665%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162636162662%_))))
                                        (let ((_%hd162638162668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162637162665%_)))
                                              (_%tl162639162670%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162637162665%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162639162670%_))
                                              ((lambda (_%g162629162673%_
                                                        _%g162630162674%_)
                                                 (let* ((_%bind162689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g162630162674%_)))
                                                        (_%eid162691%_
                                                         (if _%bind162689%_
                                                             (##structure-ref
                                                              _%bind162689%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162630162674%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp173118
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self162624%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp173118
                                                      _%eid162691%_
                                                      _%eid162691%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162624%_
                                                      _%g162629162673%_))))
                                               _%hd162638162668%_
                                               _%hd162635162660%_)
                                              (_%g162627162644%_
                                               _%g162628162647%_))))
                                      (_%g162627162644%_ _%g162628162647%_))))
                              (_%g162627162644%_ _%g162628162647%_))))
                      (_%g162627162644%_ _%g162628162647%_)))))
          (_%g162626162694%_ _%stx162625%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self162581%_ _%stx162582%_)
        (let* ((_%g162584162594%_
                (lambda (_%g162585162591%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162585162591%_))))
               (_%g162583162621%_
                (lambda (_%g162585162597%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162585162597%_))
                      (let ((_%e162587162599%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162585162597%_))))
                        (let ((_%hd162588162602%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162587162599%_)))
                              (_%tl162589162604%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162587162599%_))))
                          ((lambda (_%g162586162607%_)
                             (let ((__tmp173119
                                    (lambda (_%g162616162618%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self162581%_
                                         _%g162616162618%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp173119 _%g162586162607%_)))
                           _%tl162589162604%_)))
                      (_%g162584162594%_ _%g162585162597%_)))))
          (_%g162583162621%_ _%stx162582%_))))
    (define gxc#count-values-single%
      (lambda (_%self162578%_ _%stx162579%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self162446%_ _%stx162447%_)
        (let* ((_%__stx172861172862%_ _%stx162447%_)
               (_%g162450162479%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172861172862%_)))))
          (let ((_%__kont172863172864%_
                 (lambda (_%g162452162545%_ _%g162453162546%_)
                   (length (let ((__tmp173120
                                  (lambda (_%g162567162570%_ _%g162568162572%_)
                                    (cons _%g162567162570%_
                                          _%g162568162572%_))))
                             (declare (not safe))
                             (__foldr1 __tmp173120 '() _%g162452162545%_)))))
                (_%__kont172867172868%_ (lambda () '#f)))
            (let ((_%__match172906172907%_
                   (lambda (_%e162454162491%_
                            _%hd162455162494%_
                            _%tl162456162496%_
                            _%e162457162499%_
                            _%hd162458162502%_
                            _%tl162459162504%_
                            _%e162460162507%_
                            _%hd162461162510%_
                            _%tl162462162512%_
                            _%e162463162515%_
                            _%hd162464162518%_
                            _%tl162465162520%_
                            _%__splice172865172866%_
                            _%target162466162523%_
                            _%tl162468162525%_)
                     (letrec ((_%loop162469162528%_
                               (lambda (_%hd162467162531%_
                                        _%rand162473162533%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd162467162531%_))
                                     (let ((_%e162470162535%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd162467162531%_))))
                                       (let ((_%lp-tl162472162540%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e162470162535%_)))
                                             (_%lp-hd162471162538%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e162470162535%_))))
                                         (_%loop162469162528%_
                                          _%lp-tl162472162540%_
                                          (cons _%lp-hd162471162538%_
                                                _%rand162473162533%_))))
                                     (let ((_%rand162474162543%_
                                            (reverse _%rand162473162533%_)))
                                       (let ((_%g162452162545%_
                                              _%rand162474162543%_)
                                             (_%g162453162546%_
                                              _%hd162464162518%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g162453162546%_
                                                'values))
                                             (_%__kont172863172864%_
                                              _%g162452162545%_
                                              _%g162453162546%_)
                                             (_%__kont172867172868%_))))))))
                       (_%loop162469162528%_ _%target162466162523%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172861172862%_))
                  (let ((_%e162454162491%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172861172862%_))))
                    (let ((_%tl162456162496%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e162454162491%_)))
                          (_%hd162455162494%_
                           (let ()
                             (declare (not safe))
                             (##car _%e162454162491%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl162456162496%_))
                          (let ((_%e162457162499%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl162456162496%_))))
                            (let ((_%tl162459162504%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e162457162499%_)))
                                  (_%hd162458162502%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e162457162499%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd162458162502%_))
                                  (let ((_%e162460162507%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd162458162502%_))))
                                    (let ((_%tl162462162512%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e162460162507%_)))
                                          (_%hd162461162510%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e162460162507%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd162461162510%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd162461162510%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl162462162512%_))
                                                  (let ((_%e162463162515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl162462162512%_))))
                                                    (let ((_%tl162465162520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e162463162515%_)))
                                                          (_%hd162464162518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e162463162515%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl162465162520%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl162459162504%_))
                      (let ((_%__splice172865172866%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl162459162504%_
                                '0))))
                        (let ((_%tl162468162525%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172865172866%_ '1)))
                              (_%target162466162523%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172865172866%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl162468162525%_))
                              (_%__match172906172907%_
                               _%e162454162491%_
                               _%hd162455162494%_
                               _%tl162456162496%_
                               _%e162457162499%_
                               _%hd162458162502%_
                               _%tl162459162504%_
                               _%e162460162507%_
                               _%hd162461162510%_
                               _%tl162462162512%_
                               _%e162463162515%_
                               _%hd162464162518%_
                               _%tl162465162520%_
                               _%__splice172865172866%_
                               _%target162466162523%_
                               _%tl162468162525%_)
                              (_%__kont172867172868%_))))
                      (_%__kont172867172868%_))
                  (_%__kont172867172868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172867172868%_))
                                              (_%__kont172867172868%_))
                                          (_%__kont172867172868%_))))
                                  (_%__kont172867172868%_))))
                          (_%__kont172867172868%_))))
                  (_%__kont172867172868%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self162351%_ _%stx162352%_)
        (let* ((_%g162354162375%_
                (lambda (_%g162355162372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162355162372%_))))
               (_%g162353162443%_
                (lambda (_%g162355162378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162355162378%_))
                      (let ((_%e162359162380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162355162378%_))))
                        (let ((_%hd162360162383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162359162380%_)))
                              (_%tl162361162385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162359162380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162361162385%_))
                              (let ((_%e162362162388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162361162385%_))))
                                (let ((_%hd162363162391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162362162388%_)))
                                      (_%tl162364162393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162362162388%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162364162393%_))
                                      (let ((_%e162365162396%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162364162393%_))))
                                        (let ((_%hd162366162399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162365162396%_)))
                                              (_%tl162367162401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162365162396%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl162367162401%_))
                                              (let ((_%e162368162404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl162367162401%_))))
                                                (let ((_%hd162369162407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e162368162404%_)))
                                                      (_%tl162370162409%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e162368162404%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl162370162409%_))
                                                      ((lambda (_%g162356162412%_
                                                                _%g162357162413%_
                                                                _%g162358162414%_)
                                                         (let ((_%c1162431162433%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self162351%_
                           _%g162357162413%_))))
                   (if _%c1162431162433%_
                       (let* ((_%c1162435%_ _%c1162431162433%_)
                              (_%c2162436162438%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self162351%_
                                  _%g162356162412%_))))
                         (if _%c2162436162438%_
                             (let ((_%c2162440%_ _%c2162436162438%_))
                               (if (fx= _%c1162435%_ _%c2162440%_)
                                   _%c1162435%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd162369162407%_
               _%hd162366162399%_
               _%hd162363162391%_)
              (_%g162354162375%_ _%g162355162378%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g162354162375%_
                                               _%g162355162378%_))))
                                      (_%g162354162375%_ _%g162355162378%_))))
                              (_%g162354162375%_ _%g162355162378%_))))
                      (_%g162354162375%_ _%g162355162378%_)))))
          (_%g162353162443%_ _%stx162352%_))))))
