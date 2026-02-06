(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1770342301)
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
      (let ((__tmp172930 (list gxc#::void::t))
            (__tmp172929 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp172930
         '()
         __tmp172929
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args171544%_
        (apply make-instance gxc#::collect-bindings::t _%$args171544%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp172931
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
        (__make-atomic-promise __tmp172931)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx171536%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self171539%_
                (let ((__obj172905
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj172905))
               (__tmp172932
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171539%_ _%stx171536%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172932
           gxc#current-compile-method
           _%self171539%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp172934 (list gxc#::void::t))
            (__tmp172933 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp172934
         '(modules)
         __tmp172933
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args171533%_
        (apply make-instance gxc#::lift-modules::t _%$args171533%_)))
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
      (let ((__tmp172935
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
        (__make-atomic-promise __tmp172935)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords171508%_ _%modules171505171509%_ _%stx171510%_)
        (let ((_%modules171513%_
               (if (eq? _%modules171505171509%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules171505171509%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self171515%_
                  (let ((__obj172907
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172907
                       _%modules171513%_
                       '1
                       '#f
                       '#f))
                    __obj172907))
                 (__tmp172936
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171515%_ _%stx171510%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172936
             gxc#current-compile-method
             _%self171515%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords171522%_ . _%args171523%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords171522%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171522%_
                  'modules:
                  absent-value))
               _%args171523%_)))
    (define gxc#apply-lift-modules
      (lambda _%args171506171529%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args171506171529%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp172938 (list)) (__tmp172937 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp172938
         '()
         __tmp172937
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args171501%_
        (apply make-instance gxc#::find-runtime-code::t _%$args171501%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp172939
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
        (__make-atomic-promise __tmp172939)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx171493%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self171496%_
                (let ((__obj172909
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj172909))
               (__tmp172940
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171496%_ _%stx171493%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172940
           gxc#current-compile-method
           _%self171496%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp172942 (list gxc#::false::t))
            (__tmp172941 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp172942
         '()
         __tmp172941
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args171490%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args171490%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp172943
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
        (__make-atomic-promise __tmp172943)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx171482%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self171485%_
                (let ((__obj172911
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj172911))
               (__tmp172944
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171485%_ _%stx171482%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172944
           gxc#current-compile-method
           _%self171485%_))))
    (define gxc#::count-values::t
      (let ((__tmp172946 (list gxc#::false-expression::t))
            (__tmp172945 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp172946
         '()
         __tmp172945
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args171479%_
        (apply make-instance gxc#::count-values::t _%$args171479%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp172947
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
        (__make-atomic-promise __tmp172947)))
    (define gxc#apply-count-values
      (lambda (_%stx171471%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self171474%_
                (let ((__obj172913
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj172913))
               (__tmp172948
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171474%_ _%stx171471%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172948
           gxc#current-compile-method
           _%self171474%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp172949 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp172949
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args171468%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args171468%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp172950
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
        (__make-atomic-promise __tmp172950)))
    (define gxc#::generate-loader::t
      (let ((__tmp172952 (list gxc#::generate-runtime-empty::t))
            (__tmp172951 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp172952
         '()
         __tmp172951
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args171464%_
        (apply make-instance gxc#::generate-loader::t _%$args171464%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp172953
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
        (__make-atomic-promise __tmp172953)))
    (define gxc#apply-generate-loader
      (lambda (_%stx171456%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self171459%_
                (let ((__obj172916
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj172916))
               (__tmp172954
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171459%_ _%stx171456%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172954
           gxc#current-compile-method
           _%self171459%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp172955 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp172955
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args171453%_
        (apply make-instance gxc#::generate-runtime::t _%$args171453%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp172956
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
        (__make-atomic-promise __tmp172956)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx171445%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self171448%_
                (let ((__obj172918
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj172918))
               (__tmp172957
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171448%_ _%stx171445%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172957
           gxc#current-compile-method
           _%self171448%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp172959 (list gxc#::generate-runtime::t))
            (__tmp172958 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp172959
         '()
         __tmp172958
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args171442%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args171442%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp172960
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
        (__make-atomic-promise __tmp172960)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx171434%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self171437%_
                (let ((__obj172920
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj172920))
               (__tmp172961
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self171437%_ _%stx171434%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp172961
           gxc#current-compile-method
           _%self171437%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp172962 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp172962
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args171431%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args171431%_)))
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
      (let ((__tmp172963
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
        (__make-atomic-promise __tmp172963)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords171406%_ _%table171403171407%_ _%stx171408%_)
        (let ((_%table171411%_
               (if (eq? _%table171403171407%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table171403171407%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self171413%_
                  (let ((__obj172922
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172922
                       _%table171411%_
                       '1
                       '#f
                       '#f))
                    __obj172922))
                 (__tmp172964
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171413%_ _%stx171408%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172964
             gxc#current-compile-method
             _%self171413%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords171420%_ . _%args171421%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords171420%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171420%_
                  'table:
                  absent-value))
               _%args171421%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args171404171427%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args171404171427%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp172966 (list gxc#::void-expression::t))
            (__tmp172965 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp172966
         '(state)
         __tmp172965
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args171399%_
        (apply make-instance gxc#::generate-meta::t _%$args171399%_)))
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
      (let ((__tmp172967
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
        (__make-atomic-promise __tmp172967)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords171374%_ _%state171371171375%_ _%stx171376%_)
        (let ((_%state171379%_
               (if (eq? _%state171371171375%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171371171375%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self171381%_
                  (let ((__obj172924
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172924
                       _%state171379%_
                       '1
                       '#f
                       '#f))
                    __obj172924))
                 (__tmp172968
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171381%_ _%stx171376%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172968
             gxc#current-compile-method
             _%self171381%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords171388%_ . _%args171389%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords171388%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171388%_
                  'state:
                  absent-value))
               _%args171389%_)))
    (define gxc#apply-generate-meta
      (lambda _%args171372171395%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args171372171395%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp172970 (list)) (__tmp172969 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp172970
         '(state)
         __tmp172969
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args171367%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args171367%_)))
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
      (let ((__tmp172971
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
        (__make-atomic-promise __tmp172971)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords171342%_ _%state171339171343%_ _%stx171344%_)
        (let ((_%state171347%_
               (if (eq? _%state171339171343%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state171339171343%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self171349%_
                  (let ((__obj172926
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj172926
                       _%state171347%_
                       '1
                       '#f
                       '#f))
                    __obj172926))
                 (__tmp172972
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self171349%_ _%stx171344%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp172972
             gxc#current-compile-method
             _%self171349%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords171356%_ . _%args171357%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords171356%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords171356%_
                  'state:
                  absent-value))
               _%args171357%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args171340171363%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args171340171363%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self171268%_ _%stx171269%_)
        (let* ((_%g171271171288%_
                (lambda (_%g171272171285%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171272171285%_))))
               (_%g171270171335%_
                (lambda (_%g171272171291%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171272171291%_))
                      (let ((_%e171275171293%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171272171291%_))))
                        (let ((_%hd171276171296%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171275171293%_)))
                              (_%tl171277171298%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171275171293%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171277171298%_))
                              (let ((_%e171278171301%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171277171298%_))))
                                (let ((_%hd171279171304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171278171301%_)))
                                      (_%tl171280171306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171278171301%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171280171306%_))
                                      (let ((_%e171281171309%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171280171306%_))))
                                        (let ((_%hd171282171312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171281171309%_)))
                                              (_%tl171283171314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171281171309%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171283171314%_))
                                              ((lambda (_%g171273171317%_
                                                        _%g171274171318%_)
                                                 (let ((__tmp172973
                                                        (lambda (_%bind171333%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind171333%_))
                      (gxc#add-module-binding! _%bind171333%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp172973
                                                    _%g171274171318%_)))
                                               _%hd171282171312%_
                                               _%hd171279171304%_)
                                              (_%g171271171288%_
                                               _%g171272171291%_))))
                                      (_%g171271171288%_ _%g171272171291%_))))
                              (_%g171271171288%_ _%g171272171291%_))))
                      (_%g171271171288%_ _%g171272171291%_)))))
          (_%g171270171335%_ _%stx171269%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self171200%_ _%stx171201%_)
        (let* ((_%g171203171220%_
                (lambda (_%g171204171217%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171204171217%_))))
               (_%g171202171265%_
                (lambda (_%g171204171223%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171204171223%_))
                      (let ((_%e171207171225%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171204171223%_))))
                        (let ((_%hd171208171228%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171207171225%_)))
                              (_%tl171209171230%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171207171225%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171209171230%_))
                              (let ((_%e171210171233%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171209171230%_))))
                                (let ((_%hd171211171236%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171210171233%_)))
                                      (_%tl171212171238%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171210171233%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl171212171238%_))
                                      (let ((_%e171213171241%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl171212171238%_))))
                                        (let ((_%hd171214171244%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e171213171241%_)))
                                              (_%tl171215171246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e171213171241%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl171215171246%_))
                                              ((lambda (_%g171205171249%_
                                                        _%g171206171250%_)
                                                 (gxc#add-module-binding!
                                                  _%g171206171250%_
                                                  '#t))
                                               _%hd171214171244%_
                                               _%hd171211171236%_)
                                              (_%g171203171220%_
                                               _%g171204171223%_))))
                                      (_%g171203171220%_ _%g171204171223%_))))
                              (_%g171203171220%_ _%g171204171223%_))))
                      (_%g171203171220%_ _%g171204171223%_)))))
          (_%g171202171265%_ _%stx171201%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self171142%_ _%stx171143%_)
        (let* ((_%g171145171159%_
                (lambda (_%g171146171156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g171146171156%_))))
               (_%g171144171197%_
                (lambda (_%g171146171162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g171146171162%_))
                      (let ((_%e171149171164%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g171146171162%_))))
                        (let ((_%hd171150171167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e171149171164%_)))
                              (_%tl171151171169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e171149171164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl171151171169%_))
                              (let ((_%e171152171172%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl171151171169%_))))
                                (let ((_%hd171153171175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e171152171172%_)))
                                      (_%tl171154171177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e171152171172%_))))
                                  ((lambda (_%g171147171180%_
                                            _%g171148171181%_)
                                     (let ((_%ctx171194%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g171148171181%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self171142%_
                                           'modules))
                                        (cons _%ctx171194%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self171142%_
                                                        'modules)))))
                                       (let ((__tmp172974
                                              (lambda ()
                                                (let ((__tmp172975
                                                       (##structure-ref
                                                        _%ctx171194%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self171142%_
                                                   __tmp172975)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp172974
                                          gx#current-expander-context
                                          _%ctx171194%_))))
                                   _%tl171154171177%_
                                   _%hd171153171175%_)))
                              (_%g171145171159%_ _%g171146171162%_))))
                      (_%g171145171159%_ _%g171146171162%_)))))
          (_%g171144171197%_ _%stx171143%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls171096171098%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls171096171098%_
              (let ((_%decls171100%_ _%decls171096171098%_))
                (let _%lp171102%_ ((_%rest171104%_ _%decls171100%_))
                  (let* ((_%rest171105171113%_ _%rest171104%_)
                         (_%else171107171121%_ (lambda () '#f))
                         (_%K171109171130%_
                          (lambda (_%decls171124%_ _%decl171125%_)
                            (if (equal? _%decl171125%_ '(not safe))
                                '#t
                                (if (equal? _%decl171125%_ '(safe))
                                    '#f
                                    (_%lp171102%_ _%decls171124%_))))))
                    (if (pair? _%rest171105171113%_)
                        (let ((_%hd171110171133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest171105171113%_)))
                              (_%tl171111171135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest171105171113%_))))
                          (let* ((_%decl171138%_ _%hd171110171133%_)
                                 (_%decls171140%_ _%tl171111171135%_))
                            (_%K171109171130%_
                             _%decls171140%_
                             _%decl171138%_)))
                        (_%else171107171121%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id171090%_ _%syntax?171091%_)
        (let ((_%eid171093%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id171090%_))
                '1
                gx#binding::t
                '#f))
              (_%ht171094%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid171093%_))
              '#!void
              (let ((__tmp172976
                     (let ((__tmp172977
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid171093%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp172977 _%syntax?171091%_))))
                (declare (not safe))
                (hash-put! _%ht171094%_ _%eid171093%_ __tmp172976))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self171087%_ _%stx171088%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self170934%_ _%stx170935%_)
        (letrec ((_%simplify170937%_
                  (lambda (_%body170985%_)
                    (let _%lp170987%_ ((_%rest170989%_ _%body170985%_)
                                       (_%r170990%_ '()))
                      (let* ((_%rest170991170999%_ _%rest170989%_)
                             (_%else170993171007%_
                              (lambda () (reverse _%r170990%_)))
                             (_%K170995171075%_
                              (lambda (_%rest171010%_ _%hd171011%_)
                                (let* ((_%hd171012171028%_ _%hd171011%_)
                                       (_%else171016171036%_
                                        (lambda ()
                                          (_%lp170987%_
                                           _%rest171010%_
                                           (cons _%hd171011%_ _%r170990%_)))))
                                  (let ((_%K171024171065%_
                                         (lambda (_%exprs171063%_)
                                           (_%lp170987%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest171010%_
                                               _%exprs171063%_))
                                            _%r170990%_)))
                                        (_%K171019171049%_
                                         (lambda ()
                                           (if (null? _%rest171010%_)
                                               (_%lp170987%_
                                                _%rest171010%_
                                                (cons _%hd171011%_
                                                      _%r170990%_))
                                               (_%lp170987%_
                                                _%rest171010%_
                                                _%r170990%_))))
                                        (_%K171018171041%_
                                         (lambda ()
                                           (if (null? _%rest171010%_)
                                               (_%lp170987%_
                                                _%rest171010%_
                                                (cons _%hd171011%_
                                                      _%r170990%_))
                                               (_%lp170987%_
                                                _%rest171010%_
                                                _%r170990%_)))))
                                    (let ((_%try-match171015171044%_
                                           (lambda ()
                                             (if (symbol? _%hd171012171028%_)
                                                 (_%K171018171041%_)
                                                 (_%else171016171036%_)))))
                                      (if (pair? _%hd171012171028%_)
                                          (let ((_%tl171026171070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd171012171028%_)))
                                                (_%hd171025171068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd171012171028%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd171025171068%_
                                                         'begin))
                                                (let ((_%exprs171073%_
                                                       _%tl171026171070%_))
                                                  (_%K171024171065%_
                                                   _%exprs171073%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd171025171068%_
                                                             'quote))
                                                    (if (pair? _%tl171026171070%_)
                                                        (let ((_%tl171023171057%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl171026171070%_))))
                  (if (null? _%tl171023171057%_)
                      (_%K171019171049%_)
                      (_%try-match171015171044%_)))
                (_%try-match171015171044%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match171015171044%_))))
                                          (_%try-match171015171044%_))))))))
                        (if (pair? _%rest170991170999%_)
                            (let ((_%hd170996171078%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest170991170999%_)))
                                  (_%tl170997171080%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest170991170999%_))))
                              (let* ((_%hd171083%_ _%hd170996171078%_)
                                     (_%rest171085%_ _%tl170997171080%_))
                                (_%K170995171075%_
                                 _%rest171085%_
                                 _%hd171083%_)))
                            (_%else170993171007%_)))))))
          (let* ((_%g170939170949%_
                  (lambda (_%g170940170946%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g170940170946%_))))
                 (_%g170938170982%_
                  (lambda (_%g170940170952%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g170940170952%_))
                        (let ((_%e170942170954%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g170940170952%_))))
                          (let ((_%hd170943170957%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e170942170954%_)))
                                (_%tl170944170959%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e170942170954%_))))
                            ((lambda (_%g170941170962%_)
                               (let* ((_%body170977%_
                                       (map (lambda (_%g170972170974%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self170934%_
                                                 _%g170972170974%_)))
                                            _%g170941170962%_))
                                      (_%body170979%_
                                       (_%simplify170937%_ _%body170977%_)))
                                 (if (let ((__tmp172978
                                            (length _%body170979%_)))
                                       (declare (not safe))
                                       (##fx= __tmp172978 '1))
                                     (car _%body170979%_)
                                     (cons 'begin _%body170979%_))))
                             _%tl170944170959%_)))
                        (_%g170939170949%_ _%g170940170952%_)))))
            (_%g170938170982%_ _%stx170935%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self170895%_ _%stx170896%_)
        (let* ((_%g170898170908%_
                (lambda (_%g170899170905%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170899170905%_))))
               (_%g170897170931%_
                (lambda (_%g170899170911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170899170911%_))
                      (let ((_%e170901170913%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170899170911%_))))
                        (let ((_%hd170902170916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170901170913%_)))
                              (_%tl170903170918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170901170913%_))))
                          ((lambda (_%g170900170921%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g170900170921%_))))
                           _%tl170903170918%_)))
                      (_%g170898170908%_ _%g170899170911%_)))))
          (_%g170897170931%_ _%stx170896%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self170661%_ _%stx170662%_)
        (let* ((_%__stx171568171569%_ _%stx170662%_)
               (_%g170666170718%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx171568171569%_)))))
          (let ((_%__kont171570171571%_
                 (lambda (_%g170668170877%_ _%g170669170878%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self170661%_ _%g170668170877%_))))
                (_%__kont171572171573%_
                 (lambda (_%g170679170825%_
                          _%g170680170826%_
                          _%g170681170827%_)
                   (if (let ((__tmp172979
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g170681170827%_))))
                         (declare (not safe))
                         (##memq __tmp172979 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self170661%_
                          _%g170679170825%_)))))
                (_%__kont171576171577%_
                 (lambda (_%g170703170747%_ _%g170704170748%_)
                   (let ((_%decls170763%_
                          (map gx#syntax->datum _%g170704170748%_)))
                     (let ((__tmp172982
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls170763%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self170661%_
                                                   _%g170703170747%_))
                                                '())))))
                           (__tmp172980
                            (let ((__tmp172981
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp172981 _%decls170763%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp172982
                        gxc#current-compile-decls
                        __tmp172980))))))
            (let* ((_%__match171623171624%_
                    (lambda (_%e170682170771%_
                             _%hd170683170774%_
                             _%tl170684170776%_
                             _%e170685170779%_
                             _%hd170686170782%_
                             _%tl170687170784%_
                             _%e170688170787%_
                             _%hd170689170790%_
                             _%tl170690170792%_
                             _%__splice171574171575%_
                             _%target170691170795%_
                             _%tl170693170797%_)
                      (letrec ((_%loop170694170800%_
                                (lambda (_%hd170692170803%_
                                         _%param170698170805%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170692170803%_))
                                      (let ((_%e170695170807%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170692170803%_))))
                                        (let ((_%lp-tl170697170812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170695170807%_)))
                                              (_%lp-hd170696170810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170695170807%_))))
                                          (_%loop170694170800%_
                                           _%lp-tl170697170812%_
                                           (cons _%lp-hd170696170810%_
                                                 _%param170698170805%_))))
                                      (let ((_%param170699170815%_
                                             (reverse _%param170698170805%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl170687170784%_))
                                            (let ((_%e170700170817%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl170687170784%_))))
                                              (let ((_%tl170702170822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e170700170817%_)))
                                                    (_%hd170701170820%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e170700170817%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl170702170822%_))
                                                    (let ((_%g170679170825%_
                                                           _%hd170701170820%_)
                                                          (_%g170680170826%_
                                                           _%param170699170815%_)
                                                          (_%g170681170827%_
                                                           _%hd170689170790%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g170681170827%_))
                       (not (let ((__tmp172983
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g170681170827%_))))
                              (declare (not safe))
                              (##memq __tmp172983 gxc#gambit-annotations))))
                  (_%__kont171572171573%_
                   _%g170679170825%_
                   _%g170680170826%_
                   _%g170681170827%_)
                  (_%__kont171576171577%_
                   _%hd170701170820%_
                   _%hd170686170782%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g170666170718%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g170666170718%_))))))))
                        (_%loop170694170800%_ _%target170691170795%_ '()))))
                   (_%__match171597171598%_
                    (lambda (_%e170670170853%_
                             _%hd170671170856%_
                             _%tl170672170858%_
                             _%e170673170861%_
                             _%hd170674170864%_
                             _%tl170675170866%_
                             _%e170676170869%_
                             _%hd170677170872%_
                             _%tl170678170874%_)
                      (let ((_%g170668170877%_ _%hd170677170872%_)
                            (_%g170669170878%_ _%hd170674170864%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g170669170878%_))
                            (_%__kont171570171571%_
                             _%g170668170877%_
                             _%g170669170878%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd170674170864%_))
                                (let ((_%e170688170787%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd170674170864%_))))
                                  (let ((_%tl170690170792%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e170688170787%_)))
                                        (_%hd170689170790%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e170688170787%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl170690170792%_))
                                        (let ((_%__splice171574171575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl170690170792%_
                                                  '0))))
                                          (let ((_%tl170693170797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171574171575%_
                                                    '1)))
                                                (_%target170691170795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice171574171575%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl170693170797%_))
                                                (_%__match171623171624%_
                                                 _%e170670170853%_
                                                 _%hd170671170856%_
                                                 _%tl170672170858%_
                                                 _%e170673170861%_
                                                 _%hd170674170864%_
                                                 _%tl170675170866%_
                                                 _%e170688170787%_
                                                 _%hd170689170790%_
                                                 _%tl170690170792%_
                                                 _%__splice171574171575%_
                                                 _%target170691170795%_
                                                 _%tl170693170797%_)
                                                (_%__kont171576171577%_
                                                 _%hd170677170872%_
                                                 _%hd170674170864%_))))
                                        (_%__kont171576171577%_
                                         _%hd170677170872%_
                                         _%hd170674170864%_))))
                                (_%__kont171576171577%_
                                 _%hd170677170872%_
                                 _%hd170674170864%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx171568171569%_))
                  (let ((_%e170670170853%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx171568171569%_))))
                    (let ((_%tl170672170858%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e170670170853%_)))
                          (_%hd170671170856%_
                           (let ()
                             (declare (not safe))
                             (##car _%e170670170853%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl170672170858%_))
                          (let ((_%e170673170861%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl170672170858%_))))
                            (let ((_%tl170675170866%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e170673170861%_)))
                                  (_%hd170674170864%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e170673170861%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl170675170866%_))
                                  (let ((_%e170676170869%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl170675170866%_))))
                                    (let ((_%tl170678170874%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e170676170869%_)))
                                          (_%hd170677170872%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e170676170869%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl170678170874%_))
                                          (_%__match171597171598%_
                                           _%e170670170853%_
                                           _%hd170671170856%_
                                           _%tl170672170858%_
                                           _%e170673170861%_
                                           _%hd170674170864%_
                                           _%tl170675170866%_
                                           _%e170676170869%_
                                           _%hd170677170872%_
                                           _%tl170678170874%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd170674170864%_))
                                              (let ((_%e170688170787%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd170674170864%_))))
                                                (let ((_%tl170690170792%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e170688170787%_)))
                                                      (_%hd170689170790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e170688170787%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl170690170792%_))
                                                      (let ((_%__splice171574171575%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl170690170792%_
                        '0))))
                (let ((_%tl170693170797%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171574171575%_ '1)))
                      (_%target170691170795%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice171574171575%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl170693170797%_))
                      (_%__match171623171624%_
                       _%e170670170853%_
                       _%hd170671170856%_
                       _%tl170672170858%_
                       _%e170673170861%_
                       _%hd170674170864%_
                       _%tl170675170866%_
                       _%e170688170787%_
                       _%hd170689170790%_
                       _%tl170690170792%_
                       _%__splice171574171575%_
                       _%target170691170795%_
                       _%tl170693170797%_)
                      (let () (declare (not safe)) (_%g170666170718%_)))))
              (let () (declare (not safe)) (_%g170666170718%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g170666170718%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd170674170864%_))
                                      (let ((_%e170688170787%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd170674170864%_))))
                                        (let ((_%tl170690170792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170688170787%_)))
                                              (_%hd170689170790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170688170787%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl170690170792%_))
                                              (let ((_%__splice171574171575%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl170690170792%_
                                                        '0))))
                                                (let ((_%tl170693170797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171574171575%_
                                                          '1)))
                                                      (_%target170691170795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice171574171575%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl170693170797%_))
                                                      (_%__match171623171624%_
                                                       _%e170670170853%_
                                                       _%hd170671170856%_
                                                       _%tl170672170858%_
                                                       _%e170673170861%_
                                                       _%hd170674170864%_
                                                       _%tl170675170866%_
                                                       _%e170688170787%_
                                                       _%hd170689170790%_
                                                       _%tl170690170792%_
                                                       _%__splice171574171575%_
                                                       _%target170691170795%_
                                                       _%tl170693170797%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g170666170718%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g170666170718%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g170666170718%_))))))
                          (let () (declare (not safe)) (_%g170666170718%_)))))
                  (let () (declare (not safe)) (_%g170666170718%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self170620%_ _%stx170621%_)
        (let* ((_%g170623170633%_
                (lambda (_%g170624170630%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170624170630%_))))
               (_%g170622170658%_
                (lambda (_%g170624170636%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170624170636%_))
                      (let ((_%e170626170638%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170624170636%_))))
                        (let ((_%hd170627170641%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170626170638%_)))
                              (_%tl170628170643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170626170638%_))))
                          ((lambda (_%g170625170646%_)
                             (let ((_%decls170656%_
                                    (map gx#syntax->datum _%g170625170646%_)))
                               (let ((__tmp172984
                                      (let ((__tmp172985
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp172985
                                         _%decls170656%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp172984))
                               (cons 'declare _%decls170656%_)))
                           _%tl170628170643%_)))
                      (_%g170623170633%_ _%g170624170636%_)))))
          (_%g170622170658%_ _%stx170621%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self170367%_ _%stx170368%_)
        (let* ((_%g170370170387%_
                (lambda (_%g170371170384%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170371170384%_))))
               (_%g170369170617%_
                (lambda (_%g170371170390%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170371170390%_))
                      (let ((_%e170374170392%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170371170390%_))))
                        (let ((_%hd170375170395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170374170392%_)))
                              (_%tl170376170397%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170374170392%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170376170397%_))
                              (let ((_%e170377170400%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170376170397%_))))
                                (let ((_%hd170378170403%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170377170400%_)))
                                      (_%tl170379170405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170377170400%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170379170405%_))
                                      (let ((_%e170380170408%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170379170405%_))))
                                        (let ((_%hd170381170411%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170380170408%_)))
                                              (_%tl170382170413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170380170408%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170382170413%_))
                                              ((lambda (_%g170372170416%_
                                                        _%g170373170417%_)
                                                 (let* ((_%__stx171676171677%_
                                                         _%g170373170417%_)
                                                        (_%g170434170448%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx171676171677%_)))))
                                                   (let ((_%__kont171678171679%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self170367%_
                                                               _%g170372170416%_))))
                                                         (_%__kont171680171681%_
                                                          (lambda (_%g170440170580%_)
                                                            (let ((_%eid170589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g170440170580%_))))
                      (let ((_%lambda-expr170590170592%_
                             (gxc#apply-find-lambda-expression
                              _%g170372170416%_)))
                        (if _%lambda-expr170590170592%_
                            (let* ((_%lambda-expr170594%_
                                    _%lambda-expr170590170592%_)
                                   (__tmp172986
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp172986
                               _%lambda-expr170594%_
                               _%eid170589%_))
                            '#f))
                      (cons 'define
                            (cons _%eid170589%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self170367%_
                                           _%g170372170416%_))
                                        '()))))))
                 (_%__kont171682171683%_
                  (lambda ()
                    (let* ((_%tmp170455%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body170564%_
                            (let _%lp170457%_ ((_%rest170459%_
                                                _%g170373170417%_)
                                               (_%k170460%_ '0)
                                               (_%r170461%_ '()))
                              (let* ((_%__stx171646171647%_ _%rest170459%_)
                                     (_%g170466170483%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx171646171647%_)))))
                                (let ((_%__kont171648171649%_
                                       (lambda (_%g170468170551%_)
                                         (_%lp170457%_
                                          _%g170468170551%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170460%_ '1))
                                          _%r170461%_)))
                                      (_%__kont171650171651%_
                                       (lambda (_%g170473170524%_
                                                _%g170474170525%_)
                                         (_%lp170457%_
                                          _%g170473170524%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k170460%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g170474170525%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp170455%_
                           _%k170460%_
                           _%g170473170524%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r170461%_))))
                                      (_%__kont171652171653%_
                                       (lambda (_%g170478170495%_)
                                         (let ((__tmp172987
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g170478170495%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp170455%_
                                 _%k170460%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp172987
                                            _%r170461%_))))
                                      (_%__kont171654171655%_
                                       (lambda () (reverse _%r170461%_))))
                                  (let ((_%g170464170511%_
                                         (lambda ()
                                           (let ((_%g170478170495%_
                                                  _%__stx171646171647%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g170478170495%_))
                                                 (_%__kont171652171653%_
                                                  _%g170478170495%_)
                                                 (_%__kont171654171655%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx171646171647%_))
                                        (let ((_%e170469170540%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx171646171647%_))))
                                          (let ((_%tl170471170545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e170469170540%_)))
                                                (_%hd170470170543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e170469170540%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd170470170543%_))
                                                (let ((_%e170472170548%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd170470170543%_))))
                                                  (if (equal? _%e170472170548%_
                                                              '#f)
                                                      (_%__kont171648171649%_
                                                       _%tl170471170545%_)
                                                      (_%__kont171650171651%_
                                                       _%tl170471170545%_
                                                       _%hd170470170543%_)))
                                                (_%__kont171650171651%_
                                                 _%tl170471170545%_
                                                 _%hd170470170543%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g170464170511%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp170455%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self170367%_
                                                       _%g170372170416%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp170455%_
                                         _%g170373170417%_
                                         _%g170372170416%_)
                                        _%body170564%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx171676171677%_))
                                                         (let ((_%e170436170601%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx171676171677%_))))
                   (let ((_%tl170438170606%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e170436170601%_)))
                         (_%hd170437170604%_
                          (let ()
                            (declare (not safe))
                            (##car _%e170436170601%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd170437170604%_))
                         (let ((_%e170439170609%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd170437170604%_))))
                           (if (equal? _%e170439170609%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170438170606%_))
                                   (_%__kont171678171679%_)
                                   (_%__kont171682171683%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl170438170606%_))
                                   (_%__kont171680171681%_ _%hd170437170604%_)
                                   (_%__kont171682171683%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl170438170606%_))
                             (_%__kont171680171681%_ _%hd170437170604%_)
                             (_%__kont171682171683%_)))))
                 (_%__kont171682171683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd170381170411%_
                                               _%hd170378170403%_)
                                              (_%g170370170387%_
                                               _%g170371170390%_))))
                                      (_%g170370170387%_ _%g170371170390%_))))
                              (_%g170370170387%_ _%g170371170390%_))))
                      (_%g170370170387%_ _%g170371170390%_)))))
          (_%g170369170617%_ _%stx170368%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals170342%_ _%hd170343%_ _%expr170344%_)
        (let ((_%$e170346%_ (gxc#apply-count-values _%expr170344%_)))
          (if _%$e170346%_
              ((lambda (_%count170349%_)
                 (let ((_%len170351%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd170343%_)))
                       (_%cmp170352%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd170343%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len170351%_ '0))
                           (_%cmp170352%_ _%count170349%_ _%len170351%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr170344%_
                          _%hd170343%_)))))
               _%$e170346%_)
              (let* ((_%len170358%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd170343%_)))
                     (_%cmp170360%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd170343%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg170362%_
                      (let ((__tmp172989
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd170343%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp172988 (number->string _%len170358%_)))
                        (declare (not safe))
                        (##string-append __tmp172989 __tmp172988 '" values")))
                     (_%count170364%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd170343%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len170358%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count170364%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals170342%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp170360%_
                                (cons _%count170364%_
                                      (cons _%len170358%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp170360%_
                                                        (cons _%count170364%_
                                                              (cons _%len170358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg170362%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count170364%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var170337%_)
        (letrec ((_%generate-inline170339%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var170337%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var170337%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170339%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170339%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var170330%_ _%i170331%_ _%rest170332%_)
        (letrec ((_%generate-inline170334%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i170331%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest170332%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var170330%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var170330%_
                                                      (cons '0 '())))
                                          (cons _%var170330%_ '()))))
                        (cons '##values-ref
                              (cons _%var170330%_ (cons _%i170331%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline170334%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline170334%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var170324%_ _%i170325%_)
        (if (let () (declare (not safe)) (##fx= _%i170325%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var170324%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var170324%_ '()))
                                  (cons (cons 'list (cons _%var170324%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var170324%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var170324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var170324%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i170325%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var170324%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var170324%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var170324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var170324%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var170324%_ '()))
                                (cons _%i170325%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var170324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i170325%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self170256%_ _%stx170257%_)
        (let* ((_%g170259170276%_
                (lambda (_%g170260170273%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g170260170273%_))))
               (_%g170258170321%_
                (lambda (_%g170260170279%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g170260170279%_))
                      (let ((_%e170263170281%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g170260170279%_))))
                        (let ((_%hd170264170284%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e170263170281%_)))
                              (_%tl170265170286%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e170263170281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl170265170286%_))
                              (let ((_%e170266170289%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl170265170286%_))))
                                (let ((_%hd170267170292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e170266170289%_)))
                                      (_%tl170268170294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e170266170289%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl170268170294%_))
                                      (let ((_%e170269170297%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl170268170294%_))))
                                        (let ((_%hd170270170300%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e170269170297%_)))
                                              (_%tl170271170302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e170269170297%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl170271170302%_))
                                              ((lambda (_%g170261170305%_
                                                        _%g170262170306%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self170256%_
                                                  _%g170262170306%_
                                                  _%g170261170305%_))
                                               _%hd170270170300%_
                                               _%hd170267170292%_)
                                              (_%g170259170276%_
                                               _%g170260170279%_))))
                                      (_%g170259170276%_ _%g170260170279%_))))
                              (_%g170259170276%_ _%g170260170279%_))))
                      (_%g170259170276%_ _%g170260170279%_)))))
          (_%g170258170321%_ _%stx170257%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self170215%_ _%hd170216%_ _%body170217%_)
        (let* ((_%hd170219%_ (gxc#generate-runtime-lambda-head _%hd170216%_))
               (_%body170221%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self170215%_ _%body170217%_)))
               (_%body170253%_
                (let* ((_%body170222170230%_ _%body170221%_)
                       (_%else170224170238%_
                        (lambda () (cons _%body170221%_ '())))
                       (_%K170226170243%_
                        (lambda (_%exprs170241%_) _%exprs170241%_)))
                  (if (pair? _%body170222170230%_)
                      (let ((_%hd170227170246%_
                             (let ()
                               (declare (not safe))
                               (##car _%body170222170230%_)))
                            (_%tl170228170248%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body170222170230%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd170227170246%_ 'begin))
                            (let ((_%exprs170251%_ _%tl170228170248%_))
                              (_%K170226170243%_ _%exprs170251%_))
                            (_%else170224170238%_)))
                      (_%else170224170238%_)))))
          (cons 'lambda (cons _%hd170219%_ _%body170253%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd170213%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd170213%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self168770%_ _%stx168771%_)
        (letrec ((_%dispatch-case?168773%_
                  (lambda (_%hd169451%_ _%body169452%_)
                    (let* ((_%form169454%_
                            (cons _%hd169451%_ (cons _%body169452%_ '())))
                           (_%__stx171708171709%_ _%form169454%_)
                           (_%g169459169616%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171708171709%_)))))
                      (let ((_%__kont171710171711%_
                             (lambda (_%g169461170133%_
                                      _%g169462170134%_
                                      _%g169463170135%_)
                               '#t))
                            (_%__kont171716171717%_
                             (lambda (_%g169506169925%_
                                      _%g169507169926%_
                                      _%g169508169927%_
                                      _%g169509169928%_
                                      _%g169510169929%_
                                      _%g169511169930%_)
                               '#t))
                            (_%__kont171722171723%_
                             (lambda (_%g169572169724%_
                                      _%g169573169725%_
                                      _%g169574169726%_
                                      _%g169575169727%_)
                               '#t))
                            (_%__kont171724171725%_ (lambda () '#f)))
                        (let* ((_%__match171849171850%_
                                (lambda (_%e169576169628%_
                                         _%hd169577169631%_
                                         _%tl169578169633%_
                                         _%e169579169636%_
                                         _%hd169580169639%_
                                         _%tl169581169641%_
                                         _%e169582169644%_
                                         _%hd169583169647%_
                                         _%tl169584169649%_
                                         _%e169585169652%_
                                         _%hd169586169655%_
                                         _%tl169587169657%_
                                         _%e169588169660%_
                                         _%hd169589169663%_
                                         _%tl169590169665%_
                                         _%e169591169668%_
                                         _%hd169592169671%_
                                         _%tl169593169673%_
                                         _%e169594169676%_
                                         _%hd169595169679%_
                                         _%tl169596169681%_
                                         _%e169597169684%_
                                         _%hd169598169687%_
                                         _%tl169599169689%_
                                         _%e169600169692%_
                                         _%hd169601169695%_
                                         _%tl169602169697%_
                                         _%e169603169700%_
                                         _%hd169604169703%_
                                         _%tl169605169705%_
                                         _%e169606169708%_
                                         _%hd169607169711%_
                                         _%tl169608169713%_
                                         _%e169609169716%_
                                         _%hd169610169719%_
                                         _%tl169611169721%_)
                                  (let ((_%g169572169724%_ _%hd169610169719%_)
                                        (_%g169573169725%_ _%hd169601169695%_)
                                        (_%g169574169726%_ _%hd169592169671%_)
                                        (_%g169575169727%_ _%hd169577169631%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g169575169727%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g169574169726%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g169575169727%_
                                                _%g169572169724%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g169573169725%_
                                                     _%g169575169727%_))))
                                        (_%__kont171722171723%_
                                         _%g169572169724%_
                                         _%g169573169725%_
                                         _%g169574169726%_
                                         _%g169575169727%_)
                                        (_%__kont171724171725%_)))))
                               (_%__match171821171822%_
                                (lambda (_%e169576169628%_
                                         _%hd169577169631%_
                                         _%tl169578169633%_
                                         _%e169579169636%_
                                         _%hd169580169639%_
                                         _%tl169581169641%_
                                         _%e169582169644%_
                                         _%hd169583169647%_
                                         _%tl169584169649%_
                                         _%e169585169652%_
                                         _%hd169586169655%_
                                         _%tl169587169657%_
                                         _%e169588169660%_
                                         _%hd169589169663%_
                                         _%tl169590169665%_
                                         _%e169591169668%_
                                         _%hd169592169671%_
                                         _%tl169593169673%_
                                         _%e169594169676%_
                                         _%hd169595169679%_
                                         _%tl169596169681%_
                                         _%e169597169684%_
                                         _%hd169598169687%_
                                         _%tl169599169689%_
                                         _%e169600169692%_
                                         _%hd169601169695%_
                                         _%tl169602169697%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169596169681%_))
                                      (let ((_%e169603169700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169596169681%_))))
                                        (let ((_%tl169605169705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169603169700%_)))
                                              (_%hd169604169703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169603169700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd169604169703%_))
                                              (let ((_%e169606169708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd169604169703%_))))
                                                (let ((_%tl169608169713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169606169708%_)))
                                                      (_%hd169607169711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169606169708%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd169607169711%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd169607169711%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169608169713%_))
                      (let ((_%e169609169716%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169608169713%_))))
                        (let ((_%tl169611169721%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169609169716%_)))
                              (_%hd169610169719%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169609169716%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169611169721%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl169605169705%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl169581169641%_))
                                      (_%__match171849171850%_
                                       _%e169576169628%_
                                       _%hd169577169631%_
                                       _%tl169578169633%_
                                       _%e169579169636%_
                                       _%hd169580169639%_
                                       _%tl169581169641%_
                                       _%e169582169644%_
                                       _%hd169583169647%_
                                       _%tl169584169649%_
                                       _%e169585169652%_
                                       _%hd169586169655%_
                                       _%tl169587169657%_
                                       _%e169588169660%_
                                       _%hd169589169663%_
                                       _%tl169590169665%_
                                       _%e169591169668%_
                                       _%hd169592169671%_
                                       _%tl169593169673%_
                                       _%e169594169676%_
                                       _%hd169595169679%_
                                       _%tl169596169681%_
                                       _%e169597169684%_
                                       _%hd169598169687%_
                                       _%tl169599169689%_
                                       _%e169600169692%_
                                       _%hd169601169695%_
                                       _%tl169602169697%_
                                       _%e169603169700%_
                                       _%hd169604169703%_
                                       _%tl169605169705%_
                                       _%e169606169708%_
                                       _%hd169607169711%_
                                       _%tl169608169713%_
                                       _%e169609169716%_
                                       _%hd169610169719%_
                                       _%tl169611169721%_)
                                      (_%__kont171724171725%_))
                                  (_%__kont171724171725%_))
                              (_%__kont171724171725%_))))
                      (_%__kont171724171725%_))
                  (_%__kont171724171725%_))
              (_%__kont171724171725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171724171725%_))))
                                      (_%__kont171724171725%_))))
                               (_%__match171751171752%_
                                (lambda (_%e169512169769%_
                                         _%hd169513169772%_
                                         _%tl169514169774%_
                                         _%__splice171718171719%_
                                         _%target169515169777%_
                                         _%tl169517169779%_)
                                  (letrec ((_%loop169518169782%_
                                            (lambda (_%hd169516169785%_
                                                     _%arg169522169787%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169516169785%_))
                                                  (let ((_%e169519169789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169516169785%_))))
                                                    (let ((_%lp-tl169521169794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169519169789%_)))
                                                          (_%lp-hd169520169792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169519169789%_))))
                                                      (_%loop169518169782%_
                                                       _%lp-tl169521169794%_
                                                       (cons _%lp-hd169520169792%_
                                                             _%arg169522169787%_))))
                                                  (let ((_%arg169523169797%_
                                                         (reverse _%arg169522169787%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169514169774%_))
                                                        (let ((_%e169524169799%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169514169774%_))))
                  (let ((_%tl169526169804%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169524169799%_)))
                        (_%hd169525169802%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169524169799%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169525169802%_))
                        (let ((_%e169527169807%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169525169802%_))))
                          (let ((_%tl169529169812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169527169807%_)))
                                (_%hd169528169810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169527169807%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169528169810%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169528169810%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169529169812%_))
                                        (let ((_%e169530169815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169529169812%_))))
                                          (let ((_%tl169532169820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169530169815%_)))
                                                (_%hd169531169818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169530169815%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169531169818%_))
                                                (let ((_%e169533169823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169531169818%_))))
                                                  (let ((_%tl169535169828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169533169823%_)))
                                                        (_%hd169534169826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169533169823%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169534169826%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169534169826%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169535169828%_))
                        (let ((_%e169536169831%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169535169828%_))))
                          (let ((_%tl169538169836%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169536169831%_)))
                                (_%hd169537169834%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169536169831%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169538169836%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl169532169820%_))
                                    (let ((_%e169539169839%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl169532169820%_))))
                                      (let ((_%tl169541169844%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169539169839%_)))
                                            (_%hd169540169842%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169539169839%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169540169842%_))
                                            (let ((_%e169542169847%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169540169842%_))))
                                              (let ((_%tl169544169852%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169542169847%_)))
                                                    (_%hd169543169850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169542169847%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169543169850%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169543169850%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169544169852%_))
                                                            (let ((_%e169545169855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169544169852%_))))
                      (let ((_%tl169547169860%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169545169855%_)))
                            (_%hd169546169858%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169545169855%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169547169860%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl169541169844%_))
                                (if (let ((__tmp172990
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl169541169844%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp172990 '1))
                                    (let ((_%__splice171720171721%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169541169844%_
                                              '1))))
                                      (let ((_%tl169550169865%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171720171721%_
                                                '1)))
                                            (_%target169548169863%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171720171721%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169550169865%_))
                                            (let ((_%e169557169868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169550169865%_))))
                                              (let ((_%tl169559169873%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169557169868%_)))
                                                    (_%hd169558169871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169557169868%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd169558169871%_))
                                                    (let ((_%e169560169876%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd169558169871%_))))
                                                      (let ((_%tl169562169881%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e169560169876%_)))
                    (_%hd169561169879%_
                     (let () (declare (not safe)) (##car _%e169560169876%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd169561169879%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd169561169879%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl169562169881%_))
                            (let ((_%e169563169884%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl169562169881%_))))
                              (let ((_%tl169565169889%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169563169884%_)))
                                    (_%hd169564169887%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169563169884%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl169565169889%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl169559169873%_))
                                        (letrec ((_%loop169551169892%_
                                                  (lambda (_%hd169549169895%_
                                                           _%xarg169555169897%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd169549169895%_))
                                                        (let ((_%e169552169899%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd169549169895%_))))
                  (let ((_%lp-tl169554169904%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169552169899%_)))
                        (_%lp-hd169553169902%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169552169899%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd169553169902%_))
                        (let ((_%e169566169907%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd169553169902%_))))
                          (let ((_%tl169568169912%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169566169907%_)))
                                (_%hd169567169910%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169566169907%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169567169910%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd169567169910%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169568169912%_))
                                        (let ((_%e169569169915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169568169912%_))))
                                          (let ((_%tl169571169920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169569169915%_)))
                                                (_%hd169570169918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169569169915%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl169571169920%_))
                                                (_%loop169551169892%_
                                                 _%lp-tl169554169904%_
                                                 (cons _%hd169570169918%_
                                                       _%xarg169555169897%_))
                                                (_%__match171821171822%_
                                                 _%e169512169769%_
                                                 _%hd169513169772%_
                                                 _%tl169514169774%_
                                                 _%e169524169799%_
                                                 _%hd169525169802%_
                                                 _%tl169526169804%_
                                                 _%e169527169807%_
                                                 _%hd169528169810%_
                                                 _%tl169529169812%_
                                                 _%e169530169815%_
                                                 _%hd169531169818%_
                                                 _%tl169532169820%_
                                                 _%e169533169823%_
                                                 _%hd169534169826%_
                                                 _%tl169535169828%_
                                                 _%e169536169831%_
                                                 _%hd169537169834%_
                                                 _%tl169538169836%_
                                                 _%e169539169839%_
                                                 _%hd169540169842%_
                                                 _%tl169541169844%_
                                                 _%e169542169847%_
                                                 _%hd169543169850%_
                                                 _%tl169544169852%_
                                                 _%e169545169855%_
                                                 _%hd169546169858%_
                                                 _%tl169547169860%_))))
                                        (_%__match171821171822%_
                                         _%e169512169769%_
                                         _%hd169513169772%_
                                         _%tl169514169774%_
                                         _%e169524169799%_
                                         _%hd169525169802%_
                                         _%tl169526169804%_
                                         _%e169527169807%_
                                         _%hd169528169810%_
                                         _%tl169529169812%_
                                         _%e169530169815%_
                                         _%hd169531169818%_
                                         _%tl169532169820%_
                                         _%e169533169823%_
                                         _%hd169534169826%_
                                         _%tl169535169828%_
                                         _%e169536169831%_
                                         _%hd169537169834%_
                                         _%tl169538169836%_
                                         _%e169539169839%_
                                         _%hd169540169842%_
                                         _%tl169541169844%_
                                         _%e169542169847%_
                                         _%hd169543169850%_
                                         _%tl169544169852%_
                                         _%e169545169855%_
                                         _%hd169546169858%_
                                         _%tl169547169860%_))
                                    (_%__match171821171822%_
                                     _%e169512169769%_
                                     _%hd169513169772%_
                                     _%tl169514169774%_
                                     _%e169524169799%_
                                     _%hd169525169802%_
                                     _%tl169526169804%_
                                     _%e169527169807%_
                                     _%hd169528169810%_
                                     _%tl169529169812%_
                                     _%e169530169815%_
                                     _%hd169531169818%_
                                     _%tl169532169820%_
                                     _%e169533169823%_
                                     _%hd169534169826%_
                                     _%tl169535169828%_
                                     _%e169536169831%_
                                     _%hd169537169834%_
                                     _%tl169538169836%_
                                     _%e169539169839%_
                                     _%hd169540169842%_
                                     _%tl169541169844%_
                                     _%e169542169847%_
                                     _%hd169543169850%_
                                     _%tl169544169852%_
                                     _%e169545169855%_
                                     _%hd169546169858%_
                                     _%tl169547169860%_))
                                (_%__match171821171822%_
                                 _%e169512169769%_
                                 _%hd169513169772%_
                                 _%tl169514169774%_
                                 _%e169524169799%_
                                 _%hd169525169802%_
                                 _%tl169526169804%_
                                 _%e169527169807%_
                                 _%hd169528169810%_
                                 _%tl169529169812%_
                                 _%e169530169815%_
                                 _%hd169531169818%_
                                 _%tl169532169820%_
                                 _%e169533169823%_
                                 _%hd169534169826%_
                                 _%tl169535169828%_
                                 _%e169536169831%_
                                 _%hd169537169834%_
                                 _%tl169538169836%_
                                 _%e169539169839%_
                                 _%hd169540169842%_
                                 _%tl169541169844%_
                                 _%e169542169847%_
                                 _%hd169543169850%_
                                 _%tl169544169852%_
                                 _%e169545169855%_
                                 _%hd169546169858%_
                                 _%tl169547169860%_))))
                        (_%__match171821171822%_
                         _%e169512169769%_
                         _%hd169513169772%_
                         _%tl169514169774%_
                         _%e169524169799%_
                         _%hd169525169802%_
                         _%tl169526169804%_
                         _%e169527169807%_
                         _%hd169528169810%_
                         _%tl169529169812%_
                         _%e169530169815%_
                         _%hd169531169818%_
                         _%tl169532169820%_
                         _%e169533169823%_
                         _%hd169534169826%_
                         _%tl169535169828%_
                         _%e169536169831%_
                         _%hd169537169834%_
                         _%tl169538169836%_
                         _%e169539169839%_
                         _%hd169540169842%_
                         _%tl169541169844%_
                         _%e169542169847%_
                         _%hd169543169850%_
                         _%tl169544169852%_
                         _%e169545169855%_
                         _%hd169546169858%_
                         _%tl169547169860%_))))
                (let ((_%xarg169556169923%_ (reverse _%xarg169555169897%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl169526169804%_))
                      (let ((_%g169506169925%_ _%hd169564169887%_)
                            (_%g169507169926%_ _%xarg169556169923%_)
                            (_%g169508169927%_ _%hd169546169858%_)
                            (_%g169509169928%_ _%hd169537169834%_)
                            (_%g169510169929%_ _%tl169517169779%_)
                            (_%g169511169930%_ _%arg169523169797%_))
                        (if (and (let ((__tmp172991
                                        (let ((__tmp172992
                                               (lambda (_%g169973169976%_
                                                        _%g169974169978%_)
                                                 (cons _%g169973169976%_
                                                       _%g169974169978%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172992
                                           '()
                                           _%g169511169930%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp172991))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g169510169929%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g169509169928%_
                                    'apply))
                                 (let ((__tmp172995
                                        (length (let ((__tmp172996
                                                       (lambda (_%g169980169983%_
                                                                _%g169981169985%_)
                                                         (cons _%g169980169983%_
                                                               _%g169981169985%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172996
                                                   '()
                                                   _%g169511169930%_))))
                                       (__tmp172993
                                        (length (let ((__tmp172994
                                                       (lambda (_%g169987169990%_
                                                                _%g169988169992%_)
                                                         (cons _%g169987169990%_
                                                               _%g169988169992%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp172994
                                                   '()
                                                   _%g169507169926%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp172995 __tmp172993))
                                 (let ((__tmp172999
                                        (let ((__tmp173000
                                               (lambda (_%g169994169997%_
                                                        _%g169995169999%_)
                                                 (cons _%g169994169997%_
                                                       _%g169995169999%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp173000
                                           '()
                                           _%g169511169930%_)))
                                       (__tmp172997
                                        (let ((__tmp172998
                                               (lambda (_%g170001170004%_
                                                        _%g170002170006%_)
                                                 (cons _%g170001170004%_
                                                       _%g170002170006%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp172998
                                           '()
                                           _%g169507169926%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp172999
                                    __tmp172997))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g169510169929%_
                                    _%g169506169925%_))
                                 (not (let ((__tmp173004
                                             (lambda (_%g170008170010%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g170008170010%_
                                                  _%g169508169927%_))))
                                            (__tmp173001
                                             (let ((__tmp173003
                                                    (lambda (_%g170012170015%_
                                                             _%g170013170017%_)
                                                      (cons _%g170012170015%_
                                                            _%g170013170017%_)))
                                                   (__tmp173002
                                                    (cons _%g169510169929%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173003
                                                __tmp173002
                                                _%g169511169930%_))))
                                        (declare (not safe))
                                        (__find __tmp173004 __tmp173001))))
                            (_%__kont171716171717%_
                             _%g169506169925%_
                             _%g169507169926%_
                             _%g169508169927%_
                             _%g169509169928%_
                             _%g169510169929%_
                             _%g169511169930%_)
                            (_%__match171821171822%_
                             _%e169512169769%_
                             _%hd169513169772%_
                             _%tl169514169774%_
                             _%e169524169799%_
                             _%hd169525169802%_
                             _%tl169526169804%_
                             _%e169527169807%_
                             _%hd169528169810%_
                             _%tl169529169812%_
                             _%e169530169815%_
                             _%hd169531169818%_
                             _%tl169532169820%_
                             _%e169533169823%_
                             _%hd169534169826%_
                             _%tl169535169828%_
                             _%e169536169831%_
                             _%hd169537169834%_
                             _%tl169538169836%_
                             _%e169539169839%_
                             _%hd169540169842%_
                             _%tl169541169844%_
                             _%e169542169847%_
                             _%hd169543169850%_
                             _%tl169544169852%_
                             _%e169545169855%_
                             _%hd169546169858%_
                             _%tl169547169860%_)))
                      (_%__match171821171822%_
                       _%e169512169769%_
                       _%hd169513169772%_
                       _%tl169514169774%_
                       _%e169524169799%_
                       _%hd169525169802%_
                       _%tl169526169804%_
                       _%e169527169807%_
                       _%hd169528169810%_
                       _%tl169529169812%_
                       _%e169530169815%_
                       _%hd169531169818%_
                       _%tl169532169820%_
                       _%e169533169823%_
                       _%hd169534169826%_
                       _%tl169535169828%_
                       _%e169536169831%_
                       _%hd169537169834%_
                       _%tl169538169836%_
                       _%e169539169839%_
                       _%hd169540169842%_
                       _%tl169541169844%_
                       _%e169542169847%_
                       _%hd169543169850%_
                       _%tl169544169852%_
                       _%e169545169855%_
                       _%hd169546169858%_
                       _%tl169547169860%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop169551169892%_
                                           _%target169548169863%_
                                           '()))
                                        (_%__match171821171822%_
                                         _%e169512169769%_
                                         _%hd169513169772%_
                                         _%tl169514169774%_
                                         _%e169524169799%_
                                         _%hd169525169802%_
                                         _%tl169526169804%_
                                         _%e169527169807%_
                                         _%hd169528169810%_
                                         _%tl169529169812%_
                                         _%e169530169815%_
                                         _%hd169531169818%_
                                         _%tl169532169820%_
                                         _%e169533169823%_
                                         _%hd169534169826%_
                                         _%tl169535169828%_
                                         _%e169536169831%_
                                         _%hd169537169834%_
                                         _%tl169538169836%_
                                         _%e169539169839%_
                                         _%hd169540169842%_
                                         _%tl169541169844%_
                                         _%e169542169847%_
                                         _%hd169543169850%_
                                         _%tl169544169852%_
                                         _%e169545169855%_
                                         _%hd169546169858%_
                                         _%tl169547169860%_))
                                    (_%__match171821171822%_
                                     _%e169512169769%_
                                     _%hd169513169772%_
                                     _%tl169514169774%_
                                     _%e169524169799%_
                                     _%hd169525169802%_
                                     _%tl169526169804%_
                                     _%e169527169807%_
                                     _%hd169528169810%_
                                     _%tl169529169812%_
                                     _%e169530169815%_
                                     _%hd169531169818%_
                                     _%tl169532169820%_
                                     _%e169533169823%_
                                     _%hd169534169826%_
                                     _%tl169535169828%_
                                     _%e169536169831%_
                                     _%hd169537169834%_
                                     _%tl169538169836%_
                                     _%e169539169839%_
                                     _%hd169540169842%_
                                     _%tl169541169844%_
                                     _%e169542169847%_
                                     _%hd169543169850%_
                                     _%tl169544169852%_
                                     _%e169545169855%_
                                     _%hd169546169858%_
                                     _%tl169547169860%_))))
                            (_%__match171821171822%_
                             _%e169512169769%_
                             _%hd169513169772%_
                             _%tl169514169774%_
                             _%e169524169799%_
                             _%hd169525169802%_
                             _%tl169526169804%_
                             _%e169527169807%_
                             _%hd169528169810%_
                             _%tl169529169812%_
                             _%e169530169815%_
                             _%hd169531169818%_
                             _%tl169532169820%_
                             _%e169533169823%_
                             _%hd169534169826%_
                             _%tl169535169828%_
                             _%e169536169831%_
                             _%hd169537169834%_
                             _%tl169538169836%_
                             _%e169539169839%_
                             _%hd169540169842%_
                             _%tl169541169844%_
                             _%e169542169847%_
                             _%hd169543169850%_
                             _%tl169544169852%_
                             _%e169545169855%_
                             _%hd169546169858%_
                             _%tl169547169860%_))
                        (_%__match171821171822%_
                         _%e169512169769%_
                         _%hd169513169772%_
                         _%tl169514169774%_
                         _%e169524169799%_
                         _%hd169525169802%_
                         _%tl169526169804%_
                         _%e169527169807%_
                         _%hd169528169810%_
                         _%tl169529169812%_
                         _%e169530169815%_
                         _%hd169531169818%_
                         _%tl169532169820%_
                         _%e169533169823%_
                         _%hd169534169826%_
                         _%tl169535169828%_
                         _%e169536169831%_
                         _%hd169537169834%_
                         _%tl169538169836%_
                         _%e169539169839%_
                         _%hd169540169842%_
                         _%tl169541169844%_
                         _%e169542169847%_
                         _%hd169543169850%_
                         _%tl169544169852%_
                         _%e169545169855%_
                         _%hd169546169858%_
                         _%tl169547169860%_))
                    (_%__match171821171822%_
                     _%e169512169769%_
                     _%hd169513169772%_
                     _%tl169514169774%_
                     _%e169524169799%_
                     _%hd169525169802%_
                     _%tl169526169804%_
                     _%e169527169807%_
                     _%hd169528169810%_
                     _%tl169529169812%_
                     _%e169530169815%_
                     _%hd169531169818%_
                     _%tl169532169820%_
                     _%e169533169823%_
                     _%hd169534169826%_
                     _%tl169535169828%_
                     _%e169536169831%_
                     _%hd169537169834%_
                     _%tl169538169836%_
                     _%e169539169839%_
                     _%hd169540169842%_
                     _%tl169541169844%_
                     _%e169542169847%_
                     _%hd169543169850%_
                     _%tl169544169852%_
                     _%e169545169855%_
                     _%hd169546169858%_
                     _%tl169547169860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match171821171822%_
                                                     _%e169512169769%_
                                                     _%hd169513169772%_
                                                     _%tl169514169774%_
                                                     _%e169524169799%_
                                                     _%hd169525169802%_
                                                     _%tl169526169804%_
                                                     _%e169527169807%_
                                                     _%hd169528169810%_
                                                     _%tl169529169812%_
                                                     _%e169530169815%_
                                                     _%hd169531169818%_
                                                     _%tl169532169820%_
                                                     _%e169533169823%_
                                                     _%hd169534169826%_
                                                     _%tl169535169828%_
                                                     _%e169536169831%_
                                                     _%hd169537169834%_
                                                     _%tl169538169836%_
                                                     _%e169539169839%_
                                                     _%hd169540169842%_
                                                     _%tl169541169844%_
                                                     _%e169542169847%_
                                                     _%hd169543169850%_
                                                     _%tl169544169852%_
                                                     _%e169545169855%_
                                                     _%hd169546169858%_
                                                     _%tl169547169860%_))))
                                            (_%__match171821171822%_
                                             _%e169512169769%_
                                             _%hd169513169772%_
                                             _%tl169514169774%_
                                             _%e169524169799%_
                                             _%hd169525169802%_
                                             _%tl169526169804%_
                                             _%e169527169807%_
                                             _%hd169528169810%_
                                             _%tl169529169812%_
                                             _%e169530169815%_
                                             _%hd169531169818%_
                                             _%tl169532169820%_
                                             _%e169533169823%_
                                             _%hd169534169826%_
                                             _%tl169535169828%_
                                             _%e169536169831%_
                                             _%hd169537169834%_
                                             _%tl169538169836%_
                                             _%e169539169839%_
                                             _%hd169540169842%_
                                             _%tl169541169844%_
                                             _%e169542169847%_
                                             _%hd169543169850%_
                                             _%tl169544169852%_
                                             _%e169545169855%_
                                             _%hd169546169858%_
                                             _%tl169547169860%_))))
                                    (_%__match171821171822%_
                                     _%e169512169769%_
                                     _%hd169513169772%_
                                     _%tl169514169774%_
                                     _%e169524169799%_
                                     _%hd169525169802%_
                                     _%tl169526169804%_
                                     _%e169527169807%_
                                     _%hd169528169810%_
                                     _%tl169529169812%_
                                     _%e169530169815%_
                                     _%hd169531169818%_
                                     _%tl169532169820%_
                                     _%e169533169823%_
                                     _%hd169534169826%_
                                     _%tl169535169828%_
                                     _%e169536169831%_
                                     _%hd169537169834%_
                                     _%tl169538169836%_
                                     _%e169539169839%_
                                     _%hd169540169842%_
                                     _%tl169541169844%_
                                     _%e169542169847%_
                                     _%hd169543169850%_
                                     _%tl169544169852%_
                                     _%e169545169855%_
                                     _%hd169546169858%_
                                     _%tl169547169860%_))
                                (_%__match171821171822%_
                                 _%e169512169769%_
                                 _%hd169513169772%_
                                 _%tl169514169774%_
                                 _%e169524169799%_
                                 _%hd169525169802%_
                                 _%tl169526169804%_
                                 _%e169527169807%_
                                 _%hd169528169810%_
                                 _%tl169529169812%_
                                 _%e169530169815%_
                                 _%hd169531169818%_
                                 _%tl169532169820%_
                                 _%e169533169823%_
                                 _%hd169534169826%_
                                 _%tl169535169828%_
                                 _%e169536169831%_
                                 _%hd169537169834%_
                                 _%tl169538169836%_
                                 _%e169539169839%_
                                 _%hd169540169842%_
                                 _%tl169541169844%_
                                 _%e169542169847%_
                                 _%hd169543169850%_
                                 _%tl169544169852%_
                                 _%e169545169855%_
                                 _%hd169546169858%_
                                 _%tl169547169860%_))
                            (_%__kont171724171725%_))))
                    (_%__kont171724171725%_))
                (_%__kont171724171725%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont171724171725%_))))
                                            (_%__kont171724171725%_))))
                                    (_%__kont171724171725%_))
                                (_%__kont171724171725%_))))
                        (_%__kont171724171725%_))
                    (_%__kont171724171725%_))
                (_%__kont171724171725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont171724171725%_))))
                                        (_%__kont171724171725%_))
                                    (_%__kont171724171725%_))
                                (_%__kont171724171725%_))))
                        (_%__kont171724171725%_))))
                (_%__kont171724171725%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169518169782%_
                                     _%target169515169777%_
                                     '()))))
                               (_%__match171739171740%_
                                (lambda (_%e169464170025%_
                                         _%hd169465170028%_
                                         _%tl169466170030%_
                                         _%__splice171712171713%_
                                         _%target169467170033%_
                                         _%tl169469170035%_)
                                  (letrec ((_%loop169470170038%_
                                            (lambda (_%hd169468170041%_
                                                     _%arg169474170043%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169468170041%_))
                                                  (let ((_%e169471170045%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169468170041%_))))
                                                    (let ((_%lp-tl169473170050%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169471170045%_)))
                                                          (_%lp-hd169472170048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169471170045%_))))
                                                      (_%loop169470170038%_
                                                       _%lp-tl169473170050%_
                                                       (cons _%lp-hd169472170048%_
                                                             _%arg169474170043%_))))
                                                  (let ((_%arg169475170053%_
                                                         (reverse _%arg169474170043%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl169466170030%_))
                                                        (let ((_%e169476170055%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl169466170030%_))))
                  (let ((_%tl169478170060%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e169476170055%_)))
                        (_%hd169477170058%_
                         (let ()
                           (declare (not safe))
                           (##car _%e169476170055%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd169477170058%_))
                        (let ((_%e169479170063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd169477170058%_))))
                          (let ((_%tl169481170068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169479170063%_)))
                                (_%hd169480170066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169479170063%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd169480170066%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd169480170066%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl169481170068%_))
                                        (let ((_%e169482170071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl169481170068%_))))
                                          (let ((_%tl169484170076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e169482170071%_)))
                                                (_%hd169483170074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e169482170071%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd169483170074%_))
                                                (let ((_%e169485170079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd169483170074%_))))
                                                  (let ((_%tl169487170084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169485170079%_)))
                                                        (_%hd169486170082%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169485170079%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169486170082%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169486170082%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169487170084%_))
                        (let ((_%e169488170087%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169487170084%_))))
                          (let ((_%tl169490170092%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169488170087%_)))
                                (_%hd169489170090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169488170087%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169490170092%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl169484170076%_))
                                    (let ((_%__splice171714171715%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl169484170076%_
                                              '0))))
                                      (let ((_%tl169493170097%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171714171715%_
                                                '1)))
                                            (_%target169491170095%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171714171715%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl169493170097%_))
                                            (letrec ((_%loop169494170100%_
                                                      (lambda (_%hd169492170103%_
                                                               _%xarg169498170105%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd169492170103%_))
                                                            (let ((_%e169495170107%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd169492170103%_))))
                      (let ((_%lp-tl169497170112%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169495170107%_)))
                            (_%lp-hd169496170110%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169495170107%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd169496170110%_))
                            (let ((_%e169500170115%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd169496170110%_))))
                              (let ((_%tl169502170120%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e169500170115%_)))
                                    (_%hd169501170118%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e169500170115%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd169501170118%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd169501170118%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl169502170120%_))
                                            (let ((_%e169503170123%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl169502170120%_))))
                                              (let ((_%tl169505170128%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169503170123%_)))
                                                    (_%hd169504170126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169503170123%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl169505170128%_))
                                                    (_%loop169494170100%_
                                                     _%lp-tl169497170112%_
                                                     (cons _%hd169504170126%_
                                                           _%xarg169498170105%_))
                                                    (_%__match171751171752%_
                                                     _%e169464170025%_
                                                     _%hd169465170028%_
                                                     _%tl169466170030%_
                                                     _%__splice171712171713%_
                                                     _%target169467170033%_
                                                     _%tl169469170035%_))))
                                            (_%__match171751171752%_
                                             _%e169464170025%_
                                             _%hd169465170028%_
                                             _%tl169466170030%_
                                             _%__splice171712171713%_
                                             _%target169467170033%_
                                             _%tl169469170035%_))
                                        (_%__match171751171752%_
                                         _%e169464170025%_
                                         _%hd169465170028%_
                                         _%tl169466170030%_
                                         _%__splice171712171713%_
                                         _%target169467170033%_
                                         _%tl169469170035%_))
                                    (_%__match171751171752%_
                                     _%e169464170025%_
                                     _%hd169465170028%_
                                     _%tl169466170030%_
                                     _%__splice171712171713%_
                                     _%target169467170033%_
                                     _%tl169469170035%_))))
                            (_%__match171751171752%_
                             _%e169464170025%_
                             _%hd169465170028%_
                             _%tl169466170030%_
                             _%__splice171712171713%_
                             _%target169467170033%_
                             _%tl169469170035%_))))
                    (let ((_%xarg169499170131%_
                           (reverse _%xarg169498170105%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169478170060%_))
                          (let ((_%g169461170133%_ _%xarg169499170131%_)
                                (_%g169462170134%_ _%hd169489170090%_)
                                (_%g169463170135%_ _%arg169475170053%_))
                            (if (and (let ((__tmp173005
                                            (let ((__tmp173006
                                                   (lambda (_%g170163170166%_
                                                            _%g170164170168%_)
                                                     (cons _%g170163170166%_
                                                           _%g170164170168%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173006
                                               '()
                                               _%g169463170135%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp173005))
                                     (let ((__tmp173009
                                            (length (let ((__tmp173010
                                                           (lambda (_%g170170170173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170171170175%_)
                     (cons _%g170170170173%_ _%g170171170175%_))))
              (declare (not safe))
              (__foldr1 __tmp173010 '() _%g169463170135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp173007
                                            (length (let ((__tmp173008
                                                           (lambda (_%g170177170180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g170178170182%_)
                     (cons _%g170177170180%_ _%g170178170182%_))))
              (declare (not safe))
              (__foldr1 __tmp173008 '() _%g169461170133%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173009 __tmp173007))
                                     (let ((__tmp173013
                                            (let ((__tmp173014
                                                   (lambda (_%g170184170187%_
                                                            _%g170185170189%_)
                                                     (cons _%g170184170187%_
                                                           _%g170185170189%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173014
                                               '()
                                               _%g169463170135%_)))
                                           (__tmp173011
                                            (let ((__tmp173012
                                                   (lambda (_%g170191170194%_
                                                            _%g170192170196%_)
                                                     (cons _%g170191170194%_
                                                           _%g170192170196%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173012
                                               '()
                                               _%g169461170133%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp173013
                                        __tmp173011))
                                     (not (let ((__tmp173017
                                                 (lambda (_%g170198170200%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g170198170200%_
                                                      _%g169462170134%_))))
                                                (__tmp173015
                                                 (let ((__tmp173016
                                                        (lambda (_%g170202170205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g170203170207%_)
                  (cons _%g170202170205%_ _%g170203170207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp173016
                                                    '()
                                                    _%g169463170135%_))))
                                            (declare (not safe))
                                            (__find __tmp173017 __tmp173015))))
                                (_%__kont171710171711%_
                                 _%g169461170133%_
                                 _%g169462170134%_
                                 _%g169463170135%_)
                                (_%__match171751171752%_
                                 _%e169464170025%_
                                 _%hd169465170028%_
                                 _%tl169466170030%_
                                 _%__splice171712171713%_
                                 _%target169467170033%_
                                 _%tl169469170035%_)))
                          (_%__match171751171752%_
                           _%e169464170025%_
                           _%hd169465170028%_
                           _%tl169466170030%_
                           _%__splice171712171713%_
                           _%target169467170033%_
                           _%tl169469170035%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop169494170100%_
                                               _%target169491170095%_
                                               '()))
                                            (_%__match171751171752%_
                                             _%e169464170025%_
                                             _%hd169465170028%_
                                             _%tl169466170030%_
                                             _%__splice171712171713%_
                                             _%target169467170033%_
                                             _%tl169469170035%_))))
                                    (_%__match171751171752%_
                                     _%e169464170025%_
                                     _%hd169465170028%_
                                     _%tl169466170030%_
                                     _%__splice171712171713%_
                                     _%target169467170033%_
                                     _%tl169469170035%_))
                                (_%__match171751171752%_
                                 _%e169464170025%_
                                 _%hd169465170028%_
                                 _%tl169466170030%_
                                 _%__splice171712171713%_
                                 _%target169467170033%_
                                 _%tl169469170035%_))))
                        (_%__match171751171752%_
                         _%e169464170025%_
                         _%hd169465170028%_
                         _%tl169466170030%_
                         _%__splice171712171713%_
                         _%target169467170033%_
                         _%tl169469170035%_))
                    (_%__match171751171752%_
                     _%e169464170025%_
                     _%hd169465170028%_
                     _%tl169466170030%_
                     _%__splice171712171713%_
                     _%target169467170033%_
                     _%tl169469170035%_))
                (_%__match171751171752%_
                 _%e169464170025%_
                 _%hd169465170028%_
                 _%tl169466170030%_
                 _%__splice171712171713%_
                 _%target169467170033%_
                 _%tl169469170035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171751171752%_
                                                 _%e169464170025%_
                                                 _%hd169465170028%_
                                                 _%tl169466170030%_
                                                 _%__splice171712171713%_
                                                 _%target169467170033%_
                                                 _%tl169469170035%_))))
                                        (_%__match171751171752%_
                                         _%e169464170025%_
                                         _%hd169465170028%_
                                         _%tl169466170030%_
                                         _%__splice171712171713%_
                                         _%target169467170033%_
                                         _%tl169469170035%_))
                                    (_%__match171751171752%_
                                     _%e169464170025%_
                                     _%hd169465170028%_
                                     _%tl169466170030%_
                                     _%__splice171712171713%_
                                     _%target169467170033%_
                                     _%tl169469170035%_))
                                (_%__match171751171752%_
                                 _%e169464170025%_
                                 _%hd169465170028%_
                                 _%tl169466170030%_
                                 _%__splice171712171713%_
                                 _%target169467170033%_
                                 _%tl169469170035%_))))
                        (_%__match171751171752%_
                         _%e169464170025%_
                         _%hd169465170028%_
                         _%tl169466170030%_
                         _%__splice171712171713%_
                         _%target169467170033%_
                         _%tl169469170035%_))))
                (_%__match171751171752%_
                 _%e169464170025%_
                 _%hd169465170028%_
                 _%tl169466170030%_
                 _%__splice171712171713%_
                 _%target169467170033%_
                 _%tl169469170035%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop169470170038%_
                                     _%target169467170033%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171708171709%_))
                              (let ((_%e169464170025%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171708171709%_))))
                                (let ((_%tl169466170030%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169464170025%_)))
                                      (_%hd169465170028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169464170025%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd169465170028%_))
                                      (let ((_%__splice171712171713%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd169465170028%_
                                                '0))))
                                        (let ((_%tl169469170035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171712171713%_
                                                  '1)))
                                              (_%target169467170033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171712171713%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169469170035%_))
                                              (_%__match171739171740%_
                                               _%e169464170025%_
                                               _%hd169465170028%_
                                               _%tl169466170030%_
                                               _%__splice171712171713%_
                                               _%target169467170033%_
                                               _%tl169469170035%_)
                                              (_%__match171751171752%_
                                               _%e169464170025%_
                                               _%hd169465170028%_
                                               _%tl169466170030%_
                                               _%__splice171712171713%_
                                               _%target169467170033%_
                                               _%tl169469170035%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169466170030%_))
                                          (let ((_%e169579169636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169466170030%_))))
                                            (let ((_%tl169581169641%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169579169636%_)))
                                                  (_%hd169580169639%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169579169636%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169580169639%_))
                                                  (let ((_%e169582169644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169580169639%_))))
                                                    (let ((_%tl169584169649%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169582169644%_)))
                                                          (_%hd169583169647%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169582169644%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169583169647%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169583169647%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169584169649%_))
                          (let ((_%e169585169652%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169584169649%_))))
                            (let ((_%tl169587169657%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169585169652%_)))
                                  (_%hd169586169655%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169585169652%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169586169655%_))
                                  (let ((_%e169588169660%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169586169655%_))))
                                    (let ((_%tl169590169665%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169588169660%_)))
                                          (_%hd169589169663%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169588169660%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169589169663%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169589169663%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169590169665%_))
                                                  (let ((_%e169591169668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169590169665%_))))
                                                    (let ((_%tl169593169673%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169591169668%_)))
                                                          (_%hd169592169671%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169591169668%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169593169673%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169587169657%_))
                      (let ((_%e169594169676%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169587169657%_))))
                        (let ((_%tl169596169681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169594169676%_)))
                              (_%hd169595169679%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169594169676%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169595169679%_))
                              (let ((_%e169597169684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169595169679%_))))
                                (let ((_%tl169599169689%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169597169684%_)))
                                      (_%hd169598169687%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169597169684%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169598169687%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169598169687%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169599169689%_))
                                              (let ((_%e169600169692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169599169689%_))))
                                                (let ((_%tl169602169697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169600169692%_)))
                                                      (_%hd169601169695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169600169692%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169602169697%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169596169681%_))
                                                          (let ((_%e169603169700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169596169681%_))))
                    (let ((_%tl169605169705%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169603169700%_)))
                          (_%hd169604169703%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169603169700%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd169604169703%_))
                          (let ((_%e169606169708%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd169604169703%_))))
                            (let ((_%tl169608169713%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169606169708%_)))
                                  (_%hd169607169711%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169606169708%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd169607169711%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd169607169711%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl169608169713%_))
                                          (let ((_%e169609169716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl169608169713%_))))
                                            (let ((_%tl169611169721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169609169716%_)))
                                                  (_%hd169610169719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169609169716%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169611169721%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169605169705%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169581169641%_))
                                                          (_%__match171849171850%_
                                                           _%e169464170025%_
                                                           _%hd169465170028%_
                                                           _%tl169466170030%_
                                                           _%e169579169636%_
                                                           _%hd169580169639%_
                                                           _%tl169581169641%_
                                                           _%e169582169644%_
                                                           _%hd169583169647%_
                                                           _%tl169584169649%_
                                                           _%e169585169652%_
                                                           _%hd169586169655%_
                                                           _%tl169587169657%_
                                                           _%e169588169660%_
                                                           _%hd169589169663%_
                                                           _%tl169590169665%_
                                                           _%e169591169668%_
                                                           _%hd169592169671%_
                                                           _%tl169593169673%_
                                                           _%e169594169676%_
                                                           _%hd169595169679%_
                                                           _%tl169596169681%_
                                                           _%e169597169684%_
                                                           _%hd169598169687%_
                                                           _%tl169599169689%_
                                                           _%e169600169692%_
                                                           _%hd169601169695%_
                                                           _%tl169602169697%_
                                                           _%e169603169700%_
                                                           _%hd169604169703%_
                                                           _%tl169605169705%_
                                                           _%e169606169708%_
                                                           _%hd169607169711%_
                                                           _%tl169608169713%_
                                                           _%e169609169716%_
                                                           _%hd169610169719%_
                                                           _%tl169611169721%_)
                                                          (_%__kont171724171725%_))
                                                      (_%__kont171724171725%_))
                                                  (_%__kont171724171725%_))))
                                          (_%__kont171724171725%_))
                                      (_%__kont171724171725%_))
                                  (_%__kont171724171725%_))))
                          (_%__kont171724171725%_))))
                  (_%__kont171724171725%_))
              (_%__kont171724171725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont171724171725%_))
                                          (_%__kont171724171725%_))
                                      (_%__kont171724171725%_))))
                              (_%__kont171724171725%_))))
                      (_%__kont171724171725%_))
                  (_%__kont171724171725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171724171725%_))
                                              (_%__kont171724171725%_))
                                          (_%__kont171724171725%_))))
                                  (_%__kont171724171725%_))))
                          (_%__kont171724171725%_))
                      (_%__kont171724171725%_))
                  (_%__kont171724171725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont171724171725%_))))
                                          (_%__kont171724171725%_)))))
                              (_%__kont171724171725%_)))))))
                 (_%dispatch-case-e168774%_
                  (lambda (_%hd168921%_ _%body168922%_)
                    (let* ((_%form168924%_
                            (cons _%hd168921%_ (cons _%body168922%_ '())))
                           (_%__stx171852171853%_ _%form168924%_)
                           (_%g168928169052%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx171852171853%_)))))
                      (let ((_%__kont171854171855%_
                             (lambda (_%g168930169417%_
                                      _%g168931169418%_
                                      _%g168932169419%_)
                               (let ((__tmp173018
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168931169418%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168770%_
                                  __tmp173018))))
                            (_%__kont171860171861%_
                             (lambda (_%g168975169269%_
                                      _%g168976169270%_
                                      _%g168977169271%_
                                      _%g168978169272%_)
                               (let ((__tmp173019
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g168975169269%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168770%_
                                  __tmp173019))))
                            (_%__kont171864171865%_
                             (lambda (_%g169015169137%_
                                      _%g169016169138%_
                                      _%g169017169139%_)
                               (let ((__tmp173020
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g169015169137%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self168770%_
                                  __tmp173020)))))
                        (let* ((_%__match171961171962%_
                                (lambda (_%e169018169057%_
                                         _%hd169019169060%_
                                         _%tl169020169062%_
                                         _%e169021169065%_
                                         _%hd169022169068%_
                                         _%tl169023169070%_
                                         _%e169024169073%_
                                         _%hd169025169076%_
                                         _%tl169026169078%_
                                         _%e169027169081%_
                                         _%hd169028169084%_
                                         _%tl169029169086%_
                                         _%e169030169089%_
                                         _%hd169031169092%_
                                         _%tl169032169094%_
                                         _%e169033169097%_
                                         _%hd169034169100%_
                                         _%tl169035169102%_
                                         _%e169036169105%_
                                         _%hd169037169108%_
                                         _%tl169038169110%_
                                         _%e169039169113%_
                                         _%hd169040169116%_
                                         _%tl169041169118%_
                                         _%e169042169121%_
                                         _%hd169043169124%_
                                         _%tl169044169126%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl169038169110%_))
                                      (let ((_%e169045169129%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl169038169110%_))))
                                        (let ((_%tl169047169134%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e169045169129%_)))
                                              (_%hd169046169132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e169045169129%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl169047169134%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl169023169070%_))
                                                  (_%__kont171864171865%_
                                                   _%hd169043169124%_
                                                   _%hd169034169100%_
                                                   _%hd169019169060%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168928169052%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168928169052%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168928169052%_)))))
                               (_%__match171891171892%_
                                (lambda (_%e168979169175%_
                                         _%hd168980169178%_
                                         _%tl168981169180%_
                                         _%__splice171862171863%_
                                         _%target168982169183%_
                                         _%tl168984169185%_)
                                  (letrec ((_%loop168985169188%_
                                            (lambda (_%hd168983169191%_
                                                     _%arg168989169193%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168983169191%_))
                                                  (let ((_%e168986169195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168983169191%_))))
                                                    (let ((_%lp-tl168988169200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168986169195%_)))
                                                          (_%lp-hd168987169198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168986169195%_))))
                                                      (_%loop168985169188%_
                                                       _%lp-tl168988169200%_
                                                       (cons _%lp-hd168987169198%_
                                                             _%arg168989169193%_))))
                                                  (let ((_%arg168990169203%_
                                                         (reverse _%arg168989169193%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168981169180%_))
                                                        (let ((_%e168991169205%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168981169180%_))))
                  (let ((_%tl168993169210%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168991169205%_)))
                        (_%hd168992169208%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168991169205%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168992169208%_))
                        (let ((_%e168994169213%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168992169208%_))))
                          (let ((_%tl168996169218%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168994169213%_)))
                                (_%hd168995169216%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168994169213%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168995169216%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168995169216%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168996169218%_))
                                        (let ((_%e168997169221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168996169218%_))))
                                          (let ((_%tl168999169226%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168997169221%_)))
                                                (_%hd168998169224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168997169221%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168998169224%_))
                                                (let ((_%e169000169229%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168998169224%_))))
                                                  (let ((_%tl169002169234%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e169000169229%_)))
                                                        (_%hd169001169232%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e169000169229%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd169001169232%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd169001169232%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl169002169234%_))
                        (let ((_%e169003169237%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl169002169234%_))))
                          (let ((_%tl169005169242%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e169003169237%_)))
                                (_%hd169004169240%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e169003169237%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl169005169242%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl168999169226%_))
                                    (let ((_%e169006169245%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl168999169226%_))))
                                      (let ((_%tl169008169250%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e169006169245%_)))
                                            (_%hd169007169248%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e169006169245%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd169007169248%_))
                                            (let ((_%e169009169253%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd169007169248%_))))
                                              (let ((_%tl169011169258%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e169009169253%_)))
                                                    (_%hd169010169256%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e169009169253%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd169010169256%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd169010169256%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl169011169258%_))
                                                            (let ((_%e169012169261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl169011169258%_))))
                      (let ((_%tl169014169266%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e169012169261%_)))
                            (_%hd169013169264%_
                             (let ()
                               (declare (not safe))
                               (##car _%e169012169261%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl169014169266%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168993169210%_))
                                (_%__kont171860171861%_
                                 _%hd169013169264%_
                                 _%hd169004169240%_
                                 _%tl168984169185%_
                                 _%arg168990169203%_)
                                (_%__match171961171962%_
                                 _%e168979169175%_
                                 _%hd168980169178%_
                                 _%tl168981169180%_
                                 _%e168991169205%_
                                 _%hd168992169208%_
                                 _%tl168993169210%_
                                 _%e168994169213%_
                                 _%hd168995169216%_
                                 _%tl168996169218%_
                                 _%e168997169221%_
                                 _%hd168998169224%_
                                 _%tl168999169226%_
                                 _%e169000169229%_
                                 _%hd169001169232%_
                                 _%tl169002169234%_
                                 _%e169003169237%_
                                 _%hd169004169240%_
                                 _%tl169005169242%_
                                 _%e169006169245%_
                                 _%hd169007169248%_
                                 _%tl169008169250%_
                                 _%e169009169253%_
                                 _%hd169010169256%_
                                 _%tl169011169258%_
                                 _%e169012169261%_
                                 _%hd169013169264%_
                                 _%tl169014169266%_))
                            (let ()
                              (declare (not safe))
                              (_%g168928169052%_)))))
                    (let () (declare (not safe)) (_%g168928169052%_)))
                (let () (declare (not safe)) (_%g168928169052%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g168928169052%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g168928169052%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168928169052%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168928169052%_)))))
                        (let () (declare (not safe)) (_%g168928169052%_)))
                    (let () (declare (not safe)) (_%g168928169052%_)))
                (let () (declare (not safe)) (_%g168928169052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g168928169052%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g168928169052%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g168928169052%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g168928169052%_)))))
                        (let () (declare (not safe)) (_%g168928169052%_)))))
                (let () (declare (not safe)) (_%g168928169052%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168985169188%_
                                     _%target168982169183%_
                                     '()))))
                               (_%__match171879171880%_
                                (lambda (_%e168933169309%_
                                         _%hd168934169312%_
                                         _%tl168935169314%_
                                         _%__splice171856171857%_
                                         _%target168936169317%_
                                         _%tl168938169319%_)
                                  (letrec ((_%loop168939169322%_
                                            (lambda (_%hd168937169325%_
                                                     _%arg168943169327%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd168937169325%_))
                                                  (let ((_%e168940169329%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd168937169325%_))))
                                                    (let ((_%lp-tl168942169334%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e168940169329%_)))
                                                          (_%lp-hd168941169332%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e168940169329%_))))
                                                      (_%loop168939169322%_
                                                       _%lp-tl168942169334%_
                                                       (cons _%lp-hd168941169332%_
                                                             _%arg168943169327%_))))
                                                  (let ((_%arg168944169337%_
                                                         (reverse _%arg168943169327%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl168935169314%_))
                                                        (let ((_%e168945169339%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl168935169314%_))))
                  (let ((_%tl168947169344%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e168945169339%_)))
                        (_%hd168946169342%_
                         (let ()
                           (declare (not safe))
                           (##car _%e168945169339%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd168946169342%_))
                        (let ((_%e168948169347%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd168946169342%_))))
                          (let ((_%tl168950169352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168948169347%_)))
                                (_%hd168949169350%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168948169347%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd168949169350%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd168949169350%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168950169352%_))
                                        (let ((_%e168951169355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168950169352%_))))
                                          (let ((_%tl168953169360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168951169355%_)))
                                                (_%hd168952169358%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168951169355%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd168952169358%_))
                                                (let ((_%e168954169363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd168952169358%_))))
                                                  (let ((_%tl168956169368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e168954169363%_)))
                                                        (_%hd168955169366%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e168954169363%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd168955169366%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd168955169366%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl168956169368%_))
                        (let ((_%e168957169371%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl168956169368%_))))
                          (let ((_%tl168959169376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168957169371%_)))
                                (_%hd168958169374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168957169371%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl168959169376%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl168953169360%_))
                                    (let ((_%__splice171858171859%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl168953169360%_
                                              '0))))
                                      (let ((_%tl168962169381%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171858171859%_
                                                '1)))
                                            (_%target168960169379%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice171858171859%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl168962169381%_))
                                            (letrec ((_%loop168963169384%_
                                                      (lambda (_%hd168961169387%_
                                                               _%xarg168967169389%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd168961169387%_))
                                                            (let ((_%e168964169391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd168961169387%_))))
                      (let ((_%lp-tl168966169396%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e168964169391%_)))
                            (_%lp-hd168965169394%_
                             (let ()
                               (declare (not safe))
                               (##car _%e168964169391%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd168965169394%_))
                            (let ((_%e168969169399%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd168965169394%_))))
                              (let ((_%tl168971169404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e168969169399%_)))
                                    (_%hd168970169402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e168969169399%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd168970169402%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd168970169402%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl168971169404%_))
                                            (let ((_%e168972169407%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl168971169404%_))))
                                              (let ((_%tl168974169412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e168972169407%_)))
                                                    (_%hd168973169410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e168972169407%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl168974169412%_))
                                                    (_%loop168963169384%_
                                                     _%lp-tl168966169396%_
                                                     (cons _%hd168973169410%_
                                                           _%xarg168967169389%_))
                                                    (_%__match171891171892%_
                                                     _%e168933169309%_
                                                     _%hd168934169312%_
                                                     _%tl168935169314%_
                                                     _%__splice171856171857%_
                                                     _%target168936169317%_
                                                     _%tl168938169319%_))))
                                            (_%__match171891171892%_
                                             _%e168933169309%_
                                             _%hd168934169312%_
                                             _%tl168935169314%_
                                             _%__splice171856171857%_
                                             _%target168936169317%_
                                             _%tl168938169319%_))
                                        (_%__match171891171892%_
                                         _%e168933169309%_
                                         _%hd168934169312%_
                                         _%tl168935169314%_
                                         _%__splice171856171857%_
                                         _%target168936169317%_
                                         _%tl168938169319%_))
                                    (_%__match171891171892%_
                                     _%e168933169309%_
                                     _%hd168934169312%_
                                     _%tl168935169314%_
                                     _%__splice171856171857%_
                                     _%target168936169317%_
                                     _%tl168938169319%_))))
                            (_%__match171891171892%_
                             _%e168933169309%_
                             _%hd168934169312%_
                             _%tl168935169314%_
                             _%__splice171856171857%_
                             _%target168936169317%_
                             _%tl168938169319%_))))
                    (let ((_%xarg168968169415%_
                           (reverse _%xarg168967169389%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl168947169344%_))
                          (_%__kont171854171855%_
                           _%xarg168968169415%_
                           _%hd168958169374%_
                           _%arg168944169337%_)
                          (_%__match171891171892%_
                           _%e168933169309%_
                           _%hd168934169312%_
                           _%tl168935169314%_
                           _%__splice171856171857%_
                           _%target168936169317%_
                           _%tl168938169319%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop168963169384%_
                                               _%target168960169379%_
                                               '()))
                                            (_%__match171891171892%_
                                             _%e168933169309%_
                                             _%hd168934169312%_
                                             _%tl168935169314%_
                                             _%__splice171856171857%_
                                             _%target168936169317%_
                                             _%tl168938169319%_))))
                                    (_%__match171891171892%_
                                     _%e168933169309%_
                                     _%hd168934169312%_
                                     _%tl168935169314%_
                                     _%__splice171856171857%_
                                     _%target168936169317%_
                                     _%tl168938169319%_))
                                (_%__match171891171892%_
                                 _%e168933169309%_
                                 _%hd168934169312%_
                                 _%tl168935169314%_
                                 _%__splice171856171857%_
                                 _%target168936169317%_
                                 _%tl168938169319%_))))
                        (_%__match171891171892%_
                         _%e168933169309%_
                         _%hd168934169312%_
                         _%tl168935169314%_
                         _%__splice171856171857%_
                         _%target168936169317%_
                         _%tl168938169319%_))
                    (_%__match171891171892%_
                     _%e168933169309%_
                     _%hd168934169312%_
                     _%tl168935169314%_
                     _%__splice171856171857%_
                     _%target168936169317%_
                     _%tl168938169319%_))
                (_%__match171891171892%_
                 _%e168933169309%_
                 _%hd168934169312%_
                 _%tl168935169314%_
                 _%__splice171856171857%_
                 _%target168936169317%_
                 _%tl168938169319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match171891171892%_
                                                 _%e168933169309%_
                                                 _%hd168934169312%_
                                                 _%tl168935169314%_
                                                 _%__splice171856171857%_
                                                 _%target168936169317%_
                                                 _%tl168938169319%_))))
                                        (_%__match171891171892%_
                                         _%e168933169309%_
                                         _%hd168934169312%_
                                         _%tl168935169314%_
                                         _%__splice171856171857%_
                                         _%target168936169317%_
                                         _%tl168938169319%_))
                                    (_%__match171891171892%_
                                     _%e168933169309%_
                                     _%hd168934169312%_
                                     _%tl168935169314%_
                                     _%__splice171856171857%_
                                     _%target168936169317%_
                                     _%tl168938169319%_))
                                (_%__match171891171892%_
                                 _%e168933169309%_
                                 _%hd168934169312%_
                                 _%tl168935169314%_
                                 _%__splice171856171857%_
                                 _%target168936169317%_
                                 _%tl168938169319%_))))
                        (_%__match171891171892%_
                         _%e168933169309%_
                         _%hd168934169312%_
                         _%tl168935169314%_
                         _%__splice171856171857%_
                         _%target168936169317%_
                         _%tl168938169319%_))))
                (_%__match171891171892%_
                 _%e168933169309%_
                 _%hd168934169312%_
                 _%tl168935169314%_
                 _%__splice171856171857%_
                 _%target168936169317%_
                 _%tl168938169319%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop168939169322%_
                                     _%target168936169317%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx171852171853%_))
                              (let ((_%e168933169309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx171852171853%_))))
                                (let ((_%tl168935169314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168933169309%_)))
                                      (_%hd168934169312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168933169309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd168934169312%_))
                                      (let ((_%__splice171856171857%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd168934169312%_
                                                '0))))
                                        (let ((_%tl168938169319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171856171857%_
                                                  '1)))
                                              (_%target168936169317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice171856171857%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl168938169319%_))
                                              (_%__match171879171880%_
                                               _%e168933169309%_
                                               _%hd168934169312%_
                                               _%tl168935169314%_
                                               _%__splice171856171857%_
                                               _%target168936169317%_
                                               _%tl168938169319%_)
                                              (_%__match171891171892%_
                                               _%e168933169309%_
                                               _%hd168934169312%_
                                               _%tl168935169314%_
                                               _%__splice171856171857%_
                                               _%target168936169317%_
                                               _%tl168938169319%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl168935169314%_))
                                          (let ((_%e169021169065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl168935169314%_))))
                                            (let ((_%tl169023169070%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e169021169065%_)))
                                                  (_%hd169022169068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e169021169065%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd169022169068%_))
                                                  (let ((_%e169024169073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd169022169068%_))))
                                                    (let ((_%tl169026169078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169024169073%_)))
                                                          (_%hd169025169076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169024169073%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd169025169076%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd169025169076%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl169026169078%_))
                          (let ((_%e169027169081%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl169026169078%_))))
                            (let ((_%tl169029169086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e169027169081%_)))
                                  (_%hd169028169084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e169027169081%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd169028169084%_))
                                  (let ((_%e169030169089%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd169028169084%_))))
                                    (let ((_%tl169032169094%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e169030169089%_)))
                                          (_%hd169031169092%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e169030169089%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd169031169092%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd169031169092%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl169032169094%_))
                                                  (let ((_%e169033169097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl169032169094%_))))
                                                    (let ((_%tl169035169102%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e169033169097%_)))
                                                          (_%hd169034169100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e169033169097%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl169035169102%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl169029169086%_))
                      (let ((_%e169036169105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl169029169086%_))))
                        (let ((_%tl169038169110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e169036169105%_)))
                              (_%hd169037169108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e169036169105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd169037169108%_))
                              (let ((_%e169039169113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd169037169108%_))))
                                (let ((_%tl169041169118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e169039169113%_)))
                                      (_%hd169040169116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e169039169113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd169040169116%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd169040169116%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl169041169118%_))
                                              (let ((_%e169042169121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl169041169118%_))))
                                                (let ((_%tl169044169126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e169042169121%_)))
                                                      (_%hd169043169124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e169042169121%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl169044169126%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl169038169110%_))
                                                          (let ((_%e169045169129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl169038169110%_))))
                    (let ((_%tl169047169134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e169045169129%_)))
                          (_%hd169046169132%_
                           (let ()
                             (declare (not safe))
                             (##car _%e169045169129%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl169047169134%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl169023169070%_))
                              (_%__kont171864171865%_
                               _%hd169043169124%_
                               _%hd169034169100%_
                               _%hd168934169312%_)
                              (let ()
                                (declare (not safe))
                                (_%g168928169052%_)))
                          (let () (declare (not safe)) (_%g168928169052%_)))))
                  (let () (declare (not safe)) (_%g168928169052%_)))
              (let () (declare (not safe)) (_%g168928169052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g168928169052%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168928169052%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g168928169052%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g168928169052%_)))))
                      (let () (declare (not safe)) (_%g168928169052%_)))
                  (let () (declare (not safe)) (_%g168928169052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168928169052%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g168928169052%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168928169052%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g168928169052%_)))))
                          (let () (declare (not safe)) (_%g168928169052%_)))
                      (let () (declare (not safe)) (_%g168928169052%_)))
                  (let () (declare (not safe)) (_%g168928169052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g168928169052%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g168928169052%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g168928169052%_))))))))
                 (_%generate1168775%_
                  (lambda (_%args168906%_
                           _%arglen168907%_
                           _%hd168908%_
                           _%body168909%_)
                    (let* ((_%len168911%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd168908%_)))
                           (_%condition168916%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd168908%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen168907%_
                                                (cons _%len168911%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen168907%_ (cons _%len168911%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len168911%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen168907%_
                                                    (cons _%len168911%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen168907%_ (cons _%len168911%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch168918%_
                            (if (_%dispatch-case?168773%_
                                 _%hd168908%_
                                 _%body168909%_)
                                (_%dispatch-case-e168774%_
                                 _%hd168908%_
                                 _%body168909%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self168770%_
                                 _%hd168908%_
                                 _%body168909%_))))
                      (cons _%condition168916%_
                            (cons (cons 'apply
                                        (cons _%dispatch168918%_
                                              (cons _%args168906%_ '())))
                                  '()))))))
          (let* ((_%g168777168805%_
                  (lambda (_%g168778168802%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168778168802%_))))
                 (_%g168776168903%_
                  (lambda (_%g168778168808%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168778168808%_))
                        (let ((_%e168781168810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168778168808%_))))
                          (let ((_%hd168782168813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168781168810%_)))
                                (_%tl168783168815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168781168810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl168783168815%_))
                                (let ((_g173021_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl168783168815%_
                                          '0))))
                                  (begin
                                    (let ((_g173022_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173021_)
                                                 (##values-length _g173021_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173022_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173022_)))
                                    (let ((_%target168784168818%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173021_ 0)))
                                          (_%tl168786168820%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173021_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168786168820%_))
                                          (letrec ((_%loop168787168823%_
                                                    (lambda (_%hd168785168826%_
                                                             _%body168791168828%_
                                                             _%hd168792168829%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd168785168826%_))
                                                          (let ((_%e168788168831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd168785168826%_))))
                    (let ((_%lp-hd168789168834%_
                           (let ()
                             (declare (not safe))
                             (##car _%e168788168831%_)))
                          (_%lp-tl168790168836%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e168788168831%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd168789168834%_))
                          (let ((_%e168795168839%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd168789168834%_))))
                            (let ((_%hd168796168842%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e168795168839%_)))
                                  (_%tl168797168844%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e168795168839%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl168797168844%_))
                                  (let ((_%e168798168847%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl168797168844%_))))
                                    (let ((_%hd168799168850%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e168798168847%_)))
                                          (_%tl168800168852%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e168798168847%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl168800168852%_))
                                          (_%loop168787168823%_
                                           _%lp-tl168790168836%_
                                           (cons _%hd168799168850%_
                                                 _%body168791168828%_)
                                           (cons _%hd168796168842%_
                                                 _%hd168792168829%_))
                                          (_%g168777168805%_
                                           _%g168778168808%_))))
                                  (_%g168777168805%_ _%g168778168808%_))))
                          (_%g168777168805%_ _%g168778168808%_))))
                  (let ((_%body168793168855%_ (reverse _%body168791168828%_))
                        (_%hd168794168856%_ (reverse _%hd168792168829%_)))
                    ((lambda (_%g168779168858%_ _%g168780168859%_)
                       (let ((_%args168878%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen168879%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name168880%_
                              (let ((_%$e168875%_
                                     (let ((__tmp173023
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp173023 _%stx168771%_))))
                                (if _%$e168875%_
                                    _%$e168875%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args168878%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen168879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args168878%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args168878%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp173027
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name168880%_
                                                                (cons _%args168878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp173024
                                  (map (lambda (_%g168881168884%_
                                                _%g168882168886%_)
                                         (_%generate1168775%_
                                          _%args168878%_
                                          _%arglen168879%_
                                          _%g168881168884%_
                                          _%g168882168886%_))
                                       (let ((__tmp173025
                                              (lambda (_%g168888168891%_
                                                       _%g168889168893%_)
                                                (cons _%g168888168891%_
                                                      _%g168889168893%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173025
                                          '()
                                          _%g168780168859%_))
                                       (let ((__tmp173026
                                              (lambda (_%g168895168898%_
                                                       _%g168896168900%_)
                                                (cons _%g168895168898%_
                                                      _%g168896168900%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp173026
                                          '()
                                          _%g168779168858%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp173027 __tmp173024)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body168793168855%_
                     _%hd168794168856%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop168787168823%_
                                             _%target168784168818%_
                                             '()
                                             '()))
                                          (_%g168777168805%_
                                           _%g168778168808%_)))))
                                (_%g168777168805%_ _%g168778168808%_))))
                        (_%g168777168805%_ _%g168778168808%_)))))
            (_%g168776168903%_ _%stx168771%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self168007%_ _%stx168008%_ _%compiled-body?168009%_)
        (letrec ((_%generate-simple168011%_
                  (lambda (_%hd168755%_ _%body168756%_)
                    (_%coalesce-boolean168012%_
                     (_%simplify-let168013%_
                      (gxc#generate-runtime-simple-let
                       _%self168007%_
                       'let
                       _%hd168755%_
                       _%body168756%_
                       _%compiled-body?168009%_)))))
                 (_%coalesce-boolean168012%_
                  (lambda (_%code168616%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code168617168643%_ _%code168616%_)
                               (_%else168619168651%_
                                (lambda () _%code168616%_))
                               (_%K168621168688%_
                                (lambda (_%expr2168654%_
                                         _%expr1168655%_
                                         _%id168656%_)
                                  (let* ((_%expr2168657168665%_
                                          _%expr2168654%_)
                                         (_%else168659168673%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1168655%_
                                                        (cons _%expr2168654%_
                                                              '())))))
                                         (_%K168661168678%_
                                          (lambda (_%exprs168676%_)
                                            (cons 'or
                                                  (cons _%expr1168655%_
                                                        _%exprs168676%_)))))
                                    (if (pair? _%expr2168657168665%_)
                                        (let ((_%hd168662168681%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2168657168665%_)))
                                              (_%tl168663168683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2168657168665%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168662168681%_ 'or))
                                              (let ((_%exprs168686%_
                                                     _%tl168663168683%_))
                                                (_%K168661168678%_
                                                 _%exprs168686%_))
                                              (_%else168659168673%_)))
                                        (_%else168659168673%_))))))
                          (if (pair? _%code168617168643%_)
                              (let ((_%hd168622168691%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code168617168643%_)))
                                    (_%tl168623168693%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code168617168643%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd168622168691%_ 'let))
                                    (if (pair? _%tl168623168693%_)
                                        (let ((_%hd168624168696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl168623168693%_)))
                                              (_%tl168625168698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl168623168693%_))))
                                          (if (pair? _%hd168624168696%_)
                                              (let ((_%hd168636168701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd168624168696%_)))
                                                    (_%tl168637168703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd168624168696%_))))
                                                (if (pair? _%hd168636168701%_)
                                                    (let ((_%hd168638168706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd168636168701%_)))
                                                          (_%tl168639168708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd168636168701%_))))
                                                      (let ((_%id168711%_
                                                             _%hd168638168706%_))
                                                        (if (pair? _%tl168639168708%_)
                                                            (let ((_%hd168640168713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl168639168708%_)))
                          (_%tl168641168715%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168639168708%_))))
                      (let ((_%expr1168718%_ _%hd168640168713%_))
                        (if (null? _%tl168641168715%_)
                            (if (null? _%tl168637168703%_)
                                (if (pair? _%tl168625168698%_)
                                    (let ((_%hd168626168720%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl168625168698%_)))
                                          (_%tl168627168722%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl168625168698%_))))
                                      (if (pair? _%hd168626168720%_)
                                          (let ((_%hd168628168725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd168626168720%_)))
                                                (_%tl168629168727%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd168626168720%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd168628168725%_
                                                         'if))
                                                (if (pair? _%tl168629168727%_)
                                                    (let ((_%hd168630168730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl168629168727%_)))
                                                          (_%tl168631168732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl168629168727%_))))
                                                      (if ((lambda (_%g168734168736%_)
                                                             (eq? _%g168734168736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168711%_))
                   _%hd168630168730%_)
                  (if (pair? _%tl168631168732%_)
                      (let ((_%hd168632168739%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl168631168732%_)))
                            (_%tl168633168741%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl168631168732%_))))
                        (if ((lambda (_%g168743168745%_)
                               (eq? _%g168743168745%_ _%id168711%_))
                             _%hd168632168739%_)
                            (if (pair? _%tl168633168741%_)
                                (let ((_%hd168634168748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168633168741%_)))
                                      (_%tl168635168750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168633168741%_))))
                                  (let ((_%expr2168753%_ _%hd168634168748%_))
                                    (if (null? _%tl168635168750%_)
                                        (if (null? _%tl168627168722%_)
                                            (_%K168621168688%_
                                             _%expr2168753%_
                                             _%expr1168718%_
                                             _%id168711%_)
                                            (_%else168619168651%_))
                                        (_%else168619168651%_))))
                                (_%else168619168651%_))
                            (_%else168619168651%_)))
                      (_%else168619168651%_))
                  (_%else168619168651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168619168651%_))
                                                (_%else168619168651%_)))
                                          (_%else168619168651%_)))
                                    (_%else168619168651%_))
                                (_%else168619168651%_))
                            (_%else168619168651%_))))
                    (_%else168619168651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else168619168651%_)))
                                              (_%else168619168651%_)))
                                        (_%else168619168651%_))
                                    (_%else168619168651%_)))
                              (_%else168619168651%_)))
                        _%code168616%_)))
                 (_%simplify-let168013%_
                  (lambda (_%code168315%_)
                    (let* ((_%code168316168388%_ _%code168315%_)
                           (_%else168321168396%_ (lambda () _%code168315%_)))
                      (let ((_%K168380168596%_
                             (lambda (_%expr168594%_) _%expr168594%_))
                            (_%K168363168542%_
                             (lambda (_%body168538%_
                                      _%expr168539%_
                                      _%id168540%_)
                               (cons 'let
                                     (cons (cons (cons _%id168540%_
                                                       (cons _%expr168539%_
                                                             '()))
                                                 '())
                                           _%body168538%_))))
                            (_%K168340168466%_
                             (lambda (_%body168460%_
                                      _%expr2168461%_
                                      _%id2168462%_
                                      _%expr1168463%_
                                      _%id1168464%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168464%_
                                                       (cons _%expr1168463%_
                                                             '()))
                                                 (cons (cons _%id2168462%_
                                                             (cons _%expr2168461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body168460%_))))
                            (_%K168323168405%_
                             (lambda (_%body168400%_
                                      _%bind168401%_
                                      _%expr1168402%_
                                      _%id1168403%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1168403%_
                                                       (cons _%expr1168402%_
                                                             '()))
                                                 _%bind168401%_)
                                           _%body168400%_)))))
                        (if (pair? _%code168316168388%_)
                            (let ((_%tl168382168601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code168316168388%_)))
                                  (_%hd168381168599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code168316168388%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd168381168599%_ 'let))
                                  (if (pair? _%tl168382168601%_)
                                      (let ((_%tl168384168606%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl168382168601%_)))
                                            (_%hd168383168604%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl168382168601%_))))
                                        (if (null? _%hd168383168604%_)
                                            (if (pair? _%tl168384168606%_)
                                                (let ((_%tl168386168611%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl168384168606%_)))
                                                      (_%hd168385168609%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl168384168606%_))))
                                                  (if (null? _%tl168386168611%_)
                                                      (let ((_%expr168614%_
                                                             _%hd168385168609%_))
                                                        (_%K168380168596%_
                                                         _%expr168614%_))
                                                      (_%else168321168396%_)))
                                                (_%else168321168396%_))
                                            (if (pair? _%hd168383168604%_)
                                                (let ((_%tl168375168557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd168383168604%_)))
                                                      (_%hd168374168555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd168383168604%_))))
                                                  (if (pair? _%hd168374168555%_)
                                                      (let ((_%tl168377168562%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd168374168555%_)))
                    (_%hd168376168560%_
                     (let () (declare (not safe)) (##car _%hd168374168555%_))))
                (if (pair? _%tl168377168562%_)
                    (let ((_%tl168379168569%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl168377168562%_)))
                          (_%hd168378168567%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl168377168562%_))))
                      (if (null? _%tl168379168569%_)
                          (if (null? _%tl168375168557%_)
                              (if (pair? _%tl168384168606%_)
                                  (let ((_%tl168369168576%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl168384168606%_)))
                                        (_%hd168368168574%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl168384168606%_))))
                                    (if (pair? _%hd168368168574%_)
                                        (let ((_%tl168371168581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd168368168574%_)))
                                              (_%hd168370168579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd168368168574%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd168370168579%_
                                                       'let))
                                              (if (pair? _%tl168371168581%_)
                                                  (let ((_%tl168373168586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl168371168581%_)))
                                                        (_%hd168372168584%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl168371168581%_))))
                                                    (if (null? _%hd168372168584%_)
                                                        (if (null? _%tl168369168576%_)
                                                            (let ((_%id168565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd168376168560%_)
                          (_%expr168572%_ _%hd168378168567%_)
                          (_%body168589%_ _%tl168373168586%_))
                      (_%K168363168542%_
                       _%body168589%_
                       _%expr168572%_
                       _%id168565%_))
                    (_%else168321168396%_))
                (if (pair? _%hd168372168584%_)
                    (let ((_%tl168352168515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd168372168584%_)))
                          (_%hd168351168513%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd168372168584%_))))
                      (if (pair? _%hd168351168513%_)
                          (let ((_%tl168354168520%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd168351168513%_)))
                                (_%hd168353168518%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd168351168513%_))))
                            (if (pair? _%tl168354168520%_)
                                (let ((_%tl168356168527%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl168354168520%_)))
                                      (_%hd168355168525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl168354168520%_))))
                                  (if (null? _%tl168356168527%_)
                                      (if (null? _%tl168352168515%_)
                                          (if (null? _%tl168369168576%_)
                                              (let ((_%id1168489%_
                                                     _%hd168376168560%_)
                                                    (_%expr1168496%_
                                                     _%hd168378168567%_)
                                                    (_%id2168523%_
                                                     _%hd168353168518%_)
                                                    (_%expr2168530%_
                                                     _%hd168355168525%_)
                                                    (_%body168532%_
                                                     _%tl168373168586%_))
                                                (_%K168340168466%_
                                                 _%body168532%_
                                                 _%expr2168530%_
                                                 _%id2168523%_
                                                 _%expr1168496%_
                                                 _%id1168489%_))
                                              (_%else168321168396%_))
                                          (_%else168321168396%_))
                                      (_%else168321168396%_)))
                                (_%else168321168396%_)))
                          (_%else168321168396%_)))
                    (_%else168321168396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168321168396%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd168370168579%_
                                                           'let*))
                                                  (if (pair? _%tl168371168581%_)
                                                      (let ((_%tl168333168449%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl168371168581%_)))
                    (_%hd168332168447%_
                     (let () (declare (not safe)) (##car _%tl168371168581%_))))
                (if (null? _%tl168369168576%_)
                    (let ((_%id1168428%_ _%hd168376168560%_)
                          (_%expr1168435%_ _%hd168378168567%_)
                          (_%bind168452%_ _%hd168332168447%_)
                          (_%body168454%_ _%tl168333168449%_))
                      (_%K168323168405%_
                       _%body168454%_
                       _%bind168452%_
                       _%expr1168435%_
                       _%id1168428%_))
                    (_%else168321168396%_)))
              (_%else168321168396%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else168321168396%_))))
                                        (_%else168321168396%_)))
                                  (_%else168321168396%_))
                              (_%else168321168396%_))
                          (_%else168321168396%_)))
                    (_%else168321168396%_)))
              (_%else168321168396%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else168321168396%_))))
                                      (_%else168321168396%_))
                                  (_%else168321168396%_)))
                            (_%else168321168396%_))))))
                 (_%generate-values168014%_
                  (lambda (_%hd168128%_ _%body168129%_)
                    (let _%lp168131%_ ((_%rest168133%_ _%hd168128%_)
                                       (_%bind168134%_ '())
                                       (_%check168135%_ '())
                                       (_%post168136%_ '()))
                      (let* ((_%__stx172181172182%_ _%rest168133%_)
                             (_%g168139168150%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172181172182%_)))))
                        (let ((_%__kont172183172184%_
                               (lambda (_%g168141168177%_ _%g168142168178%_)
                                 (let* ((_%__stx172137172138%_
                                         _%g168142168178%_)
                                        (_%g168193168218%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172137172138%_)))))
                                   (let ((_%__kont172139172140%_
                                          (lambda (_%g168195168291%_
                                                   _%g168196168292%_)
                                            (let ((_%eid168306%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g168196168292%_)))
                                                  (_%expr168307%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self168007%_
                                                      _%g168195168291%_))))
                                              (_%lp168131%_
                                               _%g168141168177%_
                                               (cons (cons _%eid168306%_
                                                           (cons _%expr168307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168134%_)
                                               _%check168135%_
                                               _%post168136%_))))
                                         (_%__kont172141172142%_
                                          (lambda (_%g168206168239%_
                                                   _%g168207168240%_)
                                            (let* ((_%vals168253%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values168255%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals168253%_
                                                     _%g168207168240%_
                                                     _%g168206168239%_))
                                                   (_%refs168257%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals168253%_
                                                     _%g168207168240%_))
                                                   (_%expr168259%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self168007%_
                                                       _%g168206168239%_))))
                                              (_%lp168131%_
                                               _%g168141168177%_
                                               (cons (cons _%vals168253%_
                                                           (cons _%expr168259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind168134%_)
                                               (cons _%check-values168255%_
                                                     _%check168135%_)
                                               (cons _%refs168257%_
                                                     _%post168136%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172137172138%_))
                                         (let ((_%e168197168267%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172137172138%_))))
                                           (let ((_%tl168199168272%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e168197168267%_)))
                                                 (_%hd168198168270%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e168197168267%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd168198168270%_))
                                                 (let ((_%e168200168275%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd168198168270%_))))
                                                   (let ((_%tl168202168280%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e168200168275%_)))
                                                         (_%hd168201168278%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e168200168275%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl168202168280%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl168199168272%_))
                     (let ((_%e168203168283%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168199168272%_))))
                       (let ((_%tl168205168288%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168203168283%_)))
                             (_%hd168204168286%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168203168283%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168205168288%_))
                             (_%__kont172139172140%_
                              _%hd168204168286%_
                              _%hd168201168278%_)
                             (let ()
                               (declare (not safe))
                               (_%g168193168218%_)))))
                     (let () (declare (not safe)) (_%g168193168218%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl168199168272%_))
                     (let ((_%e168211168231%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl168199168272%_))))
                       (let ((_%tl168213168236%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e168211168231%_)))
                             (_%hd168212168234%_
                              (let ()
                                (declare (not safe))
                                (##car _%e168211168231%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl168213168236%_))
                             (_%__kont172141172142%_
                              _%hd168212168234%_
                              _%hd168198168270%_)
                             (let ()
                               (declare (not safe))
                               (_%g168193168218%_)))))
                     (let () (declare (not safe)) (_%g168193168218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl168199168272%_))
                                                     (let ((_%e168211168231%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl168199168272%_))))
                                                       (let ((_%tl168213168236%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e168211168231%_)))
                     (_%hd168212168234%_
                      (let () (declare (not safe)) (##car _%e168211168231%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl168213168236%_))
                     (_%__kont172141172142%_
                      _%hd168212168234%_
                      _%hd168198168270%_)
                     (let () (declare (not safe)) (_%g168193168218%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g168193168218%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g168193168218%_)))))))
                              (_%__kont172185172186%_
                               (lambda ()
                                 (let* ((_%body168157%_
                                         (if _%compiled-body?168009%_
                                             _%body168129%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self168007%_
                                                _%body168129%_))))
                                        (_%body168159%_
                                         (_%generate-values-post168015%_
                                          _%post168136%_
                                          _%body168157%_))
                                        (_%body168161%_
                                         (_%generate-values-check168016%_
                                          _%check168135%_
                                          _%body168159%_)))
                                   (cons 'let
                                         (cons (reverse _%bind168134%_)
                                               (cons _%body168161%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172181172182%_))
                              (let ((_%e168143168169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172181172182%_))))
                                (let ((_%tl168145168174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e168143168169%_)))
                                      (_%hd168144168172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e168143168169%_))))
                                  (_%__kont172183172184%_
                                   _%tl168145168174%_
                                   _%hd168144168172%_)))
                              (_%__kont172185172186%_)))))))
                 (_%generate-values-post168015%_
                  (lambda (_%post168087%_ _%body168088%_)
                    (let _%lp168090%_ ((_%rest168092%_ _%post168087%_)
                                       (_%body168093%_ _%body168088%_))
                      (let* ((_%rest168094168102%_ _%rest168092%_)
                             (_%else168096168110%_ (lambda () _%body168093%_))
                             (_%K168098168116%_
                              (lambda (_%rest168113%_ _%bind168114%_)
                                (_%lp168090%_
                                 _%rest168113%_
                                 (cons 'let
                                       (cons _%bind168114%_
                                             (cons _%body168093%_ '())))))))
                        (if (pair? _%rest168094168102%_)
                            (let ((_%hd168099168119%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest168094168102%_)))
                                  (_%tl168100168121%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest168094168102%_))))
                              (let* ((_%bind168124%_ _%hd168099168119%_)
                                     (_%rest168126%_ _%tl168100168121%_))
                                (_%K168098168116%_
                                 _%rest168126%_
                                 _%bind168124%_)))
                            (_%else168096168110%_))))))
                 (_%generate-values-check168016%_
                  (lambda (_%check168084%_ _%body168085%_)
                    (cons 'begin
                          (let ((__tmp173029 (cons _%body168085%_ '()))
                                (__tmp173028 (reverse _%check168084%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173029 __tmp173028))))))
          (let* ((_%g168018168035%_
                  (lambda (_%g168019168032%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g168019168032%_))))
                 (_%g168017168081%_
                  (lambda (_%g168019168038%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g168019168038%_))
                        (let ((_%e168022168040%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g168019168038%_))))
                          (let ((_%hd168023168043%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e168022168040%_)))
                                (_%tl168024168045%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e168022168040%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl168024168045%_))
                                (let ((_%e168025168048%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl168024168045%_))))
                                  (let ((_%hd168026168051%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e168025168048%_)))
                                        (_%tl168027168053%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e168025168048%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl168027168053%_))
                                        (let ((_%e168028168056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl168027168053%_))))
                                          (let ((_%hd168029168059%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e168028168056%_)))
                                                (_%tl168030168061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e168028168056%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl168030168061%_))
                                                ((lambda (_%g168020168064%_
                                                          _%g168021168065%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g168021168065%_)
                                                       (_%generate-simple168011%_
                                                        _%g168021168065%_
                                                        _%g168020168064%_)
                                                       (_%generate-values168014%_
                                                        _%g168021168065%_
                                                        _%g168020168064%_)))
                                                 _%hd168029168059%_
                                                 _%hd168026168051%_)
                                                (_%g168018168035%_
                                                 _%g168019168038%_))))
                                        (_%g168018168035%_
                                         _%g168019168038%_))))
                                (_%g168018168035%_ _%g168019168038%_))))
                        (_%g168018168035%_ _%g168019168038%_)))))
            (_%g168017168081%_ _%stx168008%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self168761%_ _%stx168762%_)
        (let ((_%compiled-body?168764%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self168761%_
           _%stx168762%_
           _%compiled-body?168764%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g173030_
        (let ((_g173031_ (let () (declare (not safe)) (##length _g173030_))))
          (cond ((let () (declare (not safe)) (##fx= _g173031_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g173030_))
                ((let () (declare (not safe)) (##fx= _g173031_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g173030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g173030_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals167901%_ _%hd167902%_)
        (let _%lp167904%_ ((_%rest167906%_ _%hd167902%_)
                           (_%k167907%_ '0)
                           (_%r167908%_ '()))
          (let* ((_%__stx172195172196%_ _%rest167906%_)
                 (_%g167913167930%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx172195172196%_)))))
            (let ((_%__kont172197172198%_
                   (lambda (_%g167915167993%_)
                     (_%lp167904%_
                      _%g167915167993%_
                      (let () (declare (not safe)) (##fx+ _%k167907%_ '1))
                      _%r167908%_)))
                  (_%__kont172199172200%_
                   (lambda (_%g167920167966%_ _%g167921167967%_)
                     (_%lp167904%_
                      _%g167920167966%_
                      (let () (declare (not safe)) (##fx+ _%k167907%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g167921167967%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals167901%_
                                         _%k167907%_
                                         _%g167920167966%_)
                                        '()))
                            _%r167908%_))))
                  (_%__kont172201172202%_
                   (lambda (_%g167925167942%_)
                     (let ((__tmp173032
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g167925167942%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals167901%_
                                               _%k167907%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp173032 _%r167908%_))))
                  (_%__kont172203172204%_ (lambda () (reverse _%r167908%_))))
              (let ((_%g167911167953%_
                     (lambda ()
                       (let ((_%g167925167942%_ _%__stx172195172196%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g167925167942%_))
                             (_%__kont172201172202%_ _%g167925167942%_)
                             (_%__kont172203172204%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx172195172196%_))
                    (let ((_%e167916167982%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx172195172196%_))))
                      (let ((_%tl167918167987%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167916167982%_)))
                            (_%hd167917167985%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167916167982%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd167917167985%_))
                            (let ((_%e167919167990%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd167917167985%_))))
                              (if (equal? _%e167919167990%_ '#f)
                                  (_%__kont172197172198%_ _%tl167918167987%_)
                                  (_%__kont172199172200%_
                                   _%tl167918167987%_
                                   _%hd167917167985%_)))
                            (_%__kont172199172200%_
                             _%tl167918167987%_
                             _%hd167917167985%_))))
                    (let () (declare (not safe)) (_%g167911167953%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self167580%_ _%stx167581%_ _%compiled-body?167582%_)
        (letrec ((_%generate-simple167584%_
                  (lambda (_%hd167886%_ _%body167887%_)
                    (gxc#generate-runtime-simple-let
                     _%self167580%_
                     'letrec
                     _%hd167886%_
                     _%body167887%_
                     _%compiled-body?167582%_)))
                 (_%generate-values167585%_
                  (lambda (_%hd167665%_ _%body167666%_)
                    (let _%lp167668%_ ((_%rest167670%_ _%hd167665%_)
                                       (_%bind167671%_ '())
                                       (_%check167672%_ '())
                                       (_%post167673%_ '()))
                      (let* ((_%__stx172269172270%_ _%rest167670%_)
                             (_%g167676167687%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172269172270%_)))))
                        (let ((_%__kont172271172272%_
                               (lambda (_%g167678167714%_ _%g167679167715%_)
                                 (let* ((_%__stx172225172226%_
                                         _%g167679167715%_)
                                        (_%g167730167755%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172225172226%_)))))
                                   (let ((_%__kont172227172228%_
                                          (lambda (_%g167732167862%_
                                                   _%g167733167863%_)
                                            (let ((_%eid167877%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g167733167863%_)))
                                                  (_%expr167878%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167580%_
                                                      _%g167732167862%_))))
                                              (_%lp167668%_
                                               _%g167678167714%_
                                               (cons (cons _%eid167877%_
                                                           (cons _%expr167878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind167671%_)
                                               _%check167672%_
                                               _%post167673%_))))
                                         (_%__kont172229172230%_
                                          (lambda (_%g167743167776%_
                                                   _%g167744167777%_)
                                            (let* ((_%vals167790%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values167792%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals167790%_
                                                     _%g167744167777%_
                                                     _%g167743167776%_))
                                                   (_%refs167794%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals167790%_
                                                     _%g167744167777%_))
                                                   (_%expr167796%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self167580%_
                                                       _%g167743167776%_))))
                                              (_%lp167668%_
                                               _%g167678167714%_
                                               (let ((__tmp173034
                                                      (cons (cons _%vals167790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr167796%_ '()))
                    _%bind167671%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp173033
                                                      (map (lambda (_%e167798167800%_)
                                                             (let* ((_%e167798167802167811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e167798167800%_)
                            (_%E167804167815%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e167798167802167811%_
                                        '([eid _])))
                               '#!void))
                            (_%K167805167820%_
                             (lambda (_%eid167818%_)
                               (cons _%eid167818%_ (cons '#!void '())))))
                       (if (pair? _%e167798167802167811%_)
                           (let ((_%hd167806167823%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e167798167802167811%_)))
                                 (_%tl167807167825%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e167798167802167811%_))))
                             (let ((_%eid167828%_ _%hd167806167823%_))
                               (if (pair? _%tl167807167825%_)
                                   (let ((_%tl167809167830%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl167807167825%_))))
                                     (if (null? _%tl167809167830%_)
                                         (_%K167805167820%_ _%eid167828%_)
                                         (_%E167804167815%_)))
                                   (_%E167804167815%_))))
                           (_%E167804167815%_))))
                   _%refs167794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp173034
                                                  __tmp173033))
                                               (cons _%check-values167792%_
                                                     _%check167672%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs167794%_
                                                  _%post167673%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172225172226%_))
                                         (let ((_%e167734167838%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172225172226%_))))
                                           (let ((_%tl167736167843%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e167734167838%_)))
                                                 (_%hd167735167841%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e167734167838%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd167735167841%_))
                                                 (let ((_%e167737167846%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd167735167841%_))))
                                                   (let ((_%tl167739167851%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e167737167846%_)))
                                                         (_%hd167738167849%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e167737167846%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl167739167851%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl167736167843%_))
                     (let ((_%e167740167854%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167736167843%_))))
                       (let ((_%tl167742167859%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167740167854%_)))
                             (_%hd167741167857%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167740167854%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167742167859%_))
                             (_%__kont172227172228%_
                              _%hd167741167857%_
                              _%hd167738167849%_)
                             (let ()
                               (declare (not safe))
                               (_%g167730167755%_)))))
                     (let () (declare (not safe)) (_%g167730167755%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl167736167843%_))
                     (let ((_%e167748167768%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl167736167843%_))))
                       (let ((_%tl167750167773%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e167748167768%_)))
                             (_%hd167749167771%_
                              (let ()
                                (declare (not safe))
                                (##car _%e167748167768%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl167750167773%_))
                             (_%__kont172229172230%_
                              _%hd167749167771%_
                              _%hd167735167841%_)
                             (let ()
                               (declare (not safe))
                               (_%g167730167755%_)))))
                     (let () (declare (not safe)) (_%g167730167755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl167736167843%_))
                                                     (let ((_%e167748167768%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl167736167843%_))))
                                                       (let ((_%tl167750167773%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e167748167768%_)))
                     (_%hd167749167771%_
                      (let () (declare (not safe)) (##car _%e167748167768%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl167750167773%_))
                     (_%__kont172229172230%_
                      _%hd167749167771%_
                      _%hd167735167841%_)
                     (let () (declare (not safe)) (_%g167730167755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g167730167755%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g167730167755%_)))))))
                              (_%__kont172273172274%_
                               (lambda ()
                                 (let* ((_%body167694%_
                                         (if _%compiled-body?167582%_
                                             _%body167666%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self167580%_
                                                _%body167666%_))))
                                        (_%body167696%_
                                         (_%generate-values-post167587%_
                                          _%post167673%_
                                          _%body167694%_))
                                        (_%body167698%_
                                         (_%generate-values-check167586%_
                                          _%check167672%_
                                          _%body167696%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind167671%_)
                                               (cons _%body167698%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx172269172270%_))
                              (let ((_%e167680167706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx172269172270%_))))
                                (let ((_%tl167682167711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e167680167706%_)))
                                      (_%hd167681167709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e167680167706%_))))
                                  (_%__kont172271172272%_
                                   _%tl167682167711%_
                                   _%hd167681167709%_)))
                              (_%__kont172273172274%_)))))))
                 (_%generate-values-check167586%_
                  (lambda (_%check167662%_ _%body167663%_)
                    (cons 'begin
                          (let ((__tmp173036 (cons _%body167663%_ '()))
                                (__tmp173035 (reverse _%check167662%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp173036 __tmp173035)))))
                 (_%generate-values-post167587%_
                  (lambda (_%post167655%_ _%body167656%_)
                    (cons 'begin
                          (let ((__tmp173040 (cons _%body167656%_ '()))
                                (__tmp173037
                                 (let ((__tmp173039
                                        (lambda (_%g167657167659%_)
                                          (cons 'set! _%g167657167659%_)))
                                       (__tmp173038 (reverse _%post167655%_)))
                                   (declare (not safe))
                                   (##map __tmp173039 __tmp173038))))
                            (declare (not safe))
                            (__foldr1 cons __tmp173040 __tmp173037))))))
          (let* ((_%g167589167606%_
                  (lambda (_%g167590167603%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167590167603%_))))
                 (_%g167588167652%_
                  (lambda (_%g167590167609%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167590167609%_))
                        (let ((_%e167593167611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167590167609%_))))
                          (let ((_%hd167594167614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167593167611%_)))
                                (_%tl167595167616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167593167611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167595167616%_))
                                (let ((_%e167596167619%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167595167616%_))))
                                  (let ((_%hd167597167622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167596167619%_)))
                                        (_%tl167598167624%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167596167619%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167598167624%_))
                                        (let ((_%e167599167627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167598167624%_))))
                                          (let ((_%hd167600167630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167599167627%_)))
                                                (_%tl167601167632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167599167627%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167601167632%_))
                                                ((lambda (_%g167591167635%_
                                                          _%g167592167636%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167592167636%_)
                                                       (_%generate-simple167584%_
                                                        _%g167592167636%_
                                                        _%g167591167635%_)
                                                       (_%generate-values167585%_
                                                        _%g167592167636%_
                                                        _%g167591167635%_)))
                                                 _%hd167600167630%_
                                                 _%hd167597167622%_)
                                                (_%g167589167606%_
                                                 _%g167590167609%_))))
                                        (_%g167589167606%_
                                         _%g167590167609%_))))
                                (_%g167589167606%_ _%g167590167609%_))))
                        (_%g167589167606%_ _%g167590167609%_)))))
            (_%g167588167652%_ _%stx167581%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self167892%_ _%stx167893%_)
        (let ((_%compiled-body?167895%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self167892%_
           _%stx167893%_
           _%compiled-body?167895%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g173041_
        (let ((_g173042_ (let () (declare (not safe)) (##length _g173041_))))
          (cond ((let () (declare (not safe)) (##fx= _g173042_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g173041_))
                ((let () (declare (not safe)) (##fx= _g173042_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g173041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g173041_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self167161%_ _%stx167162%_)
        (letrec ((_%generate-values167164%_
                  (lambda (_%hd167407%_ _%body167408%_)
                    (let _%lp167410%_ ((_%rest167412%_ _%hd167407%_)
                                       (_%bind167413%_ '()))
                      (let* ((_%rest167414167422%_ _%rest167412%_)
                             (_%else167416167433%_
                              (lambda ()
                                (let ((_%bind167430%_ (reverse _%bind167413%_))
                                      (_%body167431%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self167161%_
                                          _%body167408%_))))
                                  (cons 'letrec*
                                        (cons _%bind167430%_
                                              (cons _%body167431%_ '()))))))
                             (_%K167418167567%_
                              (lambda (_%rest167436%_ _%hd-bind167437%_)
                                (let* ((_%__stx172283172284%_
                                        _%hd-bind167437%_)
                                       (_%g167440167465%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx172283172284%_)))))
                                  (let ((_%__kont172285172286%_
                                         (lambda (_%g167442167546%_
                                                  _%g167443167547%_)
                                           (let ((_%eid167561%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g167443167547%_)))
                                                 (_%expr167562%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self167161%_
                                                     _%g167442167546%_))))
                                             (_%lp167410%_
                                              _%rest167436%_
                                              (cons (cons _%eid167561%_
                                                          (cons _%expr167562%_
                                                                '()))
                                                    _%bind167413%_)))))
                                        (_%__kont172287172288%_
                                         (lambda (_%g167453167486%_
                                                  _%g167454167487%_)
                                           (let* ((_%vals167506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp167508%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values167510%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp167508%_
                                                    _%g167454167487%_
                                                    _%g167453167486%_))
                                                  (_%refs167512%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals167506%_
                                                    _%g167454167487%_))
                                                  (_%expr167514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self167161%_
                                                      _%g167453167486%_))))
                                             (_%lp167410%_
                                              _%rest167436%_
                                              (let ((__tmp173043
                                                     (cons (cons _%vals167506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp167508%_
                                                       (cons _%expr167514%_
                                                             '()))
                                                 '())
                                           (cons _%check-values167510%_
                                                 (cons _%tmp167508%_ '()))))
                               '()))
                   _%bind167413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp173043
                                                 _%refs167512%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx172283172284%_))
                                        (let ((_%e167444167522%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx172283172284%_))))
                                          (let ((_%tl167446167527%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167444167522%_)))
                                                (_%hd167445167525%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167444167522%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd167445167525%_))
                                                (let ((_%e167447167530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd167445167525%_))))
                                                  (let ((_%tl167449167535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e167447167530%_)))
                                                        (_%hd167448167533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e167447167530%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl167449167535%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl167446167527%_))
                                                            (let ((_%e167450167538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167446167527%_))))
                      (let ((_%tl167452167543%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167450167538%_)))
                            (_%hd167451167541%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167450167538%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167452167543%_))
                            (_%__kont172285172286%_
                             _%hd167451167541%_
                             _%hd167448167533%_)
                            (let ()
                              (declare (not safe))
                              (_%g167440167465%_)))))
                    (let () (declare (not safe)) (_%g167440167465%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl167446167527%_))
                    (let ((_%e167458167478%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl167446167527%_))))
                      (let ((_%tl167460167483%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e167458167478%_)))
                            (_%hd167459167481%_
                             (let ()
                               (declare (not safe))
                               (##car _%e167458167478%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl167460167483%_))
                            (_%__kont172287172288%_
                             _%hd167459167481%_
                             _%hd167445167525%_)
                            (let ()
                              (declare (not safe))
                              (_%g167440167465%_)))))
                    (let () (declare (not safe)) (_%g167440167465%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl167446167527%_))
                                                    (let ((_%e167458167478%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl167446167527%_))))
                                                      (let ((_%tl167460167483%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e167458167478%_)))
                    (_%hd167459167481%_
                     (let () (declare (not safe)) (##car _%e167458167478%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl167460167483%_))
                    (_%__kont172287172288%_
                     _%hd167459167481%_
                     _%hd167445167525%_)
                    (let () (declare (not safe)) (_%g167440167465%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g167440167465%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g167440167465%_))))))))
                        (if (pair? _%rest167414167422%_)
                            (let ((_%hd167419167570%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167414167422%_)))
                                  (_%tl167420167572%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167414167422%_))))
                              (let* ((_%hd-bind167575%_ _%hd167419167570%_)
                                     (_%rest167577%_ _%tl167420167572%_))
                                (_%K167418167567%_
                                 _%rest167577%_
                                 _%hd-bind167575%_)))
                            (_%else167416167433%_))))))
                 (_%generate-letrec?167165%_
                  (lambda (_%hd167297%_)
                    (let _%lp167299%_ ((_%rest167301%_ _%hd167297%_))
                      (let* ((_%rest167302167310%_ _%rest167301%_)
                             (_%else167304167318%_ (lambda () '#t))
                             (_%K167306167395%_
                              (lambda (_%rest167321%_ _%hd-bind167322%_)
                                (let* ((_%g167324167341%_
                                        (lambda (_%g167325167338%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g167325167338%_))))
                                       (_%g167323167392%_
                                        (lambda (_%g167325167344%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g167325167344%_))
                                              (let ((_%e167328167346%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g167325167344%_))))
                                                (let ((_%hd167329167349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e167328167346%_)))
                                                      (_%tl167330167351%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e167328167346%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd167329167349%_))
                                                      (let ((_%e167331167354%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd167329167349%_))))
                (let ((_%hd167332167357%_
                       (let () (declare (not safe)) (##car _%e167331167354%_)))
                      (_%tl167333167359%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e167331167354%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl167333167359%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl167330167351%_))
                          (let ((_%e167334167362%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl167330167351%_))))
                            (let ((_%hd167335167365%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e167334167362%_)))
                                  (_%tl167336167367%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e167334167362%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl167336167367%_))
                                  ((lambda (_%g167326167370%_
                                            _%g167327167371%_)
                                     (if (_%is-lambda-expr?167166%_
                                          _%g167326167370%_)
                                         (_%lp167299%_ _%rest167321%_)
                                         '#f))
                                   _%hd167335167365%_
                                   _%hd167332167357%_)
                                  (_%g167324167341%_ _%g167325167344%_))))
                          (_%g167324167341%_ _%g167325167344%_))
                      (_%g167324167341%_ _%g167325167344%_))))
              (_%g167324167341%_ _%g167325167344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g167324167341%_
                                               _%g167325167344%_)))))
                                  (_%g167323167392%_ _%hd-bind167322%_)))))
                        (if (pair? _%rest167302167310%_)
                            (let ((_%hd167307167398%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167302167310%_)))
                                  (_%tl167308167400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167302167310%_))))
                              (let* ((_%hd-bind167403%_ _%hd167307167398%_)
                                     (_%rest167405%_ _%tl167308167400%_))
                                (_%K167306167395%_
                                 _%rest167405%_
                                 _%hd-bind167403%_)))
                            (_%else167304167318%_))))))
                 (_%is-lambda-expr?167166%_
                  (lambda (_%expr167234%_)
                    (let* ((_%__stx172327172328%_ _%expr167234%_)
                           (_%g167237167251%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx172327172328%_)))))
                      (let ((_%__kont172329172330%_
                             (lambda (_%g167239167279%_ _%g167240167280%_)
                               '#t))
                            (_%__kont172331172332%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx172327172328%_))
                            (let ((_%e167241167263%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx172327172328%_))))
                              (let ((_%tl167243167268%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e167241167263%_)))
                                    (_%hd167242167266%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e167241167263%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd167242167266%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd167242167266%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl167243167268%_))
                                            (let ((_%e167244167271%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl167243167268%_))))
                                              (let ((_%tl167246167276%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e167244167271%_)))
                                                    (_%hd167245167274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e167244167271%_))))
                                                (_%__kont172329172330%_
                                                 _%tl167246167276%_
                                                 _%hd167245167274%_)))
                                            (_%__kont172331172332%_))
                                        (_%__kont172331172332%_))
                                    (_%__kont172331172332%_))))
                            (_%__kont172331172332%_)))))))
          (let* ((_%g167168167185%_
                  (lambda (_%g167169167182%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g167169167182%_))))
                 (_%g167167167231%_
                  (lambda (_%g167169167188%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g167169167188%_))
                        (let ((_%e167172167190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g167169167188%_))))
                          (let ((_%hd167173167193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e167172167190%_)))
                                (_%tl167174167195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e167172167190%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl167174167195%_))
                                (let ((_%e167175167198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl167174167195%_))))
                                  (let ((_%hd167176167201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e167175167198%_)))
                                        (_%tl167177167203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e167175167198%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl167177167203%_))
                                        (let ((_%e167178167206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl167177167203%_))))
                                          (let ((_%hd167179167209%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e167178167206%_)))
                                                (_%tl167180167211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e167178167206%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl167180167211%_))
                                                ((lambda (_%g167170167214%_
                                                          _%g167171167215%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g167171167215%_)
                                                       (if (_%generate-letrec?167165%_
                                                            _%g167171167215%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167161%_
                                                            'letrec
                                                            _%g167171167215%_
                                                            _%g167170167214%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self167161%_
                                                            'letrec*
                                                            _%g167171167215%_
                                                            _%g167170167214%_
                                                            '#f))
                                                       (_%generate-values167164%_
                                                        _%g167171167215%_
                                                        _%g167170167214%_)))
                                                 _%hd167179167209%_
                                                 _%hd167176167201%_)
                                                (_%g167168167185%_
                                                 _%g167169167188%_))))
                                        (_%g167168167185%_
                                         _%g167169167188%_))))
                                (_%g167168167185%_ _%g167169167188%_))))
                        (_%g167168167185%_ _%g167169167188%_)))))
            (_%g167167167231%_ _%stx167162%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd167098%_)
        (let _%lp167100%_ ((_%rest167102%_ _%hd167098%_))
          (let* ((_%rest167103167119%_ _%rest167102%_)
                 (_%else167106167127%_ (lambda () '#f)))
            (let ((_%K167109167140%_
                   (lambda (_%rest167138%_) (_%lp167100%_ _%rest167138%_)))
                  (_%K167108167132%_ (lambda () '#t)))
              (let ((_%try-match167105167135%_
                     (lambda ()
                       (if (null? _%rest167103167119%_)
                           (_%K167108167132%_)
                           (_%else167106167127%_)))))
                (if (pair? _%rest167103167119%_)
                    (let ((_%tl167111167145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest167103167119%_)))
                          (_%hd167110167143%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest167103167119%_))))
                      (if (pair? _%hd167110167143%_)
                          (let ((_%tl167113167150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd167110167143%_)))
                                (_%hd167112167148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd167110167143%_))))
                            (if (pair? _%hd167112167148%_)
                                (let ((_%tl167117167153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167112167148%_))))
                                  (if (null? _%tl167117167153%_)
                                      (if (pair? _%tl167113167150%_)
                                          (let ((_%tl167115167156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167113167150%_))))
                                            (if (null? _%tl167115167156%_)
                                                (let ((_%rest167159%_
                                                       _%tl167111167145%_))
                                                  (_%lp167100%_
                                                   _%rest167159%_))
                                                (_%else167106167127%_)))
                                          (_%else167106167127%_))
                                      (_%else167106167127%_)))
                                (_%else167106167127%_)))
                          (_%else167106167127%_)))
                    (_%try-match167105167135%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self167010%_
               _%form167011%_
               _%hd167012%_
               _%body167013%_
               _%compiled-body?167014%_)
        (letrec ((_%generate1167016%_
                  (lambda (_%bind167055%_)
                    (let* ((_%bind167056167067%_ _%bind167055%_)
                           (_%E167058167070%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind167056167067%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K167059167076%_
                            (lambda (_%expr167073%_ _%id167074%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id167074%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self167010%_
                                             _%expr167073%_))
                                          '())))))
                      (if (pair? _%bind167056167067%_)
                          (let ((_%hd167060167079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind167056167067%_)))
                                (_%tl167061167081%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind167056167067%_))))
                            (if (pair? _%hd167060167079%_)
                                (let ((_%hd167064167084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd167060167079%_)))
                                      (_%tl167065167086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd167060167079%_))))
                                  (let ((_%id167089%_ _%hd167064167084%_))
                                    (if (null? _%tl167065167086%_)
                                        (if (pair? _%tl167061167081%_)
                                            (let ((_%hd167062167091%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl167061167081%_)))
                                                  (_%tl167063167093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl167061167081%_))))
                                              (let ((_%expr167096%_
                                                     _%hd167062167091%_))
                                                (if (null? _%tl167063167093%_)
                                                    (_%K167059167076%_
                                                     _%expr167096%_
                                                     _%id167089%_)
                                                    (_%E167058167070%_))))
                                            (_%E167058167070%_))
                                        (_%E167058167070%_))))
                                (_%E167058167070%_)))
                          (_%E167058167070%_))))))
          (let* ((_%bind167018%_ (map _%generate1167016%_ _%hd167012%_))
                 (_%body167020%_
                  (if _%compiled-body?167014%_
                      _%body167013%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self167010%_ _%body167013%_))))
                 (_%body167052%_
                  (let* ((_%body167021167029%_ _%body167020%_)
                         (_%else167023167037%_
                          (lambda () (cons _%body167020%_ '())))
                         (_%K167025167042%_
                          (lambda (_%exprs167040%_) _%exprs167040%_)))
                    (if (pair? _%body167021167029%_)
                        (let ((_%hd167026167045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body167021167029%_)))
                              (_%tl167027167047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body167021167029%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd167026167045%_ 'begin))
                              (let ((_%exprs167050%_ _%tl167027167047%_))
                                (_%K167025167042%_ _%exprs167050%_))
                              (_%else167023167037%_)))
                        (_%else167023167037%_)))))
            (cons _%form167011%_ (cons _%bind167018%_ _%body167052%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self166910%_ _%stx166911%_)
        (letrec ((_%generate1166913%_
                  (lambda (_%datum166965%_)
                    (if (or (null? _%datum166965%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum166965%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum166965%_))
                            (eof-object? _%datum166965%_))
                        _%datum166965%_
                        (if (uninterned-symbol? _%datum166965%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum166965%_
                               '#t))
                            (if (pair? _%datum166965%_)
                                (cons (_%generate1166913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum166965%_)))
                                      (_%generate1166913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum166965%_))))
                                (if (box? _%datum166965%_)
                                    (box (_%generate1166913%_
                                          (unbox _%datum166965%_)))
                                    (if (vector? _%datum166965%_)
                                        (vector-map
                                         _%generate1166913%_
                                         _%datum166965%_)
                                        (if (or (s8vector? _%datum166965%_)
                                                (u8vector? _%datum166965%_)
                                                (s16vector? _%datum166965%_)
                                                (u16vector? _%datum166965%_)
                                                (s32vector? _%datum166965%_)
                                                (u32vector? _%datum166965%_)
                                                (s64vector? _%datum166965%_)
                                                (u64vector? _%datum166965%_)
                                                (f32vector? _%datum166965%_)
                                                (f64vector? _%datum166965%_))
                                            _%datum166965%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx166911%_)))))))))))
          (let* ((_%g166915166928%_
                  (lambda (_%g166916166925%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166916166925%_))))
                 (_%g166914166962%_
                  (lambda (_%g166916166931%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166916166931%_))
                        (let ((_%e166918166933%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166916166931%_))))
                          (let ((_%hd166919166936%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166918166933%_)))
                                (_%tl166920166938%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166918166933%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166920166938%_))
                                (let ((_%e166921166941%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166920166938%_))))
                                  (let ((_%hd166922166944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166921166941%_)))
                                        (_%tl166923166946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166921166941%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl166923166946%_))
                                        ((lambda (_%g166917166949%_)
                                           (cons 'quote
                                                 (cons (_%generate1166913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g166917166949%_)))
                                                       '())))
                                         _%hd166922166944%_)
                                        (_%g166915166928%_
                                         _%g166916166931%_))))
                                (_%g166915166928%_ _%g166916166931%_))))
                        (_%g166915166928%_ _%g166916166931%_)))))
            (_%g166914166962%_ _%stx166911%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self166357%_ _%stx166358%_)
        (letrec ((_%compile-call166360%_
                  (lambda (_%rator166647%_ _%rands166648%_)
                    (let ((_%rator166654%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self166357%_
                              _%rator166647%_)))
                          (_%rands166655%_
                           (map (lambda (_%g166649166651%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self166357%_
                                     _%g166649166651%_)))
                                _%rands166648%_)))
                      (let* ((_%__stx172374172375%_ _%rator166654%_)
                             (_%g166658166710%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx172374172375%_)))))
                        (let ((_%__kont172376172377%_
                               (lambda (_%g166660166830%_
                                        _%g166661166831%_
                                        _%g166662166832%_
                                        _%g166663166833%_)
                                 (if (let ((__tmp173046
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands166655%_)))
                                           (__tmp173044
                                            (length (let ((__tmp173045
                                                           (lambda (_%g166869166872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g166870166874%_)
                     (cons _%g166869166872%_ _%g166870166874%_))))
              (declare (not safe))
              (__foldr1 __tmp173045 '() _%g166662166832%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp173046 __tmp173044))
                                     (let* ((_%id166877%_ _%g166663166833%_)
                                            (_%args166886%_
                                             (let ((__tmp173047
                                                    (lambda (_%g166878166881%_
                                                             _%g166879166883%_)
                                                      (cons _%g166878166881%_
                                                            _%g166879166883%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173047
                                                '()
                                                _%g166662166832%_)))
                                            (_%body166895%_
                                             (let ((__tmp173048
                                                    (lambda (_%g166887166890%_
                                                             _%g166888166892%_)
                                                      (cons _%g166887166890%_
                                                            _%g166888166892%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp173048
                                                '()
                                                _%g166661166831%_)))
                                            (_%init166897%_
                                             (map list
                                                  _%args166886%_
                                                  _%rands166655%_)))
                                       (cons 'let
                                             (cons _%id166877%_
                                                   (cons _%init166897%_
                                                         _%body166895%_))))
                                     (let ((__tmp173049
                                            (let ((__tmp173050
                                                   (lambda (_%g166899166902%_
                                                            _%g166900166904%_)
                                                     (cons _%g166899166902%_
                                                           _%g166900166904%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp173050
                                               '()
                                               _%g166662166832%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx166358%_
                                        __tmp173049
                                        _%rands166655%_)))))
                              (_%__kont172382172383%_
                               (lambda ()
                                 (cons _%rator166654%_ _%rands166655%_))))
                          (let ((_%__match172441172442%_
                                 (lambda (_%e166664166722%_
                                          _%hd166665166725%_
                                          _%tl166666166727%_
                                          _%e166667166730%_
                                          _%hd166668166733%_
                                          _%tl166669166735%_
                                          _%e166670166738%_
                                          _%hd166671166741%_
                                          _%tl166672166743%_
                                          _%e166673166746%_
                                          _%hd166674166749%_
                                          _%tl166675166751%_
                                          _%e166676166754%_
                                          _%hd166677166757%_
                                          _%tl166678166759%_
                                          _%e166679166762%_
                                          _%hd166680166765%_
                                          _%tl166681166767%_
                                          _%e166682166770%_
                                          _%hd166683166773%_
                                          _%tl166684166775%_
                                          _%__splice172378172379%_
                                          _%target166685166778%_
                                          _%tl166687166780%_)
                                   (letrec ((_%loop166688166783%_
                                             (lambda (_%hd166686166786%_
                                                      _%arg166692166788%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd166686166786%_))
                                                   (let ((_%e166689166790%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd166686166786%_))))
                                                     (let ((_%lp-tl166691166795%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e166689166790%_)))
                                                           (_%lp-hd166690166793%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e166689166790%_))))
                                                       (_%loop166688166783%_
                                                        _%lp-tl166691166795%_
                                                        (cons _%lp-hd166690166793%_
                                                              _%arg166692166788%_))))
                                                   (let ((_%arg166693166798%_
                                                          (reverse _%arg166692166788%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl166684166775%_))
                                                         (let ((_%__splice172380172381%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl166684166775%_
                           '0))))
                   (let ((_%tl166696166802%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172380172381%_ '1)))
                         (_%target166694166800%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice172380172381%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl166696166802%_))
                         (letrec ((_%loop166697166805%_
                                   (lambda (_%hd166695166808%_
                                            _%body166701166810%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd166695166808%_))
                                         (let ((_%e166698166812%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd166695166808%_))))
                                           (let ((_%lp-tl166700166817%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e166698166812%_)))
                                                 (_%lp-hd166699166815%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e166698166812%_))))
                                             (_%loop166697166805%_
                                              _%lp-tl166700166817%_
                                              (cons _%lp-hd166699166815%_
                                                    _%body166701166810%_))))
                                         (let ((_%body166702166820%_
                                                (reverse _%body166701166810%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl166678166759%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl166672166743%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl166669166735%_))
                                                       (let ((_%e166703166822%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl166669166735%_))))
                 (let ((_%tl166705166827%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e166703166822%_)))
                       (_%hd166704166825%_
                        (let ()
                          (declare (not safe))
                          (##car _%e166703166822%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl166705166827%_))
                       (let ((_%g166660166830%_ _%hd166704166825%_)
                             (_%g166661166831%_ _%body166702166820%_)
                             (_%g166662166832%_ _%arg166693166798%_)
                             (_%g166663166833%_ _%hd166674166749%_))
                         (if (eq? _%g166663166833%_ _%g166660166830%_)
                             (_%__kont172376172377%_
                              _%g166660166830%_
                              _%g166661166831%_
                              _%g166662166832%_
                              _%g166663166833%_)
                             (_%__kont172382172383%_)))
                       (_%__kont172382172383%_))))
               (_%__kont172382172383%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172382172383%_))
                                               (_%__kont172382172383%_)))))))
                           (_%loop166697166805%_ _%target166694166800%_ '()))
                         (_%__kont172382172383%_))))
                 (_%__kont172382172383%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop166688166783%_
                                      _%target166685166778%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172374172375%_))
                                (let ((_%e166664166722%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172374172375%_))))
                                  (let ((_%tl166666166727%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166664166722%_)))
                                        (_%hd166665166725%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166664166722%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166665166725%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd166665166725%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166666166727%_))
                                                (let ((_%e166667166730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166666166727%_))))
                                                  (let ((_%tl166669166735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166667166730%_)))
                                                        (_%hd166668166733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166667166730%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd166668166733%_))
                                                        (let ((_%e166670166738%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd166668166733%_))))
                  (let ((_%tl166672166743%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166670166738%_)))
                        (_%hd166671166741%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166670166738%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd166671166741%_))
                        (let ((_%e166673166746%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd166671166741%_))))
                          (let ((_%tl166675166751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166673166746%_)))
                                (_%hd166674166749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166673166746%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166675166751%_))
                                (let ((_%e166676166754%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166675166751%_))))
                                  (let ((_%tl166678166759%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166676166754%_)))
                                        (_%hd166677166757%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166676166754%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd166677166757%_))
                                        (let ((_%e166679166762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd166677166757%_))))
                                          (let ((_%tl166681166767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e166679166762%_)))
                                                (_%hd166680166765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e166679166762%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd166680166765%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd166680166765%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl166681166767%_))
                                                        (let ((_%e166682166770%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl166681166767%_))))
                  (let ((_%tl166684166775%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e166682166770%_)))
                        (_%hd166683166773%_
                         (let ()
                           (declare (not safe))
                           (##car _%e166682166770%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd166683166773%_))
                        (let ((_%__splice172378172379%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd166683166773%_
                                  '0))))
                          (let ((_%tl166687166780%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice172378172379%_ '1)))
                                (_%target166685166778%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice172378172379%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl166687166780%_))
                                (_%__match172441172442%_
                                 _%e166664166722%_
                                 _%hd166665166725%_
                                 _%tl166666166727%_
                                 _%e166667166730%_
                                 _%hd166668166733%_
                                 _%tl166669166735%_
                                 _%e166670166738%_
                                 _%hd166671166741%_
                                 _%tl166672166743%_
                                 _%e166673166746%_
                                 _%hd166674166749%_
                                 _%tl166675166751%_
                                 _%e166676166754%_
                                 _%hd166677166757%_
                                 _%tl166678166759%_
                                 _%e166679166762%_
                                 _%hd166680166765%_
                                 _%tl166681166767%_
                                 _%e166682166770%_
                                 _%hd166683166773%_
                                 _%tl166684166775%_
                                 _%__splice172378172379%_
                                 _%target166685166778%_
                                 _%tl166687166780%_)
                                (_%__kont172382172383%_))))
                        (_%__kont172382172383%_))))
                (_%__kont172382172383%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172382172383%_))
                                                (_%__kont172382172383%_))))
                                        (_%__kont172382172383%_))))
                                (_%__kont172382172383%_))))
                        (_%__kont172382172383%_))))
                (_%__kont172382172383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont172382172383%_))
                                            (_%__kont172382172383%_))
                                        (_%__kont172382172383%_))))
                                (_%__kont172382172383%_)))))))))
          (let* ((_%g166362166385%_
                  (lambda (_%g166363166382%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g166363166382%_))))
                 (_%g166361166644%_
                  (lambda (_%g166363166388%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g166363166388%_))
                        (let ((_%e166366166390%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g166363166388%_))))
                          (let ((_%hd166367166393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e166366166390%_)))
                                (_%tl166368166395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e166366166390%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl166368166395%_))
                                (let ((_%e166369166398%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl166368166395%_))))
                                  (let ((_%hd166370166401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166369166398%_)))
                                        (_%tl166371166403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166369166398%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl166371166403%_))
                                        (let ((_g173051_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl166371166403%_
                                                  '0))))
                                          (begin
                                            (let ((_g173052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g173051_)
                                                         (##values-length
                                                          _g173051_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g173052_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g173052_)))
                                            (let ((_%target166372166406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173051_
                                                      0)))
                                                  (_%tl166374166408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g173051_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl166374166408%_))
                                                  (letrec ((_%loop166375166411%_
                                                            (lambda (_%hd166373166414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand166379166416%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd166373166414%_))
                          (let ((_%e166376166418%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd166373166414%_))))
                            (let ((_%lp-hd166377166421%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166376166418%_)))
                                  (_%lp-tl166378166423%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166376166418%_))))
                              (_%loop166375166411%_
                               _%lp-tl166378166423%_
                               (cons _%lp-hd166377166421%_
                                     _%rand166379166416%_))))
                          (let ((_%rand166380166426%_
                                 (reverse _%rand166379166416%_)))
                            ((lambda (_%g166364166428%_ _%g166365166429%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call166360%_
                                    _%g166365166429%_
                                    (let ((__tmp173053
                                           (lambda (_%g166446166449%_
                                                    _%g166447166451%_)
                                             (cons _%g166446166449%_
                                                   _%g166447166451%_))))
                                      (declare (not safe))
                                      (__foldr1
                                       __tmp173053
                                       '()
                                       _%g166364166428%_)))
                                   (let* ((_%__stx172490172491%_
                                           _%g166365166429%_)
                                          (_%g166455166467%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx172490172491%_)))))
                                     (let ((_%__kont172492172493%_
                                            (lambda ()
                                              (let ((_%f166504%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self166357%_
                                                        _%g166365166429%_))))
                                                (if (and (let ((__tmp173054
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f166504%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp173054))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f166504%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp166506%_ ((_%rest166509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp173056
                                                (lambda (_%g166626166629%_
                                                         _%g166627166631%_)
                                                  (cons _%g166626166629%_
                                                        _%g166627166631%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp173056
                                            '()
                                            _%g166364166428%_))))
                               (_%bind166511%_ '())
                               (_%args166512%_ '()))
              (let* ((_%rest166513166521%_ _%rest166509%_)
                     (_%else166515166529%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind166511%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f166504%_
                                                      _%args166512%_)
                                                '()))))))
                     (_%K166517166615%_
                      (lambda (_%rest166532%_ _%e166533%_)
                        (let* ((_%__stx172444172445%_ _%e166533%_)
                               (_%g166538166556%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx172444172445%_)))))
                          (let ((_%__kont172446172447%_
                                 (lambda ()
                                   (_%lp166506%_
                                    _%rest166532%_
                                    _%bind166511%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166533%_))
                                          _%args166512%_))))
                                (_%__kont172448172449%_
                                 (lambda ()
                                   (_%lp166506%_
                                    _%rest166532%_
                                    _%bind166511%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e166533%_))
                                          _%args166512%_))))
                                (_%__kont172450172451%_
                                 (lambda ()
                                   (let ((_%tmp166563%_
                                          (let ((__tmp173055
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp173055))))
                                     (_%lp166506%_
                                      _%rest166532%_
                                      (cons (cons _%tmp166563%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e166533%_))
                                                        '()))
                                            _%bind166511%_)
                                      (cons _%tmp166563%_ _%args166512%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx172444172445%_))
                                (let ((_%e166540166594%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx172444172445%_))))
                                  (let ((_%tl166542166599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e166540166594%_)))
                                        (_%hd166541166597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e166540166594%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd166541166597%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd166541166597%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl166542166599%_))
                                                (let ((_%e166543166602%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl166542166599%_))))
                                                  (let ((_%tl166545166607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e166543166602%_)))
                                                        (_%hd166544166605%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e166543166602%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl166545166607%_))
                                                        (_%__kont172446172447%_)
                                                        (_%__kont172450172451%_))))
                                                (_%__kont172450172451%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd166541166597%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl166542166599%_))
                                                    (let ((_%e166549166579%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl166542166599%_))))
                                                      (let ((_%tl166551166584%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e166549166579%_)))
                    (_%hd166550166582%_
                     (let () (declare (not safe)) (##car _%e166549166579%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl166551166584%_))
                    (_%__kont172448172449%_)
                    (_%__kont172450172451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont172450172451%_))
                                                (_%__kont172450172451%_)))
                                        (_%__kont172450172451%_))))
                                (_%__kont172450172451%_)))))))
                (if (pair? _%rest166513166521%_)
                    (let ((_%hd166518166618%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest166513166521%_)))
                          (_%tl166519166620%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest166513166521%_))))
                      (let* ((_%e166623%_ _%hd166518166618%_)
                             (_%rest166625%_ _%tl166519166620%_))
                        (_%K166517166615%_ _%rest166625%_ _%e166623%_)))
                    (_%else166515166529%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call166360%_
                                                     _%g166365166429%_
                                                     (let ((__tmp173057
                                                            (lambda (_%g166633166636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g166634166638%_)
                      (cons _%g166633166636%_ _%g166634166638%_))))
               (declare (not safe))
               (__foldr1 __tmp173057 '() _%g166364166428%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont172494172495%_
                                            (lambda ()
                                              (_%compile-call166360%_
                                               _%g166365166429%_
                                               (let ((__tmp173058
                                                      (lambda (_%g166473166476%_
                                                               _%g166474166478%_)
                                                        (cons _%g166473166476%_
                                                              _%g166474166478%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp173058
                                                  '()
                                                  _%g166364166428%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx172490172491%_))
                                           (let ((_%e166457166486%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx172490172491%_))))
                                             (let ((_%tl166459166491%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e166457166486%_)))
                                                   (_%hd166458166489%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e166457166486%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd166458166489%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd166458166489%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl166459166491%_))
                                                           (let ((_%e166460166494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl166459166491%_))))
                     (let ((_%tl166462166499%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e166460166494%_)))
                           (_%hd166461166497%_
                            (let ()
                              (declare (not safe))
                              (##car _%e166460166494%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl166462166499%_))
                           (_%__kont172492172493%_)
                           (_%__kont172494172495%_))))
                   (_%__kont172494172495%_))
               (_%__kont172494172495%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont172494172495%_))))
                                           (_%__kont172494172495%_))))))
                             _%rand166380166426%_
                             _%hd166370166401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop166375166411%_
                                                     _%target166372166406%_
                                                     '()))
                                                  (_%g166362166385%_
                                                   _%g166363166388%_)))))
                                        (_%g166362166385%_
                                         _%g166363166388%_))))
                                (_%g166362166385%_ _%g166363166388%_))))
                        (_%g166362166385%_ _%g166363166388%_)))))
            (_%g166361166644%_ _%stx166358%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self166102%_ _%stx166103%_)
        (let* ((_%__stx172562172563%_ _%stx166103%_)
               (_%g166106166135%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172562172563%_)))))
          (let ((_%__kont172564172565%_
                 (lambda (_%g166108166201%_ _%g166109166202%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self166102%_
                        _%stx166103%_)
                       (let ((_%f166224%_
                              (let ((__tmp173059
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g166109166202%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self166102%_
                                 __tmp173059))))
                         (let _%lp166226%_ ((_%rest166229%_
                                             (reverse (let ((__tmp173061
                                                             (lambda (_%g166346166349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g166347166351%_)
                       (cons _%g166346166349%_ _%g166347166351%_))))
                (declare (not safe))
                (__foldr1 __tmp173061 '() _%g166108166201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind166231%_ '())
                                            (_%args166232%_ '()))
                           (let* ((_%rest166233166241%_ _%rest166229%_)
                                  (_%else166235166249%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind166231%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f166224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args166232%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K166237166335%_
                                   (lambda (_%rest166252%_ _%e166253%_)
                                     (let* ((_%__stx172516172517%_ _%e166253%_)
                                            (_%g166258166276%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx172516172517%_)))))
                                       (let ((_%__kont172518172519%_
                                              (lambda ()
                                                (_%lp166226%_
                                                 _%rest166252%_
                                                 _%bind166231%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166253%_))
                                                       _%args166232%_))))
                                             (_%__kont172520172521%_
                                              (lambda ()
                                                (_%lp166226%_
                                                 _%rest166252%_
                                                 _%bind166231%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e166253%_))
                                                       _%args166232%_))))
                                             (_%__kont172522172523%_
                                              (lambda ()
                                                (let ((_%tmp166283%_
                                                       (let ((__tmp173060
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp173060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp166226%_
                                                   _%rest166252%_
                                                   (cons (cons _%tmp166283%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e166253%_))
                             '()))
                 _%bind166231%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp166283%_
                                                         _%args166232%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx172516172517%_))
                                             (let ((_%e166260166314%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx172516172517%_))))
                                               (let ((_%tl166262166319%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e166260166314%_)))
                                                     (_%hd166261166317%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e166260166314%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd166261166317%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd166261166317%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl166262166319%_))
                     (let ((_%e166263166322%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl166262166319%_))))
                       (let ((_%tl166265166327%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e166263166322%_)))
                             (_%hd166264166325%_
                              (let ()
                                (declare (not safe))
                                (##car _%e166263166322%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl166265166327%_))
                             (_%__kont172518172519%_)
                             (_%__kont172522172523%_))))
                     (_%__kont172522172523%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd166261166317%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl166262166319%_))
                         (let ((_%e166269166299%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl166262166319%_))))
                           (let ((_%tl166271166304%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e166269166299%_)))
                                 (_%hd166270166302%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e166269166299%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl166271166304%_))
                                 (_%__kont172520172521%_)
                                 (_%__kont172522172523%_))))
                         (_%__kont172522172523%_))
                     (_%__kont172522172523%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172522172523%_))))
                                             (_%__kont172522172523%_)))))))
                             (if (pair? _%rest166233166241%_)
                                 (let ((_%hd166238166338%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest166233166241%_)))
                                       (_%tl166239166340%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest166233166241%_))))
                                   (let* ((_%e166343%_ _%hd166238166338%_)
                                          (_%rest166345%_ _%tl166239166340%_))
                                     (_%K166237166335%_
                                      _%rest166345%_
                                      _%e166343%_)))
                                 (_%else166235166249%_))))))))
                (_%__kont172568172569%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self166102%_ _%stx166103%_))))
            (let ((_%__match172607172608%_
                   (lambda (_%e166110166147%_
                            _%hd166111166150%_
                            _%tl166112166152%_
                            _%e166113166155%_
                            _%hd166114166158%_
                            _%tl166115166160%_
                            _%e166116166163%_
                            _%hd166117166166%_
                            _%tl166118166168%_
                            _%e166119166171%_
                            _%hd166120166174%_
                            _%tl166121166176%_
                            _%__splice172566172567%_
                            _%target166122166179%_
                            _%tl166124166181%_)
                     (letrec ((_%loop166125166184%_
                               (lambda (_%hd166123166187%_
                                        _%rand166129166189%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd166123166187%_))
                                     (let ((_%e166126166191%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd166123166187%_))))
                                       (let ((_%lp-tl166128166196%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e166126166191%_)))
                                             (_%lp-hd166127166194%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e166126166191%_))))
                                         (_%loop166125166184%_
                                          _%lp-tl166128166196%_
                                          (cons _%lp-hd166127166194%_
                                                _%rand166129166189%_))))
                                     (let ((_%rand166130166199%_
                                            (reverse _%rand166129166189%_)))
                                       (_%__kont172564172565%_
                                        _%rand166130166199%_
                                        _%hd166120166174%_))))))
                       (_%loop166125166184%_ _%target166122166179%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172562172563%_))
                  (let ((_%e166110166147%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172562172563%_))))
                    (let ((_%tl166112166152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e166110166147%_)))
                          (_%hd166111166150%_
                           (let ()
                             (declare (not safe))
                             (##car _%e166110166147%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl166112166152%_))
                          (let ((_%e166113166155%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl166112166152%_))))
                            (let ((_%tl166115166160%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e166113166155%_)))
                                  (_%hd166114166158%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e166113166155%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd166114166158%_))
                                  (let ((_%e166116166163%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd166114166158%_))))
                                    (let ((_%tl166118166168%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e166116166163%_)))
                                          (_%hd166117166166%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e166116166163%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd166117166166%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd166117166166%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl166118166168%_))
                                                  (let ((_%e166119166171%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl166118166168%_))))
                                                    (let ((_%tl166121166176%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e166119166171%_)))
                                                          (_%hd166120166174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e166119166171%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl166121166176%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl166115166160%_))
                      (let ((_%__splice172566172567%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl166115166160%_
                                '0))))
                        (let ((_%tl166124166181%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172566172567%_ '1)))
                              (_%target166122166179%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172566172567%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl166124166181%_))
                              (_%__match172607172608%_
                               _%e166110166147%_
                               _%hd166111166150%_
                               _%tl166112166152%_
                               _%e166113166155%_
                               _%hd166114166158%_
                               _%tl166115166160%_
                               _%e166116166163%_
                               _%hd166117166166%_
                               _%tl166118166168%_
                               _%e166119166171%_
                               _%hd166120166174%_
                               _%tl166121166176%_
                               _%__splice172566172567%_
                               _%target166122166179%_
                               _%tl166124166181%_)
                              (_%__kont172568172569%_))))
                      (_%__kont172568172569%_))
                  (_%__kont172568172569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172568172569%_))
                                              (_%__kont172568172569%_))
                                          (_%__kont172568172569%_))))
                                  (_%__kont172568172569%_))))
                          (_%__kont172568172569%_))))
                  (_%__kont172568172569%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self165914%_ _%stx165915%_)
        (letrec ((_%simplify165917%_
                  (lambda (_%code166002%_)
                    (let* ((_%code166003166021%_ _%code166002%_)
                           (_%else166005166029%_ (lambda () _%code166002%_))
                           (_%K166007166065%_
                            (lambda (_%expr166032%_ _%test166033%_)
                              (let* ((_%expr166034166042%_ _%expr166032%_)
                                     (_%else166036166050%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test166033%_
                                                    (cons _%expr166032%_
                                                          '())))))
                                     (_%K166038166055%_
                                      (lambda (_%exprs166053%_)
                                        (cons 'and
                                              (cons _%test166033%_
                                                    _%exprs166053%_)))))
                                (if (pair? _%expr166034166042%_)
                                    (let ((_%hd166039166058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr166034166042%_)))
                                          (_%tl166040166060%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr166034166042%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd166039166058%_ 'and))
                                          (let ((_%exprs166063%_
                                                 _%tl166040166060%_))
                                            (_%K166038166055%_
                                             _%exprs166063%_))
                                          (_%else166036166050%_)))
                                    (_%else166036166050%_))))))
                      (if (pair? _%code166003166021%_)
                          (let ((_%hd166008166068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code166003166021%_)))
                                (_%tl166009166070%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code166003166021%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd166008166068%_ 'if))
                                (if (pair? _%tl166009166070%_)
                                    (let ((_%hd166010166073%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl166009166070%_)))
                                          (_%tl166011166075%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl166009166070%_))))
                                      (let ((_%test166078%_
                                             _%hd166010166073%_))
                                        (if (pair? _%tl166011166075%_)
                                            (let ((_%hd166012166080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl166011166075%_)))
                                                  (_%tl166013166082%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl166011166075%_))))
                                              (let ((_%expr166085%_
                                                     _%hd166012166080%_))
                                                (if (pair? _%tl166013166082%_)
                                                    (let ((_%hd166014166087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl166013166082%_)))
                                                          (_%tl166015166089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl166013166082%_))))
                                                      (if (pair? _%hd166014166087%_)
                                                          (let ((_%hd166016166092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd166014166087%_)))
                        (_%tl166017166094%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd166014166087%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd166016166092%_ 'quote))
                        (if (pair? _%tl166017166094%_)
                            (let ((_%hd166018166097%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl166017166094%_)))
                                  (_%tl166019166099%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl166017166094%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd166018166097%_ '#f))
                                  (if (null? _%tl166019166099%_)
                                      (if (null? _%tl166015166089%_)
                                          (_%K166007166065%_
                                           _%expr166085%_
                                           _%test166078%_)
                                          (_%else166005166029%_))
                                      (_%else166005166029%_))
                                  (_%else166005166029%_)))
                            (_%else166005166029%_))
                        (_%else166005166029%_)))
                  (_%else166005166029%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else166005166029%_))))
                                            (_%else166005166029%_))))
                                    (_%else166005166029%_))
                                (_%else166005166029%_)))
                          (_%else166005166029%_))))))
          (let* ((_%g165919165940%_
                  (lambda (_%g165920165937%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g165920165937%_))))
                 (_%g165918165999%_
                  (lambda (_%g165920165943%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g165920165943%_))
                        (let ((_%e165924165945%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g165920165943%_))))
                          (let ((_%hd165925165948%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165924165945%_)))
                                (_%tl165926165950%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165924165945%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl165926165950%_))
                                (let ((_%e165927165953%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl165926165950%_))))
                                  (let ((_%hd165928165956%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165927165953%_)))
                                        (_%tl165929165958%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165927165953%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165929165958%_))
                                        (let ((_%e165930165961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165929165958%_))))
                                          (let ((_%hd165931165964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165930165961%_)))
                                                (_%tl165932165966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165930165961%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl165932165966%_))
                                                (let ((_%e165933165969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl165932165966%_))))
                                                  (let ((_%hd165934165972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e165933165969%_)))
                                                        (_%tl165935165974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e165933165969%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl165935165974%_))
                                                        ((lambda (_%g165921165977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g165922165978%_
                          _%g165923165979%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify165917%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self165914%_
                                       _%g165923165979%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self165914%_
                                             _%g165922165978%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self165914%_
                                                   _%g165921165977%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp173062
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self165914%_
                                               _%g165923165979%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp173062
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165914%_
                                            _%g165922165978%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165914%_
                                                  _%g165921165977%_))
                                               '()))))))
                 _%hd165934165972%_
                 _%hd165931165964%_
                 _%hd165928165956%_)
                (_%g165919165940%_ _%g165920165943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g165919165940%_
                                                 _%g165920165943%_))))
                                        (_%g165919165940%_
                                         _%g165920165943%_))))
                                (_%g165919165940%_ _%g165920165943%_))))
                        (_%g165919165940%_ _%g165920165943%_)))))
            (_%g165918165999%_ _%stx165915%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self165862%_ _%stx165863%_)
        (let* ((_%g165865165878%_
                (lambda (_%g165866165875%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165866165875%_))))
               (_%g165864165911%_
                (lambda (_%g165866165881%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165866165881%_))
                      (let ((_%e165868165883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165866165881%_))))
                        (let ((_%hd165869165886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165868165883%_)))
                              (_%tl165870165888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165868165883%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165870165888%_))
                              (let ((_%e165871165891%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165870165888%_))))
                                (let ((_%hd165872165894%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165871165891%_)))
                                      (_%tl165873165896%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165871165891%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165873165896%_))
                                      ((lambda (_%g165867165899%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g165867165899%_)))
                                       _%hd165872165894%_)
                                      (_%g165865165878%_ _%g165866165881%_))))
                              (_%g165865165878%_ _%g165866165881%_))))
                      (_%g165865165878%_ _%g165866165881%_)))))
          (_%g165864165911%_ _%stx165863%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self165794%_ _%stx165795%_)
        (let* ((_%g165797165814%_
                (lambda (_%g165798165811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165798165811%_))))
               (_%g165796165859%_
                (lambda (_%g165798165817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165798165817%_))
                      (let ((_%e165801165819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165798165817%_))))
                        (let ((_%hd165802165822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165801165819%_)))
                              (_%tl165803165824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165801165819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165803165824%_))
                              (let ((_%e165804165827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165803165824%_))))
                                (let ((_%hd165805165830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165804165827%_)))
                                      (_%tl165806165832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165804165827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165806165832%_))
                                      (let ((_%e165807165835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165806165832%_))))
                                        (let ((_%hd165808165838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165807165835%_)))
                                              (_%tl165809165840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165807165835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165809165840%_))
                                              ((lambda (_%g165799165843%_
                                                        _%g165800165844%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g165800165844%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self165794%_
                              _%g165799165843%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165808165838%_
                                               _%hd165805165830%_)
                                              (_%g165797165814%_
                                               _%g165798165817%_))))
                                      (_%g165797165814%_ _%g165798165817%_))))
                              (_%g165797165814%_ _%g165798165817%_))))
                      (_%g165797165814%_ _%g165798165817%_)))))
          (_%g165796165859%_ _%stx165795%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self165605%_ _%stx165606%_)
        (let* ((_%g165608165625%_
                (lambda (_%g165609165622%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165609165622%_))))
               (_%g165607165791%_
                (lambda (_%g165609165628%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165609165628%_))
                      (let ((_%e165612165630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165609165628%_))))
                        (let ((_%hd165613165633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165612165630%_)))
                              (_%tl165614165635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165612165630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165614165635%_))
                              (let ((_%e165615165638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165614165635%_))))
                                (let ((_%hd165616165641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165615165638%_)))
                                      (_%tl165617165643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165615165638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165617165643%_))
                                      (let ((_%e165618165646%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165617165643%_))))
                                        (let ((_%hd165619165649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165618165646%_)))
                                              (_%tl165620165651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165618165646%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165620165651%_))
                                              ((lambda (_%g165610165654%_
                                                        _%g165611165655%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165605%_ _%g165610165654%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165605%_
                                  _%g165611165655%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165670%_ ((_%rest165673%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165611165655%_
                                       (cons _%g165610165654%_ '())))
                                (_%bind165675%_ '())
                                (_%args165676%_ '()))
               (let* ((_%rest165677165685%_ _%rest165673%_)
                      (_%else165679165693%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165675%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args165676%_)
                                                 '()))))))
                      (_%K165681165779%_
                       (lambda (_%rest165696%_ _%e165697%_)
                         (let* ((_%__stx172610172611%_ _%e165697%_)
                                (_%g165702165720%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172610172611%_)))))
                           (let ((_%__kont172612172613%_
                                  (lambda ()
                                    (_%lp165670%_
                                     _%rest165696%_
                                     _%bind165675%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165697%_))
                                           _%args165676%_))))
                                 (_%__kont172614172615%_
                                  (lambda ()
                                    (_%lp165670%_
                                     _%rest165696%_
                                     _%bind165675%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165697%_))
                                           _%args165676%_))))
                                 (_%__kont172616172617%_
                                  (lambda ()
                                    (let ((_%tmp165727%_
                                           (let ((__tmp173063
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173063))))
                                      (_%lp165670%_
                                       _%rest165696%_
                                       (cons (cons _%tmp165727%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165697%_))
                                                         '()))
                                             _%bind165675%_)
                                       (cons _%tmp165727%_ _%args165676%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172610172611%_))
                                 (let ((_%e165704165758%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172610172611%_))))
                                   (let ((_%tl165706165763%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165704165758%_)))
                                         (_%hd165705165761%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165704165758%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165705165761%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165705165761%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165706165763%_))
                                                 (let ((_%e165707165766%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165706165763%_))))
                                                   (let ((_%tl165709165771%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165707165766%_)))
                                                         (_%hd165708165769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165707165766%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165709165771%_))
                                                         (_%__kont172612172613%_)
                                                         (_%__kont172616172617%_))))
                                                 (_%__kont172616172617%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165705165761%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165706165763%_))
                                                     (let ((_%e165713165743%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165706165763%_))))
                                                       (let ((_%tl165715165748%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165713165743%_)))
                     (_%hd165714165746%_
                      (let () (declare (not safe)) (##car _%e165713165743%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165715165748%_))
                     (_%__kont172614172615%_)
                     (_%__kont172616172617%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172616172617%_))
                                                 (_%__kont172616172617%_)))
                                         (_%__kont172616172617%_))))
                                 (_%__kont172616172617%_)))))))
                 (if (pair? _%rest165677165685%_)
                     (let ((_%hd165682165782%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165677165685%_)))
                           (_%tl165683165784%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165677165685%_))))
                       (let* ((_%e165787%_ _%hd165682165782%_)
                              (_%rest165789%_ _%tl165683165784%_))
                         (_%K165681165779%_ _%rest165789%_ _%e165787%_)))
                     (_%else165679165693%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165619165649%_
                                               _%hd165616165641%_)
                                              (_%g165608165625%_
                                               _%g165609165628%_))))
                                      (_%g165608165625%_ _%g165609165628%_))))
                              (_%g165608165625%_ _%g165609165628%_))))
                      (_%g165608165625%_ _%g165609165628%_)))))
          (_%g165607165791%_ _%stx165606%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self165416%_ _%stx165417%_)
        (let* ((_%g165419165436%_
                (lambda (_%g165420165433%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165420165433%_))))
               (_%g165418165602%_
                (lambda (_%g165420165439%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165420165439%_))
                      (let ((_%e165423165441%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165420165439%_))))
                        (let ((_%hd165424165444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165423165441%_)))
                              (_%tl165425165446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165423165441%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165425165446%_))
                              (let ((_%e165426165449%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165425165446%_))))
                                (let ((_%hd165427165452%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165426165449%_)))
                                      (_%tl165428165454%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165426165449%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165428165454%_))
                                      (let ((_%e165429165457%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165428165454%_))))
                                        (let ((_%hd165430165460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165429165457%_)))
                                              (_%tl165431165462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165429165457%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165431165462%_))
                                              ((lambda (_%g165421165465%_
                                                        _%g165422165466%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self165416%_ _%g165421165465%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self165416%_
                                  _%g165422165466%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp165481%_ ((_%rest165484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g165422165466%_
                                       (cons _%g165421165465%_ '())))
                                (_%bind165486%_ '())
                                (_%args165487%_ '()))
               (let* ((_%rest165488165496%_ _%rest165484%_)
                      (_%else165490165504%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind165486%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args165487%_)
                                                 '()))))))
                      (_%K165492165590%_
                       (lambda (_%rest165507%_ _%e165508%_)
                         (let* ((_%__stx172656172657%_ _%e165508%_)
                                (_%g165513165531%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx172656172657%_)))))
                           (let ((_%__kont172658172659%_
                                  (lambda ()
                                    (_%lp165481%_
                                     _%rest165507%_
                                     _%bind165486%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165508%_))
                                           _%args165487%_))))
                                 (_%__kont172660172661%_
                                  (lambda ()
                                    (_%lp165481%_
                                     _%rest165507%_
                                     _%bind165486%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e165508%_))
                                           _%args165487%_))))
                                 (_%__kont172662172663%_
                                  (lambda ()
                                    (let ((_%tmp165538%_
                                           (let ((__tmp173064
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp173064))))
                                      (_%lp165481%_
                                       _%rest165507%_
                                       (cons (cons _%tmp165538%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e165508%_))
                                                         '()))
                                             _%bind165486%_)
                                       (cons _%tmp165538%_ _%args165487%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx172656172657%_))
                                 (let ((_%e165515165569%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx172656172657%_))))
                                   (let ((_%tl165517165574%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e165515165569%_)))
                                         (_%hd165516165572%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e165515165569%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd165516165572%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd165516165572%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl165517165574%_))
                                                 (let ((_%e165518165577%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl165517165574%_))))
                                                   (let ((_%tl165520165582%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e165518165577%_)))
                                                         (_%hd165519165580%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e165518165577%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl165520165582%_))
                                                         (_%__kont172658172659%_)
                                                         (_%__kont172662172663%_))))
                                                 (_%__kont172662172663%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd165516165572%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl165517165574%_))
                                                     (let ((_%e165524165554%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl165517165574%_))))
                                                       (let ((_%tl165526165559%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e165524165554%_)))
                     (_%hd165525165557%_
                      (let () (declare (not safe)) (##car _%e165524165554%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl165526165559%_))
                     (_%__kont172660172661%_)
                     (_%__kont172662172663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont172662172663%_))
                                                 (_%__kont172662172663%_)))
                                         (_%__kont172662172663%_))))
                                 (_%__kont172662172663%_)))))))
                 (if (pair? _%rest165488165496%_)
                     (let ((_%hd165493165593%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest165488165496%_)))
                           (_%tl165494165595%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest165488165496%_))))
                       (let* ((_%e165598%_ _%hd165493165593%_)
                              (_%rest165600%_ _%tl165494165595%_))
                         (_%K165492165590%_ _%rest165600%_ _%e165598%_)))
                     (_%else165490165504%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd165430165460%_
                                               _%hd165427165452%_)
                                              (_%g165419165436%_
                                               _%g165420165439%_))))
                                      (_%g165419165436%_ _%g165420165439%_))))
                              (_%g165419165436%_ _%g165420165439%_))))
                      (_%g165419165436%_ _%g165420165439%_)))))
          (_%g165418165602%_ _%stx165417%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self165332%_ _%stx165333%_)
        (let* ((_%g165335165356%_
                (lambda (_%g165336165353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165336165353%_))))
               (_%g165334165413%_
                (lambda (_%g165336165359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165336165359%_))
                      (let ((_%e165340165361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165336165359%_))))
                        (let ((_%hd165341165364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165340165361%_)))
                              (_%tl165342165366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165340165361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165342165366%_))
                              (let ((_%e165343165369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165342165366%_))))
                                (let ((_%hd165344165372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165343165369%_)))
                                      (_%tl165345165374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165343165369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165345165374%_))
                                      (let ((_%e165346165377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165345165374%_))))
                                        (let ((_%hd165347165380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165346165377%_)))
                                              (_%tl165348165382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165346165377%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165348165382%_))
                                              (let ((_%e165349165385%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165348165382%_))))
                                                (let ((_%hd165350165388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165349165385%_)))
                                                      (_%tl165351165390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165349165385%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165351165390%_))
                                                      ((lambda (_%g165337165393%_
                                                                _%g165338165394%_
                                                                _%g165339165395%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165332%_
                                _%g165337165393%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165332%_
                                      _%g165338165394%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165332%_
                                            _%g165339165395%_))
                                         (cons ''#f '()))))))
               _%hd165350165388%_
               _%hd165347165380%_
               _%hd165344165372%_)
              (_%g165335165356%_ _%g165336165359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165335165356%_
                                               _%g165336165359%_))))
                                      (_%g165335165356%_ _%g165336165359%_))))
                              (_%g165335165356%_ _%g165336165359%_))))
                      (_%g165335165356%_ _%g165336165359%_)))))
          (_%g165334165413%_ _%stx165333%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self165232%_ _%stx165233%_)
        (let* ((_%g165235165260%_
                (lambda (_%g165236165257%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165236165257%_))))
               (_%g165234165329%_
                (lambda (_%g165236165263%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165236165263%_))
                      (let ((_%e165241165265%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165236165263%_))))
                        (let ((_%hd165242165268%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165241165265%_)))
                              (_%tl165243165270%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165241165265%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165243165270%_))
                              (let ((_%e165244165273%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165243165270%_))))
                                (let ((_%hd165245165276%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165244165273%_)))
                                      (_%tl165246165278%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165244165273%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165246165278%_))
                                      (let ((_%e165247165281%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165246165278%_))))
                                        (let ((_%hd165248165284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165247165281%_)))
                                              (_%tl165249165286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165247165281%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165249165286%_))
                                              (let ((_%e165250165289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165249165286%_))))
                                                (let ((_%hd165251165292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165250165289%_)))
                                                      (_%tl165252165294%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165250165289%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165252165294%_))
                                                      (let ((_%e165253165297%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165252165294%_))))
                (let ((_%hd165254165300%_
                       (let () (declare (not safe)) (##car _%e165253165297%_)))
                      (_%tl165255165302%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165253165297%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165255165302%_))
                      ((lambda (_%g165237165305%_
                                _%g165238165306%_
                                _%g165239165307%_
                                _%g165240165308%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165232%_
                                        _%g165238165306%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165232%_
                                              _%g165237165305%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165232%_
                                                    _%g165239165307%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165232%_
                                                          _%g165240165308%_))
                                                       (cons ''#f '())))))))
                       _%hd165254165300%_
                       _%hd165251165292%_
                       _%hd165248165284%_
                       _%hd165245165276%_)
                      (_%g165235165260%_ _%g165236165263%_))))
              (_%g165235165260%_ _%g165236165263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165235165260%_
                                               _%g165236165263%_))))
                                      (_%g165235165260%_ _%g165236165263%_))))
                              (_%g165235165260%_ _%g165236165263%_))))
                      (_%g165235165260%_ _%g165236165263%_)))))
          (_%g165234165329%_ _%stx165233%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self165148%_ _%stx165149%_)
        (let* ((_%g165151165172%_
                (lambda (_%g165152165169%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165152165169%_))))
               (_%g165150165229%_
                (lambda (_%g165152165175%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165152165175%_))
                      (let ((_%e165156165177%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165152165175%_))))
                        (let ((_%hd165157165180%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165156165177%_)))
                              (_%tl165158165182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165156165177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165158165182%_))
                              (let ((_%e165159165185%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165158165182%_))))
                                (let ((_%hd165160165188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165159165185%_)))
                                      (_%tl165161165190%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165159165185%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165161165190%_))
                                      (let ((_%e165162165193%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165161165190%_))))
                                        (let ((_%hd165163165196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165162165193%_)))
                                              (_%tl165164165198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165162165193%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165164165198%_))
                                              (let ((_%e165165165201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165164165198%_))))
                                                (let ((_%hd165166165204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165165165201%_)))
                                                      (_%tl165167165206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165165165201%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl165167165206%_))
                                                      ((lambda (_%g165153165209%_
                                                                _%g165154165210%_
                                                                _%g165155165211%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self165148%_
                                _%g165153165209%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self165148%_
                                      _%g165154165210%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self165148%_
                                            _%g165155165211%_))
                                         (cons ''#f '()))))))
               _%hd165166165204%_
               _%hd165163165196%_
               _%hd165160165188%_)
              (_%g165151165172%_ _%g165152165175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165151165172%_
                                               _%g165152165175%_))))
                                      (_%g165151165172%_ _%g165152165175%_))))
                              (_%g165151165172%_ _%g165152165175%_))))
                      (_%g165151165172%_ _%g165152165175%_)))))
          (_%g165150165229%_ _%stx165149%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self165048%_ _%stx165049%_)
        (let* ((_%g165051165076%_
                (lambda (_%g165052165073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165052165073%_))))
               (_%g165050165145%_
                (lambda (_%g165052165079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165052165079%_))
                      (let ((_%e165057165081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165052165079%_))))
                        (let ((_%hd165058165084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165057165081%_)))
                              (_%tl165059165086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165057165081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165059165086%_))
                              (let ((_%e165060165089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165059165086%_))))
                                (let ((_%hd165061165092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165060165089%_)))
                                      (_%tl165062165094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165060165089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165062165094%_))
                                      (let ((_%e165063165097%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165062165094%_))))
                                        (let ((_%hd165064165100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165063165097%_)))
                                              (_%tl165065165102%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165063165097%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl165065165102%_))
                                              (let ((_%e165066165105%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl165065165102%_))))
                                                (let ((_%hd165067165108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e165066165105%_)))
                                                      (_%tl165068165110%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e165066165105%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl165068165110%_))
                                                      (let ((_%e165069165113%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl165068165110%_))))
                (let ((_%hd165070165116%_
                       (let () (declare (not safe)) (##car _%e165069165113%_)))
                      (_%tl165071165118%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e165069165113%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl165071165118%_))
                      ((lambda (_%g165053165121%_
                                _%g165054165122%_
                                _%g165055165123%_
                                _%g165056165124%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self165048%_
                                        _%g165054165122%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self165048%_
                                              _%g165053165121%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self165048%_
                                                    _%g165055165123%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165048%_
                                                          _%g165056165124%_))
                                                       (cons ''#f '())))))))
                       _%hd165070165116%_
                       _%hd165067165108%_
                       _%hd165064165100%_
                       _%hd165061165092%_)
                      (_%g165051165076%_ _%g165052165079%_))))
              (_%g165051165076%_ _%g165052165079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g165051165076%_
                                               _%g165052165079%_))))
                                      (_%g165051165076%_ _%g165052165079%_))))
                              (_%g165051165076%_ _%g165052165079%_))))
                      (_%g165051165076%_ _%g165052165079%_)))))
          (_%g165050165145%_ _%stx165049%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self164843%_ _%stx164844%_)
        (let* ((_%g164846164867%_
                (lambda (_%g164847164864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164847164864%_))))
               (_%g164845165045%_
                (lambda (_%g164847164870%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164847164870%_))
                      (let ((_%e164851164872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164847164870%_))))
                        (let ((_%hd164852164875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164851164872%_)))
                              (_%tl164853164877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164851164872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164853164877%_))
                              (let ((_%e164854164880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164853164877%_))))
                                (let ((_%hd164855164883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164854164880%_)))
                                      (_%tl164856164885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164854164880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164856164885%_))
                                      (let ((_%e164857164888%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164856164885%_))))
                                        (let ((_%hd164858164891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164857164888%_)))
                                              (_%tl164859164893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164857164888%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164859164893%_))
                                              (let ((_%e164860164896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164859164893%_))))
                                                (let ((_%hd164861164899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164860164896%_)))
                                                      (_%tl164862164901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164860164896%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl164862164901%_))
                                                      ((lambda (_%g164848164904%_
                                                                _%g164849164905%_
                                                                _%g164850164906%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self164843%_
                                    _%g164848164904%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self164843%_
                                          _%g164849164905%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp164924%_ ((_%rest164927%_
                                         (cons _%g164849164905%_
                                               (cons _%g164848164904%_ '())))
                                        (_%bind164929%_ '())
                                        (_%args164930%_ '()))
                       (let* ((_%rest164931164939%_ _%rest164927%_)
                              (_%else164933164947%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind164929%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp173065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp173065 _%args164930%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K164935165033%_
                               (lambda (_%rest164950%_ _%e164951%_)
                                 (let* ((_%__stx172702172703%_ _%e164951%_)
                                        (_%g164956164974%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx172702172703%_)))))
                                   (let ((_%__kont172704172705%_
                                          (lambda ()
                                            (_%lp164924%_
                                             _%rest164950%_
                                             _%bind164929%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164951%_))
                                                   _%args164930%_))))
                                         (_%__kont172706172707%_
                                          (lambda ()
                                            (_%lp164924%_
                                             _%rest164950%_
                                             _%bind164929%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e164951%_))
                                                   _%args164930%_))))
                                         (_%__kont172708172709%_
                                          (lambda ()
                                            (let ((_%tmp164981%_
                                                   (let ((__tmp173066
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp173066))))
                                              (_%lp164924%_
                                               _%rest164950%_
                                               (cons (cons _%tmp164981%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e164951%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind164929%_)
                                               (cons _%tmp164981%_
                                                     _%args164930%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx172702172703%_))
                                         (let ((_%e164958165012%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx172702172703%_))))
                                           (let ((_%tl164960165017%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e164958165012%_)))
                                                 (_%hd164959165015%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e164958165012%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd164959165015%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd164959165015%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl164960165017%_))
                                                         (let ((_%e164961165020%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl164960165017%_))))
                   (let ((_%tl164963165025%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e164961165020%_)))
                         (_%hd164962165023%_
                          (let ()
                            (declare (not safe))
                            (##car _%e164961165020%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl164963165025%_))
                         (_%__kont172704172705%_)
                         (_%__kont172708172709%_))))
                 (_%__kont172708172709%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd164959165015%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl164960165017%_))
                     (let ((_%e164967164997%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl164960165017%_))))
                       (let ((_%tl164969165002%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e164967164997%_)))
                             (_%hd164968165000%_
                              (let ()
                                (declare (not safe))
                                (##car _%e164967164997%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl164969165002%_))
                             (_%__kont172706172707%_)
                             (_%__kont172708172709%_))))
                     (_%__kont172708172709%_))
                 (_%__kont172708172709%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172708172709%_))))
                                         (_%__kont172708172709%_)))))))
                         (if (pair? _%rest164931164939%_)
                             (let ((_%hd164936165036%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest164931164939%_)))
                                   (_%tl164937165038%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest164931164939%_))))
                               (let* ((_%e165041%_ _%hd164936165036%_)
                                      (_%rest165043%_ _%tl164937165038%_))
                                 (_%K164935165033%_
                                  _%rest165043%_
                                  _%e165041%_)))
                             (_%else164933164947%_))))))
               _%hd164861164899%_
               _%hd164858164891%_
               _%hd164855164883%_)
              (_%g164846164867%_ _%g164847164870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164846164867%_
                                               _%g164847164870%_))))
                                      (_%g164846164867%_ _%g164847164870%_))))
                              (_%g164846164867%_ _%g164847164870%_))))
                      (_%g164846164867%_ _%g164847164870%_)))))
          (_%g164845165045%_ _%stx164844%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self164622%_ _%stx164623%_)
        (let* ((_%g164625164650%_
                (lambda (_%g164626164647%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164626164647%_))))
               (_%g164624164840%_
                (lambda (_%g164626164653%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164626164653%_))
                      (let ((_%e164631164655%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164626164653%_))))
                        (let ((_%hd164632164658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164631164655%_)))
                              (_%tl164633164660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164631164655%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164633164660%_))
                              (let ((_%e164634164663%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164633164660%_))))
                                (let ((_%hd164635164666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164634164663%_)))
                                      (_%tl164636164668%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164634164663%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164636164668%_))
                                      (let ((_%e164637164671%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164636164668%_))))
                                        (let ((_%hd164638164674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164637164671%_)))
                                              (_%tl164639164676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164637164671%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl164639164676%_))
                                              (let ((_%e164640164679%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl164639164676%_))))
                                                (let ((_%hd164641164682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e164640164679%_)))
                                                      (_%tl164642164684%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e164640164679%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl164642164684%_))
                                                      (let ((_%e164643164687%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl164642164684%_))))
                (let ((_%hd164644164690%_
                       (let () (declare (not safe)) (##car _%e164643164687%_)))
                      (_%tl164645164692%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e164643164687%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl164645164692%_))
                      ((lambda (_%g164627164695%_
                                _%g164628164696%_
                                _%g164629164697%_
                                _%g164630164698%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self164622%_
                                            _%g164628164696%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164622%_
                                                  _%g164627164695%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self164622%_
                                                        _%g164629164697%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp164719%_ ((_%rest164722%_
                                                 (cons _%g164629164697%_
                                                       (cons _%g164627164695%_
                                                             (cons _%g164628164696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind164724%_ '())
                                                (_%args164725%_ '()))
                               (let* ((_%rest164726164734%_ _%rest164722%_)
                                      (_%else164728164742%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind164724%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp173067 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp173067 _%args164725%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K164730164828%_
                                       (lambda (_%rest164745%_ _%e164746%_)
                                         (let* ((_%__stx172748172749%_
                                                 _%e164746%_)
                                                (_%g164751164769%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx172748172749%_)))))
                                           (let ((_%__kont172750172751%_
                                                  (lambda ()
                                                    (_%lp164719%_
                                                     _%rest164745%_
                                                     _%bind164724%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164746%_))
                                                           _%args164725%_))))
                                                 (_%__kont172752172753%_
                                                  (lambda ()
                                                    (_%lp164719%_
                                                     _%rest164745%_
                                                     _%bind164724%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e164746%_))
                                                           _%args164725%_))))
                                                 (_%__kont172754172755%_
                                                  (lambda ()
                                                    (let ((_%tmp164776%_
                                                           (let ((__tmp173068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp173068))))
              (_%lp164719%_
               _%rest164745%_
               (cons (cons _%tmp164776%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e164746%_))
                                 '()))
                     _%bind164724%_)
               (cons _%tmp164776%_ _%args164725%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx172748172749%_))
                                                 (let ((_%e164753164807%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx172748172749%_))))
                                                   (let ((_%tl164755164812%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e164753164807%_)))
                                                         (_%hd164754164810%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e164753164807%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd164754164810%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd164754164810%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl164755164812%_))
                         (let ((_%e164756164815%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl164755164812%_))))
                           (let ((_%tl164758164820%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e164756164815%_)))
                                 (_%hd164757164818%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e164756164815%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl164758164820%_))
                                 (_%__kont172750172751%_)
                                 (_%__kont172754172755%_))))
                         (_%__kont172754172755%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd164754164810%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl164755164812%_))
                             (let ((_%e164762164792%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl164755164812%_))))
                               (let ((_%tl164764164797%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e164762164792%_)))
                                     (_%hd164763164795%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e164762164792%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl164764164797%_))
                                     (_%__kont172752172753%_)
                                     (_%__kont172754172755%_))))
                             (_%__kont172754172755%_))
                         (_%__kont172754172755%_)))
                 (_%__kont172754172755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont172754172755%_)))))))
                                 (if (pair? _%rest164726164734%_)
                                     (let ((_%hd164731164831%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest164726164734%_)))
                                           (_%tl164732164833%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest164726164734%_))))
                                       (let* ((_%e164836%_ _%hd164731164831%_)
                                              (_%rest164838%_
                                               _%tl164732164833%_))
                                         (_%K164730164828%_
                                          _%rest164838%_
                                          _%e164836%_)))
                                     (_%else164728164742%_))))))
                       _%hd164644164690%_
                       _%hd164641164682%_
                       _%hd164638164674%_
                       _%hd164635164666%_)
                      (_%g164625164650%_ _%g164626164653%_))))
              (_%g164625164650%_ _%g164626164653%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g164625164650%_
                                               _%g164626164653%_))))
                                      (_%g164625164650%_ _%g164626164653%_))))
                              (_%g164625164650%_ _%g164626164653%_))))
                      (_%g164625164650%_ _%g164626164653%_)))))
          (_%g164624164840%_ _%stx164623%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self164461%_ _%stx164462%_)
        (letrec ((_%import-set-template164464%_
                  (lambda (_%in164567%_ _%phi164568%_)
                    (let ((_%iphi164570%_
                           (fx+ _%phi164568%_
                                (##direct-structure-ref
                                 _%in164567%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports164571%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in164567%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp164573%_ ((_%rest164575%_ _%imports164571%_)
                                         (_%r164576%_ '()))
                        (let* ((_%rest164577164585%_ _%rest164575%_)
                               (_%else164579164593%_ (lambda () _%r164576%_))
                               (_%K164581164610%_
                                (lambda (_%rest164596%_ _%in164597%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in164597%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi164570%_))
                                          (_%lp164573%_
                                           _%rest164596%_
                                           (cons _%in164597%_ _%r164576%_))
                                          (_%lp164573%_
                                           _%rest164596%_
                                           _%r164576%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in164597%_
                                             'gx#module-import::t))
                                          (let ((_%iphi164601%_
                                                 (fx+ _%phi164568%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in164597%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi164601%_))
                                                (_%lp164573%_
                                                 _%rest164596%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in164597%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r164576%_))
                                                (_%lp164573%_
                                                 _%rest164596%_
                                                 _%r164576%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in164597%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi164604%_
                                                     (fx+ _%iphi164570%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in164597%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi164604%_))
                                                    (_%lp164573%_
                                                     _%rest164596%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in164597%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r164576%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi164604%_))
                                                        (_%lp164573%_
                                                         _%rest164596%_
                                                         (let ((__tmp173069
                                                                (_%import-set-template164464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in164597%_
                         _%iphi164570%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r164576%_ __tmp173069)))
                (_%lp164573%_ _%rest164596%_ _%r164576%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp164573%_
                                               _%rest164596%_
                                               _%r164576%_)))))))
                          (if (pair? _%rest164577164585%_)
                              (let ((_%hd164582164613%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164577164585%_)))
                                    (_%tl164583164615%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164577164585%_))))
                                (let* ((_%in164618%_ _%hd164582164613%_)
                                       (_%rest164620%_ _%tl164583164615%_))
                                  (_%K164581164610%_
                                   _%rest164620%_
                                   _%in164618%_)))
                              (_%else164579164593%_))))))))
          (let* ((_%g164466164476%_
                  (lambda (_%g164467164473%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164467164473%_))))
                 (_%g164465164564%_
                  (lambda (_%g164467164479%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164467164479%_))
                        (let ((_%e164469164481%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164467164479%_))))
                          (let ((_%hd164470164484%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164469164481%_)))
                                (_%tl164471164486%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164469164481%_))))
                            ((lambda (_%g164468164489%_)
                               (let ((_%ht164500%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp164502%_ ((_%rest164504%_
                                                     _%g164468164489%_)
                                                    (_%loads164505%_ '()))
                                   (letrec ((_%K164507%_
                                             (lambda (_%ctx164557%_
                                                      _%rest164558%_)
                                               (let ((_%id164560%_
                                                      (##structure-ref
                                                       _%ctx164557%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht164500%_
                                                        _%id164560%_))
                                                     (_%lp164502%_
                                                      _%rest164558%_
                                                      _%loads164505%_)
                                                     (let ((_%rt164562%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id164560%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht164500%_
                                                          _%id164560%_
                                                          _%rt164562%_))
                                                       (_%lp164502%_
                                                        _%rest164558%_
                                                        (cons _%rt164562%_
                                                              _%loads164505%_))))))))
                                     (let* ((_%rest164508164516%_
                                             _%rest164504%_)
                                            (_%else164510164528%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp173071
                                                            (lambda (_%g164523164525%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g164523164525%_)))
                   (__tmp173070 (reverse _%loads164505%_)))
               (declare (not safe))
               (##map __tmp173071 __tmp173070)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K164512164545%_
                                             (lambda (_%rest164531%_
                                                      _%in164532%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in164532%_
                                                      'gx#module-context::t))
                                                   (_%K164507%_
                                                    _%in164532%_
                                                    _%rest164531%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in164532%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in164532%_
                               '3
                               '#f
                               '#f)))
                   (_%K164507%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in164532%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest164531%_)
                   (_%lp164502%_ _%rest164531%_ _%loads164505%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in164532%_
                      'gx#import-set::t))
                   (let ((_%phi164537%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164532%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi164537%_)
                         (_%K164507%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in164532%_
                             '1
                             '#f
                             '#f))
                          _%rest164531%_)
                         (if (fxpositive? _%phi164537%_)
                             (let ((_%deps164541%_
                                    (_%import-set-template164464%_
                                     _%in164532%_
                                     '0)))
                               (_%lp164502%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest164531%_
                                   _%deps164541%_))
                                _%loads164505%_))
                             (_%lp164502%_ _%rest164531%_ _%loads164505%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx164462%_
                      _%in164532%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest164508164516%_)
                                           (let ((_%hd164513164548%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest164508164516%_)))
                                                 (_%tl164514164550%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest164508164516%_))))
                                             (let* ((_%in164553%_
                                                     _%hd164513164548%_)
                                                    (_%rest164555%_
                                                     _%tl164514164550%_))
                                               (_%K164512164545%_
                                                _%rest164555%_
                                                _%in164553%_)))
                                           (_%else164510164528%_)))))))
                             _%tl164471164486%_)))
                        (_%g164466164476%_ _%g164467164479%_)))))
            (_%g164465164564%_ _%stx164462%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self164275%_ _%stx164276%_)
        (letrec ((_%add-lift!164278%_
                  (lambda (_%expr164459%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr164459%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote164279%_
                  (lambda (_%id164456%_ _%marks164457%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id164456%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks164457%_
                                                        '()))))))))
                 (_%generate-simple164280%_
                  (lambda (_%stxq164451%_)
                    (let ((_%gid164453%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid164454%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq164451%_))))
                      (_%add-lift!164278%_
                       (cons 'define
                             (cons _%gid164453%_
                                   (cons (_%generate-syntax-quote164279%_
                                          _%qid164454%_
                                          ''())
                                         '()))))
                      (let ((__tmp173072
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173072 _%stxq164451%_ _%gid164453%_))
                      _%gid164453%_)))
                 (_%generate-serialized164281%_
                  (lambda (_%stxq164441%_ _%marks164442%_)
                    (let* ((_%mark-refs164444%_
                            (map _%generate-mark164282%_ _%marks164442%_))
                           (_%gid164446%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid164448%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq164441%_))))
                      (_%add-lift!164278%_
                       (cons 'define
                             (cons _%gid164446%_
                                   (cons (_%generate-syntax-quote164279%_
                                          _%qid164448%_
                                          (cons 'list _%mark-refs164444%_))
                                         '()))))
                      (let ((__tmp173073
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp173073 _%stxq164441%_ _%gid164446%_))
                      _%gid164446%_)))
                 (_%generate-mark164282%_
                  (lambda (_%mark164426%_)
                    (let ((_%$e164428%_
                           (let ((__tmp173074
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp173074 _%mark164426%_))))
                      (if _%$e164428%_
                          _%$e164428%_
                          (let* ((_%gid164432%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr164434%_
                                  (_%serialize-mark164283%_ _%mark164426%_))
                                 (_%ctx164436%_
                                  (let ((__tmp173075
                                         (##structure-ref
                                          _%mark164426%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp173075)))
                                 (_%ctx-ref164438%_
                                  (if (eq? _%ctx164436%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref164284%_
                                                               _%ctx164436%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp173076
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp173076
                               _%mark164426%_
                               _%gid164432%_))
                            (_%add-lift!164278%_
                             (cons 'define
                                   (cons _%gid164432%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr164434%_ '()))
                   (cons _%ctx-ref164438%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid164432%_)))))
                 (_%serialize-mark164283%_
                  (lambda (_%mark164374%_)
                    (letrec ((_%quote-e164376%_
                              (lambda (_%sym164424%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym164424%_))
                                    _%sym164424%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym164424%_))))))
                      (let* ((_%mark164377164386%_ _%mark164374%_)
                             (_%E164379164389%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark164377164386%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K164380164401%_
                              (lambda (_%trace164392%_
                                       _%phi164393%_
                                       _%ctx164394%_
                                       _%subst164395%_)
                                (let ((_%subs164397%_
                                       (if _%subst164395%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst164395%_))
                                           '())))
                                  (cons _%phi164393%_
                                        (let ((__tmp173077
                                               (lambda (_%pair164399%_)
                                                 (cons (_%quote-e164376%_
                                                        (car _%pair164399%_))
                                                       (_%quote-e164376%_
                                                        (cdr _%pair164399%_))))))
                                          (declare (not safe))
                                          (##map __tmp173077
                                                 _%subs164397%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark164377164386%_
                               'gx#expander-mark::t))
                            (let* ((_%e164381164404%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164377164386%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst164407%_ _%e164381164404%_)
                                   (_%e164382164409%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164377164386%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx164412%_ _%e164382164409%_)
                                   (_%e164383164414%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164377164386%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi164417%_ _%e164383164414%_)
                                   (_%e164384164419%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark164377164386%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace164422%_ _%e164384164419%_))
                              (_%K164380164401%_
                               _%trace164422%_
                               _%phi164417%_
                               _%ctx164412%_
                               _%subst164407%_))
                            (_%E164379164389%_))))))
                 (_%context-ref164284%_
                  (lambda (_%ctx164361%_)
                    (if (let ((__tmp173078
                               (##structure-ref
                                _%ctx164361%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp173078
                           'gx#module-context::t))
                        (let ((_%ctx-ref164363%_
                               (_%context-ref-nested164286%_ _%ctx164361%_))
                              (_%ctx-origin164364%_
                               (_%context-ref-origin164285%_ _%ctx164361%_))
                              (_%origin164365%_
                               (_%context-ref-origin164285%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin164365%_ _%ctx-origin164364%_)
                              (let ((_%ref164367%_
                                     (_%context-ref-nested164286%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp164369%_ ((_%ref164371%_
                                                    (cdr _%ref164367%_))
                                                   (_%ctx-ref164372%_
                                                    (cdr _%ctx-ref164363%_)))
                                  (if (and (pair? _%ref164371%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref164371%_))
                                                (car _%ctx-ref164372%_)))
                                      (_%lp164369%_
                                       (cdr _%ref164371%_)
                                       (cdr _%ctx-ref164372%_))
                                      (cons '#f _%ctx-ref164372%_))))
                              _%ctx-ref164363%_))
                        (let ((__tmp173079
                               (##structure-ref
                                _%ctx164361%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp173079)))))
                 (_%context-ref-origin164285%_
                  (lambda (_%ctx164353%_)
                    (let _%lp164355%_ ((_%ctx164357%_ _%ctx164353%_))
                      (let ((_%super164359%_
                             (##structure-ref
                              _%ctx164357%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164359%_
                               'gx#module-context::t))
                            (_%lp164355%_ _%super164359%_)
                            _%ctx164357%_)))))
                 (_%context-ref-nested164286%_
                  (lambda (_%ctx164344%_)
                    (let _%lp164346%_ ((_%ctx164348%_ _%ctx164344%_)
                                       (_%r164349%_ '()))
                      (let ((_%super164351%_
                             (##structure-ref
                              _%ctx164348%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super164351%_
                               'gx#module-context::t))
                            (_%lp164346%_
                             _%super164351%_
                             (cons (car (##structure-ref
                                         _%ctx164348%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r164349%_))
                            (cons (let ((__tmp173080
                                         (##structure-ref
                                          _%ctx164348%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp173080))
                                  _%r164349%_)))))))
          (let* ((_%g164288164301%_
                  (lambda (_%g164289164298%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g164289164298%_))))
                 (_%g164287164341%_
                  (lambda (_%g164289164304%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g164289164304%_))
                        (let ((_%e164291164306%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g164289164304%_))))
                          (let ((_%hd164292164309%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e164291164306%_)))
                                (_%tl164293164311%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e164291164306%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl164293164311%_))
                                (let ((_%e164294164314%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl164293164311%_))))
                                  (let ((_%hd164295164317%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e164294164314%_)))
                                        (_%tl164296164319%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e164294164314%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl164296164319%_))
                                        ((lambda (_%g164290164322%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g164290164322%_))
                                               (let ((_%$e164335%_
                                                      (let ((__tmp173081
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp173081 _%g164290164322%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e164335%_
                                                     _%$e164335%_
                                                     (let ((_%marks164339%_
                                                            (##direct-structure-ref
                                                             _%g164290164322%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks164339%_)
                                                           (_%generate-simple164280%_
                                                            _%g164290164322%_)
                                                           (_%generate-serialized164281%_
                                                            _%g164290164322%_
                                                            _%marks164339%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g164290164322%_))))
                                         _%hd164295164317%_)
                                        (_%g164288164301%_
                                         _%g164289164304%_))))
                                (_%g164288164301%_ _%g164289164304%_))))
                        (_%g164288164301%_ _%g164289164304%_)))))
            (_%g164287164341%_ _%stx164276%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self164207%_ _%stx164208%_)
        (let* ((_%g164210164227%_
                (lambda (_%g164211164224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164211164224%_))))
               (_%g164209164272%_
                (lambda (_%g164211164230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164211164230%_))
                      (let ((_%e164214164232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164211164230%_))))
                        (let ((_%hd164215164235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164214164232%_)))
                              (_%tl164216164237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164214164232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164216164237%_))
                              (let ((_%e164217164240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164216164237%_))))
                                (let ((_%hd164218164243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164217164240%_)))
                                      (_%tl164219164245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164217164240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164219164245%_))
                                      (let ((_%e164220164248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164219164245%_))))
                                        (let ((_%hd164221164251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164220164248%_)))
                                              (_%tl164222164253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164220164248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164222164253%_))
                                              ((lambda (_%g164212164256%_
                                                        _%g164213164257%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g164213164257%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self164207%_
                              _%g164212164256%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd164221164251%_
                                               _%hd164218164243%_)
                                              (_%g164210164227%_
                                               _%g164211164230%_))))
                                      (_%g164210164227%_ _%g164211164230%_))))
                              (_%g164210164227%_ _%g164211164230%_))))
                      (_%g164210164227%_ _%g164211164230%_)))))
          (_%g164209164272%_ _%stx164208%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self164156%_ _%stx164157%_)
        (let* ((_%g164159164169%_
                (lambda (_%g164160164166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164160164166%_))))
               (_%g164158164204%_
                (lambda (_%g164160164172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164160164172%_))
                      (let ((_%e164162164174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164160164172%_))))
                        (let ((_%hd164163164177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164162164174%_)))
                              (_%tl164164164179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164162164174%_))))
                          ((lambda (_%g164161164182%_)
                             (let* ((_%c-body164196%_
                                     (map (lambda (_%g164191164193%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self164156%_
                                               _%g164191164193%_)))
                                          _%g164161164182%_))
                                    (_%c-body164201%_
                                     (let ((__tmp173082
                                            (lambda (_%$obj164198%_)
                                              (not (eq? _%$obj164198%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp173082
                                        _%c-body164196%_))))
                               (cons '%#begin _%c-body164201%_)))
                           _%tl164164164179%_)))
                      (_%g164159164169%_ _%g164160164172%_)))))
          (_%g164158164204%_ _%stx164157%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self164061%_ _%stx164062%_)
        (let* ((_%g164064164074%_
                (lambda (_%g164065164071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164065164071%_))))
               (_%g164063164153%_
                (lambda (_%g164065164077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164065164077%_))
                      (let ((_%e164067164079%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164065164077%_))))
                        (let ((_%hd164068164082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164067164079%_)))
                              (_%tl164069164084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164067164079%_))))
                          ((lambda (_%g164066164087%_)
                             (let* ((_%phi164097%_
                                     (let ((__tmp173083
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp173083 '1)))
                                    (_%block164099%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self164061%_ 'state))
                                      _%phi164097%_))
                                    (_%compiled164102%_
                                     (let ((__tmp173084
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self164061%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g164066164087%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp173084
                                        gx#current-expander-phi
                                        _%phi164097%_)))
                                    (_%g164105164115%_
                                     (lambda (_%g164106164112%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g164106164112%_))))
                                    (_%g164104164150%_
                                     (lambda (_%g164106164118%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g164106164118%_))
                                           (let ((_%e164108164120%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g164106164118%_))))
                                             (let ((_%hd164109164123%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e164108164120%_)))
                                                   (_%tl164110164125%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e164108164120%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd164109164123%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd164109164123%_))
                                                       ((lambda (_%g164107164128%_)
                                                          (let ((_%c-body164145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj164142%_)
                                   (not (eq? _%$obj164142%_ '#!void)))
                                 _%g164107164128%_)))
                    (if _%block164099%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block164099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body164145%_))
                        (if (null? _%c-body164145%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body164145%_)))))
                _%tl164110164125%_)
               (_%g164105164115%_ _%g164106164118%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g164105164115%_
                                                    _%g164106164118%_))))
                                           (_%g164105164115%_
                                            _%g164106164118%_)))))
                               (_%g164104164150%_ _%compiled164102%_)))
                           _%tl164069164084%_)))
                      (_%g164064164074%_ _%g164065164077%_)))))
          (_%g164063164153%_ _%stx164062%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self163992%_ _%stx163993%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163992%_ 'state)))
        (let* ((_%g163995164009%_
                (lambda (_%g163996164006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163996164006%_))))
               (_%g163994164058%_
                (lambda (_%g163996164012%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163996164012%_))
                      (let ((_%e163999164014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163996164012%_))))
                        (let ((_%hd164000164017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163999164014%_)))
                              (_%tl164001164019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163999164014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164001164019%_))
                              (let ((_%e164002164022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164001164019%_))))
                                (let ((_%hd164003164025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164002164022%_)))
                                      (_%tl164004164027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164002164022%_))))
                                  ((lambda (_%g163997164030%_
                                            _%g163998164031%_)
                                     (let ((_%key164044%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g163998164031%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key164044%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx163993%_
                                              _%g163998164031%_
                                              _%key164044%_)))
                                       (let* ((_%ctx164046%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g163998164031%_)))
                                              (_%code164049%_
                                               (let ((__tmp173085
                                                      (lambda ()
                                                        (let ((__tmp173086
                                                               (##structure-ref
                                                                _%ctx164046%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self163992%_
                                                           __tmp173086)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp173085
                                                  gx#current-expander-context
                                                  _%ctx164046%_)))
                                              (_%rt164051%_
                                               (let ((__tmp173087
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp173087
                                                  _%ctx164046%_)))
                                              (_%loader164053%_
                                               (if _%rt164051%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt164051%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid164055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g163998164031%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self163992%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid164055%_
                                                     (cons _%code164049%_
                                                           _%loader164053%_))))))
                                   _%tl164004164027%_
                                   _%hd164003164025%_)))
                              (_%g163995164009%_ _%g163996164012%_))))
                      (_%g163995164009%_ _%g163996164012%_)))))
          (_%g163994164058%_ _%stx163993%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx163979%_ _%context-chain163980%_)
        (let _%lp163982%_ ((_%ctx163984%_ _%ctx163979%_) (_%path163985%_ '()))
          (let ((_%super163987%_
                 (##structure-ref _%ctx163984%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super163987%_ _%context-chain163980%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx163984%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path163985%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super163987%_
                       'gx#module-context::t))
                    (_%lp163982%_
                     _%super163987%_
                     (cons (car (##structure-ref
                                 _%ctx163984%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path163985%_))
                    (cons (let ((__tmp173088
                                 (##structure-ref
                                  _%ctx163984%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp173088))
                          _%path163985%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp163972%_ ((_%ctx163974%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r163975%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx163974%_ 'gx#module-context::t))
              (_%lp163972%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx163974%_ '3 '#f '#f))
               (cons _%ctx163974%_ _%r163975%_))
              _%r163975%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self163737%_ _%stx163738%_)
        (letrec* ((_%context-chain163740%_ (gxc#current-context-chain))
                  (_%make-import-spec163741%_
                   (lambda (_%in163909%_)
                     (let* ((_%in163910163922%_ _%in163909%_)
                            (_%E163912163925%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in163910163922%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K163913163935%_
                             (lambda (_%phi163928%_
                                      _%name163929%_
                                      _%src-name163930%_
                                      _%src-phi163931%_
                                      _%src-key163932%_
                                      _%src-ctx163933%_)
                               (cons _%phi163928%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name163929%_))
                                           (cons _%src-phi163931%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name163930%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in163910163922%_
                              'gx#module-import::t))
                           (let ((_%e163914163938%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in163910163922%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e163914163938%_
                                    'gx#module-export::t))
                                 (let* ((_%e163917163941%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163914163938%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx163944%_ _%e163917163941%_)
                                        (_%e163918163946%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163914163938%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key163949%_ _%e163918163946%_)
                                        (_%e163919163951%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163914163938%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi163954%_ _%e163919163951%_)
                                        (_%e163920163956%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e163914163938%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name163959%_ _%e163920163956%_)
                                        (_%e163915163961%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163910163922%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name163964%_ _%e163915163961%_)
                                        (_%e163916163966%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in163910163922%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi163969%_ _%e163916163966%_))
                                   (_%K163913163935%_
                                    _%phi163969%_
                                    _%name163964%_
                                    _%src-name163959%_
                                    _%src-phi163954%_
                                    _%src-key163949%_
                                    _%src-ctx163944%_))
                                 (_%E163912163925%_)))
                           (_%E163912163925%_)))))
                  (_%make-import-path163742%_
                   (lambda (_%ctx163907%_)
                     (gxc#generate-meta-import-path
                      _%ctx163907%_
                      _%context-chain163740%_)))
                  (_%make-import-spec-in163743%_
                   (lambda (_%ctx163904%_ _%in163905%_)
                     (cons 'spec:
                           (cons (_%make-import-path163742%_ _%ctx163904%_)
                                 (reverse _%in163905%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self163737%_ 'state)))
          (let* ((_%g163745163755%_
                  (lambda (_%g163746163752%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163746163752%_))))
                 (_%g163744163901%_
                  (lambda (_%g163746163758%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163746163758%_))
                        (let ((_%e163748163760%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163746163758%_))))
                          (let ((_%hd163749163763%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163748163760%_)))
                                (_%tl163750163765%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163748163760%_))))
                            ((lambda (_%g163747163768%_)
                               (let _%lp163779%_ ((_%rest163781%_
                                                   _%g163747163768%_)
                                                  (_%current-src163782%_ '#f)
                                                  (_%current-in163783%_ '())
                                                  (_%r163784%_ '()))
                                 (let* ((_%rest163785163793%_ _%rest163781%_)
                                        (_%else163787163803%_
                                         (lambda ()
                                           (let ((_%r163801%_
                                                  (if _%current-src163782%_
                                                      (cons (_%make-import-spec-in163743%_
                                                             _%current-src163782%_
                                                             _%current-in163783%_)
                                                            _%r163784%_)
                                                      _%r163784%_)))
                                             (cons '%#import
                                                   (reverse _%r163801%_)))))
                                        (_%K163789163889%_
                                         (lambda (_%rest163806%_ _%in163807%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in163807%_
                                                  'gx#module-import::t))
                                               (let* ((_%in163809163816%_
                                                       _%in163807%_)
                                                      (_%E163811163819%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in163809163816%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K163812163827%_
               (lambda (_%src-ctx163822%_)
                 (if (eq? _%current-src163782%_ _%src-ctx163822%_)
                     (_%lp163779%_
                      _%rest163806%_
                      _%current-src163782%_
                      (cons (_%make-import-spec163741%_ _%in163807%_)
                            _%current-in163783%_)
                      _%r163784%_)
                     (if _%current-src163782%_
                         (_%lp163779%_
                          _%rest163806%_
                          _%src-ctx163822%_
                          (cons (_%make-import-spec163741%_ _%in163807%_) '())
                          (cons (_%make-import-spec-in163743%_
                                 _%current-src163782%_
                                 _%current-in163783%_)
                                _%r163784%_))
                         (_%lp163779%_
                          _%rest163806%_
                          _%src-ctx163822%_
                          (cons (_%make-import-spec163741%_ _%in163807%_) '())
                          _%r163784%_)))))
              (_%e163813163830%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in163809163816%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e163813163830%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163814163833%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e163813163830%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx163836%_ _%e163814163833%_))
               (_%K163812163827%_ _%src-ctx163836%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E163811163819%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in163807%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi163839%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163807%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src163841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in163807%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in163881%_
                                                           (let* ((_%g163842163851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path163742%_ _%src163841%_))
                          (_%E163845163855%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g163842163851%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K163847163871%_
                            (lambda (_%path163869%_) _%path163869%_))
                           (_%K163846163861%_
                            (lambda (_%path163859%_)
                              (cons 'in: _%path163859%_))))
                       (if (pair? _%g163842163851%_)
                           (let ((_%tl163849163876%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g163842163851%_)))
                                 (_%hd163848163874%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g163842163851%_))))
                             (if (null? _%tl163849163876%_)
                                 (let ((_%path163879%_ _%hd163848163874%_))
                                   (_%K163847163871%_ _%path163879%_))
                                 (let ((_%path163864%_ _%g163842163851%_))
                                   (_%K163846163861%_ _%path163864%_))))
                           (let ((_%path163864%_ _%g163842163851%_))
                             (_%K163846163861%_ _%path163864%_))))))
                  (_%r163883%_
                   (if _%current-src163782%_
                       (cons (_%make-import-spec-in163743%_
                              _%current-src163782%_
                              _%current-in163783%_)
                             _%r163784%_)
                       _%r163784%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp163779%_
                                                      _%rest163806%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi163839%_)
                                                                _%src-in163881%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi163839%_
                                    (cons _%src-in163881%_ '()))))
                    _%r163883%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in163807%_
                                                          'gx#module-context::t))
                                                       (let ((_%r163887%_
                                                              (if _%current-src163782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in163743%_
                                 _%current-src163782%_
                                 _%current-in163783%_)
                                _%r163784%_)
                          _%r163784%_)))
                 (_%lp163779%_
                  _%rest163806%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path163742%_ _%in163807%_))
                        _%r163887%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest163785163793%_)
                                       (let ((_%hd163790163892%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163785163793%_)))
                                             (_%tl163791163894%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163785163793%_))))
                                         (let* ((_%in163897%_
                                                 _%hd163790163892%_)
                                                (_%rest163899%_
                                                 _%tl163791163894%_))
                                           (_%K163789163889%_
                                            _%rest163899%_
                                            _%in163897%_)))
                                       (_%else163787163803%_)))))
                             _%tl163750163765%_)))
                        (_%g163745163755%_ _%g163746163758%_)))))
            (_%g163744163901%_ _%stx163738%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self163547%_ _%stx163548%_)
        (letrec* ((_%context-chain163550%_ (gxc#current-context-chain))
                  (_%make-import-path163551%_
                   (lambda (_%ctx163735%_)
                     (gxc#generate-meta-import-path
                      _%ctx163735%_
                      _%context-chain163550%_))))
          (let* ((_%g163553163563%_
                  (lambda (_%g163554163560%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163554163560%_))))
                 (_%g163552163732%_
                  (lambda (_%g163554163566%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163554163566%_))
                        (let ((_%e163556163568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163554163566%_))))
                          (let ((_%hd163557163571%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163556163568%_)))
                                (_%tl163558163573%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163556163568%_))))
                            ((lambda (_%g163555163576%_)
                               (let _%lp163587%_ ((_%rest163589%_
                                                   _%g163555163576%_)
                                                  (_%r163590%_ '()))
                                 (let* ((_%rest163591163599%_ _%rest163589%_)
                                        (_%else163593163607%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r163590%_))))
                                        (_%K163595163720%_
                                         (lambda (_%rest163610%_ _%out163611%_)
                                           (let* ((_%out163612163625%_
                                                   _%out163611%_)
                                                  (_%E163615163629%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out163612163625%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K163619163699%_
                                                    (lambda (_%name163695%_
                                                             _%phi163696%_
                                                             _%key163697%_)
                                                      (_%lp163587%_
                                                       _%rest163610%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi163696%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key163697%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name163695%_))
                                             '()))))
                     _%r163590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K163616163679%_
                                                    (lambda (_%phi163633%_
                                                             _%src163634%_)
                                                      (let* ((_%out163674%_
                                                              (if _%src163634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g163635163644%_
                                              (_%make-import-path163551%_
                                               _%src163634%_))
                                             (_%E163638163648%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g163635163644%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K163640163664%_
                                               (lambda (_%path163662%_)
                                                 _%path163662%_))
                                              (_%K163639163654%_
                                               (lambda (_%path163652%_)
                                                 (cons 'in: _%path163652%_))))
                                          (if (pair? _%g163635163644%_)
                                              (let ((_%tl163642163669%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g163635163644%_)))
                                                    (_%hd163641163667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g163635163644%_))))
                                                (if (null? _%tl163642163669%_)
                                                    (let ((_%path163672%_
                                                           _%hd163641163667%_))
                                                      (_%K163640163664%_
                                                       _%path163672%_))
                                                    (let ((_%path163657%_
                                                           _%g163635163644%_))
                                                      (_%K163639163654%_
                                                       _%path163657%_))))
                                              (let ((_%path163657%_
                                                     _%g163635163644%_))
                                                (_%K163639163654%_
                                                 _%path163657%_)))))
                                      '()))
                          '#t))
                     (_%out163676%_
                      (if (fxzero? _%phi163633%_)
                          _%out163674%_
                          (cons 'phi:
                                (cons _%phi163633%_
                                      (cons _%out163674%_ '()))))))
                (_%lp163587%_
                 _%rest163610%_
                 (cons _%out163676%_ _%r163590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match163614163692%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out163612163625%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e163617163682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163612163625%_
                               '1
                               '#f
                               '#f)))
                           (_%e163618163687%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out163612163625%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src163685%_ _%e163617163682%_)
                            (_%phi163690%_ _%e163618163687%_))
                        (_%K163616163679%_ _%phi163690%_ _%src163685%_)))
                    (_%E163615163629%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out163612163625%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e163620163702%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out163612163625%_
                        '1
                        '#f
                        '#f)))
                    (_%e163621163705%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163612163625%_
                        '2
                        '#f
                        '#f)))
                    (_%e163622163710%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163612163625%_
                        '3
                        '#f
                        '#f)))
                    (_%e163623163715%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out163612163625%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key163708%_ _%e163621163705%_)
                     (_%phi163713%_ _%e163622163710%_)
                     (_%name163718%_ _%e163623163715%_))
                 (_%K163619163699%_
                  _%name163718%_
                  _%phi163713%_
                  _%key163708%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match163614163692%_))))))))
                                   (if (pair? _%rest163591163599%_)
                                       (let ((_%hd163596163723%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest163591163599%_)))
                                             (_%tl163597163725%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest163591163599%_))))
                                         (let* ((_%out163728%_
                                                 _%hd163596163723%_)
                                                (_%rest163730%_
                                                 _%tl163597163725%_))
                                           (_%K163595163720%_
                                            _%rest163730%_
                                            _%out163728%_)))
                                       (_%else163593163607%_)))))
                             _%tl163558163573%_)))
                        (_%g163553163563%_ _%g163554163566%_)))))
            (_%g163552163732%_ _%stx163548%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self163508%_ _%stx163509%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self163508%_ 'state)))
        (let* ((_%g163511163521%_
                (lambda (_%g163512163518%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163512163518%_))))
               (_%g163510163544%_
                (lambda (_%g163512163524%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163512163524%_))
                      (let ((_%e163514163526%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163512163524%_))))
                        (let ((_%hd163515163529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163514163526%_)))
                              (_%tl163516163531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163514163526%_))))
                          ((lambda (_%g163513163534%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g163513163534%_)))
                           _%tl163516163531%_)))
                      (_%g163511163521%_ _%g163512163524%_)))))
          (_%g163510163544%_ _%stx163509%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self163383%_ _%stx163384%_)
        (letrec ((_%generate1163386%_
                  (lambda (_%id163503%_ _%eid163504%_)
                    (let ((_%eid163506%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid163504%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid163506%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx163384%_
                             _%eid163506%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id163503%_))
                            (cons _%eid163506%_ '()))))))
          (let* ((_%g163388163416%_
                  (lambda (_%g163389163413%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163389163413%_))))
                 (_%g163387163500%_
                  (lambda (_%g163389163419%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163389163419%_))
                        (let ((_%e163392163421%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163389163419%_))))
                          (let ((_%hd163393163424%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163392163421%_)))
                                (_%tl163394163426%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163392163421%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl163394163426%_))
                                (let ((_g173089_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl163394163426%_
                                          '0))))
                                  (begin
                                    (let ((_g173090_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g173089_)
                                                 (##values-length _g173089_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g173090_ 2)))
                                          (error "Context expects 2 values"
                                                 _g173090_)))
                                    (let ((_%target163395163429%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173089_ 0)))
                                          (_%tl163397163431%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g173089_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163397163431%_))
                                          (letrec ((_%loop163398163434%_
                                                    (lambda (_%hd163396163437%_
                                                             _%eid163402163439%_
                                                             _%id163403163440%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd163396163437%_))
                                                          (let ((_%e163399163442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd163396163437%_))))
                    (let ((_%lp-hd163400163445%_
                           (let ()
                             (declare (not safe))
                             (##car _%e163399163442%_)))
                          (_%lp-tl163401163447%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e163399163442%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd163400163445%_))
                          (let ((_%e163406163450%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd163400163445%_))))
                            (let ((_%hd163407163453%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e163406163450%_)))
                                  (_%tl163408163455%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e163406163450%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl163408163455%_))
                                  (let ((_%e163409163458%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl163408163455%_))))
                                    (let ((_%hd163410163461%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e163409163458%_)))
                                          (_%tl163411163463%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e163409163458%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl163411163463%_))
                                          (_%loop163398163434%_
                                           _%lp-tl163401163447%_
                                           (cons _%hd163410163461%_
                                                 _%eid163402163439%_)
                                           (cons _%hd163407163453%_
                                                 _%id163403163440%_))
                                          (_%g163388163416%_
                                           _%g163389163419%_))))
                                  (_%g163388163416%_ _%g163389163419%_))))
                          (_%g163388163416%_ _%g163389163419%_))))
                  (let ((_%eid163404163466%_ (reverse _%eid163402163439%_))
                        (_%id163405163467%_ (reverse _%id163403163440%_)))
                    ((lambda (_%g163390163469%_ _%g163391163470%_)
                       (cons '%#extern
                             (map _%generate1163386%_
                                  (let ((__tmp173091
                                         (lambda (_%g163485163488%_
                                                  _%g163486163490%_)
                                           (cons _%g163485163488%_
                                                 _%g163486163490%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173091
                                     '()
                                     _%g163391163470%_))
                                  (let ((__tmp173092
                                         (lambda (_%g163492163495%_
                                                  _%g163493163497%_)
                                           (cons _%g163492163495%_
                                                 _%g163493163497%_))))
                                    (declare (not safe))
                                    (__foldr1
                                     __tmp173092
                                     '()
                                     _%g163390163469%_)))))
                     _%eid163404163466%_
                     _%id163405163467%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop163398163434%_
                                             _%target163395163429%_
                                             '()
                                             '()))
                                          (_%g163388163416%_
                                           _%g163389163419%_)))))
                                (_%g163388163416%_ _%g163389163419%_))))
                        (_%g163388163416%_ _%g163389163419%_)))))
            (_%g163387163500%_ _%stx163384%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self163172%_ _%stx163173%_)
        (letrec ((_%generate1163175%_
                  (lambda (_%id163377%_)
                    (let ((_%eid163379%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id163377%_)))
                          (_%ident163380%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id163377%_)))
                          (_%props163381%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id163377%_))))
                      (cons '%#define-runtime
                            (cons _%ident163380%_
                                  (cons _%eid163379%_ _%props163381%_))))))
                 (_%generate*163176%_
                  (lambda (_%all163345%_)
                    (let* ((_%all163346163354%_ _%all163345%_)
                           (_%else163348163362%_
                            (lambda () (cons '%#begin _%all163345%_)))
                           (_%K163350163367%_
                            (lambda (_%one163365%_) _%one163365%_)))
                      (if (pair? _%all163346163354%_)
                          (let ((_%hd163351163370%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all163346163354%_)))
                                (_%tl163352163372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all163346163354%_))))
                            (let ((_%one163375%_ _%hd163351163370%_))
                              (if (null? _%tl163352163372%_)
                                  (_%K163350163367%_ _%one163375%_)
                                  (_%else163348163362%_))))
                          (_%else163348163362%_))))))
          (let* ((_%g163178163195%_
                  (lambda (_%g163179163192%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g163179163192%_))))
                 (_%g163177163342%_
                  (lambda (_%g163179163198%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g163179163198%_))
                        (let ((_%e163182163200%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g163179163198%_))))
                          (let ((_%hd163183163203%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e163182163200%_)))
                                (_%tl163184163205%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e163182163200%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl163184163205%_))
                                (let ((_%e163185163208%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl163184163205%_))))
                                  (let ((_%hd163186163211%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e163185163208%_)))
                                        (_%tl163187163213%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e163185163208%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl163187163213%_))
                                        (let ((_%e163188163216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl163187163213%_))))
                                          (let ((_%hd163189163219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e163188163216%_)))
                                                (_%tl163190163221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e163188163216%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl163190163221%_))
                                                ((lambda (_%g163180163224%_
                                                          _%g163181163225%_)
                                                   (let _%lp163241%_ ((_%rest163243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g163181163225%_)
                              (_%r163244%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx172827172828%_
                                                             _%rest163243%_)
                                                            (_%g163249163266%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx172827172828%_)))))
               (let ((_%__kont172829172830%_
                      (lambda (_%g163251163329%_)
                        (_%lp163241%_ _%g163251163329%_ _%r163244%_)))
                     (_%__kont172831172832%_
                      (lambda (_%g163256163302%_ _%g163257163303%_)
                        (_%lp163241%_
                         _%g163256163302%_
                         (cons (_%generate1163175%_ _%g163257163303%_)
                               _%r163244%_))))
                     (_%__kont172833172834%_
                      (lambda (_%g163261163278%_)
                        (_%generate*163176%_
                         (let ((__tmp173093
                                (cons (_%generate1163175%_ _%g163261163278%_)
                                      '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp173093 _%r163244%_)))))
                     (_%__kont172835172836%_
                      (lambda ()
                        (_%generate*163176%_ (reverse! _%r163244%_)))))
                 (let ((_%g163247163289%_
                        (lambda ()
                          (let ((_%g163261163278%_ _%__stx172827172828%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g163261163278%_))
                                (_%__kont172833172834%_ _%g163261163278%_)
                                (_%__kont172835172836%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx172827172828%_))
                       (let ((_%e163252163318%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx172827172828%_))))
                         (let ((_%tl163254163323%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e163252163318%_)))
                               (_%hd163253163321%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e163252163318%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd163253163321%_))
                               (let ((_%e163255163326%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd163253163321%_))))
                                 (if (equal? _%e163255163326%_ '#f)
                                     (_%__kont172829172830%_
                                      _%tl163254163323%_)
                                     (_%__kont172831172832%_
                                      _%tl163254163323%_
                                      _%hd163253163321%_)))
                               (_%__kont172831172832%_
                                _%tl163254163323%_
                                _%hd163253163321%_))))
                       (let () (declare (not safe)) (_%g163247163289%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd163189163219%_
                                                 _%hd163186163211%_)
                                                (_%g163178163195%_
                                                 _%g163179163198%_))))
                                        (_%g163178163195%_
                                         _%g163179163198%_))))
                                (_%g163178163195%_ _%g163179163198%_))))
                        (_%g163178163195%_ _%g163179163198%_)))))
            (_%g163177163342%_ _%stx163173%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self163069%_ _%stx163070%_)
        (let* ((_%g163072163089%_
                (lambda (_%g163073163086%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163073163086%_))))
               (_%g163071163169%_
                (lambda (_%g163073163092%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163073163092%_))
                      (let ((_%e163076163094%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163073163092%_))))
                        (let ((_%hd163077163097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163076163094%_)))
                              (_%tl163078163099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163076163094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163078163099%_))
                              (let ((_%e163079163102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163078163099%_))))
                                (let ((_%hd163080163105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163079163102%_)))
                                      (_%tl163081163107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163079163102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163081163107%_))
                                      (let ((_%e163082163110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163081163107%_))))
                                        (let ((_%hd163083163113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163082163110%_)))
                                              (_%tl163084163115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163082163110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163084163115%_))
                                              ((lambda (_%g163074163118%_
                                                        _%g163075163119%_)
                                                 (let* ((_%eid163134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g163075163119%_)))
                                                        (_%phi163136%_
                                                         (let ((__tmp173094
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp173094 '1)))
                (_%block163138%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self163069%_ 'state))
                  _%phi163136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g163141163148%_
                                                           (lambda (_%g163142163145%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g163142163145%_))))
                  (_%g163140163166%_
                   (lambda (_%g163142163151%_)
                     ((lambda (_%g163143163153%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self163069%_ 'state))
                         _%phi163136%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g163143163153%_
                                     (cons _%g163074163118%_ '())))))
                      _%g163142163151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g163140163166%_
                                                      _%eid163134%_))
                                                   (if _%block163138%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block163138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g163075163119%_))
                                             (cons _%eid163134%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g163075163119%_))
                           (cons _%eid163134%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163083163113%_
                                               _%hd163080163105%_)
                                              (_%g163072163089%_
                                               _%g163073163092%_))))
                                      (_%g163072163089%_ _%g163073163092%_))))
                              (_%g163072163089%_ _%g163073163092%_))))
                      (_%g163072163089%_ _%g163073163092%_)))))
          (_%g163071163169%_ _%stx163070%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self163001%_ _%stx163002%_)
        (let* ((_%g163004163021%_
                (lambda (_%g163005163018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g163005163018%_))))
               (_%g163003163066%_
                (lambda (_%g163005163024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g163005163024%_))
                      (let ((_%e163008163026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g163005163024%_))))
                        (let ((_%hd163009163029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e163008163026%_)))
                              (_%tl163010163031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e163008163026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl163010163031%_))
                              (let ((_%e163011163034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl163010163031%_))))
                                (let ((_%hd163012163037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e163011163034%_)))
                                      (_%tl163013163039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e163011163034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl163013163039%_))
                                      (let ((_%e163014163042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl163013163039%_))))
                                        (let ((_%hd163015163045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e163014163042%_)))
                                              (_%tl163016163047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e163014163042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl163016163047%_))
                                              ((lambda (_%g163006163050%_
                                                        _%g163007163051%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g163007163051%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g163006163050%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd163015163045%_
                                               _%hd163012163037%_)
                                              (_%g163004163021%_
                                               _%g163005163024%_))))
                                      (_%g163004163021%_ _%g163005163024%_))))
                              (_%g163004163021%_ _%g163005163024%_))))
                      (_%g163004163021%_ _%g163005163024%_)))))
          (_%g163003163066%_ _%stx163002%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self162998%_ _%stx162999%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162998%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162999%_)
        (gxc#generate-meta-define-values% _%self162998%_ _%stx162999%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self162995%_ _%stx162996%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self162995%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx162996%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp173096 (list)) (__tmp173095 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp173096
         '(src n open blocks)
         __tmp173095
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args162992%_
        (apply make-instance gxc#meta-state::t _%$args162992%_)))
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
      (lambda (_%self162978%_ _%ctx162979%_)
        (let ((_%self162982%_ _%self162978%_))
          (if (let ((__tmp173097
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162982%_))))
                (declare (not safe))
                (##fx< '4 __tmp173097))
              (begin
                (let ((__tmp173098
                       (let ((__tmp173099
                              (##structure-ref
                               _%ctx162979%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp173099))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162982%_
                   __tmp173098
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162982%_ '1 '2 '#f '#f))
                (let ((__tmp173100
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self162982%_
                   __tmp173100
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self162982%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp173101
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self162982%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self162982%_
                       '4
                       __tmp173101))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp173103 (list)) (__tmp173102 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp173103
         '(ctx phi n code)
         __tmp173102
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args162853%_
        (apply make-instance gxc#meta-state-block::t _%$args162853%_)))
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
      (lambda (_%state162813%_ _%phi162814%_)
        (let* ((_%state162815162823%_ _%state162813%_)
               (_%E162817162826%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state162815162823%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K162818162835%_
                (lambda (_%open162829%_ _%n162830%_ _%src162831%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open162829%_ _%phi162814%_))
                      '#f
                      (let ((_%block-ref162833%_
                             (let ((__tmp173104 (number->string _%n162830%_)))
                               (declare (not safe))
                               (##string-append
                                _%src162831%_
                                '"~"
                                __tmp173104))))
                        (##structure-set!
                         _%state162813%_
                         (let () (declare (not safe)) (##fx+ _%n162830%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp173105
                               (let ((__tmp173106
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp173106
                                  _%phi162814%_
                                  _%n162830%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open162829%_ _%phi162814%_ __tmp173105))
                        _%block-ref162833%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state162815162823%_
                 'gxc#meta-state::t))
              (let* ((_%e162819162838%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162815162823%_
                         '1
                         '#f
                         '#f)))
                     (_%src162841%_ _%e162819162838%_)
                     (_%e162820162843%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162815162823%_
                         '2
                         '#f
                         '#f)))
                     (_%n162846%_ _%e162820162843%_)
                     (_%e162821162848%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state162815162823%_
                         '3
                         '#f
                         '#f)))
                     (_%open162851%_ _%e162821162848%_))
                (_%K162818162835%_ _%open162851%_ _%n162846%_ _%src162841%_))
              (_%E162817162826%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state162807%_ _%phi162808%_ _%stx162809%_)
        (let ((_%block162811%_
               (let ((__tmp173107
                      (##structure-ref
                       _%state162807%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp173107 _%phi162808%_))))
          (##structure-set!
           _%block162811%_
           (cons _%stx162809%_
                 (##structure-ref
                  _%block162811%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state162801%_)
        (##structure-set!
         _%state162801%_
         (let ((__tmp173110
                (lambda (_%_162803%_ _%block162804%_ _%r162805%_)
                  (cons _%block162804%_ _%r162805%_)))
               (__tmp173109
                (##structure-ref _%state162801%_ '4 gxc#meta-state::t '#f))
               (__tmp173108
                (##structure-ref _%state162801%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp173110 __tmp173109 __tmp173108))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state162801%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state162754%_)
        (gxc#meta-state-end-phi! _%state162754%_)
        (let ((__tmp173112
               (lambda (_%block162756%_ _%r162757%_)
                 (let* ((_%block162758162767%_ _%block162756%_)
                        (_%E162760162770%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block162758162767%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K162761162778%_
                         (lambda (_%code162773%_
                                  _%n162774%_
                                  _%phi162775%_
                                  _%ctx162776%_)
                           (if (null? _%code162773%_)
                               _%r162757%_
                               (cons (cons _%ctx162776%_
                                           (cons _%phi162775%_
                                                 (cons _%n162774%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code162773%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r162757%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block162758162767%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e162762162781%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162758162767%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx162784%_ _%e162762162781%_)
                              (_%e162763162786%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162758162767%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi162789%_ _%e162763162786%_)
                              (_%e162764162791%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162758162767%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n162794%_ _%e162764162791%_)
                              (_%e162765162796%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block162758162767%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code162799%_ _%e162765162796%_))
                         (_%K162761162778%_
                          _%code162799%_
                          _%n162794%_
                          _%phi162789%_
                          _%ctx162784%_))
                       (_%E162760162770%_)))))
              (__tmp173111
               (##structure-ref _%state162754%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp173112 '() __tmp173111))))
    (define gxc#collect-expression-refs
      (lambda (_%stx162750%_)
        (let ((_%ht162752%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht162752%_ _%stx162750%_)
          _%ht162752%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self162693%_ _%stx162694%_)
        (let* ((_%g162696162709%_
                (lambda (_%g162697162706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162697162706%_))))
               (_%g162695162747%_
                (lambda (_%g162697162712%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162697162712%_))
                      (let ((_%e162699162714%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162697162712%_))))
                        (let ((_%hd162700162717%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162699162714%_)))
                              (_%tl162701162719%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162699162714%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162701162719%_))
                              (let ((_%e162702162722%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162701162719%_))))
                                (let ((_%hd162703162725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162702162722%_)))
                                      (_%tl162704162727%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162702162722%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl162704162727%_))
                                      ((lambda (_%g162698162730%_)
                                         (let* ((_%bind162742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g162698162730%_)))
                                                (_%eid162744%_
                                                 (if _%bind162742%_
                                                     (##structure-ref
                                                      _%bind162742%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g162698162730%_))))
                                                (__tmp173113
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self162693%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp173113
                                            _%eid162744%_
                                            _%eid162744%_)))
                                       _%hd162703162725%_)
                                      (_%g162696162709%_ _%g162697162712%_))))
                              (_%g162696162709%_ _%g162697162712%_))))
                      (_%g162696162709%_ _%g162697162712%_)))))
          (_%g162695162747%_ _%stx162694%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self162620%_ _%stx162621%_)
        (let* ((_%g162623162640%_
                (lambda (_%g162624162637%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162624162637%_))))
               (_%g162622162690%_
                (lambda (_%g162624162643%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162624162643%_))
                      (let ((_%e162627162645%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162624162643%_))))
                        (let ((_%hd162628162648%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162627162645%_)))
                              (_%tl162629162650%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162627162645%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162629162650%_))
                              (let ((_%e162630162653%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162629162650%_))))
                                (let ((_%hd162631162656%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162630162653%_)))
                                      (_%tl162632162658%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162630162653%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162632162658%_))
                                      (let ((_%e162633162661%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162632162658%_))))
                                        (let ((_%hd162634162664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162633162661%_)))
                                              (_%tl162635162666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162633162661%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl162635162666%_))
                                              ((lambda (_%g162625162669%_
                                                        _%g162626162670%_)
                                                 (let* ((_%bind162685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g162626162670%_)))
                                                        (_%eid162687%_
                                                         (if _%bind162685%_
                                                             (##structure-ref
                                                              _%bind162685%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g162626162670%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp173114
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self162620%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp173114
                                                      _%eid162687%_
                                                      _%eid162687%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self162620%_
                                                      _%g162625162669%_))))
                                               _%hd162634162664%_
                                               _%hd162631162656%_)
                                              (_%g162623162640%_
                                               _%g162624162643%_))))
                                      (_%g162623162640%_ _%g162624162643%_))))
                              (_%g162623162640%_ _%g162624162643%_))))
                      (_%g162623162640%_ _%g162624162643%_)))))
          (_%g162622162690%_ _%stx162621%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self162577%_ _%stx162578%_)
        (let* ((_%g162580162590%_
                (lambda (_%g162581162587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162581162587%_))))
               (_%g162579162617%_
                (lambda (_%g162581162593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162581162593%_))
                      (let ((_%e162583162595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162581162593%_))))
                        (let ((_%hd162584162598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162583162595%_)))
                              (_%tl162585162600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162583162595%_))))
                          ((lambda (_%g162582162603%_)
                             (let ((__tmp173115
                                    (lambda (_%g162612162614%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self162577%_
                                         _%g162612162614%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp173115 _%g162582162603%_)))
                           _%tl162585162600%_)))
                      (_%g162580162590%_ _%g162581162593%_)))))
          (_%g162579162617%_ _%stx162578%_))))
    (define gxc#count-values-single%
      (lambda (_%self162574%_ _%stx162575%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self162442%_ _%stx162443%_)
        (let* ((_%__stx172857172858%_ _%stx162443%_)
               (_%g162446162475%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx172857172858%_)))))
          (let ((_%__kont172859172860%_
                 (lambda (_%g162448162541%_ _%g162449162542%_)
                   (length (let ((__tmp173116
                                  (lambda (_%g162563162566%_ _%g162564162568%_)
                                    (cons _%g162563162566%_
                                          _%g162564162568%_))))
                             (declare (not safe))
                             (__foldr1 __tmp173116 '() _%g162448162541%_)))))
                (_%__kont172863172864%_ (lambda () '#f)))
            (let ((_%__match172902172903%_
                   (lambda (_%e162450162487%_
                            _%hd162451162490%_
                            _%tl162452162492%_
                            _%e162453162495%_
                            _%hd162454162498%_
                            _%tl162455162500%_
                            _%e162456162503%_
                            _%hd162457162506%_
                            _%tl162458162508%_
                            _%e162459162511%_
                            _%hd162460162514%_
                            _%tl162461162516%_
                            _%__splice172861172862%_
                            _%target162462162519%_
                            _%tl162464162521%_)
                     (letrec ((_%loop162465162524%_
                               (lambda (_%hd162463162527%_
                                        _%rand162469162529%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd162463162527%_))
                                     (let ((_%e162466162531%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd162463162527%_))))
                                       (let ((_%lp-tl162468162536%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e162466162531%_)))
                                             (_%lp-hd162467162534%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e162466162531%_))))
                                         (_%loop162465162524%_
                                          _%lp-tl162468162536%_
                                          (cons _%lp-hd162467162534%_
                                                _%rand162469162529%_))))
                                     (let ((_%rand162470162539%_
                                            (reverse _%rand162469162529%_)))
                                       (let ((_%g162448162541%_
                                              _%rand162470162539%_)
                                             (_%g162449162542%_
                                              _%hd162460162514%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g162449162542%_
                                                'values))
                                             (_%__kont172859172860%_
                                              _%g162448162541%_
                                              _%g162449162542%_)
                                             (_%__kont172863172864%_))))))))
                       (_%loop162465162524%_ _%target162462162519%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx172857172858%_))
                  (let ((_%e162450162487%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx172857172858%_))))
                    (let ((_%tl162452162492%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e162450162487%_)))
                          (_%hd162451162490%_
                           (let ()
                             (declare (not safe))
                             (##car _%e162450162487%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl162452162492%_))
                          (let ((_%e162453162495%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl162452162492%_))))
                            (let ((_%tl162455162500%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e162453162495%_)))
                                  (_%hd162454162498%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e162453162495%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd162454162498%_))
                                  (let ((_%e162456162503%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd162454162498%_))))
                                    (let ((_%tl162458162508%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e162456162503%_)))
                                          (_%hd162457162506%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e162456162503%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd162457162506%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd162457162506%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl162458162508%_))
                                                  (let ((_%e162459162511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl162458162508%_))))
                                                    (let ((_%tl162461162516%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e162459162511%_)))
                                                          (_%hd162460162514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e162459162511%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl162461162516%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl162455162500%_))
                      (let ((_%__splice172861172862%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl162455162500%_
                                '0))))
                        (let ((_%tl162464162521%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172861172862%_ '1)))
                              (_%target162462162519%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice172861172862%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl162464162521%_))
                              (_%__match172902172903%_
                               _%e162450162487%_
                               _%hd162451162490%_
                               _%tl162452162492%_
                               _%e162453162495%_
                               _%hd162454162498%_
                               _%tl162455162500%_
                               _%e162456162503%_
                               _%hd162457162506%_
                               _%tl162458162508%_
                               _%e162459162511%_
                               _%hd162460162514%_
                               _%tl162461162516%_
                               _%__splice172861172862%_
                               _%target162462162519%_
                               _%tl162464162521%_)
                              (_%__kont172863172864%_))))
                      (_%__kont172863172864%_))
                  (_%__kont172863172864%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont172863172864%_))
                                              (_%__kont172863172864%_))
                                          (_%__kont172863172864%_))))
                                  (_%__kont172863172864%_))))
                          (_%__kont172863172864%_))))
                  (_%__kont172863172864%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self162347%_ _%stx162348%_)
        (let* ((_%g162350162371%_
                (lambda (_%g162351162368%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g162351162368%_))))
               (_%g162349162439%_
                (lambda (_%g162351162374%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g162351162374%_))
                      (let ((_%e162355162376%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g162351162374%_))))
                        (let ((_%hd162356162379%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e162355162376%_)))
                              (_%tl162357162381%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e162355162376%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl162357162381%_))
                              (let ((_%e162358162384%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl162357162381%_))))
                                (let ((_%hd162359162387%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e162358162384%_)))
                                      (_%tl162360162389%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e162358162384%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl162360162389%_))
                                      (let ((_%e162361162392%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl162360162389%_))))
                                        (let ((_%hd162362162395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e162361162392%_)))
                                              (_%tl162363162397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e162361162392%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl162363162397%_))
                                              (let ((_%e162364162400%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl162363162397%_))))
                                                (let ((_%hd162365162403%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e162364162400%_)))
                                                      (_%tl162366162405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e162364162400%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl162366162405%_))
                                                      ((lambda (_%g162352162408%_
                                                                _%g162353162409%_
                                                                _%g162354162410%_)
                                                         (let ((_%c1162427162429%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self162347%_
                           _%g162353162409%_))))
                   (if _%c1162427162429%_
                       (let* ((_%c1162431%_ _%c1162427162429%_)
                              (_%c2162432162434%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self162347%_
                                  _%g162352162408%_))))
                         (if _%c2162432162434%_
                             (let ((_%c2162436%_ _%c2162432162434%_))
                               (if (fx= _%c1162431%_ _%c2162436%_)
                                   _%c1162431%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd162365162403%_
               _%hd162362162395%_
               _%hd162359162387%_)
              (_%g162350162371%_ _%g162351162374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g162350162371%_
                                               _%g162351162374%_))))
                                      (_%g162350162371%_ _%g162351162374%_))))
                              (_%g162350162371%_ _%g162351162374%_))))
                      (_%g162350162371%_ _%g162351162374%_)))))
          (_%g162349162439%_ _%stx162348%_))))))
