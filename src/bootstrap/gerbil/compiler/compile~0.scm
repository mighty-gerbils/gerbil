(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712084086)
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
        (letrec ((_%hash-e143559%_
                  (lambda (_%id143561%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143561%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _%hash-e143559%_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp144928 (list gxc#::void::t))
            (__tmp144927 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp144928
         '()
         __tmp144927
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143555%_
        (apply make-instance gxc#::collect-bindings::t _%$args143555%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp144929
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
        (__make-promise __tmp144929)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143547%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143550%_
                (let ((__obj144903
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj144903))
               (__tmp144930
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143550%_ _%stx143547%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144930
           gxc#current-compile-method
           _%self143550%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp144932 (list gxc#::void::t))
            (__tmp144931 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp144932
         '(modules)
         __tmp144931
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143544%_
        (apply make-instance gxc#::lift-modules::t _%$args143544%_)))
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
      (let ((__tmp144933
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
        (__make-promise __tmp144933)))
    (define gxc#apply-lift-modules__%
      (lambda (_%_143517%_ _%modules143514143519%_ _%stx143521%_)
        (let ((_%modules143524%_
               (if (eq? _%modules143514143519%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143514143519%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143526%_
                  (let ((__obj144905
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144905
                       _%modules143524%_
                       '1
                       '#f
                       '#f))
                    __obj144905))
                 (__tmp144934
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143526%_ _%stx143521%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144934
             gxc#current-compile-method
             _%self143526%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143533%_ . _%args143534%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143533%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143533%_
                  'modules:
                  absent-value))
               _%args143534%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143515143540%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143515143540%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp144936 (list)) (__tmp144935 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp144936
         '()
         __tmp144935
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143510%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143510%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp144937
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
        (__make-promise __tmp144937)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143502%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143505%_
                (let ((__obj144907
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj144907))
               (__tmp144938
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143505%_ _%stx143502%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144938
           gxc#current-compile-method
           _%self143505%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp144940 (list gxc#::false::t))
            (__tmp144939 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp144940
         '()
         __tmp144939
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143499%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143499%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp144941
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
        (__make-promise __tmp144941)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143491%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143494%_
                (let ((__obj144909
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj144909))
               (__tmp144942
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143494%_ _%stx143491%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144942
           gxc#current-compile-method
           _%self143494%_))))
    (define gxc#::count-values::t
      (let ((__tmp144944 (list gxc#::false-expression::t))
            (__tmp144943 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp144944
         '()
         __tmp144943
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143488%_
        (apply make-instance gxc#::count-values::t _%$args143488%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp144945
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
        (__make-promise __tmp144945)))
    (define gxc#apply-count-values
      (lambda (_%stx143480%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143483%_
                (let ((__obj144911
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj144911))
               (__tmp144946
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143483%_ _%stx143480%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144946
           gxc#current-compile-method
           _%self143483%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp144947 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp144947
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143477%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143477%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp144948
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
        (__make-promise __tmp144948)))
    (define gxc#::generate-loader::t
      (let ((__tmp144950 (list gxc#::generate-runtime-empty::t))
            (__tmp144949 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp144950
         '()
         __tmp144949
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143473%_
        (apply make-instance gxc#::generate-loader::t _%$args143473%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp144951
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
        (__make-promise __tmp144951)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143465%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143468%_
                (let ((__obj144914
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj144914))
               (__tmp144952
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143468%_ _%stx143465%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144952
           gxc#current-compile-method
           _%self143468%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp144953 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp144953
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143462%_
        (apply make-instance gxc#::generate-runtime::t _%$args143462%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp144954
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
        (__make-promise __tmp144954)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143454%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143457%_
                (let ((__obj144916
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj144916))
               (__tmp144955
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143457%_ _%stx143454%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144955
           gxc#current-compile-method
           _%self143457%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp144957 (list gxc#::generate-runtime::t))
            (__tmp144956 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp144957
         '()
         __tmp144956
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143451%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143451%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp144958
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
        (__make-promise __tmp144958)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143443%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143446%_
                (let ((__obj144918
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj144918))
               (__tmp144959
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143446%_ _%stx143443%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144959
           gxc#current-compile-method
           _%self143446%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp144960 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp144960
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143440%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143440%_)))
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
      (let ((__tmp144961
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
        (__make-promise __tmp144961)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%_143413%_ _%table143410143415%_ _%stx143417%_)
        (let ((_%table143420%_
               (if (eq? _%table143410143415%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143410143415%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143422%_
                  (let ((__obj144920
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144920
                       _%table143420%_
                       '1
                       '#f
                       '#f))
                    __obj144920))
                 (__tmp144962
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143422%_ _%stx143417%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144962
             gxc#current-compile-method
             _%self143422%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143429%_ . _%args143430%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143429%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143429%_
                  'table:
                  absent-value))
               _%args143430%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143411143436%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143411143436%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp144964 (list gxc#::void-expression::t))
            (__tmp144963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp144964
         '(state)
         __tmp144963
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143406%_
        (apply make-instance gxc#::generate-meta::t _%$args143406%_)))
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
      (let ((__tmp144965
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
        (__make-promise __tmp144965)))
    (define gxc#apply-generate-meta__%
      (lambda (_%_143379%_ _%state143376143381%_ _%stx143383%_)
        (let ((_%state143386%_
               (if (eq? _%state143376143381%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143376143381%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143388%_
                  (let ((__obj144922
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144922
                       _%state143386%_
                       '1
                       '#f
                       '#f))
                    __obj144922))
                 (__tmp144966
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143388%_ _%stx143383%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144966
             gxc#current-compile-method
             _%self143388%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143395%_ . _%args143396%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143395%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143395%_
                  'state:
                  absent-value))
               _%args143396%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143377143402%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143377143402%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp144968 (list)) (__tmp144967 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp144968
         '(state)
         __tmp144967
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143372%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143372%_)))
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
      (let ((__tmp144969
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
        (__make-promise __tmp144969)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%_143345%_ _%state143342143347%_ _%stx143349%_)
        (let ((_%state143352%_
               (if (eq? _%state143342143347%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143342143347%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143354%_
                  (let ((__obj144924
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144924
                       _%state143352%_
                       '1
                       '#f
                       '#f))
                    __obj144924))
                 (__tmp144970
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143354%_ _%stx143349%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144970
             gxc#current-compile-method
             _%self143354%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143361%_ . _%args143362%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143361%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143361%_
                  'state:
                  absent-value))
               _%args143362%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143343143368%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143343143368%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143271%_ _%stx143272%_)
        (let* ((_%g143274143291%_
                (lambda (_%g143275143288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143275143288%_))))
               (_%g143273143338%_
                (lambda (_%g143275143294%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143275143294%_))
                      (let ((_%e143280143296%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143275143294%_))))
                        (let ((_%hd143279143299%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143280143296%_)))
                              (_%tl143278143301%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143280143296%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143278143301%_))
                              (let ((_%e143283143304%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143278143301%_))))
                                (let ((_%hd143282143307%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143283143304%_)))
                                      (_%tl143281143309%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143283143304%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143281143309%_))
                                      (let ((_%e143286143312%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143281143309%_))))
                                        (let ((_%hd143285143315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143286143312%_)))
                                              (_%tl143284143317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143286143312%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143284143317%_))
                                              ((lambda (_%L143320%_
                                                        _%L143321%_)
                                                 (let ((__tmp144971
                                                        (lambda (_%bind143336%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143336%_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _%bind143336%_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp144971
                                                    _%L143321%_)))
                                               _%hd143285143315%_
                                               _%hd143282143307%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143274143291%_
                                                 _%g143275143294%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143274143291%_
                                         _%g143275143294%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143274143291%_ _%g143275143294%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143274143291%_ _%g143275143294%_))))))
          (declare (not safe))
          (_%g143273143338%_ _%stx143272%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143203%_ _%stx143204%_)
        (let* ((_%g143206143223%_
                (lambda (_%g143207143220%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143207143220%_))))
               (_%g143205143268%_
                (lambda (_%g143207143226%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143207143226%_))
                      (let ((_%e143212143228%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143207143226%_))))
                        (let ((_%hd143211143231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143212143228%_)))
                              (_%tl143210143233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143212143228%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143210143233%_))
                              (let ((_%e143215143236%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143210143233%_))))
                                (let ((_%hd143214143239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143215143236%_)))
                                      (_%tl143213143241%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143215143236%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143213143241%_))
                                      (let ((_%e143218143244%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143213143241%_))))
                                        (let ((_%hd143217143247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143218143244%_)))
                                              (_%tl143216143249%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143218143244%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143216143249%_))
                                              ((lambda (_%L143252%_
                                                        _%L143253%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _%L143253%_
                                                    '#t)))
                                               _%hd143217143247%_
                                               _%hd143214143239%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g143206143223%_
                                                 _%g143207143226%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g143206143223%_
                                         _%g143207143226%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g143206143223%_ _%g143207143226%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143206143223%_ _%g143207143226%_))))))
          (declare (not safe))
          (_%g143205143268%_ _%stx143204%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143145%_ _%stx143146%_)
        (let* ((_%g143148143162%_
                (lambda (_%g143149143159%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143149143159%_))))
               (_%g143147143200%_
                (lambda (_%g143149143165%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143149143165%_))
                      (let ((_%e143154143167%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143149143165%_))))
                        (let ((_%hd143153143170%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143154143167%_)))
                              (_%tl143152143172%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143154143167%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143152143172%_))
                              (let ((_%e143157143175%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143152143172%_))))
                                (let ((_%hd143156143178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143157143175%_)))
                                      (_%tl143155143180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143157143175%_))))
                                  ((lambda (_%L143183%_ _%L143184%_)
                                     (let ((_%ctx143197%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143184%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143145%_
                                           'modules))
                                        (cons _%ctx143197%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143145%_
                                                        'modules)))))
                                       (let ((__tmp144972
                                              (lambda ()
                                                (let ((__tmp144973
                                                       (##structure-ref
                                                        _%ctx143197%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143145%_
                                                   __tmp144973)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp144972
                                          gx#current-expander-context
                                          _%ctx143197%_))))
                                   _%tl143155143180%_
                                   _%hd143156143178%_)))
                              (let ()
                                (declare (not safe))
                                (_%g143148143162%_ _%g143149143165%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g143148143162%_ _%g143149143165%_))))))
          (declare (not safe))
          (_%g143147143200%_ _%stx143146%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143098143100%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143098143100%_
              (let ((_%decls143103%_ _%decls143098143100%_))
                (let _%lp143105%_ ((_%rest143107%_ _%decls143103%_))
                  (let* ((_%rest143108143116%_ _%rest143107%_)
                         (_%else143110143124%_ (lambda () '#f))
                         (_%K143112143133%_
                          (lambda (_%decls143127%_ _%decl143128%_)
                            (if (equal? _%decl143128%_ '(not safe))
                                (let () '#t)
                                (if (equal? _%decl143128%_ '(safe))
                                    (let () '#f)
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%lp143105%_ _%decls143127%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143108143116%_))
                        (let ((_%hd143113143136%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143108143116%_)))
                              (_%tl143114143138%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143108143116%_))))
                          (let* ((_%decl143141%_ _%hd143113143136%_)
                                 (_%decls143143%_ _%tl143114143138%_))
                            (declare (not safe))
                            (_%K143112143133%_
                             _%decls143143%_
                             _%decl143141%_)))
                        (let ()
                          (declare (not safe))
                          (_%else143110143124%_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143092%_ _%syntax?143093%_)
        (let ((_%eid143095%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143092%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143096%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143095%_))
              '#!void
              (let ((__tmp144974
                     (let ((__tmp144975
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143095%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp144975 _%syntax?143093%_))))
                (declare (not safe))
                (hash-put! _%ht143096%_ _%eid143095%_ __tmp144974))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143090%_)
        (let ((__tmp144976
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _%id143090%_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp144976))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143045%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143045%_))
            (let () _%key143045%_)
            (if (uninterned-symbol? _%key143045%_)
                (let ()
                  (let ()
                    (declare (not safe))
                    (gxc#generate-runtime-gensym-reference__0 _%key143045%_)))
                (let ()
                  (let* ((_%key143049143056%_ _%key143045%_)
                         (_%E143051143060%_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (error '"No clause matching"
                                     _%key143049143056%_
                                     '([eid . mark])))
                            '#!void))
                         (_%K143052143078%_
                          (lambda (_%mark143063%_ _%eid143064%_)
                            (let ((_%$e143066%_
                                   (##structure-ref
                                    _%mark143063%_
                                    '1
                                    gx#expander-mark::t
                                    '#f)))
                              (if _%$e143066%_
                                  ((lambda (_%ht143069%_)
                                     (let ((_%$e143071%_
                                            (let ()
                                              (declare (not safe))
                                              (hash-get
                                               _%ht143069%_
                                               _%eid143064%_))))
                                       (if _%$e143071%_
                                           ((lambda (_%id143074%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (interned-symbol?
                                                     _%id143074%_))
                                                  _%id143074%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _%id143074%_))))
                                            _%$e143071%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%eid143064%_))))))
                                   _%$e143066%_)
                                  (let ()
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid143064%_))))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%key143049143056%_))
                        (let ((_%hd143053143081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%key143049143056%_)))
                              (_%tl143054143083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%key143049143056%_))))
                          (let* ((_%eid143086%_ _%hd143053143081%_)
                                 (_%mark143088%_ _%tl143054143083%_))
                            (declare (not safe))
                            (_%K143052143078%_ _%mark143088%_ _%eid143086%_)))
                        (let ()
                          (declare (not safe))
                          (_%E143051143060%_)))))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143042%_ _%stx143043%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self142889%_ _%stx142890%_)
        (letrec ((_%simplify142892%_
                  (lambda (_%body142940%_)
                    (let _%lp142942%_ ((_%rest142944%_ _%body142940%_)
                                       (_%r142945%_ '()))
                      (let* ((_%rest142946142954%_ _%rest142944%_)
                             (_%else142948142962%_
                              (lambda () (reverse _%r142945%_)))
                             (_%K142950143030%_
                              (lambda (_%rest142965%_ _%hd142966%_)
                                (let* ((_%hd142967142983%_ _%hd142966%_)
                                       (_%else142971142991%_
                                        (lambda ()
                                          (let ((__tmp144977
                                                 (cons _%hd142966%_
                                                       _%r142945%_)))
                                            (declare (not safe))
                                            (_%lp142942%_
                                             _%rest142965%_
                                             __tmp144977)))))
                                  (let ((_%K142979143020%_
                                         (lambda (_%exprs143018%_)
                                           (let ((__tmp144978
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _%rest142965%_
                                                     _%exprs143018%_))))
                                             (declare (not safe))
                                             (_%lp142942%_
                                              __tmp144978
                                              _%r142945%_))))
                                        (_%K142974143004%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest142965%_))
                                               (let ((__tmp144979
                                                      (cons _%hd142966%_
                                                            _%r142945%_)))
                                                 (declare (not safe))
                                                 (_%lp142942%_
                                                  _%rest142965%_
                                                  __tmp144979))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp142942%_
                                                  _%rest142965%_
                                                  _%r142945%_)))))
                                        (_%K142973142996%_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _%rest142965%_))
                                               (let ((__tmp144980
                                                      (cons _%hd142966%_
                                                            _%r142945%_)))
                                                 (declare (not safe))
                                                 (_%lp142942%_
                                                  _%rest142965%_
                                                  __tmp144980))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp142942%_
                                                  _%rest142965%_
                                                  _%r142945%_))))))
                                    (let ((_%try-match142970142999%_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _%hd142967142983%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%K142973142996%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%else142971142991%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142967142983%_))
                                          (let ((_%tl142981143025%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142967142983%_)))
                                                (_%hd142980143023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142967142983%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142980143023%_
                                                         'begin))
                                                (let ((_%exprs143028%_
                                                       _%tl142981143025%_))
                                                  (declare (not safe))
                                                  (_%K142979143020%_
                                                   _%exprs143028%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd142980143023%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl142981143025%_))
                                                        (let ((_%tl142978143012%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl142981143025%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl142978143012%_))
                      (let () (declare (not safe)) (_%K142974143004%_))
                      (let ()
                        (declare (not safe))
                        (_%try-match142970142999%_))))
                (let () (declare (not safe)) (_%try-match142970142999%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match142970142999%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%try-match142970142999%_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142946142954%_))
                            (let ((_%hd142951143033%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142946142954%_)))
                                  (_%tl142952143035%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142946142954%_))))
                              (let* ((_%hd143038%_ _%hd142951143033%_)
                                     (_%rest143040%_ _%tl142952143035%_))
                                (declare (not safe))
                                (_%K142950143030%_
                                 _%rest143040%_
                                 _%hd143038%_)))
                            (let ()
                              (declare (not safe))
                              (_%else142948142962%_))))))))
          (let* ((_%g142894142904%_
                  (lambda (_%g142895142901%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142895142901%_))))
                 (_%g142893142937%_
                  (lambda (_%g142895142907%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142895142907%_))
                        (let ((_%e142899142909%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142895142907%_))))
                          (let ((_%hd142898142912%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142899142909%_)))
                                (_%tl142897142914%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142899142909%_))))
                            ((lambda (_%L142917%_)
                               (let* ((_%body142932%_
                                       (map (lambda (_%g142927142929%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self142889%_
                                                 _%g142927142929%_)))
                                            _%L142917%_))
                                      (_%body142934%_
                                       (let ()
                                         (declare (not safe))
                                         (_%simplify142892%_ _%body142932%_))))
                                 (if (let ((__tmp144981
                                            (length _%body142934%_)))
                                       (declare (not safe))
                                       (##fx= __tmp144981 '1))
                                     (car _%body142934%_)
                                     (cons 'begin _%body142934%_))))
                             _%tl142897142914%_)))
                        (let ()
                          (declare (not safe))
                          (_%g142894142904%_ _%g142895142907%_))))))
            (declare (not safe))
            (_%g142893142937%_ _%stx142890%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142850%_ _%stx142851%_)
        (let* ((_%g142853142863%_
                (lambda (_%g142854142860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142854142860%_))))
               (_%g142852142886%_
                (lambda (_%g142854142866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142854142866%_))
                      (let ((_%e142858142868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142854142866%_))))
                        (let ((_%hd142857142871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142858142868%_)))
                              (_%tl142856142873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142858142868%_))))
                          ((lambda (_%L142876%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L142876%_))))
                           _%tl142856142873%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142853142863%_ _%g142854142866%_))))))
          (declare (not safe))
          (_%g142852142886%_ _%stx142851%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142614%_ _%stx142615%_)
        (let* ((_%__stx143584143585%_ _%stx142615%_)
               (_%g142619142671%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143584143585%_)))))
          (let ((_%__kont143586143587%_
                 (lambda (_%L142832%_ _%L142833%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142614%_ _%L142832%_))))
                (_%__kont143588143589%_
                 (lambda (_%L142780%_ _%L142781%_ _%L142782%_)
                   (if (let ((__tmp144982
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142782%_))))
                         (declare (not safe))
                         (##memq __tmp144982 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142614%_ _%L142780%_)))))
                (_%__kont143592143593%_
                 (lambda (_%L142700%_ _%L142701%_)
                   (let ((_%decls142716%_ (map gx#syntax->datum _%L142701%_)))
                     (let ((__tmp144985
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142716%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142614%_
                                                   _%L142700%_))
                                                '())))))
                           (__tmp144983
                            (let ((__tmp144984
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp144984 _%decls142716%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp144985
                        gxc#current-compile-decls
                        __tmp144983))))))
            (let* ((_%__match143639143640%_
                    (lambda (_%e142637142724%_
                             _%hd142636142727%_
                             _%tl142635142729%_
                             _%e142640142732%_
                             _%hd142639142735%_
                             _%tl142638142737%_
                             _%e142643142740%_
                             _%hd142642142743%_
                             _%tl142641142745%_
                             _%__splice143590143591%_
                             _%target142644142748%_
                             _%tl142646142750%_)
                      (letrec ((_%loop142647142753%_
                                (lambda (_%hd142645142756%_
                                         _%param142651142758%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142645142756%_))
                                      (let ((_%e142648142761%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142645142756%_))))
                                        (let ((_%lp-tl142650142766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142648142761%_)))
                                              (_%lp-hd142649142764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142648142761%_))))
                                          (let ((__tmp144986
                                                 (cons _%lp-hd142649142764%_
                                                       _%param142651142758%_)))
                                            (declare (not safe))
                                            (_%loop142647142753%_
                                             _%lp-tl142650142766%_
                                             __tmp144986))))
                                      (let ((_%param142652142769%_
                                             (reverse _%param142651142758%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142638142737%_))
                                            (let ((_%e142655142772%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142638142737%_))))
                                              (let ((_%tl142653142777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142655142772%_)))
                                                    (_%hd142654142775%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142655142772%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142653142777%_))
                                                    (let ((_%L142780%_
                                                           _%hd142654142775%_)
                                                          (_%L142781%_
                                                           _%param142652142769%_)
                                                          (_%L142782%_
                                                           _%hd142642142743%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142782%_))
                       (let ((__tmp144987
                              (let ((__tmp144988
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L142782%_))))
                                (declare (not safe))
                                (##memq __tmp144988 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp144987)))
                  (_%__kont143588143589%_ _%L142780%_ _%L142781%_ _%L142782%_)
                  (_%__kont143592143593%_
                   _%hd142654142775%_
                   _%hd142639142735%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142619142671%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142619142671%_))))))))
                        (let ()
                          (declare (not safe))
                          (_%loop142647142753%_ _%target142644142748%_ '())))))
                   (_%__match143613143614%_
                    (lambda (_%e142625142808%_
                             _%hd142624142811%_
                             _%tl142623142813%_
                             _%e142628142816%_
                             _%hd142627142819%_
                             _%tl142626142821%_
                             _%e142631142824%_
                             _%hd142630142827%_
                             _%tl142629142829%_)
                      (let ((_%L142832%_ _%hd142630142827%_)
                            (_%L142833%_ _%hd142627142819%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142833%_))
                            (_%__kont143586143587%_ _%L142832%_ _%L142833%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142627142819%_))
                                (let ((_%e142643142740%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142627142819%_))))
                                  (let ((_%tl142641142745%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142643142740%_)))
                                        (_%hd142642142743%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142643142740%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142641142745%_))
                                        (let ((_%__splice143590143591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142641142745%_
                                                  '0))))
                                          (let ((_%tl142646142750%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143590143591%_
                                                    '1)))
                                                (_%target142644142748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143590143591%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142646142750%_))
                                                (_%__match143639143640%_
                                                 _%e142625142808%_
                                                 _%hd142624142811%_
                                                 _%tl142623142813%_
                                                 _%e142628142816%_
                                                 _%hd142627142819%_
                                                 _%tl142626142821%_
                                                 _%e142643142740%_
                                                 _%hd142642142743%_
                                                 _%tl142641142745%_
                                                 _%__splice143590143591%_
                                                 _%target142644142748%_
                                                 _%tl142646142750%_)
                                                (_%__kont143592143593%_
                                                 _%hd142630142827%_
                                                 _%hd142627142819%_))))
                                        (_%__kont143592143593%_
                                         _%hd142630142827%_
                                         _%hd142627142819%_))))
                                (_%__kont143592143593%_
                                 _%hd142630142827%_
                                 _%hd142627142819%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143584143585%_))
                  (let ((_%e142625142808%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143584143585%_))))
                    (let ((_%tl142623142813%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142625142808%_)))
                          (_%hd142624142811%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142625142808%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142623142813%_))
                          (let ((_%e142628142816%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142623142813%_))))
                            (let ((_%tl142626142821%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142628142816%_)))
                                  (_%hd142627142819%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142628142816%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142626142821%_))
                                  (let ((_%e142631142824%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142626142821%_))))
                                    (let ((_%tl142629142829%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142631142824%_)))
                                          (_%hd142630142827%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142631142824%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142629142829%_))
                                          (_%__match143613143614%_
                                           _%e142625142808%_
                                           _%hd142624142811%_
                                           _%tl142623142813%_
                                           _%e142628142816%_
                                           _%hd142627142819%_
                                           _%tl142626142821%_
                                           _%e142631142824%_
                                           _%hd142630142827%_
                                           _%tl142629142829%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142627142819%_))
                                              (let ((_%e142643142740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142627142819%_))))
                                                (let ((_%tl142641142745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142643142740%_)))
                                                      (_%hd142642142743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142643142740%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142641142745%_))
                                                      (let ((_%__splice143590143591%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142641142745%_ '0))))
                (let ((_%tl142646142750%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143590143591%_ '1)))
                      (_%target142644142748%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143590143591%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142646142750%_))
                      (_%__match143639143640%_
                       _%e142625142808%_
                       _%hd142624142811%_
                       _%tl142623142813%_
                       _%e142628142816%_
                       _%hd142627142819%_
                       _%tl142626142821%_
                       _%e142643142740%_
                       _%hd142642142743%_
                       _%tl142641142745%_
                       _%__splice143590143591%_
                       _%target142644142748%_
                       _%tl142646142750%_)
                      (let () (declare (not safe)) (_%g142619142671%_)))))
              (let () (declare (not safe)) (_%g142619142671%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142619142671%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142627142819%_))
                                      (let ((_%e142643142740%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142627142819%_))))
                                        (let ((_%tl142641142745%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142643142740%_)))
                                              (_%hd142642142743%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142643142740%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142641142745%_))
                                              (let ((_%__splice143590143591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142641142745%_
                                                        '0))))
                                                (let ((_%tl142646142750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143590143591%_
                                                          '1)))
                                                      (_%target142644142748%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143590143591%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142646142750%_))
                                                      (_%__match143639143640%_
                                                       _%e142625142808%_
                                                       _%hd142624142811%_
                                                       _%tl142623142813%_
                                                       _%e142628142816%_
                                                       _%hd142627142819%_
                                                       _%tl142626142821%_
                                                       _%e142643142740%_
                                                       _%hd142642142743%_
                                                       _%tl142641142745%_
                                                       _%__splice143590143591%_
                                                       _%target142644142748%_
                                                       _%tl142646142750%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142619142671%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142619142671%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142619142671%_))))))
                          (let () (declare (not safe)) (_%g142619142671%_)))))
                  (let () (declare (not safe)) (_%g142619142671%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142573%_ _%stx142574%_)
        (let* ((_%g142576142586%_
                (lambda (_%g142577142583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142577142583%_))))
               (_%g142575142611%_
                (lambda (_%g142577142589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142577142589%_))
                      (let ((_%e142581142591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142577142589%_))))
                        (let ((_%hd142580142594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142581142591%_)))
                              (_%tl142579142596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142581142591%_))))
                          ((lambda (_%L142599%_)
                             (let ((_%decls142609%_
                                    (map gx#syntax->datum _%L142599%_)))
                               (let ((__tmp144989
                                      (let ((__tmp144990
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp144990
                                         _%decls142609%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp144989))
                               (cons 'declare _%decls142609%_)))
                           _%tl142579142596%_)))
                      (let ()
                        (declare (not safe))
                        (_%g142576142586%_ _%g142577142589%_))))))
          (declare (not safe))
          (_%g142575142611%_ _%stx142574%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142319%_ _%stx142320%_)
        (let* ((_%g142322142339%_
                (lambda (_%g142323142336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142323142336%_))))
               (_%g142321142570%_
                (lambda (_%g142323142342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142323142342%_))
                      (let ((_%e142328142344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142323142342%_))))
                        (let ((_%hd142327142347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142328142344%_)))
                              (_%tl142326142349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142328142344%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142326142349%_))
                              (let ((_%e142331142352%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142326142349%_))))
                                (let ((_%hd142330142355%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142331142352%_)))
                                      (_%tl142329142357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142331142352%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142329142357%_))
                                      (let ((_%e142334142360%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142329142357%_))))
                                        (let ((_%hd142333142363%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142334142360%_)))
                                              (_%tl142332142365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142334142360%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142332142365%_))
                                              ((lambda (_%L142368%_
                                                        _%L142369%_)
                                                 (let* ((_%__stx143692143693%_
                                                         _%L142369%_)
                                                        (_%g142386142400%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143692143693%_)))))
                                                   (let ((_%__kont143694143695%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142319%_
                                                               _%L142368%_))))
                                                         (_%__kont143696143697%_
                                                          (lambda (_%L142532%_)
                                                            (let ((_%eid142541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142532%_))))
                      (let ((_%lambda-expr142542142544%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression
                                _%L142368%_))))
                        (if _%lambda-expr142542142544%_
                            (let* ((_%lambda-expr142547%_
                                    _%lambda-expr142542142544%_)
                                   (__tmp144991
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp144991
                               _%lambda-expr142547%_
                               _%eid142541%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142541%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142319%_
                                           _%L142368%_))
                                        '()))))))
                 (_%__kont143698143699%_
                  (lambda ()
                    (let* ((_%tmp142407%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142516%_
                            (let _%lp142409%_ ((_%rest142411%_ _%L142369%_)
                                               (_%k142412%_ '0)
                                               (_%r142413%_ '()))
                              (let* ((_%__stx143662143663%_ _%rest142411%_)
                                     (_%g142418142435%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143662143663%_)))))
                                (let ((_%__kont143664143665%_
                                       (lambda (_%L142503%_)
                                         (let ((__tmp144992
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142412%_ '1))))
                                           (declare (not safe))
                                           (_%lp142409%_
                                            _%L142503%_
                                            __tmp144992
                                            _%r142413%_))))
                                      (_%__kont143666143667%_
                                       (lambda (_%L142476%_ _%L142477%_)
                                         (let ((__tmp144994
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _%k142412%_ '1)))
                                               (__tmp144993
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142477%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _%tmp142407%_
                                   _%k142412%_
                                   _%L142476%_))
                                '())))
              _%r142413%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp142409%_
                                            _%L142476%_
                                            __tmp144994
                                            __tmp144993))))
                                      (_%__kont143668143669%_
                                       (lambda (_%L142447%_)
                                         (let ((__tmp144995
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142447%_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _%tmp142407%_
                                   _%k142412%_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp144995
                                            _%r142413%_))))
                                      (_%__kont143670143671%_
                                       (lambda () (reverse _%r142413%_))))
                                  (let ((_%g142416142463%_
                                         (lambda ()
                                           (let ((_%L142447%_
                                                  _%__stx143662143663%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142447%_))
                                                 (_%__kont143668143669%_
                                                  _%L142447%_)
                                                 (_%__kont143670143671%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143662143663%_))
                                        (let ((_%e142423142492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143662143663%_))))
                                          (let ((_%tl142421142497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142423142492%_)))
                                                (_%hd142422142495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142423142492%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142422142495%_))
                                                (let ((_%e142424142500%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142422142495%_))))
                                                  (if (equal? _%e142424142500%_
                                                              '#f)
                                                      (_%__kont143664143665%_
                                                       _%tl142421142497%_)
                                                      (_%__kont143666143667%_
                                                       _%tl142421142497%_
                                                       _%hd142422142495%_)))
                                                (_%__kont143666143667%_
                                                 _%tl142421142497%_
                                                 _%hd142422142495%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142416142463%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142407%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142319%_
                                                       _%L142368%_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _%tmp142407%_
                                           _%L142369%_
                                           _%L142368%_))
                                        _%body142516%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143692143693%_))
                                                         (let ((_%e142390142554%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143692143693%_))))
                   (let ((_%tl142388142559%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142390142554%_)))
                         (_%hd142389142557%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142390142554%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142389142557%_))
                         (let ((_%e142391142562%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142389142557%_))))
                           (if (equal? _%e142391142562%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142388142559%_))
                                   (_%__kont143694143695%_)
                                   (_%__kont143698143699%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142388142559%_))
                                   (_%__kont143696143697%_ _%hd142389142557%_)
                                   (_%__kont143698143699%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142388142559%_))
                             (_%__kont143696143697%_ _%hd142389142557%_)
                             (_%__kont143698143699%_)))))
                 (_%__kont143698143699%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142333142363%_
                                               _%hd142330142355%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142322142339%_
                                                 _%g142323142342%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142322142339%_
                                         _%g142323142342%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142322142339%_ _%g142323142342%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142322142339%_ _%g142323142342%_))))))
          (declare (not safe))
          (_%g142321142570%_ _%stx142320%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142294%_ _%hd142295%_ _%expr142296%_)
        (let ((_%$e142298%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _%expr142296%_))))
          (if _%$e142298%_
              ((lambda (_%count142301%_)
                 (let ((_%len142303%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142295%_)))
                       (_%cmp142304%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142295%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142303%_ '0))
                           (_%cmp142304%_ _%count142301%_ _%len142303%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142296%_
                          _%hd142295%_)))))
               _%$e142298%_)
              (let ()
                (let* ((_%len142310%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142295%_)))
                       (_%cmp142312%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142295%_))
                            '##fx=
                            '##fx>=))
                       (_%errmsg142314%_
                        (let ((__tmp144997
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-list? _%hd142295%_))
                                   '"Context expects "
                                   '"Context expects at least "))
                              (__tmp144996 (number->string _%len142310%_)))
                          (declare (not safe))
                          (##string-append
                           __tmp144997
                           __tmp144996
                           '" values")))
                       (_%count142316%_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-temporary__0))))
                  (if (and (let ((__tmp144998
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-list? _%hd142295%_))))
                             (declare (not safe))
                             (not __tmp144998))
                           (let ()
                             (declare (not safe))
                             (##fx= _%len142310%_ '0)))
                      '#!void
                      (cons 'let
                            (cons (cons (cons _%count142316%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-values-count
                                                       _%vals142294%_))
                                                    '()))
                                        '())
                                  (cons (cons 'if
                                              (cons (cons 'not
                                                          (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gxc#current-compile-decls-unsafe?))
                            (cons _%cmp142312%_
                                  (cons _%count142316%_
                                        (cons _%len142310%_ '())))
                            (cons 'let
                                  (cons '()
                                        (cons '(declare (not safe))
                                              (cons (cons _%cmp142312%_
                                                          (cons _%count142316%_
                                                                (cons _%len142310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons 'error
                                                                (cons _%errmsg142314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%count142316%_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142289%_)
        (letrec ((_%generate-inline142291%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142289%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142289%_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142291%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142291%_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142282%_ _%i142283%_ _%rest142284%_)
        (letrec ((_%generate-inline142286%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142283%_ '0))
                             (let ((__tmp144999
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%rest142284%_))))
                               (declare (not safe))
                               (not __tmp144999)))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142282%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142282%_
                                                      (cons '0 '())))
                                          (cons _%var142282%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142282%_ (cons _%i142283%_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_%generate-inline142286%_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_%generate-inline142286%_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142276%_ _%i142277%_)
        (if (let () (declare (not safe)) (##fx= _%i142277%_ '0))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (gxc#current-compile-decls-unsafe?))
                  (cons 'if
                        (cons (cons '##values? (cons _%var142276%_ '()))
                              (cons (cons '##vector->list
                                          (cons _%var142276%_ '()))
                                    (cons (cons 'list (cons _%var142276%_ '()))
                                          '()))))
                  (cons 'let
                        (cons '()
                              (cons '(declare (not safe))
                                    (cons (cons 'if
                                                (cons (cons '##values?
                                                            (cons _%var142276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '##vector->list (cons _%var142276%_ '()))
                    (cons (cons 'list (cons _%var142276%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
            (if (let () (declare (not safe)) (##fx= _%i142277%_ '1))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons 'if
                            (cons (cons '##values? (cons _%var142276%_ '()))
                                  (cons (cons '##cdr
                                              (cons (cons '##vector->list
                                                          (cons _%var142276%_
                                                                '()))
                                                    '()))
                                        (cons ''() '()))))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons 'if
                                                    (cons (cons '##values?
                                                                (cons _%var142276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '##cdr
                              (cons (cons '##vector->list
                                          (cons _%var142276%_ '()))
                                    '()))
                        (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))
                (let ()
                  (if (let ()
                        (declare (not safe))
                        (gxc#current-compile-decls-unsafe?))
                      (cons '##list-tail
                            (cons (cons '##vector->list
                                        (cons _%var142276%_ '()))
                                  (cons _%i142277%_ '())))
                      (cons 'let
                            (cons '()
                                  (cons '(declare (not safe))
                                        (cons (cons '##list-tail
                                                    (cons (cons '##vector->list
                                                                (cons _%var142276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons _%i142277%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142208%_ _%stx142209%_)
        (let* ((_%g142211142228%_
                (lambda (_%g142212142225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142212142225%_))))
               (_%g142210142273%_
                (lambda (_%g142212142231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142212142231%_))
                      (let ((_%e142217142233%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142212142231%_))))
                        (let ((_%hd142216142236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142217142233%_)))
                              (_%tl142215142238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142217142233%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142215142238%_))
                              (let ((_%e142220142241%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142215142238%_))))
                                (let ((_%hd142219142244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142220142241%_)))
                                      (_%tl142218142246%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142220142241%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142218142246%_))
                                      (let ((_%e142223142249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142218142246%_))))
                                        (let ((_%hd142222142252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142223142249%_)))
                                              (_%tl142221142254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142223142249%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142221142254%_))
                                              ((lambda (_%L142257%_
                                                        _%L142258%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _%self142208%_
                                                    _%L142258%_
                                                    _%L142257%_)))
                                               _%hd142222142252%_
                                               _%hd142219142244%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g142211142228%_
                                                 _%g142212142231%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142211142228%_
                                         _%g142212142231%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142211142228%_ _%g142212142231%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g142211142228%_ _%g142212142231%_))))))
          (declare (not safe))
          (_%g142210142273%_ _%stx142209%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142167%_ _%hd142168%_ _%body142169%_)
        (let* ((_%hd142171%_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _%hd142168%_)))
               (_%body142173%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142167%_ _%body142169%_)))
               (_%body142205%_
                (let* ((_%body142174142182%_ _%body142173%_)
                       (_%else142176142190%_
                        (lambda () (cons _%body142173%_ '())))
                       (_%K142178142195%_
                        (lambda (_%exprs142193%_) _%exprs142193%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142174142182%_))
                      (let ((_%hd142179142198%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142174142182%_)))
                            (_%tl142180142200%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142174142182%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142179142198%_ 'begin))
                            (let ((_%exprs142203%_ _%tl142180142200%_))
                              (declare (not safe))
                              (_%K142178142195%_ _%exprs142203%_))
                            (let ()
                              (declare (not safe))
                              (_%else142176142190%_))))
                      (let () (declare (not safe)) (_%else142176142190%_))))))
          (cons 'lambda (cons _%hd142171%_ _%body142205%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142165%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142165%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140704%_ _%stx140705%_)
        (letrec ((_%dispatch-case?140707%_
                  (lambda (_%hd141395%_ _%body141396%_)
                    (let* ((_%form141398%_
                            (cons _%hd141395%_ (cons _%body141396%_ '())))
                           (_%__stx143724143725%_ _%form141398%_)
                           (_%g141403141560%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143724143725%_)))))
                      (let ((_%__kont143726143727%_
                             (lambda (_%L142085%_ _%L142086%_ _%L142087%_)
                               '#t))
                            (_%__kont143732143733%_
                             (lambda (_%L141873%_
                                      _%L141874%_
                                      _%L141875%_
                                      _%L141876%_
                                      _%L141877%_
                                      _%L141878%_)
                               '#t))
                            (_%__kont143738143739%_
                             (lambda (_%L141668%_
                                      _%L141669%_
                                      _%L141670%_
                                      _%L141671%_)
                               '#t))
                            (_%__kont143740143741%_ (lambda () '#f)))
                        (let* ((_%__match143865143866%_
                                (lambda (_%e141522141572%_
                                         _%hd141521141575%_
                                         _%tl141520141577%_
                                         _%e141525141580%_
                                         _%hd141524141583%_
                                         _%tl141523141585%_
                                         _%e141528141588%_
                                         _%hd141527141591%_
                                         _%tl141526141593%_
                                         _%e141531141596%_
                                         _%hd141530141599%_
                                         _%tl141529141601%_
                                         _%e141534141604%_
                                         _%hd141533141607%_
                                         _%tl141532141609%_
                                         _%e141537141612%_
                                         _%hd141536141615%_
                                         _%tl141535141617%_
                                         _%e141540141620%_
                                         _%hd141539141623%_
                                         _%tl141538141625%_
                                         _%e141543141628%_
                                         _%hd141542141631%_
                                         _%tl141541141633%_
                                         _%e141546141636%_
                                         _%hd141545141639%_
                                         _%tl141544141641%_
                                         _%e141549141644%_
                                         _%hd141548141647%_
                                         _%tl141547141649%_
                                         _%e141552141652%_
                                         _%hd141551141655%_
                                         _%tl141550141657%_
                                         _%e141555141660%_
                                         _%hd141554141663%_
                                         _%tl141553141665%_)
                                  (let ((_%L141668%_ _%hd141554141663%_)
                                        (_%L141669%_ _%hd141545141639%_)
                                        (_%L141670%_ _%hd141536141615%_)
                                        (_%L141671%_ _%hd141521141575%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141671%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141670%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141671%_
                                                _%L141668%_))
                                             (let ((__tmp145000
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _%L141669%_
                                                       _%L141671%_))))
                                               (declare (not safe))
                                               (not __tmp145000)))
                                        (_%__kont143738143739%_
                                         _%L141668%_
                                         _%L141669%_
                                         _%L141670%_
                                         _%L141671%_)
                                        (_%__kont143740143741%_)))))
                               (_%__match143837143838%_
                                (lambda (_%e141522141572%_
                                         _%hd141521141575%_
                                         _%tl141520141577%_
                                         _%e141525141580%_
                                         _%hd141524141583%_
                                         _%tl141523141585%_
                                         _%e141528141588%_
                                         _%hd141527141591%_
                                         _%tl141526141593%_
                                         _%e141531141596%_
                                         _%hd141530141599%_
                                         _%tl141529141601%_
                                         _%e141534141604%_
                                         _%hd141533141607%_
                                         _%tl141532141609%_
                                         _%e141537141612%_
                                         _%hd141536141615%_
                                         _%tl141535141617%_
                                         _%e141540141620%_
                                         _%hd141539141623%_
                                         _%tl141538141625%_
                                         _%e141543141628%_
                                         _%hd141542141631%_
                                         _%tl141541141633%_
                                         _%e141546141636%_
                                         _%hd141545141639%_
                                         _%tl141544141641%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141538141625%_))
                                      (let ((_%e141549141644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141538141625%_))))
                                        (let ((_%tl141547141649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141549141644%_)))
                                              (_%hd141548141647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141549141644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141548141647%_))
                                              (let ((_%e141552141652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141548141647%_))))
                                                (let ((_%tl141550141657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141552141652%_)))
                                                      (_%hd141551141655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141552141652%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141551141655%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141551141655%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141550141657%_))
                      (let ((_%e141555141660%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141550141657%_))))
                        (let ((_%tl141553141665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141555141660%_)))
                              (_%hd141554141663%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141555141660%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141553141665%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141547141649%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141523141585%_))
                                      (_%__match143865143866%_
                                       _%e141522141572%_
                                       _%hd141521141575%_
                                       _%tl141520141577%_
                                       _%e141525141580%_
                                       _%hd141524141583%_
                                       _%tl141523141585%_
                                       _%e141528141588%_
                                       _%hd141527141591%_
                                       _%tl141526141593%_
                                       _%e141531141596%_
                                       _%hd141530141599%_
                                       _%tl141529141601%_
                                       _%e141534141604%_
                                       _%hd141533141607%_
                                       _%tl141532141609%_
                                       _%e141537141612%_
                                       _%hd141536141615%_
                                       _%tl141535141617%_
                                       _%e141540141620%_
                                       _%hd141539141623%_
                                       _%tl141538141625%_
                                       _%e141543141628%_
                                       _%hd141542141631%_
                                       _%tl141541141633%_
                                       _%e141546141636%_
                                       _%hd141545141639%_
                                       _%tl141544141641%_
                                       _%e141549141644%_
                                       _%hd141548141647%_
                                       _%tl141547141649%_
                                       _%e141552141652%_
                                       _%hd141551141655%_
                                       _%tl141550141657%_
                                       _%e141555141660%_
                                       _%hd141554141663%_
                                       _%tl141553141665%_)
                                      (_%__kont143740143741%_))
                                  (_%__kont143740143741%_))
                              (_%__kont143740143741%_))))
                      (_%__kont143740143741%_))
                  (_%__kont143740143741%_))
              (_%__kont143740143741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143740143741%_))))
                                      (_%__kont143740143741%_))))
                               (_%__match143767143768%_
                                (lambda (_%e141458141713%_
                                         _%hd141457141716%_
                                         _%tl141456141718%_
                                         _%__splice143734143735%_
                                         _%target141459141721%_
                                         _%tl141461141723%_)
                                  (letrec ((_%loop141462141726%_
                                            (lambda (_%hd141460141729%_
                                                     _%arg141466141731%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141460141729%_))
                                                  (let ((_%e141463141734%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141460141729%_))))
                                                    (let ((_%lp-tl141465141739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141463141734%_)))
                                                          (_%lp-hd141464141737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141463141734%_))))
                                                      (let ((__tmp145001
                                                             (cons _%lp-hd141464141737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141466141731%_)))
                (declare (not safe))
                (_%loop141462141726%_ _%lp-tl141465141739%_ __tmp145001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141467141742%_
                                                         (reverse _%arg141466141731%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141456141718%_))
                                                        (let ((_%e141470141745%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141456141718%_))))
                  (let ((_%tl141468141750%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141470141745%_)))
                        (_%hd141469141748%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141470141745%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141469141748%_))
                        (let ((_%e141473141753%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141469141748%_))))
                          (let ((_%tl141471141758%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141473141753%_)))
                                (_%hd141472141756%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141473141753%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141472141756%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141472141756%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141471141758%_))
                                        (let ((_%e141476141761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141471141758%_))))
                                          (let ((_%tl141474141766%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141476141761%_)))
                                                (_%hd141475141764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141476141761%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141475141764%_))
                                                (let ((_%e141479141769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141475141764%_))))
                                                  (let ((_%tl141477141774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141479141769%_)))
                                                        (_%hd141478141772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141479141769%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141478141772%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141478141772%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141477141774%_))
                        (let ((_%e141482141777%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141477141774%_))))
                          (let ((_%tl141480141782%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141482141777%_)))
                                (_%hd141481141780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141482141777%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141480141782%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141474141766%_))
                                    (let ((_%e141485141785%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141474141766%_))))
                                      (let ((_%tl141483141790%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141485141785%_)))
                                            (_%hd141484141788%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141485141785%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141484141788%_))
                                            (let ((_%e141488141793%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141484141788%_))))
                                              (let ((_%tl141486141798%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141488141793%_)))
                                                    (_%hd141487141796%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141488141793%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141487141796%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141487141796%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141486141798%_))
                                                            (let ((_%e141491141801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141486141798%_))))
                      (let ((_%tl141489141806%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141491141801%_)))
                            (_%hd141490141804%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141491141801%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141489141806%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141483141790%_))
                                (if (let ((__tmp145002
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141483141790%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145002 '1))
                                    (let ((_%__splice143736143737%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141483141790%_
                                              '1))))
                                      (let ((_%tl141494141811%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143736143737%_
                                                '1)))
                                            (_%target141492141809%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143736143737%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141494141811%_))
                                            (let ((_%e141503141814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141494141811%_))))
                                              (let ((_%tl141501141819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141503141814%_)))
                                                    (_%hd141502141817%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141503141814%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141502141817%_))
                                                    (let ((_%e141506141822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141502141817%_))))
                                                      (let ((_%tl141504141827%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141506141822%_)))
                    (_%hd141505141825%_
                     (let () (declare (not safe)) (##car _%e141506141822%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141505141825%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141505141825%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141504141827%_))
                            (let ((_%e141509141830%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141504141827%_))))
                              (let ((_%tl141507141835%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141509141830%_)))
                                    (_%hd141508141833%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141509141830%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141507141835%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141501141819%_))
                                        (letrec ((_%loop141495141838%_
                                                  (lambda (_%hd141493141841%_
                                                           _%xarg141499141843%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141493141841%_))
                                                        (let ((_%e141496141846%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141493141841%_))))
                  (let ((_%lp-tl141498141851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141496141846%_)))
                        (_%lp-hd141497141849%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141496141846%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141497141849%_))
                        (let ((_%e141512141854%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141497141849%_))))
                          (let ((_%tl141510141859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141512141854%_)))
                                (_%hd141511141857%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141512141854%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141511141857%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141511141857%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141510141859%_))
                                        (let ((_%e141515141862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141510141859%_))))
                                          (let ((_%tl141513141867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141515141862%_)))
                                                (_%hd141514141865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141515141862%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141513141867%_))
                                                (let ((__tmp145003
                                                       (cons _%hd141514141865%_
                                                             _%xarg141499141843%_)))
                                                  (declare (not safe))
                                                  (_%loop141495141838%_
                                                   _%lp-tl141498141851%_
                                                   __tmp145003))
                                                (_%__match143837143838%_
                                                 _%e141458141713%_
                                                 _%hd141457141716%_
                                                 _%tl141456141718%_
                                                 _%e141470141745%_
                                                 _%hd141469141748%_
                                                 _%tl141468141750%_
                                                 _%e141473141753%_
                                                 _%hd141472141756%_
                                                 _%tl141471141758%_
                                                 _%e141476141761%_
                                                 _%hd141475141764%_
                                                 _%tl141474141766%_
                                                 _%e141479141769%_
                                                 _%hd141478141772%_
                                                 _%tl141477141774%_
                                                 _%e141482141777%_
                                                 _%hd141481141780%_
                                                 _%tl141480141782%_
                                                 _%e141485141785%_
                                                 _%hd141484141788%_
                                                 _%tl141483141790%_
                                                 _%e141488141793%_
                                                 _%hd141487141796%_
                                                 _%tl141486141798%_
                                                 _%e141491141801%_
                                                 _%hd141490141804%_
                                                 _%tl141489141806%_))))
                                        (_%__match143837143838%_
                                         _%e141458141713%_
                                         _%hd141457141716%_
                                         _%tl141456141718%_
                                         _%e141470141745%_
                                         _%hd141469141748%_
                                         _%tl141468141750%_
                                         _%e141473141753%_
                                         _%hd141472141756%_
                                         _%tl141471141758%_
                                         _%e141476141761%_
                                         _%hd141475141764%_
                                         _%tl141474141766%_
                                         _%e141479141769%_
                                         _%hd141478141772%_
                                         _%tl141477141774%_
                                         _%e141482141777%_
                                         _%hd141481141780%_
                                         _%tl141480141782%_
                                         _%e141485141785%_
                                         _%hd141484141788%_
                                         _%tl141483141790%_
                                         _%e141488141793%_
                                         _%hd141487141796%_
                                         _%tl141486141798%_
                                         _%e141491141801%_
                                         _%hd141490141804%_
                                         _%tl141489141806%_))
                                    (_%__match143837143838%_
                                     _%e141458141713%_
                                     _%hd141457141716%_
                                     _%tl141456141718%_
                                     _%e141470141745%_
                                     _%hd141469141748%_
                                     _%tl141468141750%_
                                     _%e141473141753%_
                                     _%hd141472141756%_
                                     _%tl141471141758%_
                                     _%e141476141761%_
                                     _%hd141475141764%_
                                     _%tl141474141766%_
                                     _%e141479141769%_
                                     _%hd141478141772%_
                                     _%tl141477141774%_
                                     _%e141482141777%_
                                     _%hd141481141780%_
                                     _%tl141480141782%_
                                     _%e141485141785%_
                                     _%hd141484141788%_
                                     _%tl141483141790%_
                                     _%e141488141793%_
                                     _%hd141487141796%_
                                     _%tl141486141798%_
                                     _%e141491141801%_
                                     _%hd141490141804%_
                                     _%tl141489141806%_))
                                (_%__match143837143838%_
                                 _%e141458141713%_
                                 _%hd141457141716%_
                                 _%tl141456141718%_
                                 _%e141470141745%_
                                 _%hd141469141748%_
                                 _%tl141468141750%_
                                 _%e141473141753%_
                                 _%hd141472141756%_
                                 _%tl141471141758%_
                                 _%e141476141761%_
                                 _%hd141475141764%_
                                 _%tl141474141766%_
                                 _%e141479141769%_
                                 _%hd141478141772%_
                                 _%tl141477141774%_
                                 _%e141482141777%_
                                 _%hd141481141780%_
                                 _%tl141480141782%_
                                 _%e141485141785%_
                                 _%hd141484141788%_
                                 _%tl141483141790%_
                                 _%e141488141793%_
                                 _%hd141487141796%_
                                 _%tl141486141798%_
                                 _%e141491141801%_
                                 _%hd141490141804%_
                                 _%tl141489141806%_))))
                        (_%__match143837143838%_
                         _%e141458141713%_
                         _%hd141457141716%_
                         _%tl141456141718%_
                         _%e141470141745%_
                         _%hd141469141748%_
                         _%tl141468141750%_
                         _%e141473141753%_
                         _%hd141472141756%_
                         _%tl141471141758%_
                         _%e141476141761%_
                         _%hd141475141764%_
                         _%tl141474141766%_
                         _%e141479141769%_
                         _%hd141478141772%_
                         _%tl141477141774%_
                         _%e141482141777%_
                         _%hd141481141780%_
                         _%tl141480141782%_
                         _%e141485141785%_
                         _%hd141484141788%_
                         _%tl141483141790%_
                         _%e141488141793%_
                         _%hd141487141796%_
                         _%tl141486141798%_
                         _%e141491141801%_
                         _%hd141490141804%_
                         _%tl141489141806%_))))
                (let ((_%xarg141500141870%_ (reverse _%xarg141499141843%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141468141750%_))
                      (let ((_%L141873%_ _%hd141508141833%_)
                            (_%L141874%_ _%xarg141500141870%_)
                            (_%L141875%_ _%hd141490141804%_)
                            (_%L141876%_ _%hd141481141780%_)
                            (_%L141877%_ _%tl141461141723%_)
                            (_%L141878%_ _%arg141467141742%_))
                        (if (and (let ((__tmp145004
                                        (let ((__tmp145005
                                               (lambda (_%g141921141924%_
                                                        _%g141922141926%_)
                                                 (cons _%g141921141924%_
                                                       _%g141922141926%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145005
                                           '()
                                           _%L141878%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145004))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L141877%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L141876%_
                                    'apply))
                                 (let ((__tmp145008
                                        (length (let ((__tmp145009
                                                       (lambda (_%g141928141931%_
                                                                _%g141929141933%_)
                                                         (cons _%g141928141931%_
                                                               _%g141929141933%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145009
                                                   '()
                                                   _%L141878%_))))
                                       (__tmp145006
                                        (length (let ((__tmp145007
                                                       (lambda (_%g141935141938%_
                                                                _%g141936141940%_)
                                                         (cons _%g141935141938%_
                                                               _%g141936141940%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145007
                                                   '()
                                                   _%L141874%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145008 __tmp145006))
                                 (let ((__tmp145012
                                        (let ((__tmp145013
                                               (lambda (_%g141942141945%_
                                                        _%g141943141947%_)
                                                 (cons _%g141942141945%_
                                                       _%g141943141947%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145013
                                           '()
                                           _%L141878%_)))
                                       (__tmp145010
                                        (let ((__tmp145011
                                               (lambda (_%g141949141952%_
                                                        _%g141950141954%_)
                                                 (cons _%g141949141952%_
                                                       _%g141950141954%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145011
                                           '()
                                           _%L141874%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145012
                                    __tmp145010))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L141877%_
                                    _%L141873%_))
                                 (let ((__tmp145014
                                        (let ((__tmp145018
                                               (lambda (_%g141956141958%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _%g141956141958%_
                                                    _%L141875%_))))
                                              (__tmp145015
                                               (let ((__tmp145017
                                                      (lambda (_%g141960141963%_
                                                               _%g141961141965%_)
                                                        (cons _%g141960141963%_
                                                              _%g141961141965%_)))
                                                     (__tmp145016
                                                      (cons _%L141877%_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145017
                                                  __tmp145016
                                                  _%L141878%_))))
                                          (declare (not safe))
                                          (__find __tmp145018 __tmp145015))))
                                   (declare (not safe))
                                   (not __tmp145014)))
                            (_%__kont143732143733%_
                             _%L141873%_
                             _%L141874%_
                             _%L141875%_
                             _%L141876%_
                             _%L141877%_
                             _%L141878%_)
                            (_%__match143837143838%_
                             _%e141458141713%_
                             _%hd141457141716%_
                             _%tl141456141718%_
                             _%e141470141745%_
                             _%hd141469141748%_
                             _%tl141468141750%_
                             _%e141473141753%_
                             _%hd141472141756%_
                             _%tl141471141758%_
                             _%e141476141761%_
                             _%hd141475141764%_
                             _%tl141474141766%_
                             _%e141479141769%_
                             _%hd141478141772%_
                             _%tl141477141774%_
                             _%e141482141777%_
                             _%hd141481141780%_
                             _%tl141480141782%_
                             _%e141485141785%_
                             _%hd141484141788%_
                             _%tl141483141790%_
                             _%e141488141793%_
                             _%hd141487141796%_
                             _%tl141486141798%_
                             _%e141491141801%_
                             _%hd141490141804%_
                             _%tl141489141806%_)))
                      (_%__match143837143838%_
                       _%e141458141713%_
                       _%hd141457141716%_
                       _%tl141456141718%_
                       _%e141470141745%_
                       _%hd141469141748%_
                       _%tl141468141750%_
                       _%e141473141753%_
                       _%hd141472141756%_
                       _%tl141471141758%_
                       _%e141476141761%_
                       _%hd141475141764%_
                       _%tl141474141766%_
                       _%e141479141769%_
                       _%hd141478141772%_
                       _%tl141477141774%_
                       _%e141482141777%_
                       _%hd141481141780%_
                       _%tl141480141782%_
                       _%e141485141785%_
                       _%hd141484141788%_
                       _%tl141483141790%_
                       _%e141488141793%_
                       _%hd141487141796%_
                       _%tl141486141798%_
                       _%e141491141801%_
                       _%hd141490141804%_
                       _%tl141489141806%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop141495141838%_
                                             _%target141492141809%_
                                             '())))
                                        (_%__match143837143838%_
                                         _%e141458141713%_
                                         _%hd141457141716%_
                                         _%tl141456141718%_
                                         _%e141470141745%_
                                         _%hd141469141748%_
                                         _%tl141468141750%_
                                         _%e141473141753%_
                                         _%hd141472141756%_
                                         _%tl141471141758%_
                                         _%e141476141761%_
                                         _%hd141475141764%_
                                         _%tl141474141766%_
                                         _%e141479141769%_
                                         _%hd141478141772%_
                                         _%tl141477141774%_
                                         _%e141482141777%_
                                         _%hd141481141780%_
                                         _%tl141480141782%_
                                         _%e141485141785%_
                                         _%hd141484141788%_
                                         _%tl141483141790%_
                                         _%e141488141793%_
                                         _%hd141487141796%_
                                         _%tl141486141798%_
                                         _%e141491141801%_
                                         _%hd141490141804%_
                                         _%tl141489141806%_))
                                    (_%__match143837143838%_
                                     _%e141458141713%_
                                     _%hd141457141716%_
                                     _%tl141456141718%_
                                     _%e141470141745%_
                                     _%hd141469141748%_
                                     _%tl141468141750%_
                                     _%e141473141753%_
                                     _%hd141472141756%_
                                     _%tl141471141758%_
                                     _%e141476141761%_
                                     _%hd141475141764%_
                                     _%tl141474141766%_
                                     _%e141479141769%_
                                     _%hd141478141772%_
                                     _%tl141477141774%_
                                     _%e141482141777%_
                                     _%hd141481141780%_
                                     _%tl141480141782%_
                                     _%e141485141785%_
                                     _%hd141484141788%_
                                     _%tl141483141790%_
                                     _%e141488141793%_
                                     _%hd141487141796%_
                                     _%tl141486141798%_
                                     _%e141491141801%_
                                     _%hd141490141804%_
                                     _%tl141489141806%_))))
                            (_%__match143837143838%_
                             _%e141458141713%_
                             _%hd141457141716%_
                             _%tl141456141718%_
                             _%e141470141745%_
                             _%hd141469141748%_
                             _%tl141468141750%_
                             _%e141473141753%_
                             _%hd141472141756%_
                             _%tl141471141758%_
                             _%e141476141761%_
                             _%hd141475141764%_
                             _%tl141474141766%_
                             _%e141479141769%_
                             _%hd141478141772%_
                             _%tl141477141774%_
                             _%e141482141777%_
                             _%hd141481141780%_
                             _%tl141480141782%_
                             _%e141485141785%_
                             _%hd141484141788%_
                             _%tl141483141790%_
                             _%e141488141793%_
                             _%hd141487141796%_
                             _%tl141486141798%_
                             _%e141491141801%_
                             _%hd141490141804%_
                             _%tl141489141806%_))
                        (_%__match143837143838%_
                         _%e141458141713%_
                         _%hd141457141716%_
                         _%tl141456141718%_
                         _%e141470141745%_
                         _%hd141469141748%_
                         _%tl141468141750%_
                         _%e141473141753%_
                         _%hd141472141756%_
                         _%tl141471141758%_
                         _%e141476141761%_
                         _%hd141475141764%_
                         _%tl141474141766%_
                         _%e141479141769%_
                         _%hd141478141772%_
                         _%tl141477141774%_
                         _%e141482141777%_
                         _%hd141481141780%_
                         _%tl141480141782%_
                         _%e141485141785%_
                         _%hd141484141788%_
                         _%tl141483141790%_
                         _%e141488141793%_
                         _%hd141487141796%_
                         _%tl141486141798%_
                         _%e141491141801%_
                         _%hd141490141804%_
                         _%tl141489141806%_))
                    (_%__match143837143838%_
                     _%e141458141713%_
                     _%hd141457141716%_
                     _%tl141456141718%_
                     _%e141470141745%_
                     _%hd141469141748%_
                     _%tl141468141750%_
                     _%e141473141753%_
                     _%hd141472141756%_
                     _%tl141471141758%_
                     _%e141476141761%_
                     _%hd141475141764%_
                     _%tl141474141766%_
                     _%e141479141769%_
                     _%hd141478141772%_
                     _%tl141477141774%_
                     _%e141482141777%_
                     _%hd141481141780%_
                     _%tl141480141782%_
                     _%e141485141785%_
                     _%hd141484141788%_
                     _%tl141483141790%_
                     _%e141488141793%_
                     _%hd141487141796%_
                     _%tl141486141798%_
                     _%e141491141801%_
                     _%hd141490141804%_
                     _%tl141489141806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143837143838%_
                                                     _%e141458141713%_
                                                     _%hd141457141716%_
                                                     _%tl141456141718%_
                                                     _%e141470141745%_
                                                     _%hd141469141748%_
                                                     _%tl141468141750%_
                                                     _%e141473141753%_
                                                     _%hd141472141756%_
                                                     _%tl141471141758%_
                                                     _%e141476141761%_
                                                     _%hd141475141764%_
                                                     _%tl141474141766%_
                                                     _%e141479141769%_
                                                     _%hd141478141772%_
                                                     _%tl141477141774%_
                                                     _%e141482141777%_
                                                     _%hd141481141780%_
                                                     _%tl141480141782%_
                                                     _%e141485141785%_
                                                     _%hd141484141788%_
                                                     _%tl141483141790%_
                                                     _%e141488141793%_
                                                     _%hd141487141796%_
                                                     _%tl141486141798%_
                                                     _%e141491141801%_
                                                     _%hd141490141804%_
                                                     _%tl141489141806%_))))
                                            (_%__match143837143838%_
                                             _%e141458141713%_
                                             _%hd141457141716%_
                                             _%tl141456141718%_
                                             _%e141470141745%_
                                             _%hd141469141748%_
                                             _%tl141468141750%_
                                             _%e141473141753%_
                                             _%hd141472141756%_
                                             _%tl141471141758%_
                                             _%e141476141761%_
                                             _%hd141475141764%_
                                             _%tl141474141766%_
                                             _%e141479141769%_
                                             _%hd141478141772%_
                                             _%tl141477141774%_
                                             _%e141482141777%_
                                             _%hd141481141780%_
                                             _%tl141480141782%_
                                             _%e141485141785%_
                                             _%hd141484141788%_
                                             _%tl141483141790%_
                                             _%e141488141793%_
                                             _%hd141487141796%_
                                             _%tl141486141798%_
                                             _%e141491141801%_
                                             _%hd141490141804%_
                                             _%tl141489141806%_))))
                                    (_%__match143837143838%_
                                     _%e141458141713%_
                                     _%hd141457141716%_
                                     _%tl141456141718%_
                                     _%e141470141745%_
                                     _%hd141469141748%_
                                     _%tl141468141750%_
                                     _%e141473141753%_
                                     _%hd141472141756%_
                                     _%tl141471141758%_
                                     _%e141476141761%_
                                     _%hd141475141764%_
                                     _%tl141474141766%_
                                     _%e141479141769%_
                                     _%hd141478141772%_
                                     _%tl141477141774%_
                                     _%e141482141777%_
                                     _%hd141481141780%_
                                     _%tl141480141782%_
                                     _%e141485141785%_
                                     _%hd141484141788%_
                                     _%tl141483141790%_
                                     _%e141488141793%_
                                     _%hd141487141796%_
                                     _%tl141486141798%_
                                     _%e141491141801%_
                                     _%hd141490141804%_
                                     _%tl141489141806%_))
                                (_%__match143837143838%_
                                 _%e141458141713%_
                                 _%hd141457141716%_
                                 _%tl141456141718%_
                                 _%e141470141745%_
                                 _%hd141469141748%_
                                 _%tl141468141750%_
                                 _%e141473141753%_
                                 _%hd141472141756%_
                                 _%tl141471141758%_
                                 _%e141476141761%_
                                 _%hd141475141764%_
                                 _%tl141474141766%_
                                 _%e141479141769%_
                                 _%hd141478141772%_
                                 _%tl141477141774%_
                                 _%e141482141777%_
                                 _%hd141481141780%_
                                 _%tl141480141782%_
                                 _%e141485141785%_
                                 _%hd141484141788%_
                                 _%tl141483141790%_
                                 _%e141488141793%_
                                 _%hd141487141796%_
                                 _%tl141486141798%_
                                 _%e141491141801%_
                                 _%hd141490141804%_
                                 _%tl141489141806%_))
                            (_%__kont143740143741%_))))
                    (_%__kont143740143741%_))
                (_%__kont143740143741%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143740143741%_))))
                                            (_%__kont143740143741%_))))
                                    (_%__kont143740143741%_))
                                (_%__kont143740143741%_))))
                        (_%__kont143740143741%_))
                    (_%__kont143740143741%_))
                (_%__kont143740143741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143740143741%_))))
                                        (_%__kont143740143741%_))
                                    (_%__kont143740143741%_))
                                (_%__kont143740143741%_))))
                        (_%__kont143740143741%_))))
                (_%__kont143740143741%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141462141726%_
                                       _%target141459141721%_
                                       '())))))
                               (_%__match143755143756%_
                                (lambda (_%e141410141973%_
                                         _%hd141409141976%_
                                         _%tl141408141978%_
                                         _%__splice143728143729%_
                                         _%target141411141981%_
                                         _%tl141413141983%_)
                                  (letrec ((_%loop141414141986%_
                                            (lambda (_%hd141412141989%_
                                                     _%arg141418141991%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141412141989%_))
                                                  (let ((_%e141415141994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141412141989%_))))
                                                    (let ((_%lp-tl141417141999%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141415141994%_)))
                                                          (_%lp-hd141416141997%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141415141994%_))))
                                                      (let ((__tmp145019
                                                             (cons _%lp-hd141416141997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg141418141991%_)))
                (declare (not safe))
                (_%loop141414141986%_ _%lp-tl141417141999%_ __tmp145019))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg141419142002%_
                                                         (reverse _%arg141418141991%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141408141978%_))
                                                        (let ((_%e141422142005%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141408141978%_))))
                  (let ((_%tl141420142010%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141422142005%_)))
                        (_%hd141421142008%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141422142005%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141421142008%_))
                        (let ((_%e141425142013%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141421142008%_))))
                          (let ((_%tl141423142018%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141425142013%_)))
                                (_%hd141424142016%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141425142013%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141424142016%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141424142016%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141423142018%_))
                                        (let ((_%e141428142021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141423142018%_))))
                                          (let ((_%tl141426142026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141428142021%_)))
                                                (_%hd141427142024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141428142021%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141427142024%_))
                                                (let ((_%e141431142029%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141427142024%_))))
                                                  (let ((_%tl141429142034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141431142029%_)))
                                                        (_%hd141430142032%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141431142029%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141430142032%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141430142032%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141429142034%_))
                        (let ((_%e141434142037%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141429142034%_))))
                          (let ((_%tl141432142042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141434142037%_)))
                                (_%hd141433142040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141434142037%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141432142042%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141426142026%_))
                                    (let ((_%__splice143730143731%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141426142026%_
                                              '0))))
                                      (let ((_%tl141437142047%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143730143731%_
                                                '1)))
                                            (_%target141435142045%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143730143731%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141437142047%_))
                                            (letrec ((_%loop141438142050%_
                                                      (lambda (_%hd141436142053%_
                                                               _%xarg141442142055%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141436142053%_))
                                                            (let ((_%e141439142058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141436142053%_))))
                      (let ((_%lp-tl141441142063%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141439142058%_)))
                            (_%lp-hd141440142061%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141439142058%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141440142061%_))
                            (let ((_%e141446142066%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141440142061%_))))
                              (let ((_%tl141444142071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141446142066%_)))
                                    (_%hd141445142069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141446142066%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141445142069%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141445142069%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141444142071%_))
                                            (let ((_%e141449142074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141444142071%_))))
                                              (let ((_%tl141447142079%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141449142074%_)))
                                                    (_%hd141448142077%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141449142074%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141447142079%_))
                                                    (let ((__tmp145020
                                                           (cons _%hd141448142077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg141442142055%_)))
              (declare (not safe))
              (_%loop141438142050%_ _%lp-tl141441142063%_ __tmp145020))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143767143768%_
                                                     _%e141410141973%_
                                                     _%hd141409141976%_
                                                     _%tl141408141978%_
                                                     _%__splice143728143729%_
                                                     _%target141411141981%_
                                                     _%tl141413141983%_))))
                                            (_%__match143767143768%_
                                             _%e141410141973%_
                                             _%hd141409141976%_
                                             _%tl141408141978%_
                                             _%__splice143728143729%_
                                             _%target141411141981%_
                                             _%tl141413141983%_))
                                        (_%__match143767143768%_
                                         _%e141410141973%_
                                         _%hd141409141976%_
                                         _%tl141408141978%_
                                         _%__splice143728143729%_
                                         _%target141411141981%_
                                         _%tl141413141983%_))
                                    (_%__match143767143768%_
                                     _%e141410141973%_
                                     _%hd141409141976%_
                                     _%tl141408141978%_
                                     _%__splice143728143729%_
                                     _%target141411141981%_
                                     _%tl141413141983%_))))
                            (_%__match143767143768%_
                             _%e141410141973%_
                             _%hd141409141976%_
                             _%tl141408141978%_
                             _%__splice143728143729%_
                             _%target141411141981%_
                             _%tl141413141983%_))))
                    (let ((_%xarg141443142082%_
                           (reverse _%xarg141442142055%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141420142010%_))
                          (let ((_%L142085%_ _%xarg141443142082%_)
                                (_%L142086%_ _%hd141433142040%_)
                                (_%L142087%_ _%arg141419142002%_))
                            (if (and (let ((__tmp145021
                                            (let ((__tmp145022
                                                   (lambda (_%g142115142118%_
                                                            _%g142116142120%_)
                                                     (cons _%g142115142118%_
                                                           _%g142116142120%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145022
                                               '()
                                               _%L142087%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145021))
                                     (let ((__tmp145025
                                            (length (let ((__tmp145026
                                                           (lambda (_%g142122142125%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142123142127%_)
                     (cons _%g142122142125%_ _%g142123142127%_))))
              (declare (not safe))
              (__foldr1 __tmp145026 '() _%L142087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145023
                                            (length (let ((__tmp145024
                                                           (lambda (_%g142129142132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142130142134%_)
                     (cons _%g142129142132%_ _%g142130142134%_))))
              (declare (not safe))
              (__foldr1 __tmp145024 '() _%L142085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145025 __tmp145023))
                                     (let ((__tmp145029
                                            (let ((__tmp145030
                                                   (lambda (_%g142136142139%_
                                                            _%g142137142141%_)
                                                     (cons _%g142136142139%_
                                                           _%g142137142141%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145030
                                               '()
                                               _%L142087%_)))
                                           (__tmp145027
                                            (let ((__tmp145028
                                                   (lambda (_%g142143142146%_
                                                            _%g142144142148%_)
                                                     (cons _%g142143142146%_
                                                           _%g142144142148%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145028
                                               '()
                                               _%L142085%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145029
                                        __tmp145027))
                                     (let ((__tmp145031
                                            (let ((__tmp145034
                                                   (lambda (_%g142150142152%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%g142150142152%_
                                                        _%L142086%_))))
                                                  (__tmp145032
                                                   (let ((__tmp145033
                                                          (lambda (_%g142154142157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g142155142159%_)
                    (cons _%g142154142157%_ _%g142155142159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp145033
                                                      '()
                                                      _%L142087%_))))
                                              (declare (not safe))
                                              (__find __tmp145034
                                                      __tmp145032))))
                                       (declare (not safe))
                                       (not __tmp145031)))
                                (_%__kont143726143727%_
                                 _%L142085%_
                                 _%L142086%_
                                 _%L142087%_)
                                (_%__match143767143768%_
                                 _%e141410141973%_
                                 _%hd141409141976%_
                                 _%tl141408141978%_
                                 _%__splice143728143729%_
                                 _%target141411141981%_
                                 _%tl141413141983%_)))
                          (_%__match143767143768%_
                           _%e141410141973%_
                           _%hd141409141976%_
                           _%tl141408141978%_
                           _%__splice143728143729%_
                           _%target141411141981%_
                           _%tl141413141983%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop141438142050%_
                                                 _%target141435142045%_
                                                 '())))
                                            (_%__match143767143768%_
                                             _%e141410141973%_
                                             _%hd141409141976%_
                                             _%tl141408141978%_
                                             _%__splice143728143729%_
                                             _%target141411141981%_
                                             _%tl141413141983%_))))
                                    (_%__match143767143768%_
                                     _%e141410141973%_
                                     _%hd141409141976%_
                                     _%tl141408141978%_
                                     _%__splice143728143729%_
                                     _%target141411141981%_
                                     _%tl141413141983%_))
                                (_%__match143767143768%_
                                 _%e141410141973%_
                                 _%hd141409141976%_
                                 _%tl141408141978%_
                                 _%__splice143728143729%_
                                 _%target141411141981%_
                                 _%tl141413141983%_))))
                        (_%__match143767143768%_
                         _%e141410141973%_
                         _%hd141409141976%_
                         _%tl141408141978%_
                         _%__splice143728143729%_
                         _%target141411141981%_
                         _%tl141413141983%_))
                    (_%__match143767143768%_
                     _%e141410141973%_
                     _%hd141409141976%_
                     _%tl141408141978%_
                     _%__splice143728143729%_
                     _%target141411141981%_
                     _%tl141413141983%_))
                (_%__match143767143768%_
                 _%e141410141973%_
                 _%hd141409141976%_
                 _%tl141408141978%_
                 _%__splice143728143729%_
                 _%target141411141981%_
                 _%tl141413141983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143767143768%_
                                                 _%e141410141973%_
                                                 _%hd141409141976%_
                                                 _%tl141408141978%_
                                                 _%__splice143728143729%_
                                                 _%target141411141981%_
                                                 _%tl141413141983%_))))
                                        (_%__match143767143768%_
                                         _%e141410141973%_
                                         _%hd141409141976%_
                                         _%tl141408141978%_
                                         _%__splice143728143729%_
                                         _%target141411141981%_
                                         _%tl141413141983%_))
                                    (_%__match143767143768%_
                                     _%e141410141973%_
                                     _%hd141409141976%_
                                     _%tl141408141978%_
                                     _%__splice143728143729%_
                                     _%target141411141981%_
                                     _%tl141413141983%_))
                                (_%__match143767143768%_
                                 _%e141410141973%_
                                 _%hd141409141976%_
                                 _%tl141408141978%_
                                 _%__splice143728143729%_
                                 _%target141411141981%_
                                 _%tl141413141983%_))))
                        (_%__match143767143768%_
                         _%e141410141973%_
                         _%hd141409141976%_
                         _%tl141408141978%_
                         _%__splice143728143729%_
                         _%target141411141981%_
                         _%tl141413141983%_))))
                (_%__match143767143768%_
                 _%e141410141973%_
                 _%hd141409141976%_
                 _%tl141408141978%_
                 _%__splice143728143729%_
                 _%target141411141981%_
                 _%tl141413141983%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop141414141986%_
                                       _%target141411141981%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143724143725%_))
                              (let ((_%e141410141973%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143724143725%_))))
                                (let ((_%tl141408141978%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141410141973%_)))
                                      (_%hd141409141976%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141410141973%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141409141976%_))
                                      (let ((_%__splice143728143729%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141409141976%_
                                                '0))))
                                        (let ((_%tl141413141983%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143728143729%_
                                                  '1)))
                                              (_%target141411141981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143728143729%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141413141983%_))
                                              (_%__match143755143756%_
                                               _%e141410141973%_
                                               _%hd141409141976%_
                                               _%tl141408141978%_
                                               _%__splice143728143729%_
                                               _%target141411141981%_
                                               _%tl141413141983%_)
                                              (_%__match143767143768%_
                                               _%e141410141973%_
                                               _%hd141409141976%_
                                               _%tl141408141978%_
                                               _%__splice143728143729%_
                                               _%target141411141981%_
                                               _%tl141413141983%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141408141978%_))
                                          (let ((_%e141525141580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141408141978%_))))
                                            (let ((_%tl141523141585%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141525141580%_)))
                                                  (_%hd141524141583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141525141580%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141524141583%_))
                                                  (let ((_%e141528141588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141524141583%_))))
                                                    (let ((_%tl141526141593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141528141588%_)))
                                                          (_%hd141527141591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141528141588%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141527141591%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141527141591%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141526141593%_))
                          (let ((_%e141531141596%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141526141593%_))))
                            (let ((_%tl141529141601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141531141596%_)))
                                  (_%hd141530141599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141531141596%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141530141599%_))
                                  (let ((_%e141534141604%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141530141599%_))))
                                    (let ((_%tl141532141609%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141534141604%_)))
                                          (_%hd141533141607%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141534141604%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141533141607%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141533141607%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141532141609%_))
                                                  (let ((_%e141537141612%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141532141609%_))))
                                                    (let ((_%tl141535141617%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141537141612%_)))
                                                          (_%hd141536141615%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141537141612%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141535141617%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141529141601%_))
                      (let ((_%e141540141620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141529141601%_))))
                        (let ((_%tl141538141625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141540141620%_)))
                              (_%hd141539141623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141540141620%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141539141623%_))
                              (let ((_%e141543141628%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141539141623%_))))
                                (let ((_%tl141541141633%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141543141628%_)))
                                      (_%hd141542141631%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141543141628%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141542141631%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141542141631%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141541141633%_))
                                              (let ((_%e141546141636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141541141633%_))))
                                                (let ((_%tl141544141641%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141546141636%_)))
                                                      (_%hd141545141639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141546141636%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141544141641%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141538141625%_))
                                                          (let ((_%e141549141644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141538141625%_))))
                    (let ((_%tl141547141649%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141549141644%_)))
                          (_%hd141548141647%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141549141644%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141548141647%_))
                          (let ((_%e141552141652%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141548141647%_))))
                            (let ((_%tl141550141657%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141552141652%_)))
                                  (_%hd141551141655%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141552141652%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141551141655%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141551141655%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141550141657%_))
                                          (let ((_%e141555141660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141550141657%_))))
                                            (let ((_%tl141553141665%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141555141660%_)))
                                                  (_%hd141554141663%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141555141660%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141553141665%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141547141649%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141523141585%_))
                                                          (_%__match143865143866%_
                                                           _%e141410141973%_
                                                           _%hd141409141976%_
                                                           _%tl141408141978%_
                                                           _%e141525141580%_
                                                           _%hd141524141583%_
                                                           _%tl141523141585%_
                                                           _%e141528141588%_
                                                           _%hd141527141591%_
                                                           _%tl141526141593%_
                                                           _%e141531141596%_
                                                           _%hd141530141599%_
                                                           _%tl141529141601%_
                                                           _%e141534141604%_
                                                           _%hd141533141607%_
                                                           _%tl141532141609%_
                                                           _%e141537141612%_
                                                           _%hd141536141615%_
                                                           _%tl141535141617%_
                                                           _%e141540141620%_
                                                           _%hd141539141623%_
                                                           _%tl141538141625%_
                                                           _%e141543141628%_
                                                           _%hd141542141631%_
                                                           _%tl141541141633%_
                                                           _%e141546141636%_
                                                           _%hd141545141639%_
                                                           _%tl141544141641%_
                                                           _%e141549141644%_
                                                           _%hd141548141647%_
                                                           _%tl141547141649%_
                                                           _%e141552141652%_
                                                           _%hd141551141655%_
                                                           _%tl141550141657%_
                                                           _%e141555141660%_
                                                           _%hd141554141663%_
                                                           _%tl141553141665%_)
                                                          (_%__kont143740143741%_))
                                                      (_%__kont143740143741%_))
                                                  (_%__kont143740143741%_))))
                                          (_%__kont143740143741%_))
                                      (_%__kont143740143741%_))
                                  (_%__kont143740143741%_))))
                          (_%__kont143740143741%_))))
                  (_%__kont143740143741%_))
              (_%__kont143740143741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143740143741%_))
                                          (_%__kont143740143741%_))
                                      (_%__kont143740143741%_))))
                              (_%__kont143740143741%_))))
                      (_%__kont143740143741%_))
                  (_%__kont143740143741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143740143741%_))
                                              (_%__kont143740143741%_))
                                          (_%__kont143740143741%_))))
                                  (_%__kont143740143741%_))))
                          (_%__kont143740143741%_))
                      (_%__kont143740143741%_))
                  (_%__kont143740143741%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143740143741%_))))
                                          (_%__kont143740143741%_)))))
                              (_%__kont143740143741%_)))))))
                 (_%dispatch-case-e140708%_
                  (lambda (_%hd140859%_ _%body140860%_)
                    (let* ((_%form140862%_
                            (cons _%hd140859%_ (cons _%body140860%_ '())))
                           (_%__stx143868143869%_ _%form140862%_)
                           (_%g140866140990%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143868143869%_)))))
                      (let ((_%__kont143870143871%_
                             (lambda (_%L141361%_ _%L141362%_ _%L141363%_)
                               (let ((__tmp145035
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141362%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140704%_
                                  __tmp145035))))
                            (_%__kont143876143877%_
                             (lambda (_%L141209%_
                                      _%L141210%_
                                      _%L141211%_
                                      _%L141212%_)
                               (let ((__tmp145036
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141209%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140704%_
                                  __tmp145036))))
                            (_%__kont143880143881%_
                             (lambda (_%L141075%_ _%L141076%_ _%L141077%_)
                               (let ((__tmp145037
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141075%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140704%_
                                  __tmp145037)))))
                        (let* ((_%__match143977143978%_
                                (lambda (_%e140958140995%_
                                         _%hd140957140998%_
                                         _%tl140956141000%_
                                         _%e140961141003%_
                                         _%hd140960141006%_
                                         _%tl140959141008%_
                                         _%e140964141011%_
                                         _%hd140963141014%_
                                         _%tl140962141016%_
                                         _%e140967141019%_
                                         _%hd140966141022%_
                                         _%tl140965141024%_
                                         _%e140970141027%_
                                         _%hd140969141030%_
                                         _%tl140968141032%_
                                         _%e140973141035%_
                                         _%hd140972141038%_
                                         _%tl140971141040%_
                                         _%e140976141043%_
                                         _%hd140975141046%_
                                         _%tl140974141048%_
                                         _%e140979141051%_
                                         _%hd140978141054%_
                                         _%tl140977141056%_
                                         _%e140982141059%_
                                         _%hd140981141062%_
                                         _%tl140980141064%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140974141048%_))
                                      (let ((_%e140985141067%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140974141048%_))))
                                        (let ((_%tl140983141072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140985141067%_)))
                                              (_%hd140984141070%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140985141067%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140983141072%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140959141008%_))
                                                  (_%__kont143880143881%_
                                                   _%hd140981141062%_
                                                   _%hd140972141038%_
                                                   _%hd140957140998%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140866140990%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140866140990%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140866140990%_)))))
                               (_%__match143907143908%_
                                (lambda (_%e140919141113%_
                                         _%hd140918141116%_
                                         _%tl140917141118%_
                                         _%__splice143878143879%_
                                         _%target140920141121%_
                                         _%tl140922141123%_)
                                  (letrec ((_%loop140923141126%_
                                            (lambda (_%hd140921141129%_
                                                     _%arg140927141131%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140921141129%_))
                                                  (let ((_%e140924141134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140921141129%_))))
                                                    (let ((_%lp-tl140926141139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140924141134%_)))
                                                          (_%lp-hd140925141137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140924141134%_))))
                                                      (let ((__tmp145038
                                                             (cons _%lp-hd140925141137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg140927141131%_)))
                (declare (not safe))
                (_%loop140923141126%_ _%lp-tl140926141139%_ __tmp145038))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg140928141142%_
                                                         (reverse _%arg140927141131%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140917141118%_))
                                                        (let ((_%e140931141145%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140917141118%_))))
                  (let ((_%tl140929141150%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140931141145%_)))
                        (_%hd140930141148%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140931141145%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140930141148%_))
                        (let ((_%e140934141153%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140930141148%_))))
                          (let ((_%tl140932141158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140934141153%_)))
                                (_%hd140933141156%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140934141153%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140933141156%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140933141156%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140932141158%_))
                                        (let ((_%e140937141161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140932141158%_))))
                                          (let ((_%tl140935141166%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140937141161%_)))
                                                (_%hd140936141164%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140937141161%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140936141164%_))
                                                (let ((_%e140940141169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140936141164%_))))
                                                  (let ((_%tl140938141174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140940141169%_)))
                                                        (_%hd140939141172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140940141169%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140939141172%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140939141172%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140938141174%_))
                        (let ((_%e140943141177%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140938141174%_))))
                          (let ((_%tl140941141182%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140943141177%_)))
                                (_%hd140942141180%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140943141177%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140941141182%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl140935141166%_))
                                    (let ((_%e140946141185%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl140935141166%_))))
                                      (let ((_%tl140944141190%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140946141185%_)))
                                            (_%hd140945141188%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140946141185%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd140945141188%_))
                                            (let ((_%e140949141193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd140945141188%_))))
                                              (let ((_%tl140947141198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140949141193%_)))
                                                    (_%hd140948141196%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140949141193%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd140948141196%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd140948141196%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140947141198%_))
                                                            (let ((_%e140952141201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140947141198%_))))
                      (let ((_%tl140950141206%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140952141201%_)))
                            (_%hd140951141204%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140952141201%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140950141206%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140929141150%_))
                                (_%__kont143876143877%_
                                 _%hd140951141204%_
                                 _%hd140942141180%_
                                 _%tl140922141123%_
                                 _%arg140928141142%_)
                                (_%__match143977143978%_
                                 _%e140919141113%_
                                 _%hd140918141116%_
                                 _%tl140917141118%_
                                 _%e140931141145%_
                                 _%hd140930141148%_
                                 _%tl140929141150%_
                                 _%e140934141153%_
                                 _%hd140933141156%_
                                 _%tl140932141158%_
                                 _%e140937141161%_
                                 _%hd140936141164%_
                                 _%tl140935141166%_
                                 _%e140940141169%_
                                 _%hd140939141172%_
                                 _%tl140938141174%_
                                 _%e140943141177%_
                                 _%hd140942141180%_
                                 _%tl140941141182%_
                                 _%e140946141185%_
                                 _%hd140945141188%_
                                 _%tl140944141190%_
                                 _%e140949141193%_
                                 _%hd140948141196%_
                                 _%tl140947141198%_
                                 _%e140952141201%_
                                 _%hd140951141204%_
                                 _%tl140950141206%_))
                            (let ()
                              (declare (not safe))
                              (_%g140866140990%_)))))
                    (let () (declare (not safe)) (_%g140866140990%_)))
                (let () (declare (not safe)) (_%g140866140990%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140866140990%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g140866140990%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140866140990%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140866140990%_)))))
                        (let () (declare (not safe)) (_%g140866140990%_)))
                    (let () (declare (not safe)) (_%g140866140990%_)))
                (let () (declare (not safe)) (_%g140866140990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140866140990%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140866140990%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140866140990%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140866140990%_)))))
                        (let () (declare (not safe)) (_%g140866140990%_)))))
                (let () (declare (not safe)) (_%g140866140990%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop140923141126%_
                                       _%target140920141121%_
                                       '())))))
                               (_%__match143895143896%_
                                (lambda (_%e140873141249%_
                                         _%hd140872141252%_
                                         _%tl140871141254%_
                                         _%__splice143872143873%_
                                         _%target140874141257%_
                                         _%tl140876141259%_)
                                  (letrec ((_%loop140877141262%_
                                            (lambda (_%hd140875141265%_
                                                     _%arg140881141267%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140875141265%_))
                                                  (let ((_%e140878141270%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140875141265%_))))
                                                    (let ((_%lp-tl140880141275%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140878141270%_)))
                                                          (_%lp-hd140879141273%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140878141270%_))))
                                                      (let ((__tmp145039
                                                             (cons _%lp-hd140879141273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%arg140881141267%_)))
                (declare (not safe))
                (_%loop140877141262%_ _%lp-tl140880141275%_ __tmp145039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%arg140882141278%_
                                                         (reverse _%arg140881141267%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140871141254%_))
                                                        (let ((_%e140885141281%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140871141254%_))))
                  (let ((_%tl140883141286%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140885141281%_)))
                        (_%hd140884141284%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140885141281%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140884141284%_))
                        (let ((_%e140888141289%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140884141284%_))))
                          (let ((_%tl140886141294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140888141289%_)))
                                (_%hd140887141292%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140888141289%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140887141292%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140887141292%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140886141294%_))
                                        (let ((_%e140891141297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140886141294%_))))
                                          (let ((_%tl140889141302%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140891141297%_)))
                                                (_%hd140890141300%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140891141297%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140890141300%_))
                                                (let ((_%e140894141305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140890141300%_))))
                                                  (let ((_%tl140892141310%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140894141305%_)))
                                                        (_%hd140893141308%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140894141305%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140893141308%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140893141308%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140892141310%_))
                        (let ((_%e140897141313%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140892141310%_))))
                          (let ((_%tl140895141318%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140897141313%_)))
                                (_%hd140896141316%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140897141313%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140895141318%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl140889141302%_))
                                    (let ((_%__splice143874143875%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl140889141302%_
                                              '0))))
                                      (let ((_%tl140900141323%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143874143875%_
                                                '1)))
                                            (_%target140898141321%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143874143875%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl140900141323%_))
                                            (letrec ((_%loop140901141326%_
                                                      (lambda (_%hd140899141329%_
                                                               _%xarg140905141331%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd140899141329%_))
                                                            (let ((_%e140902141334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd140899141329%_))))
                      (let ((_%lp-tl140904141339%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140902141334%_)))
                            (_%lp-hd140903141337%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140902141334%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd140903141337%_))
                            (let ((_%e140909141342%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd140903141337%_))))
                              (let ((_%tl140907141347%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140909141342%_)))
                                    (_%hd140908141345%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140909141342%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140908141345%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd140908141345%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140907141347%_))
                                            (let ((_%e140912141350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140907141347%_))))
                                              (let ((_%tl140910141355%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140912141350%_)))
                                                    (_%hd140911141353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140912141350%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl140910141355%_))
                                                    (let ((__tmp145040
                                                           (cons _%hd140911141353%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xarg140905141331%_)))
              (declare (not safe))
              (_%loop140901141326%_ _%lp-tl140904141339%_ __tmp145040))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143907143908%_
                                                     _%e140873141249%_
                                                     _%hd140872141252%_
                                                     _%tl140871141254%_
                                                     _%__splice143872143873%_
                                                     _%target140874141257%_
                                                     _%tl140876141259%_))))
                                            (_%__match143907143908%_
                                             _%e140873141249%_
                                             _%hd140872141252%_
                                             _%tl140871141254%_
                                             _%__splice143872143873%_
                                             _%target140874141257%_
                                             _%tl140876141259%_))
                                        (_%__match143907143908%_
                                         _%e140873141249%_
                                         _%hd140872141252%_
                                         _%tl140871141254%_
                                         _%__splice143872143873%_
                                         _%target140874141257%_
                                         _%tl140876141259%_))
                                    (_%__match143907143908%_
                                     _%e140873141249%_
                                     _%hd140872141252%_
                                     _%tl140871141254%_
                                     _%__splice143872143873%_
                                     _%target140874141257%_
                                     _%tl140876141259%_))))
                            (_%__match143907143908%_
                             _%e140873141249%_
                             _%hd140872141252%_
                             _%tl140871141254%_
                             _%__splice143872143873%_
                             _%target140874141257%_
                             _%tl140876141259%_))))
                    (let ((_%xarg140906141358%_
                           (reverse _%xarg140905141331%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140883141286%_))
                          (_%__kont143870143871%_
                           _%xarg140906141358%_
                           _%hd140896141316%_
                           _%arg140882141278%_)
                          (_%__match143907143908%_
                           _%e140873141249%_
                           _%hd140872141252%_
                           _%tl140871141254%_
                           _%__splice143872143873%_
                           _%target140874141257%_
                           _%tl140876141259%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop140901141326%_
                                                 _%target140898141321%_
                                                 '())))
                                            (_%__match143907143908%_
                                             _%e140873141249%_
                                             _%hd140872141252%_
                                             _%tl140871141254%_
                                             _%__splice143872143873%_
                                             _%target140874141257%_
                                             _%tl140876141259%_))))
                                    (_%__match143907143908%_
                                     _%e140873141249%_
                                     _%hd140872141252%_
                                     _%tl140871141254%_
                                     _%__splice143872143873%_
                                     _%target140874141257%_
                                     _%tl140876141259%_))
                                (_%__match143907143908%_
                                 _%e140873141249%_
                                 _%hd140872141252%_
                                 _%tl140871141254%_
                                 _%__splice143872143873%_
                                 _%target140874141257%_
                                 _%tl140876141259%_))))
                        (_%__match143907143908%_
                         _%e140873141249%_
                         _%hd140872141252%_
                         _%tl140871141254%_
                         _%__splice143872143873%_
                         _%target140874141257%_
                         _%tl140876141259%_))
                    (_%__match143907143908%_
                     _%e140873141249%_
                     _%hd140872141252%_
                     _%tl140871141254%_
                     _%__splice143872143873%_
                     _%target140874141257%_
                     _%tl140876141259%_))
                (_%__match143907143908%_
                 _%e140873141249%_
                 _%hd140872141252%_
                 _%tl140871141254%_
                 _%__splice143872143873%_
                 _%target140874141257%_
                 _%tl140876141259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143907143908%_
                                                 _%e140873141249%_
                                                 _%hd140872141252%_
                                                 _%tl140871141254%_
                                                 _%__splice143872143873%_
                                                 _%target140874141257%_
                                                 _%tl140876141259%_))))
                                        (_%__match143907143908%_
                                         _%e140873141249%_
                                         _%hd140872141252%_
                                         _%tl140871141254%_
                                         _%__splice143872143873%_
                                         _%target140874141257%_
                                         _%tl140876141259%_))
                                    (_%__match143907143908%_
                                     _%e140873141249%_
                                     _%hd140872141252%_
                                     _%tl140871141254%_
                                     _%__splice143872143873%_
                                     _%target140874141257%_
                                     _%tl140876141259%_))
                                (_%__match143907143908%_
                                 _%e140873141249%_
                                 _%hd140872141252%_
                                 _%tl140871141254%_
                                 _%__splice143872143873%_
                                 _%target140874141257%_
                                 _%tl140876141259%_))))
                        (_%__match143907143908%_
                         _%e140873141249%_
                         _%hd140872141252%_
                         _%tl140871141254%_
                         _%__splice143872143873%_
                         _%target140874141257%_
                         _%tl140876141259%_))))
                (_%__match143907143908%_
                 _%e140873141249%_
                 _%hd140872141252%_
                 _%tl140871141254%_
                 _%__splice143872143873%_
                 _%target140874141257%_
                 _%tl140876141259%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_%loop140877141262%_
                                       _%target140874141257%_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143868143869%_))
                              (let ((_%e140873141249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143868143869%_))))
                                (let ((_%tl140871141254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140873141249%_)))
                                      (_%hd140872141252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140873141249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140872141252%_))
                                      (let ((_%__splice143872143873%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140872141252%_
                                                '0))))
                                        (let ((_%tl140876141259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143872143873%_
                                                  '1)))
                                              (_%target140874141257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143872143873%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140876141259%_))
                                              (_%__match143895143896%_
                                               _%e140873141249%_
                                               _%hd140872141252%_
                                               _%tl140871141254%_
                                               _%__splice143872143873%_
                                               _%target140874141257%_
                                               _%tl140876141259%_)
                                              (_%__match143907143908%_
                                               _%e140873141249%_
                                               _%hd140872141252%_
                                               _%tl140871141254%_
                                               _%__splice143872143873%_
                                               _%target140874141257%_
                                               _%tl140876141259%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140871141254%_))
                                          (let ((_%e140961141003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl140871141254%_))))
                                            (let ((_%tl140959141008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140961141003%_)))
                                                  (_%hd140960141006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140961141003%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140960141006%_))
                                                  (let ((_%e140964141011%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140960141006%_))))
                                                    (let ((_%tl140962141016%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140964141011%_)))
                                                          (_%hd140963141014%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140964141011%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd140963141014%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd140963141014%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140962141016%_))
                          (let ((_%e140967141019%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140962141016%_))))
                            (let ((_%tl140965141024%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140967141019%_)))
                                  (_%hd140966141022%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140967141019%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140966141022%_))
                                  (let ((_%e140970141027%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140966141022%_))))
                                    (let ((_%tl140968141032%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140970141027%_)))
                                          (_%hd140969141030%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140970141027%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140969141030%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140969141030%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140968141032%_))
                                                  (let ((_%e140973141035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140968141032%_))))
                                                    (let ((_%tl140971141040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140973141035%_)))
                                                          (_%hd140972141038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140973141035%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140971141040%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl140965141024%_))
                      (let ((_%e140976141043%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl140965141024%_))))
                        (let ((_%tl140974141048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140976141043%_)))
                              (_%hd140975141046%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140976141043%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd140975141046%_))
                              (let ((_%e140979141051%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd140975141046%_))))
                                (let ((_%tl140977141056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140979141051%_)))
                                      (_%hd140978141054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140979141051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd140978141054%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd140978141054%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140977141056%_))
                                              (let ((_%e140982141059%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140977141056%_))))
                                                (let ((_%tl140980141064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140982141059%_)))
                                                      (_%hd140981141062%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140982141059%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140980141064%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl140974141048%_))
                                                          (let ((_%e140985141067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl140974141048%_))))
                    (let ((_%tl140983141072%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140985141067%_)))
                          (_%hd140984141070%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140985141067%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140983141072%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140959141008%_))
                              (_%__kont143880143881%_
                               _%hd140981141062%_
                               _%hd140972141038%_
                               _%hd140872141252%_)
                              (let ()
                                (declare (not safe))
                                (_%g140866140990%_)))
                          (let () (declare (not safe)) (_%g140866140990%_)))))
                  (let () (declare (not safe)) (_%g140866140990%_)))
              (let () (declare (not safe)) (_%g140866140990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140866140990%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140866140990%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140866140990%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g140866140990%_)))))
                      (let () (declare (not safe)) (_%g140866140990%_)))
                  (let () (declare (not safe)) (_%g140866140990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140866140990%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140866140990%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140866140990%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140866140990%_)))))
                          (let () (declare (not safe)) (_%g140866140990%_)))
                      (let () (declare (not safe)) (_%g140866140990%_)))
                  (let () (declare (not safe)) (_%g140866140990%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140866140990%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140866140990%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g140866140990%_))))))))
                 (_%generate1140709%_
                  (lambda (_%args140844%_
                           _%arglen140845%_
                           _%hd140846%_
                           _%body140847%_)
                    (let* ((_%len140849%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140846%_)))
                           (_%condition140854%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140846%_))
                                (let ()
                                  (if (let ()
                                        (declare (not safe))
                                        (gxc#current-compile-decls-unsafe?))
                                      (cons '##fx=
                                            (cons _%arglen140845%_
                                                  (cons _%len140849%_ '())))
                                      (cons 'let
                                            (cons '()
                                                  (cons '(declare (not safe))
                                                        (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%arglen140845%_ (cons _%len140849%_ '())))
                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140849%_ '0)
                                    (let ()
                                      (if (let ()
                                            (declare (not safe))
                                            (gxc#current-compile-decls-unsafe?))
                                          (cons '##fx>=
                                                (cons _%arglen140845%_
                                                      (cons _%len140849%_
                                                            '())))
                                          (cons 'let
                                                (cons '()
                                                      (cons '(declare
                                                               (not safe))
                                                            (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%arglen140845%_
                                      (cons _%len140849%_ '())))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let () '#t))))
                           (_%dispatch140856%_
                            (if (let ()
                                  (declare (not safe))
                                  (_%dispatch-case?140707%_
                                   _%hd140846%_
                                   _%body140847%_))
                                (let ()
                                  (declare (not safe))
                                  (_%dispatch-case-e140708%_
                                   _%hd140846%_
                                   _%body140847%_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _%self140704%_
                                   _%hd140846%_
                                   _%body140847%_)))))
                      (cons _%condition140854%_
                            (cons (cons 'apply
                                        (cons _%dispatch140856%_
                                              (cons _%args140844%_ '())))
                                  '()))))))
          (let* ((_%g140711140739%_
                  (lambda (_%g140712140736%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140712140736%_))))
                 (_%g140710140841%_
                  (lambda (_%g140712140742%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140712140742%_))
                        (let ((_%e140717140744%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140712140742%_))))
                          (let ((_%hd140716140747%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140717140744%_)))
                                (_%tl140715140749%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140717140744%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140715140749%_))
                                (let ((_g145041_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140715140749%_
                                          '0))))
                                  (begin
                                    (let ((_g145042_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145041_)
                                                 (##vector-length _g145041_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145042_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145042_)))
                                    (let ((_%target140718140752%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145041_ 0)))
                                          (_%tl140720140754%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145041_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140720140754%_))
                                          (letrec ((_%loop140721140757%_
                                                    (lambda (_%hd140719140760%_
                                                             _%body140725140762%_
                                                             _%hd140726140764%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140719140760%_))
                                                          (let ((_%e140722140767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140719140760%_))))
                    (let ((_%lp-hd140723140770%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140722140767%_)))
                          (_%lp-tl140724140772%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140722140767%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140723140770%_))
                          (let ((_%e140731140775%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140723140770%_))))
                            (let ((_%hd140730140778%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140731140775%_)))
                                  (_%tl140729140780%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140731140775%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140729140780%_))
                                  (let ((_%e140734140783%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140729140780%_))))
                                    (let ((_%hd140733140786%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140734140783%_)))
                                          (_%tl140732140788%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140734140783%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140732140788%_))
                                          (let ((__tmp145044
                                                 (cons _%hd140733140786%_
                                                       _%body140725140762%_))
                                                (__tmp145043
                                                 (cons _%hd140730140778%_
                                                       _%hd140726140764%_)))
                                            (declare (not safe))
                                            (_%loop140721140757%_
                                             _%lp-tl140724140772%_
                                             __tmp145044
                                             __tmp145043))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140711140739%_
                                             _%g140712140742%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140711140739%_ _%g140712140742%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g140711140739%_ _%g140712140742%_)))))
                  (let ((_%body140727140791%_ (reverse _%body140725140762%_))
                        (_%hd140728140793%_ (reverse _%hd140726140764%_)))
                    ((lambda (_%L140796%_ _%L140797%_)
                       (let ((_%args140816%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140817%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140818%_
                              (let ((_%$e140813%_
                                     (let ((__tmp145045
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145045 _%stx140705%_))))
                                (if _%$e140813%_
                                    _%$e140813%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140816%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _%args140816%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140816%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145049
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140818%_
                                                                (cons _%args140816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145046
                                  (map (lambda (_%g140819140822%_
                                                _%g140820140824%_)
                                         (let ()
                                           (declare (not safe))
                                           (_%generate1140709%_
                                            _%args140816%_
                                            _%arglen140817%_
                                            _%g140819140822%_
                                            _%g140820140824%_)))
                                       (let ((__tmp145047
                                              (lambda (_%g140826140829%_
                                                       _%g140827140831%_)
                                                (cons _%g140826140829%_
                                                      _%g140827140831%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145047
                                          '()
                                          _%L140797%_))
                                       (let ((__tmp145048
                                              (lambda (_%g140833140836%_
                                                       _%g140834140838%_)
                                                (cons _%g140833140836%_
                                                      _%g140834140838%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145048
                                          '()
                                          _%L140796%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145049 __tmp145046)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140727140791%_
                     _%hd140728140793%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop140721140757%_
                                               _%target140718140752%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140711140739%_
                                             _%g140712140742%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g140711140739%_ _%g140712140742%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g140711140739%_ _%g140712140742%_))))))
            (declare (not safe))
            (_%g140710140841%_ _%stx140705%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self139975%_ _%stx139976%_ _%compiled-body?139977%_)
        (letrec ((_%generate-simple139979%_
                  (lambda (_%hd140689%_ _%body140690%_)
                    (let ((__tmp145050
                           (let ((__tmp145051
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _%self139975%_
                                     'let
                                     _%hd140689%_
                                     _%body140690%_
                                     _%compiled-body?139977%_))))
                             (declare (not safe))
                             (_%coalesce-let*139981%_ __tmp145051))))
                      (declare (not safe))
                      (_%coalesce-boolean139980%_ __tmp145050))))
                 (_%coalesce-boolean139980%_
                  (lambda (_%code140550%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140551140577%_ _%code140550%_)
                               (_%else140553140585%_
                                (lambda () _%code140550%_))
                               (_%K140555140622%_
                                (lambda (_%expr2140588%_
                                         _%expr1140589%_
                                         _%id140590%_)
                                  (let* ((_%expr2140591140599%_
                                          _%expr2140588%_)
                                         (_%else140593140607%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140589%_
                                                        (cons _%expr2140588%_
                                                              '())))))
                                         (_%K140595140612%_
                                          (lambda (_%exprs140610%_)
                                            (cons 'or
                                                  (cons _%expr1140589%_
                                                        _%exprs140610%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140591140599%_))
                                        (let ((_%hd140596140615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140591140599%_)))
                                              (_%tl140597140617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140591140599%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140596140615%_ 'or))
                                              (let ((_%exprs140620%_
                                                     _%tl140597140617%_))
                                                (declare (not safe))
                                                (_%K140595140612%_
                                                 _%exprs140620%_))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140593140607%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140593140607%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140551140577%_))
                              (let ((_%hd140556140625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140551140577%_)))
                                    (_%tl140557140627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140551140577%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140556140625%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140557140627%_))
                                        (let ((_%hd140558140630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140557140627%_)))
                                              (_%tl140559140632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140557140627%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140558140630%_))
                                              (let ((_%hd140570140635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140558140630%_)))
                                                    (_%tl140571140637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140558140630%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140570140635%_))
                                                    (let ((_%hd140572140640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140570140635%_)))
                                                          (_%tl140573140642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140570140635%_))))
                                                      (let ((_%id140645%_
                                                             _%hd140572140640%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140573140642%_))
                                                            (let ((_%hd140574140647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140573140642%_)))
                          (_%tl140575140649%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140573140642%_))))
                      (let ((_%expr1140652%_ _%hd140574140647%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140575140649%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140571140637%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140559140632%_))
                                    (let ((_%hd140560140654%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140559140632%_)))
                                          (_%tl140561140656%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140559140632%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140560140654%_))
                                          (let ((_%hd140562140659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140560140654%_)))
                                                (_%tl140563140661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140560140654%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140562140659%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140563140661%_))
                                                    (let ((_%hd140564140664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140563140661%_)))
                                                          (_%tl140565140666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140563140661%_))))
                                                      (if ((lambda (_%g140668140670%_)
                                                             (eq? _%g140668140670%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140645%_))
                   _%hd140564140664%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140565140666%_))
                      (let ((_%hd140566140673%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140565140666%_)))
                            (_%tl140567140675%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140565140666%_))))
                        (if ((lambda (_%g140677140679%_)
                               (eq? _%g140677140679%_ _%id140645%_))
                             _%hd140566140673%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140567140675%_))
                                (let ((_%hd140568140682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140567140675%_)))
                                      (_%tl140569140684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140567140675%_))))
                                  (let ((_%expr2140687%_ _%hd140568140682%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140569140684%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140561140656%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140555140622%_
                                               _%expr2140687%_
                                               _%expr1140652%_
                                               _%id140645%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140553140585%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140553140585%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%else140553140585%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140553140585%_))))
                      (let () (declare (not safe)) (_%else140553140585%_)))
                  (let () (declare (not safe)) (_%else140553140585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140553140585%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else140553140585%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140553140585%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140553140585%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else140553140585%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140553140585%_)))))
                    (let () (declare (not safe)) (_%else140553140585%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else140553140585%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140553140585%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%else140553140585%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140553140585%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140553140585%_))))
                        _%code140550%_)))
                 (_%coalesce-let*139981%_
                  (lambda (_%code140283%_)
                    (let* ((_%code140284140348%_ _%code140283%_)
                           (_%else140288140356%_ (lambda () _%code140283%_)))
                      (let ((_%K140330140501%_
                             (lambda (_%body140497%_
                                      _%expr140498%_
                                      _%id140499%_)
                               (cons 'let
                                     (cons (cons (cons _%id140499%_
                                                       (cons _%expr140498%_
                                                             '()))
                                                 '())
                                           _%body140497%_))))
                            (_%K140307140426%_
                             (lambda (_%body140420%_
                                      _%expr2140421%_
                                      _%id2140422%_
                                      _%expr1140423%_
                                      _%id1140424%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140424%_
                                                       (cons _%expr1140423%_
                                                             '()))
                                                 (cons (cons _%id2140422%_
                                                             (cons _%expr2140421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140420%_))))
                            (_%K140290140365%_
                             (lambda (_%body140360%_
                                      _%bind140361%_
                                      _%expr1140362%_
                                      _%id1140363%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140363%_
                                                       (cons _%expr1140362%_
                                                             '()))
                                                 _%bind140361%_)
                                           _%body140360%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140284140348%_))
                            (let ((_%tl140332140506%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140284140348%_)))
                                  (_%hd140331140504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140284140348%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140331140504%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140332140506%_))
                                      (let ((_%tl140334140511%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140332140506%_)))
                                            (_%hd140333140509%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140332140506%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%hd140333140509%_))
                                            (let ((_%tl140342140516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%hd140333140509%_)))
                                                  (_%hd140341140514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%hd140333140509%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%hd140341140514%_))
                                                  (let ((_%tl140344140521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%hd140341140514%_)))
                                                        (_%hd140343140519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%hd140341140514%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl140344140521%_))
                                                        (let ((_%tl140346140528%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl140344140521%_)))
                      (_%hd140345140526%_
                       (let ()
                         (declare (not safe))
                         (##car _%tl140344140521%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl140346140528%_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140342140516%_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%tl140334140511%_))
                              (let ((_%tl140336140535%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%tl140334140511%_)))
                                    (_%hd140335140533%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%tl140334140511%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd140335140533%_))
                                    (let ((_%tl140338140540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd140335140533%_)))
                                          (_%hd140337140538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd140335140533%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140337140538%_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%tl140338140540%_))
                                              (let ((_%tl140340140545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%tl140338140540%_)))
                                                    (_%hd140339140543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%tl140338140540%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%hd140339140543%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140336140535%_))
                                                        (let ((_%id140524%_
                                                               _%hd140343140519%_)
                                                              (_%expr140531%_
                                                               _%hd140345140526%_)
                                                              (_%body140548%_
                                                               _%tl140340140545%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140330140501%_
                                                             _%body140548%_
                                                             _%expr140531%_
                                                             _%id140524%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140288140356%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%hd140339140543%_))
                                                        (let ((_%tl140319140475%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%hd140339140543%_)))
                      (_%hd140318140473%_
                       (let ()
                         (declare (not safe))
                         (##car _%hd140339140543%_))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%hd140318140473%_))
                      (let ((_%tl140321140480%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%hd140318140473%_)))
                            (_%hd140320140478%_
                             (let ()
                               (declare (not safe))
                               (##car _%hd140318140473%_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140321140480%_))
                            (let ((_%tl140323140487%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140321140480%_)))
                                  (_%hd140322140485%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140321140480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl140323140487%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140319140475%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140336140535%_))
                                          (let ((_%id1140449%_
                                                 _%hd140343140519%_)
                                                (_%expr1140456%_
                                                 _%hd140345140526%_)
                                                (_%id2140483%_
                                                 _%hd140320140478%_)
                                                (_%expr2140490%_
                                                 _%hd140322140485%_)
                                                (_%body140492%_
                                                 _%tl140340140545%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K140307140426%_
                                               _%body140492%_
                                               _%expr2140490%_
                                               _%id2140483%_
                                               _%expr1140456%_
                                               _%id1140449%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else140288140356%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140288140356%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140288140356%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140288140356%_))))
                      (let () (declare (not safe)) (_%else140288140356%_))))
                (let () (declare (not safe)) (_%else140288140356%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%else140288140356%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140337140538%_
                                                       'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140338140540%_))
                                                  (let ((_%tl140300140409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140338140540%_)))
                                                        (_%hd140299140407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140338140540%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%tl140336140535%_))
                                                        (let ((_%id1140388%_
                                                               _%hd140343140519%_)
                                                              (_%expr1140395%_
                                                               _%hd140345140526%_)
                                                              (_%bind140412%_
                                                               _%hd140299140407%_)
                                                              (_%body140414%_
                                                               _%tl140300140409%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K140290140365%_
                                                             _%body140414%_
                                                             _%bind140412%_
                                                             _%expr1140395%_
                                                             _%id1140388%_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%else140288140356%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140288140356%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%else140288140356%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else140288140356%_))))
                              (let ()
                                (declare (not safe))
                                (_%else140288140356%_)))
                          (let () (declare (not safe)) (_%else140288140356%_)))
                      (let () (declare (not safe)) (_%else140288140356%_))))
                (let () (declare (not safe)) (_%else140288140356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else140288140356%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else140288140356%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%else140288140356%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else140288140356%_))))
                            (let ()
                              (declare (not safe))
                              (_%else140288140356%_)))))))
                 (_%generate-values139982%_
                  (lambda (_%hd140096%_ _%body140097%_)
                    (let _%lp140099%_ ((_%rest140101%_ _%hd140096%_)
                                       (_%bind140102%_ '())
                                       (_%check140103%_ '())
                                       (_%post140104%_ '()))
                      (let* ((_%__stx144179144180%_ _%rest140101%_)
                             (_%g140107140118%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144179144180%_)))))
                        (let ((_%__kont144181144182%_
                               (lambda (_%L140145%_ _%L140146%_)
                                 (let* ((_%__stx144135144136%_ _%L140146%_)
                                        (_%g140161140186%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144135144136%_)))))
                                   (let ((_%__kont144137144138%_
                                          (lambda (_%L140259%_ _%L140260%_)
                                            (let ((_%eid140274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140260%_)))
                                                  (_%expr140275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139975%_
                                                      _%L140259%_))))
                                              (let ((__tmp145052
                                                     (cons (cons _%eid140274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140275%_ '()))
                   _%bind140102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp140099%_
                                                 _%L140145%_
                                                 __tmp145052
                                                 _%check140103%_
                                                 _%post140104%_)))))
                                         (_%__kont144139144140%_
                                          (lambda (_%L140207%_ _%L140208%_)
                                            (let* ((_%vals140221%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140223%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals140221%_
                                                       _%L140208%_
                                                       _%L140207%_)))
                                                   (_%refs140225%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals140221%_
                                                       _%L140208%_)))
                                                   (_%expr140227%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139975%_
                                                       _%L140207%_))))
                                              (let ((__tmp145055
                                                     (cons (cons _%vals140221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr140227%_ '()))
                   _%bind140102%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145054
                                                     (cons _%check-values140223%_
                                                           _%check140103%_))
                                                    (__tmp145053
                                                     (cons _%refs140225%_
                                                           _%post140104%_)))
                                                (declare (not safe))
                                                (_%lp140099%_
                                                 _%L140145%_
                                                 __tmp145055
                                                 __tmp145054
                                                 __tmp145053))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144135144136%_))
                                         (let ((_%e140167140235%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144135144136%_))))
                                           (let ((_%tl140165140240%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140167140235%_)))
                                                 (_%hd140166140238%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140167140235%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140166140238%_))
                                                 (let ((_%e140170140243%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140166140238%_))))
                                                   (let ((_%tl140168140248%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140170140243%_)))
                                                         (_%hd140169140246%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140170140243%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140168140248%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140165140240%_))
                     (let ((_%e140173140251%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140165140240%_))))
                       (let ((_%tl140171140256%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140173140251%_)))
                             (_%hd140172140254%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140173140251%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140171140256%_))
                             (_%__kont144137144138%_
                              _%hd140172140254%_
                              _%hd140169140246%_)
                             (let ()
                               (declare (not safe))
                               (_%g140161140186%_)))))
                     (let () (declare (not safe)) (_%g140161140186%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140165140240%_))
                     (let ((_%e140181140199%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140165140240%_))))
                       (let ((_%tl140179140204%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140181140199%_)))
                             (_%hd140180140202%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140181140199%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140179140204%_))
                             (_%__kont144139144140%_
                              _%hd140180140202%_
                              _%hd140166140238%_)
                             (let ()
                               (declare (not safe))
                               (_%g140161140186%_)))))
                     (let () (declare (not safe)) (_%g140161140186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140165140240%_))
                                                     (let ((_%e140181140199%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140165140240%_))))
                                                       (let ((_%tl140179140204%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140181140199%_)))
                     (_%hd140180140202%_
                      (let () (declare (not safe)) (##car _%e140181140199%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140179140204%_))
                     (_%__kont144139144140%_
                      _%hd140180140202%_
                      _%hd140166140238%_)
                     (let () (declare (not safe)) (_%g140161140186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140161140186%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140161140186%_)))))))
                              (_%__kont144183144184%_
                               (lambda ()
                                 (let* ((_%body140125%_
                                         (if _%compiled-body?139977%_
                                             _%body140097%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139975%_
                                                _%body140097%_))))
                                        (_%body140127%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post139983%_
                                            _%post140104%_
                                            _%body140125%_)))
                                        (_%body140129%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check139984%_
                                            _%check140103%_
                                            _%body140127%_))))
                                   (cons 'let
                                         (cons (reverse _%bind140102%_)
                                               (cons _%body140129%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144179144180%_))
                              (let ((_%e140113140137%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144179144180%_))))
                                (let ((_%tl140111140142%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140113140137%_)))
                                      (_%hd140112140140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140113140137%_))))
                                  (_%__kont144181144182%_
                                   _%tl140111140142%_
                                   _%hd140112140140%_)))
                              (_%__kont144183144184%_)))))))
                 (_%generate-values-post139983%_
                  (lambda (_%post140055%_ _%body140056%_)
                    (let _%lp140058%_ ((_%rest140060%_ _%post140055%_)
                                       (_%body140061%_ _%body140056%_))
                      (let* ((_%rest140062140070%_ _%rest140060%_)
                             (_%else140064140078%_ (lambda () _%body140061%_))
                             (_%K140066140084%_
                              (lambda (_%rest140081%_ _%bind140082%_)
                                (let ((__tmp145056
                                       (cons 'let
                                             (cons _%bind140082%_
                                                   (cons _%body140061%_
                                                         '())))))
                                  (declare (not safe))
                                  (_%lp140058%_ _%rest140081%_ __tmp145056)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140062140070%_))
                            (let ((_%hd140067140087%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140062140070%_)))
                                  (_%tl140068140089%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140062140070%_))))
                              (let* ((_%bind140092%_ _%hd140067140087%_)
                                     (_%rest140094%_ _%tl140068140089%_))
                                (declare (not safe))
                                (_%K140066140084%_
                                 _%rest140094%_
                                 _%bind140092%_)))
                            (let ()
                              (declare (not safe))
                              (_%else140064140078%_)))))))
                 (_%generate-values-check139984%_
                  (lambda (_%check140052%_ _%body140053%_)
                    (cons 'begin
                          (let ((__tmp145058 (cons _%body140053%_ '()))
                                (__tmp145057 (reverse _%check140052%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145058 __tmp145057))))))
          (let* ((_%g139986140003%_
                  (lambda (_%g139987140000%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139987140000%_))))
                 (_%g139985140049%_
                  (lambda (_%g139987140006%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139987140006%_))
                        (let ((_%e139992140008%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139987140006%_))))
                          (let ((_%hd139991140011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139992140008%_)))
                                (_%tl139990140013%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139992140008%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139990140013%_))
                                (let ((_%e139995140016%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139990140013%_))))
                                  (let ((_%hd139994140019%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139995140016%_)))
                                        (_%tl139993140021%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139995140016%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139993140021%_))
                                        (let ((_%e139998140024%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139993140021%_))))
                                          (let ((_%hd139997140027%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139998140024%_)))
                                                (_%tl139996140029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139998140024%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139996140029%_))
                                                ((lambda (_%L140032%_
                                                          _%L140033%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L140033%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple139979%_
                                                          _%L140033%_
                                                          _%L140032%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139982%_
                                                          _%L140033%_
                                                          _%L140032%_))))
                                                 _%hd139997140027%_
                                                 _%hd139994140019%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139986140003%_
                                                   _%g139987140006%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139986140003%_
                                           _%g139987140006%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139986140003%_ _%g139987140006%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139986140003%_ _%g139987140006%_))))))
            (declare (not safe))
            (_%g139985140049%_ _%stx139976%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140695%_ _%stx140696%_)
        (let ((_%compiled-body?140698%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _%self140695%_
           _%stx140696%_
           _%compiled-body?140698%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145060_
        (let ((_g145059_ (let () (declare (not safe)) (##length _g145060_))))
          (cond ((let () (declare (not safe)) (##fx= _g145059_ 2))
                 (apply (lambda (_%self140695%_ _%stx140696%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _%self140695%_
                             _%stx140696%_)))
                        _g145060_))
                ((let () (declare (not safe)) (##fx= _g145059_ 3))
                 (apply (lambda (_%self140700%_
                                 _%stx140701%_
                                 _%compiled-body?140702%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _%self140700%_
                             _%stx140701%_
                             _%compiled-body?140702%_)))
                        _g145060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145060_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals139869%_ _%hd139870%_)
        (let _%lp139872%_ ((_%rest139874%_ _%hd139870%_)
                           (_%k139875%_ '0)
                           (_%r139876%_ '()))
          (let* ((_%__stx144193144194%_ _%rest139874%_)
                 (_%g139881139898%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144193144194%_)))))
            (let ((_%__kont144195144196%_
                   (lambda (_%L139961%_)
                     (let ((__tmp145061
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k139875%_ '1))))
                       (declare (not safe))
                       (_%lp139872%_ _%L139961%_ __tmp145061 _%r139876%_))))
                  (_%__kont144197144198%_
                   (lambda (_%L139934%_ _%L139935%_)
                     (let ((__tmp145063
                            (let ()
                              (declare (not safe))
                              (##fx+ _%k139875%_ '1)))
                           (__tmp145062
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L139935%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _%vals139869%_
                                                 _%k139875%_
                                                 _%L139934%_))
                                              '()))
                                  _%r139876%_)))
                       (declare (not safe))
                       (_%lp139872%_ _%L139934%_ __tmp145063 __tmp145062))))
                  (_%__kont144199144200%_
                   (lambda (_%L139910%_)
                     (let ((__tmp145064
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L139910%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _%vals139869%_
                                                 _%k139875%_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145064 _%r139876%_))))
                  (_%__kont144201144202%_ (lambda () (reverse _%r139876%_))))
              (let ((_%g139879139921%_
                     (lambda ()
                       (let ((_%L139910%_ _%__stx144193144194%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L139910%_))
                             (_%__kont144199144200%_ _%L139910%_)
                             (_%__kont144201144202%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144193144194%_))
                    (let ((_%e139886139950%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144193144194%_))))
                      (let ((_%tl139884139955%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139886139950%_)))
                            (_%hd139885139953%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139886139950%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd139885139953%_))
                            (let ((_%e139887139958%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd139885139953%_))))
                              (if (equal? _%e139887139958%_ '#f)
                                  (_%__kont144195144196%_ _%tl139884139955%_)
                                  (_%__kont144197144198%_
                                   _%tl139884139955%_
                                   _%hd139885139953%_)))
                            (_%__kont144197144198%_
                             _%tl139884139955%_
                             _%hd139885139953%_))))
                    (let () (declare (not safe)) (_%g139879139921%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139548%_ _%stx139549%_ _%compiled-body?139550%_)
        (letrec ((_%generate-simple139552%_
                  (lambda (_%hd139854%_ _%body139855%_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _%self139548%_
                       'letrec
                       _%hd139854%_
                       _%body139855%_
                       _%compiled-body?139550%_))))
                 (_%generate-values139553%_
                  (lambda (_%hd139633%_ _%body139634%_)
                    (let _%lp139636%_ ((_%rest139638%_ _%hd139633%_)
                                       (_%bind139639%_ '())
                                       (_%check139640%_ '())
                                       (_%post139641%_ '()))
                      (let* ((_%__stx144267144268%_ _%rest139638%_)
                             (_%g139644139655%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144267144268%_)))))
                        (let ((_%__kont144269144270%_
                               (lambda (_%L139682%_ _%L139683%_)
                                 (let* ((_%__stx144223144224%_ _%L139683%_)
                                        (_%g139698139723%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144223144224%_)))))
                                   (let ((_%__kont144225144226%_
                                          (lambda (_%L139830%_ _%L139831%_)
                                            (let ((_%eid139845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139831%_)))
                                                  (_%expr139846%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139548%_
                                                      _%L139830%_))))
                                              (let ((__tmp145065
                                                     (cons (cons _%eid139845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%expr139846%_ '()))
                   _%bind139639%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%lp139636%_
                                                 _%L139682%_
                                                 __tmp145065
                                                 _%check139640%_
                                                 _%post139641%_)))))
                                         (_%__kont144227144228%_
                                          (lambda (_%L139744%_ _%L139745%_)
                                            (let* ((_%vals139758%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139760%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _%vals139758%_
                                                       _%L139745%_
                                                       _%L139744%_)))
                                                   (_%refs139762%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _%vals139758%_
                                                       _%L139745%_)))
                                                   (_%expr139764%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139548%_
                                                       _%L139744%_))))
                                              (let ((__tmp145068
                                                     (let ((__tmp145070
                                                            (cons (cons _%vals139758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _%expr139764%_ '()))
                          _%bind139639%_))
                   (__tmp145069
                    (map (lambda (_%e139766139768%_)
                           (let* ((_%g139770139779%_ _%e139766139768%_)
                                  (_%E139772139783%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%g139770139779%_
                                              '([eid _])))
                                     '#!void))
                                  (_%K139773139788%_
                                   (lambda (_%eid139786%_)
                                     (cons _%eid139786%_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%g139770139779%_))
                                 (let ((_%hd139774139791%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%g139770139779%_)))
                                       (_%tl139775139793%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%g139770139779%_))))
                                   (let ((_%eid139796%_ _%hd139774139791%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _%tl139775139793%_))
                                         (let ((_%tl139777139798%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%tl139775139793%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _%tl139777139798%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%K139773139788%_
                                                  _%eid139796%_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%E139772139783%_))))
                                         (let ()
                                           (declare (not safe))
                                           (_%E139772139783%_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_%E139772139783%_)))))
                         _%refs139762%_)))
               (declare (not safe))
               (__foldl1 cons __tmp145070 __tmp145069)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145067
                                                     (cons _%check-values139760%_
                                                           _%check139640%_))
                                                    (__tmp145066
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _%refs139762%_
                                                        _%post139641%_))))
                                                (declare (not safe))
                                                (_%lp139636%_
                                                 _%L139682%_
                                                 __tmp145068
                                                 __tmp145067
                                                 __tmp145066))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144223144224%_))
                                         (let ((_%e139704139806%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144223144224%_))))
                                           (let ((_%tl139702139811%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139704139806%_)))
                                                 (_%hd139703139809%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139704139806%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139703139809%_))
                                                 (let ((_%e139707139814%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139703139809%_))))
                                                   (let ((_%tl139705139819%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139707139814%_)))
                                                         (_%hd139706139817%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139707139814%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139705139819%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139702139811%_))
                     (let ((_%e139710139822%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139702139811%_))))
                       (let ((_%tl139708139827%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139710139822%_)))
                             (_%hd139709139825%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139710139822%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139708139827%_))
                             (_%__kont144225144226%_
                              _%hd139709139825%_
                              _%hd139706139817%_)
                             (let ()
                               (declare (not safe))
                               (_%g139698139723%_)))))
                     (let () (declare (not safe)) (_%g139698139723%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139702139811%_))
                     (let ((_%e139718139736%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139702139811%_))))
                       (let ((_%tl139716139741%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139718139736%_)))
                             (_%hd139717139739%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139718139736%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139716139741%_))
                             (_%__kont144227144228%_
                              _%hd139717139739%_
                              _%hd139703139809%_)
                             (let ()
                               (declare (not safe))
                               (_%g139698139723%_)))))
                     (let () (declare (not safe)) (_%g139698139723%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139702139811%_))
                                                     (let ((_%e139718139736%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139702139811%_))))
                                                       (let ((_%tl139716139741%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139718139736%_)))
                     (_%hd139717139739%_
                      (let () (declare (not safe)) (##car _%e139718139736%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139716139741%_))
                     (_%__kont144227144228%_
                      _%hd139717139739%_
                      _%hd139703139809%_)
                     (let () (declare (not safe)) (_%g139698139723%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139698139723%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139698139723%_)))))))
                              (_%__kont144271144272%_
                               (lambda ()
                                 (let* ((_%body139662%_
                                         (if _%compiled-body?139550%_
                                             _%body139634%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139548%_
                                                _%body139634%_))))
                                        (_%body139664%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-post139555%_
                                            _%post139641%_
                                            _%body139662%_)))
                                        (_%body139666%_
                                         (let ()
                                           (declare (not safe))
                                           (_%generate-values-check139554%_
                                            _%check139640%_
                                            _%body139664%_))))
                                   (cons 'letrec
                                         (cons (reverse _%bind139639%_)
                                               (cons _%body139666%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144267144268%_))
                              (let ((_%e139650139674%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144267144268%_))))
                                (let ((_%tl139648139679%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139650139674%_)))
                                      (_%hd139649139677%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139650139674%_))))
                                  (_%__kont144269144270%_
                                   _%tl139648139679%_
                                   _%hd139649139677%_)))
                              (_%__kont144271144272%_)))))))
                 (_%generate-values-check139554%_
                  (lambda (_%check139630%_ _%body139631%_)
                    (cons 'begin
                          (let ((__tmp145072 (cons _%body139631%_ '()))
                                (__tmp145071 (reverse _%check139630%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145072 __tmp145071)))))
                 (_%generate-values-post139555%_
                  (lambda (_%post139623%_ _%body139624%_)
                    (cons 'begin
                          (let ((__tmp145076 (cons _%body139624%_ '()))
                                (__tmp145073
                                 (let ((__tmp145075
                                        (lambda (_%g139625139627%_)
                                          (cons 'set! _%g139625139627%_)))
                                       (__tmp145074 (reverse _%post139623%_)))
                                   (declare (not safe))
                                   (##map __tmp145075 __tmp145074))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145076 __tmp145073))))))
          (let* ((_%g139557139574%_
                  (lambda (_%g139558139571%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139558139571%_))))
                 (_%g139556139620%_
                  (lambda (_%g139558139577%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139558139577%_))
                        (let ((_%e139563139579%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139558139577%_))))
                          (let ((_%hd139562139582%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139563139579%_)))
                                (_%tl139561139584%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139563139579%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139561139584%_))
                                (let ((_%e139566139587%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139561139584%_))))
                                  (let ((_%hd139565139590%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139566139587%_)))
                                        (_%tl139564139592%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139566139587%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139564139592%_))
                                        (let ((_%e139569139595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139564139592%_))))
                                          (let ((_%hd139568139598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139569139595%_)))
                                                (_%tl139567139600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139569139595%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139567139600%_))
                                                ((lambda (_%L139603%_
                                                          _%L139604%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139604%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-simple139552%_
                                                          _%L139604%_
                                                          _%L139603%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139553%_
                                                          _%L139604%_
                                                          _%L139603%_))))
                                                 _%hd139568139598%_
                                                 _%hd139565139590%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139557139574%_
                                                   _%g139558139577%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139557139574%_
                                           _%g139558139577%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139557139574%_ _%g139558139577%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139557139574%_ _%g139558139577%_))))))
            (declare (not safe))
            (_%g139556139620%_ _%stx139549%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139860%_ _%stx139861%_)
        (let ((_%compiled-body?139863%_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _%self139860%_
           _%stx139861%_
           _%compiled-body?139863%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145078_
        (let ((_g145077_ (let () (declare (not safe)) (##length _g145078_))))
          (cond ((let () (declare (not safe)) (##fx= _g145077_ 2))
                 (apply (lambda (_%self139860%_ _%stx139861%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _%self139860%_
                             _%stx139861%_)))
                        _g145078_))
                ((let () (declare (not safe)) (##fx= _g145077_ 3))
                 (apply (lambda (_%self139865%_
                                 _%stx139866%_
                                 _%compiled-body?139867%_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _%self139865%_
                             _%stx139866%_
                             _%compiled-body?139867%_)))
                        _g145078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145078_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139129%_ _%stx139130%_)
        (letrec ((_%generate-values139132%_
                  (lambda (_%hd139375%_ _%body139376%_)
                    (let _%lp139378%_ ((_%rest139380%_ _%hd139375%_)
                                       (_%bind139381%_ '()))
                      (let* ((_%rest139382139390%_ _%rest139380%_)
                             (_%else139384139401%_
                              (lambda ()
                                (let ((_%bind139398%_ (reverse _%bind139381%_))
                                      (_%body139399%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139129%_
                                          _%body139376%_))))
                                  (cons 'letrec*
                                        (cons _%bind139398%_
                                              (cons _%body139399%_ '()))))))
                             (_%K139386139535%_
                              (lambda (_%rest139404%_ _%hd-bind139405%_)
                                (let* ((_%__stx144281144282%_
                                        _%hd-bind139405%_)
                                       (_%g139408139433%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144281144282%_)))))
                                  (let ((_%__kont144283144284%_
                                         (lambda (_%L139514%_ _%L139515%_)
                                           (let ((_%eid139529%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139515%_)))
                                                 (_%expr139530%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139129%_
                                                     _%L139514%_))))
                                             (let ((__tmp145079
                                                    (cons (cons _%eid139529%_
                                                                (cons _%expr139530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind139381%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139378%_
                                                _%rest139404%_
                                                __tmp145079)))))
                                        (_%__kont144285144286%_
                                         (lambda (_%L139454%_ _%L139455%_)
                                           (let* ((_%vals139474%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139476%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _%tmp139476%_
                                                      _%L139455%_
                                                      _%L139454%_)))
                                                  (_%refs139480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _%vals139474%_
                                                      _%L139455%_)))
                                                  (_%expr139482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139129%_
                                                      _%L139454%_))))
                                             (let ((__tmp145080
                                                    (let ((__tmp145081
                                                           (cons (cons _%vals139474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'let
                                           (cons (cons (cons _%tmp139476%_
                                                             (cons _%expr139482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%check-values139478%_
                                                       (cons _%tmp139476%_
                                                             '()))))
                                     '()))
                         _%bind139381%_)))
              (declare (not safe))
              (__foldl1 cons __tmp145081 _%refs139480%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp139378%_
                                                _%rest139404%_
                                                __tmp145080))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144281144282%_))
                                        (let ((_%e139414139490%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144281144282%_))))
                                          (let ((_%tl139412139495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139414139490%_)))
                                                (_%hd139413139493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139414139490%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139413139493%_))
                                                (let ((_%e139417139498%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139413139493%_))))
                                                  (let ((_%tl139415139503%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139417139498%_)))
                                                        (_%hd139416139501%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139417139498%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139415139503%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139412139495%_))
                                                            (let ((_%e139420139506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139412139495%_))))
                      (let ((_%tl139418139511%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139420139506%_)))
                            (_%hd139419139509%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139420139506%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139418139511%_))
                            (_%__kont144283144284%_
                             _%hd139419139509%_
                             _%hd139416139501%_)
                            (let ()
                              (declare (not safe))
                              (_%g139408139433%_)))))
                    (let () (declare (not safe)) (_%g139408139433%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139412139495%_))
                    (let ((_%e139428139446%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139412139495%_))))
                      (let ((_%tl139426139451%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139428139446%_)))
                            (_%hd139427139449%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139428139446%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139426139451%_))
                            (_%__kont144285144286%_
                             _%hd139427139449%_
                             _%hd139413139493%_)
                            (let ()
                              (declare (not safe))
                              (_%g139408139433%_)))))
                    (let () (declare (not safe)) (_%g139408139433%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139412139495%_))
                                                    (let ((_%e139428139446%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139412139495%_))))
                                                      (let ((_%tl139426139451%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139428139446%_)))
                    (_%hd139427139449%_
                     (let () (declare (not safe)) (##car _%e139428139446%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139426139451%_))
                    (_%__kont144285144286%_
                     _%hd139427139449%_
                     _%hd139413139493%_)
                    (let () (declare (not safe)) (_%g139408139433%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139408139433%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139408139433%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139382139390%_))
                            (let ((_%hd139387139538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139382139390%_)))
                                  (_%tl139388139540%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139382139390%_))))
                              (let* ((_%hd-bind139543%_ _%hd139387139538%_)
                                     (_%rest139545%_ _%tl139388139540%_))
                                (declare (not safe))
                                (_%K139386139535%_
                                 _%rest139545%_
                                 _%hd-bind139543%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139384139401%_)))))))
                 (_%generate-letrec?139133%_
                  (lambda (_%hd139265%_)
                    (let _%lp139267%_ ((_%rest139269%_ _%hd139265%_))
                      (let* ((_%rest139270139278%_ _%rest139269%_)
                             (_%else139272139286%_ (lambda () '#t))
                             (_%K139274139363%_
                              (lambda (_%rest139289%_ _%hd-bind139290%_)
                                (let* ((_%g139292139309%_
                                        (lambda (_%g139293139306%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139293139306%_))))
                                       (_%g139291139360%_
                                        (lambda (_%g139293139312%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139293139312%_))
                                              (let ((_%e139298139314%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139293139312%_))))
                                                (let ((_%hd139297139317%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139298139314%_)))
                                                      (_%tl139296139319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139298139314%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139297139317%_))
                                                      (let ((_%e139301139322%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139297139317%_))))
                (let ((_%hd139300139325%_
                       (let () (declare (not safe)) (##car _%e139301139322%_)))
                      (_%tl139299139327%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139301139322%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139299139327%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139296139319%_))
                          (let ((_%e139304139330%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139296139319%_))))
                            (let ((_%hd139303139333%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139304139330%_)))
                                  (_%tl139302139335%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139304139330%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139302139335%_))
                                  ((lambda (_%L139338%_ _%L139339%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_%is-lambda-expr?139134%_
                                            _%L139338%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%lp139267%_ _%rest139289%_))
                                         '#f))
                                   _%hd139303139333%_
                                   _%hd139300139325%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g139292139309%_ _%g139293139312%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g139292139309%_ _%g139293139312%_)))
                      (let ()
                        (declare (not safe))
                        (_%g139292139309%_ _%g139293139312%_)))))
              (let ()
                (declare (not safe))
                (_%g139292139309%_ _%g139293139312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g139292139309%_
                                                 _%g139293139312%_))))))
                                  (declare (not safe))
                                  (_%g139291139360%_ _%hd-bind139290%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139270139278%_))
                            (let ((_%hd139275139366%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139270139278%_)))
                                  (_%tl139276139368%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139270139278%_))))
                              (let* ((_%hd-bind139371%_ _%hd139275139366%_)
                                     (_%rest139373%_ _%tl139276139368%_))
                                (declare (not safe))
                                (_%K139274139363%_
                                 _%rest139373%_
                                 _%hd-bind139371%_)))
                            (let ()
                              (declare (not safe))
                              (_%else139272139286%_)))))))
                 (_%is-lambda-expr?139134%_
                  (lambda (_%expr139202%_)
                    (let* ((_%__stx144325144326%_ _%expr139202%_)
                           (_%g139205139219%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144325144326%_)))))
                      (let ((_%__kont144327144328%_
                             (lambda (_%L139247%_ _%L139248%_) '#t))
                            (_%__kont144329144330%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144325144326%_))
                            (let ((_%e139211139231%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144325144326%_))))
                              (let ((_%tl139209139236%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139211139231%_)))
                                    (_%hd139210139234%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139211139231%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139210139234%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139210139234%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139209139236%_))
                                            (let ((_%e139214139239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139209139236%_))))
                                              (let ((_%tl139212139244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139214139239%_)))
                                                    (_%hd139213139242%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139214139239%_))))
                                                (_%__kont144327144328%_
                                                 _%tl139212139244%_
                                                 _%hd139213139242%_)))
                                            (_%__kont144329144330%_))
                                        (_%__kont144329144330%_))
                                    (_%__kont144329144330%_))))
                            (_%__kont144329144330%_)))))))
          (let* ((_%g139136139153%_
                  (lambda (_%g139137139150%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139137139150%_))))
                 (_%g139135139199%_
                  (lambda (_%g139137139156%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139137139156%_))
                        (let ((_%e139142139158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139137139156%_))))
                          (let ((_%hd139141139161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139142139158%_)))
                                (_%tl139140139163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139142139158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139140139163%_))
                                (let ((_%e139145139166%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139140139163%_))))
                                  (let ((_%hd139144139169%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139145139166%_)))
                                        (_%tl139143139171%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139145139166%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139143139171%_))
                                        (let ((_%e139148139174%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139143139171%_))))
                                          (let ((_%hd139147139177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139148139174%_)))
                                                (_%tl139146139179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139148139174%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139146139179%_))
                                                ((lambda (_%L139182%_
                                                          _%L139183%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _%L139183%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%generate-letrec?139133%_
                                                              _%L139183%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139129%_
                                                              'letrec
                                                              _%L139183%_
                                                              _%L139182%_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _%self139129%_
                                                              'letrec*
                                                              _%L139183%_
                                                              _%L139182%_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%generate-values139132%_
                                                          _%L139183%_
                                                          _%L139182%_))))
                                                 _%hd139147139177%_
                                                 _%hd139144139169%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g139136139153%_
                                                   _%g139137139156%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139136139153%_
                                           _%g139137139156%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g139136139153%_ _%g139137139156%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g139136139153%_ _%g139137139156%_))))))
            (declare (not safe))
            (_%g139135139199%_ _%stx139130%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139066%_)
        (let _%lp139068%_ ((_%rest139070%_ _%hd139066%_))
          (let* ((_%rest139071139087%_ _%rest139070%_)
                 (_%else139074139095%_ (lambda () '#f)))
            (let ((_%K139077139108%_
                   (lambda (_%rest139106%_)
                     (let ()
                       (declare (not safe))
                       (_%lp139068%_ _%rest139106%_))))
                  (_%K139076139100%_ (lambda () '#t)))
              (let ((_%try-match139073139103%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139071139087%_))
                           (let () (declare (not safe)) (_%K139076139100%_))
                           (let ()
                             (declare (not safe))
                             (_%else139074139095%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139071139087%_))
                    (let ((_%tl139079139113%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139071139087%_)))
                          (_%hd139078139111%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139071139087%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139078139111%_))
                          (let ((_%tl139081139118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139078139111%_)))
                                (_%hd139080139116%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139078139111%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139080139116%_))
                                (let ((_%tl139085139121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139080139116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139085139121%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139081139118%_))
                                          (let ((_%tl139083139124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139081139118%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139083139124%_))
                                                (let ((_%rest139127%_
                                                       _%tl139079139113%_))
                                                  (declare (not safe))
                                                  (_%lp139068%_
                                                   _%rest139127%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else139074139095%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else139074139095%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else139074139095%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%else139074139095%_))))
                          (let ()
                            (declare (not safe))
                            (_%else139074139095%_))))
                    (let ()
                      (declare (not safe))
                      (_%try-match139073139103%_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self138977%_
               _%form138978%_
               _%hd138979%_
               _%body138980%_
               _%compiled-body?138981%_)
        (letrec ((_%generate1138983%_
                  (lambda (_%bind139022%_)
                    (let* ((_%bind139023139034%_ _%bind139022%_)
                           (_%E139025139038%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind139023139034%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K139026139044%_
                            (lambda (_%expr139041%_ _%id139042%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139042%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138977%_
                                             _%expr139041%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind139023139034%_))
                          (let ((_%hd139027139047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind139023139034%_)))
                                (_%tl139028139049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind139023139034%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139027139047%_))
                                (let ((_%hd139031139052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd139027139047%_)))
                                      (_%tl139032139054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139027139047%_))))
                                  (let ((_%id139057%_ _%hd139031139052%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139032139054%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139028139049%_))
                                            (let ((_%hd139029139059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139028139049%_)))
                                                  (_%tl139030139061%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139028139049%_))))
                                              (let ((_%expr139064%_
                                                     _%hd139029139059%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139030139061%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%K139026139044%_
                                                       _%expr139064%_
                                                       _%id139057%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%E139025139038%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%E139025139038%_)))
                                        (let ()
                                          (declare (not safe))
                                          (_%E139025139038%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%E139025139038%_))))
                          (let ()
                            (declare (not safe))
                            (_%E139025139038%_)))))))
          (let* ((_%bind138985%_ (map _%generate1138983%_ _%hd138979%_))
                 (_%body138987%_
                  (if _%compiled-body?138981%_
                      _%body138980%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self138977%_ _%body138980%_))))
                 (_%body139019%_
                  (let* ((_%body138988138996%_ _%body138987%_)
                         (_%else138990139004%_
                          (lambda () (cons _%body138987%_ '())))
                         (_%K138992139009%_
                          (lambda (_%exprs139007%_) _%exprs139007%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body138988138996%_))
                        (let ((_%hd138993139012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body138988138996%_)))
                              (_%tl138994139014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body138988138996%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd138993139012%_ 'begin))
                              (let ((_%exprs139017%_ _%tl138994139014%_))
                                (declare (not safe))
                                (_%K138992139009%_ _%exprs139017%_))
                              (let ()
                                (declare (not safe))
                                (_%else138990139004%_))))
                        (let ()
                          (declare (not safe))
                          (_%else138990139004%_))))))
            (cons _%form138978%_ (cons _%bind138985%_ _%body139019%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self138877%_ _%stx138878%_)
        (letrec ((_%generate1138880%_
                  (lambda (_%datum138932%_)
                    (if (or (let ()
                              (declare (not safe))
                              (null? _%datum138932%_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum138932%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum138932%_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _%datum138932%_)))
                        (let () _%datum138932%_)
                        (if (uninterned-symbol? _%datum138932%_)
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-gensym-reference__%
                                 _%datum138932%_
                                 '#t)))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%datum138932%_))
                                (let ()
                                  (cons (let ((__tmp145082
                                               (car _%datum138932%_)))
                                          (declare (not safe))
                                          (_%generate1138880%_ __tmp145082))
                                        (let ((__tmp145083
                                               (cdr _%datum138932%_)))
                                          (declare (not safe))
                                          (_%generate1138880%_ __tmp145083))))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _%datum138932%_))
                                    (let ()
                                      (box (let ((__tmp145084
                                                  (unbox _%datum138932%_)))
                                             (declare (not safe))
                                             (_%generate1138880%_
                                              __tmp145084))))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _%datum138932%_))
                                        (let ()
                                          (vector-map
                                           _%generate1138880%_
                                           _%datum138932%_))
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _%datum138932%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _%datum138932%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _%datum138932%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _%datum138932%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _%datum138932%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _%datum138932%_))
                                                (s64vector? _%datum138932%_)
                                                (u64vector? _%datum138932%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _%datum138932%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector?
                                                   _%datum138932%_)))
                                            (let () _%datum138932%_)
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"Cannot compile non-primitive quote"
                                                 _%stx138878%_))))))))))))
          (let* ((_%g138882138895%_
                  (lambda (_%g138883138892%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138883138892%_))))
                 (_%g138881138929%_
                  (lambda (_%g138883138898%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138883138898%_))
                        (let ((_%e138887138900%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138883138898%_))))
                          (let ((_%hd138886138903%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138887138900%_)))
                                (_%tl138885138905%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138887138900%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138885138905%_))
                                (let ((_%e138890138908%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138885138905%_))))
                                  (let ((_%hd138889138911%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138890138908%_)))
                                        (_%tl138888138913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138890138908%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138888138913%_))
                                        ((lambda (_%L138916%_)
                                           (cons 'quote
                                                 (cons (let ((__tmp145085
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%L138916%_))))
                 (declare (not safe))
                 (_%generate1138880%_ __tmp145085))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd138889138911%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g138882138895%_
                                           _%g138883138898%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138882138895%_ _%g138883138898%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138882138895%_ _%g138883138898%_))))))
            (declare (not safe))
            (_%g138881138929%_ _%stx138878%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138318%_ _%stx138319%_)
        (letrec ((_%compile-call138321%_
                  (lambda (_%rator138610%_ _%rands138611%_)
                    (let ((_%rator138617%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138318%_
                              _%rator138610%_)))
                          (_%rands138618%_
                           (map (lambda (_%g138612138614%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138318%_
                                     _%g138612138614%_)))
                                _%rands138611%_)))
                      (let* ((_%__stx144372144373%_ _%rator138617%_)
                             (_%g138621138673%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144372144373%_)))))
                        (let ((_%__kont144374144375%_
                               (lambda (_%L138797%_
                                        _%L138798%_
                                        _%L138799%_
                                        _%L138800%_)
                                 (if (let ((__tmp145088
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138618%_)))
                                           (__tmp145086
                                            (length (let ((__tmp145087
                                                           (lambda (_%g138836138839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138837138841%_)
                     (cons _%g138836138839%_ _%g138837138841%_))))
              (declare (not safe))
              (__foldr1 __tmp145087 '() _%L138799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145088 __tmp145086))
                                     (let* ((_%id138844%_ _%L138800%_)
                                            (_%args138853%_
                                             (let ((__tmp145089
                                                    (lambda (_%g138845138848%_
                                                             _%g138846138850%_)
                                                      (cons _%g138845138848%_
                                                            _%g138846138850%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145089
                                                '()
                                                _%L138799%_)))
                                            (_%body138862%_
                                             (let ((__tmp145090
                                                    (lambda (_%g138854138857%_
                                                             _%g138855138859%_)
                                                      (cons _%g138854138857%_
                                                            _%g138855138859%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145090
                                                '()
                                                _%L138798%_)))
                                            (_%init138864%_
                                             (map list
                                                  _%args138853%_
                                                  _%rands138618%_)))
                                       (cons 'let
                                             (cons _%id138844%_
                                                   (cons _%init138864%_
                                                         _%body138862%_))))
                                     (let ((__tmp145091
                                            (let ((__tmp145092
                                                   (lambda (_%g138866138869%_
                                                            _%g138867138871%_)
                                                     (cons _%g138866138869%_
                                                           _%g138867138871%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145092
                                               '()
                                               _%L138799%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138319%_
                                        __tmp145091
                                        _%rands138618%_)))))
                              (_%__kont144380144381%_
                               (lambda ()
                                 (cons _%rator138617%_ _%rands138618%_))))
                          (let ((_%__match144439144440%_
                                 (lambda (_%e138629138685%_
                                          _%hd138628138688%_
                                          _%tl138627138690%_
                                          _%e138632138693%_
                                          _%hd138631138696%_
                                          _%tl138630138698%_
                                          _%e138635138701%_
                                          _%hd138634138704%_
                                          _%tl138633138706%_
                                          _%e138638138709%_
                                          _%hd138637138712%_
                                          _%tl138636138714%_
                                          _%e138641138717%_
                                          _%hd138640138720%_
                                          _%tl138639138722%_
                                          _%e138644138725%_
                                          _%hd138643138728%_
                                          _%tl138642138730%_
                                          _%e138647138733%_
                                          _%hd138646138736%_
                                          _%tl138645138738%_
                                          _%__splice144376144377%_
                                          _%target138648138741%_
                                          _%tl138650138743%_)
                                   (letrec ((_%loop138651138746%_
                                             (lambda (_%hd138649138749%_
                                                      _%arg138655138751%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138649138749%_))
                                                   (let ((_%e138652138754%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138649138749%_))))
                                                     (let ((_%lp-tl138654138759%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138652138754%_)))
                                                           (_%lp-hd138653138757%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138652138754%_))))
                                                       (let ((__tmp145093
                                                              (cons _%lp-hd138653138757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%arg138655138751%_)))
                 (declare (not safe))
                 (_%loop138651138746%_ _%lp-tl138654138759%_ __tmp145093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%arg138656138762%_
                                                          (reverse _%arg138655138751%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138645138738%_))
                                                         (let ((_%__splice144378144379%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138645138738%_ '0))))
                   (let ((_%tl138659138767%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144378144379%_ '1)))
                         (_%target138657138765%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144378144379%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138659138767%_))
                         (letrec ((_%loop138660138770%_
                                   (lambda (_%hd138658138773%_
                                            _%body138664138775%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138658138773%_))
                                         (let ((_%e138661138778%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138658138773%_))))
                                           (let ((_%lp-tl138663138783%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138661138778%_)))
                                                 (_%lp-hd138662138781%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138661138778%_))))
                                             (let ((__tmp145094
                                                    (cons _%lp-hd138662138781%_
                                                          _%body138664138775%_)))
                                               (declare (not safe))
                                               (_%loop138660138770%_
                                                _%lp-tl138663138783%_
                                                __tmp145094))))
                                         (let ((_%body138665138786%_
                                                (reverse _%body138664138775%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138639138722%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138633138706%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138630138698%_))
                                                       (let ((_%e138668138789%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138630138698%_))))
                 (let ((_%tl138666138794%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138668138789%_)))
                       (_%hd138667138792%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138668138789%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138666138794%_))
                       (let ((_%L138797%_ _%hd138667138792%_)
                             (_%L138798%_ _%body138665138786%_)
                             (_%L138799%_ _%arg138656138762%_)
                             (_%L138800%_ _%hd138637138712%_))
                         (if (eq? _%L138800%_ _%L138797%_)
                             (_%__kont144374144375%_
                              _%L138797%_
                              _%L138798%_
                              _%L138799%_
                              _%L138800%_)
                             (_%__kont144380144381%_)))
                       (_%__kont144380144381%_))))
               (_%__kont144380144381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144380144381%_))
                                               (_%__kont144380144381%_)))))))
                           (let ()
                             (declare (not safe))
                             (_%loop138660138770%_
                              _%target138657138765%_
                              '())))
                         (_%__kont144380144381%_))))
                 (_%__kont144380144381%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_%loop138651138746%_
                                        _%target138648138741%_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144372144373%_))
                                (let ((_%e138629138685%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144372144373%_))))
                                  (let ((_%tl138627138690%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138629138685%_)))
                                        (_%hd138628138688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138629138685%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138628138688%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138628138688%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138627138690%_))
                                                (let ((_%e138632138693%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138627138690%_))))
                                                  (let ((_%tl138630138698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138632138693%_)))
                                                        (_%hd138631138696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138632138693%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138631138696%_))
                                                        (let ((_%e138635138701%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138631138696%_))))
                  (let ((_%tl138633138706%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138635138701%_)))
                        (_%hd138634138704%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138635138701%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138634138704%_))
                        (let ((_%e138638138709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138634138704%_))))
                          (let ((_%tl138636138714%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138638138709%_)))
                                (_%hd138637138712%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138638138709%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138636138714%_))
                                (let ((_%e138641138717%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138636138714%_))))
                                  (let ((_%tl138639138722%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138641138717%_)))
                                        (_%hd138640138720%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138641138717%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138640138720%_))
                                        (let ((_%e138644138725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138640138720%_))))
                                          (let ((_%tl138642138730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138644138725%_)))
                                                (_%hd138643138728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138644138725%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138643138728%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138643138728%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138642138730%_))
                                                        (let ((_%e138647138733%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138642138730%_))))
                  (let ((_%tl138645138738%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138647138733%_)))
                        (_%hd138646138736%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138647138733%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138646138736%_))
                        (let ((_%__splice144376144377%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138646138736%_
                                  '0))))
                          (let ((_%tl138650138743%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144376144377%_ '1)))
                                (_%target138648138741%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144376144377%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138650138743%_))
                                (_%__match144439144440%_
                                 _%e138629138685%_
                                 _%hd138628138688%_
                                 _%tl138627138690%_
                                 _%e138632138693%_
                                 _%hd138631138696%_
                                 _%tl138630138698%_
                                 _%e138635138701%_
                                 _%hd138634138704%_
                                 _%tl138633138706%_
                                 _%e138638138709%_
                                 _%hd138637138712%_
                                 _%tl138636138714%_
                                 _%e138641138717%_
                                 _%hd138640138720%_
                                 _%tl138639138722%_
                                 _%e138644138725%_
                                 _%hd138643138728%_
                                 _%tl138642138730%_
                                 _%e138647138733%_
                                 _%hd138646138736%_
                                 _%tl138645138738%_
                                 _%__splice144376144377%_
                                 _%target138648138741%_
                                 _%tl138650138743%_)
                                (_%__kont144380144381%_))))
                        (_%__kont144380144381%_))))
                (_%__kont144380144381%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144380144381%_))
                                                (_%__kont144380144381%_))))
                                        (_%__kont144380144381%_))))
                                (_%__kont144380144381%_))))
                        (_%__kont144380144381%_))))
                (_%__kont144380144381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144380144381%_))
                                            (_%__kont144380144381%_))
                                        (_%__kont144380144381%_))))
                                (_%__kont144380144381%_)))))))))
          (let* ((_%g138323138346%_
                  (lambda (_%g138324138343%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138324138343%_))))
                 (_%g138322138607%_
                  (lambda (_%g138324138349%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138324138349%_))
                        (let ((_%e138329138351%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138324138349%_))))
                          (let ((_%hd138328138354%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138329138351%_)))
                                (_%tl138327138356%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138329138351%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138327138356%_))
                                (let ((_%e138332138359%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138327138356%_))))
                                  (let ((_%hd138331138362%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138332138359%_)))
                                        (_%tl138330138364%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138332138359%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138330138364%_))
                                        (let ((_g145095_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138330138364%_
                                                  '0))))
                                          (begin
                                            (let ((_g145096_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145095_)
                                                         (##vector-length
                                                          _g145095_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145096_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145096_)))
                                            (let ((_%target138333138367%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145095_
                                                      0)))
                                                  (_%tl138335138369%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145095_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138335138369%_))
                                                  (letrec ((_%loop138336138372%_
                                                            (lambda (_%hd138334138375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138340138377%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138334138375%_))
                          (let ((_%e138337138380%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138334138375%_))))
                            (let ((_%lp-hd138338138383%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138337138380%_)))
                                  (_%lp-tl138339138385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138337138380%_))))
                              (let ((__tmp145097
                                     (cons _%lp-hd138338138383%_
                                           _%rand138340138377%_)))
                                (declare (not safe))
                                (_%loop138336138372%_
                                 _%lp-tl138339138385%_
                                 __tmp145097))))
                          (let ((_%rand138341138388%_
                                 (reverse _%rand138340138377%_)))
                            ((lambda (_%L138391%_ _%L138392%_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp145098
                                          (let ((__tmp145099
                                                 (lambda (_%g138409138412%_
                                                          _%g138410138414%_)
                                                   (cons _%g138409138412%_
                                                         _%g138410138414%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp145099
                                             '()
                                             _%L138391%_))))
                                     (declare (not safe))
                                     (_%compile-call138321%_
                                      _%L138392%_
                                      __tmp145098))
                                   (let* ((_%__stx144488144489%_ _%L138392%_)
                                          (_%g138418138430%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144488144489%_)))))
                                     (let ((_%__kont144490144491%_
                                            (lambda ()
                                              (let ((_%f138467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138318%_
                                                        _%L138392%_))))
                                                (if (and (let ((__tmp145100
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138467%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145100))
                 (let ((__tmp145101
                        (let ()
                          (declare (not safe))
                          (##memq _%f138467%_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp145101)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138469%_ ((_%rest138472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145107
                                                (lambda (_%g138589138592%_
                                                         _%g138590138594%_)
                                                  (cons _%g138589138592%_
                                                        _%g138590138594%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145107
                                            '()
                                            _%L138391%_))))
                               (_%bind138474%_ '())
                               (_%args138475%_ '()))
              (let* ((_%rest138476138484%_ _%rest138472%_)
                     (_%else138478138492%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138474%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138467%_
                                                      _%args138475%_)
                                                '()))))))
                     (_%K138480138578%_
                      (lambda (_%rest138495%_ _%e138496%_)
                        (let* ((_%__stx144442144443%_ _%e138496%_)
                               (_%g138501138519%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144442144443%_)))))
                          (let ((_%__kont144444144445%_
                                 (lambda ()
                                   (let ((__tmp145102
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138496%_))
                                                _%args138475%_)))
                                     (declare (not safe))
                                     (_%lp138469%_
                                      _%rest138495%_
                                      _%bind138474%_
                                      __tmp145102))))
                                (_%__kont144446144447%_
                                 (lambda ()
                                   (let ((__tmp145103
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0
                                                   _%e138496%_))
                                                _%args138475%_)))
                                     (declare (not safe))
                                     (_%lp138469%_
                                      _%rest138495%_
                                      _%bind138474%_
                                      __tmp145103))))
                                (_%__kont144448144449%_
                                 (lambda ()
                                   (let ((_%tmp138526%_
                                          (let ((__tmp145104
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145104))))
                                     (let ((__tmp145106
                                            (cons (cons _%tmp138526%_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _%e138496%_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%bind138474%_))
                                           (__tmp145105
                                            (cons _%tmp138526%_
                                                  _%args138475%_)))
                                       (declare (not safe))
                                       (_%lp138469%_
                                        _%rest138495%_
                                        __tmp145106
                                        __tmp145105))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144442144443%_))
                                (let ((_%e138505138557%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144442144443%_))))
                                  (let ((_%tl138503138562%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138505138557%_)))
                                        (_%hd138504138560%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138505138557%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138504138560%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138504138560%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138503138562%_))
                                                (let ((_%e138508138565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138503138562%_))))
                                                  (let ((_%tl138506138570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138508138565%_)))
                                                        (_%hd138507138568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138508138565%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138506138570%_))
                                                        (_%__kont144444144445%_)
                                                        (_%__kont144448144449%_))))
                                                (_%__kont144448144449%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138504138560%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138503138562%_))
                                                    (let ((_%e138514138542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138503138562%_))))
                                                      (let ((_%tl138512138547%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138514138542%_)))
                    (_%hd138513138545%_
                     (let () (declare (not safe)) (##car _%e138514138542%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138512138547%_))
                    (_%__kont144446144447%_)
                    (_%__kont144448144449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144448144449%_))
                                                (_%__kont144448144449%_)))
                                        (_%__kont144448144449%_))))
                                (_%__kont144448144449%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138476138484%_))
                    (let ((_%hd138481138581%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138476138484%_)))
                          (_%tl138482138583%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138476138484%_))))
                      (let* ((_%e138586%_ _%hd138481138581%_)
                             (_%rest138588%_ _%tl138482138583%_))
                        (declare (not safe))
                        (_%K138480138578%_ _%rest138588%_ _%e138586%_)))
                    (let () (declare (not safe)) (_%else138478138492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp145108
                                                           (let ((__tmp145109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g138596138599%_ _%g138597138601%_)
                            (cons _%g138596138599%_ _%g138597138601%_))))
                     (declare (not safe))
                     (__foldr1 __tmp145109 '() _%L138391%_))))
              (declare (not safe))
              (_%compile-call138321%_ _%L138392%_ __tmp145108))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144492144493%_
                                            (lambda ()
                                              (let ((__tmp145110
                                                     (let ((__tmp145111
                                                            (lambda (_%g138436138439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138437138441%_)
                      (cons _%g138436138439%_ _%g138437138441%_))))
               (declare (not safe))
               (__foldr1 __tmp145111 '() _%L138391%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_%compile-call138321%_
                                                 _%L138392%_
                                                 __tmp145110)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144488144489%_))
                                           (let ((_%e138422138449%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144488144489%_))))
                                             (let ((_%tl138420138454%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138422138449%_)))
                                                   (_%hd138421138452%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138422138449%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138421138452%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138421138452%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138420138454%_))
                                                           (let ((_%e138425138457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138420138454%_))))
                     (let ((_%tl138423138462%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138425138457%_)))
                           (_%hd138424138460%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138425138457%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138423138462%_))
                           (_%__kont144490144491%_)
                           (_%__kont144492144493%_))))
                   (_%__kont144492144493%_))
               (_%__kont144492144493%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144492144493%_))))
                                           (_%__kont144492144493%_))))))
                             _%rand138341138388%_
                             _%hd138331138362%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%loop138336138372%_
                                                       _%target138333138367%_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g138323138346%_
                                                     _%g138324138349%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g138323138346%_
                                           _%g138324138349%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g138323138346%_ _%g138324138349%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g138323138346%_ _%g138324138349%_))))))
            (declare (not safe))
            (_%g138322138607%_ _%stx138319%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138061%_ _%stx138062%_)
        (let* ((_%__stx144560144561%_ _%stx138062%_)
               (_%g138065138094%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144560144561%_)))))
          (let ((_%__kont144562144563%_
                 (lambda (_%L138162%_ _%L138163%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call%
                          _%self138061%_
                          _%stx138062%_))
                       (let ((_%f138185%_
                              (let ((__tmp145112
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138163%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138061%_
                                 __tmp145112))))
                         (let _%lp138187%_ ((_%rest138190%_
                                             (reverse (let ((__tmp145118
                                                             (lambda (_%g138307138310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138308138312%_)
                       (cons _%g138307138310%_ _%g138308138312%_))))
                (declare (not safe))
                (__foldr1 __tmp145118 '() _%L138162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138192%_ '())
                                            (_%args138193%_ '()))
                           (let* ((_%rest138194138202%_ _%rest138190%_)
                                  (_%else138196138210%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138192%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138193%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138198138296%_
                                   (lambda (_%rest138213%_ _%e138214%_)
                                     (let* ((_%__stx144514144515%_ _%e138214%_)
                                            (_%g138219138237%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144514144515%_)))))
                                       (let ((_%__kont144516144517%_
                                              (lambda ()
                                                (let ((__tmp145113
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138214%_))
                     _%args138193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138187%_
                                                   _%rest138213%_
                                                   _%bind138192%_
                                                   __tmp145113))))
                                             (_%__kont144518144519%_
                                              (lambda ()
                                                (let ((__tmp145114
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _%e138214%_))
                     _%args138193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_%lp138187%_
                                                   _%rest138213%_
                                                   _%bind138192%_
                                                   __tmp145114))))
                                             (_%__kont144520144521%_
                                              (lambda ()
                                                (let ((_%tmp138244%_
                                                       (let ((__tmp145115
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp145117
                                                         (cons (cons _%tmp138244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _%e138214%_))
                                   '()))
                       _%bind138192%_))
                (__tmp145116 (cons _%tmp138244%_ _%args138193%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp138187%_
                                                     _%rest138213%_
                                                     __tmp145117
                                                     __tmp145116))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144514144515%_))
                                             (let ((_%e138223138275%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144514144515%_))))
                                               (let ((_%tl138221138280%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138223138275%_)))
                                                     (_%hd138222138278%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138223138275%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138222138278%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138222138278%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138221138280%_))
                     (let ((_%e138226138283%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138221138280%_))))
                       (let ((_%tl138224138288%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138226138283%_)))
                             (_%hd138225138286%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138226138283%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138224138288%_))
                             (_%__kont144516144517%_)
                             (_%__kont144520144521%_))))
                     (_%__kont144520144521%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138222138278%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138221138280%_))
                         (let ((_%e138232138260%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138221138280%_))))
                           (let ((_%tl138230138265%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138232138260%_)))
                                 (_%hd138231138263%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138232138260%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138230138265%_))
                                 (_%__kont144518144519%_)
                                 (_%__kont144520144521%_))))
                         (_%__kont144520144521%_))
                     (_%__kont144520144521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144520144521%_))))
                                             (_%__kont144520144521%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138194138202%_))
                                 (let ((_%hd138199138299%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138194138202%_)))
                                       (_%tl138200138301%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138194138202%_))))
                                   (let* ((_%e138304%_ _%hd138199138299%_)
                                          (_%rest138306%_ _%tl138200138301%_))
                                     (declare (not safe))
                                     (_%K138198138296%_
                                      _%rest138306%_
                                      _%e138304%_)))
                                 (let ()
                                   (declare (not safe))
                                   (_%else138196138210%_)))))))))
                (_%__kont144566144567%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call%
                      _%self138061%_
                      _%stx138062%_)))))
            (let ((_%__match144605144606%_
                   (lambda (_%e138071138106%_
                            _%hd138070138109%_
                            _%tl138069138111%_
                            _%e138074138114%_
                            _%hd138073138117%_
                            _%tl138072138119%_
                            _%e138077138122%_
                            _%hd138076138125%_
                            _%tl138075138127%_
                            _%e138080138130%_
                            _%hd138079138133%_
                            _%tl138078138135%_
                            _%__splice144564144565%_
                            _%target138081138138%_
                            _%tl138083138140%_)
                     (letrec ((_%loop138084138143%_
                               (lambda (_%hd138082138146%_
                                        _%rand138088138148%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138082138146%_))
                                     (let ((_%e138085138151%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138082138146%_))))
                                       (let ((_%lp-tl138087138156%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138085138151%_)))
                                             (_%lp-hd138086138154%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138085138151%_))))
                                         (let ((__tmp145119
                                                (cons _%lp-hd138086138154%_
                                                      _%rand138088138148%_)))
                                           (declare (not safe))
                                           (_%loop138084138143%_
                                            _%lp-tl138087138156%_
                                            __tmp145119))))
                                     (let ((_%rand138089138159%_
                                            (reverse _%rand138088138148%_)))
                                       (_%__kont144562144563%_
                                        _%rand138089138159%_
                                        _%hd138079138133%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop138084138143%_ _%target138081138138%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144560144561%_))
                  (let ((_%e138071138106%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144560144561%_))))
                    (let ((_%tl138069138111%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138071138106%_)))
                          (_%hd138070138109%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138071138106%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138069138111%_))
                          (let ((_%e138074138114%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138069138111%_))))
                            (let ((_%tl138072138119%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138074138114%_)))
                                  (_%hd138073138117%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138074138114%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138073138117%_))
                                  (let ((_%e138077138122%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138073138117%_))))
                                    (let ((_%tl138075138127%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138077138122%_)))
                                          (_%hd138076138125%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138077138122%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138076138125%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138076138125%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138075138127%_))
                                                  (let ((_%e138080138130%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138075138127%_))))
                                                    (let ((_%tl138078138135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138080138130%_)))
                                                          (_%hd138079138133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138080138130%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138078138135%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138072138119%_))
                      (let ((_%__splice144564144565%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138072138119%_
                                '0))))
                        (let ((_%tl138083138140%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144564144565%_ '1)))
                              (_%target138081138138%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144564144565%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138083138140%_))
                              (_%__match144605144606%_
                               _%e138071138106%_
                               _%hd138070138109%_
                               _%tl138069138111%_
                               _%e138074138114%_
                               _%hd138073138117%_
                               _%tl138072138119%_
                               _%e138077138122%_
                               _%hd138076138125%_
                               _%tl138075138127%_
                               _%e138080138130%_
                               _%hd138079138133%_
                               _%tl138078138135%_
                               _%__splice144564144565%_
                               _%target138081138138%_
                               _%tl138083138140%_)
                              (_%__kont144566144567%_))))
                      (_%__kont144566144567%_))
                  (_%__kont144566144567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144566144567%_))
                                              (_%__kont144566144567%_))
                                          (_%__kont144566144567%_))))
                                  (_%__kont144566144567%_))))
                          (_%__kont144566144567%_))))
                  (_%__kont144566144567%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self137873%_ _%stx137874%_)
        (letrec ((_%simplify137876%_
                  (lambda (_%code137961%_)
                    (let* ((_%code137962137980%_ _%code137961%_)
                           (_%else137964137988%_ (lambda () _%code137961%_))
                           (_%K137966138024%_
                            (lambda (_%expr137991%_ _%test137992%_)
                              (let* ((_%expr137993138001%_ _%expr137991%_)
                                     (_%else137995138009%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test137992%_
                                                    (cons _%expr137991%_
                                                          '())))))
                                     (_%K137997138014%_
                                      (lambda (_%exprs138012%_)
                                        (cons 'and
                                              (cons _%test137992%_
                                                    _%exprs138012%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr137993138001%_))
                                    (let ((_%hd137998138017%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr137993138001%_)))
                                          (_%tl137999138019%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr137993138001%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd137998138017%_ 'and))
                                          (let ((_%exprs138022%_
                                                 _%tl137999138019%_))
                                            (declare (not safe))
                                            (_%K137997138014%_
                                             _%exprs138022%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else137995138009%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else137995138009%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code137962137980%_))
                          (let ((_%hd137967138027%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code137962137980%_)))
                                (_%tl137968138029%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code137962137980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd137967138027%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl137968138029%_))
                                    (let ((_%hd137969138032%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl137968138029%_)))
                                          (_%tl137970138034%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl137968138029%_))))
                                      (let ((_%test138037%_
                                             _%hd137969138032%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl137970138034%_))
                                            (let ((_%hd137971138039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl137970138034%_)))
                                                  (_%tl137972138041%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl137970138034%_))))
                                              (let ((_%expr138044%_
                                                     _%hd137971138039%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl137972138041%_))
                                                    (let ((_%hd137973138046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl137972138041%_)))
                                                          (_%tl137974138048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl137972138041%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd137973138046%_))
                                                          (let ((_%hd137975138051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd137973138046%_)))
                        (_%tl137976138053%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd137973138046%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd137975138051%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl137976138053%_))
                            (let ((_%hd137977138056%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl137976138053%_)))
                                  (_%tl137978138058%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl137976138053%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd137977138056%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl137978138058%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl137974138048%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K137966138024%_
                                             _%expr138044%_
                                             _%test138037%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else137964137988%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else137964137988%_)))
                                  (let ()
                                    (declare (not safe))
                                    (_%else137964137988%_))))
                            (let ()
                              (declare (not safe))
                              (_%else137964137988%_)))
                        (let () (declare (not safe)) (_%else137964137988%_))))
                  (let () (declare (not safe)) (_%else137964137988%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else137964137988%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%else137964137988%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else137964137988%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else137964137988%_))))
                          (let ()
                            (declare (not safe))
                            (_%else137964137988%_)))))))
          (let* ((_%g137878137899%_
                  (lambda (_%g137879137896%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137879137896%_))))
                 (_%g137877137958%_
                  (lambda (_%g137879137902%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137879137902%_))
                        (let ((_%e137885137904%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137879137902%_))))
                          (let ((_%hd137884137907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137885137904%_)))
                                (_%tl137883137909%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137885137904%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137883137909%_))
                                (let ((_%e137888137912%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137883137909%_))))
                                  (let ((_%hd137887137915%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137888137912%_)))
                                        (_%tl137886137917%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137888137912%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137886137917%_))
                                        (let ((_%e137891137920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137886137917%_))))
                                          (let ((_%hd137890137923%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137891137920%_)))
                                                (_%tl137889137925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137891137920%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl137889137925%_))
                                                (let ((_%e137894137928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl137889137925%_))))
                                                  (let ((_%hd137893137931%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e137894137928%_)))
                                                        (_%tl137892137933%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e137894137928%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137892137933%_))
                                                        ((lambda (_%L137936%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L137937%_
                          _%L137938%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (let ((__tmp145120
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self137873%_
                                             _%L137938%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self137873%_
                                                   _%L137937%_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self137873%_
                                                         _%L137936%_))
                                                      '()))))))
                         (declare (not safe))
                         (_%simplify137876%_ __tmp145120))
                       (cons 'if
                             (cons (let ((__tmp145121
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137873%_
                                               _%L137938%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145121
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137873%_
                                            _%L137937%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137873%_
                                                  _%L137936%_))
                                               '()))))))
                 _%hd137893137931%_
                 _%hd137890137923%_
                 _%hd137887137915%_)
                (let ()
                  (declare (not safe))
                  (_%g137878137899%_ _%g137879137902%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g137878137899%_
                                                   _%g137879137902%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g137878137899%_
                                           _%g137879137902%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g137878137899%_ _%g137879137902%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g137878137899%_ _%g137879137902%_))))))
            (declare (not safe))
            (_%g137877137958%_ _%stx137874%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137821%_ _%stx137822%_)
        (let* ((_%g137824137837%_
                (lambda (_%g137825137834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137825137834%_))))
               (_%g137823137870%_
                (lambda (_%g137825137840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137825137840%_))
                      (let ((_%e137829137842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137825137840%_))))
                        (let ((_%hd137828137845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137829137842%_)))
                              (_%tl137827137847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137829137842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137827137847%_))
                              (let ((_%e137832137850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137827137847%_))))
                                (let ((_%hd137831137853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137832137850%_)))
                                      (_%tl137830137855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137832137850%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137830137855%_))
                                      ((lambda (_%L137858%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137858%_)))
                                       _%hd137831137853%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g137824137837%_
                                         _%g137825137840%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137824137837%_ _%g137825137840%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137824137837%_ _%g137825137840%_))))))
          (declare (not safe))
          (_%g137823137870%_ _%stx137822%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137753%_ _%stx137754%_)
        (let* ((_%g137756137773%_
                (lambda (_%g137757137770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137757137770%_))))
               (_%g137755137818%_
                (lambda (_%g137757137776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137757137776%_))
                      (let ((_%e137762137778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137757137776%_))))
                        (let ((_%hd137761137781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137762137778%_)))
                              (_%tl137760137783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137762137778%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137760137783%_))
                              (let ((_%e137765137786%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137760137783%_))))
                                (let ((_%hd137764137789%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137765137786%_)))
                                      (_%tl137763137791%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137765137786%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137763137791%_))
                                      (let ((_%e137768137794%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137763137791%_))))
                                        (let ((_%hd137767137797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137768137794%_)))
                                              (_%tl137766137799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137768137794%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137766137799%_))
                                              ((lambda (_%L137802%_
                                                        _%L137803%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137803%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137753%_ _%L137802%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137767137797%_
                                               _%hd137764137789%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137756137773%_
                                                 _%g137757137776%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137756137773%_
                                         _%g137757137776%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137756137773%_ _%g137757137776%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137756137773%_ _%g137757137776%_))))))
          (declare (not safe))
          (_%g137755137818%_ _%stx137754%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137564%_ _%stx137565%_)
        (let* ((_%g137567137584%_
                (lambda (_%g137568137581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137568137581%_))))
               (_%g137566137750%_
                (lambda (_%g137568137587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137568137587%_))
                      (let ((_%e137573137589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137568137587%_))))
                        (let ((_%hd137572137592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137573137589%_)))
                              (_%tl137571137594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137573137589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137571137594%_))
                              (let ((_%e137576137597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137571137594%_))))
                                (let ((_%hd137575137600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137576137597%_)))
                                      (_%tl137574137602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137576137597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137574137602%_))
                                      (let ((_%e137579137605%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137574137602%_))))
                                        (let ((_%hd137578137608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137579137605%_)))
                                              (_%tl137577137610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137579137605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137577137610%_))
                                              ((lambda (_%L137613%_
                                                        _%L137614%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137564%_ _%L137613%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137564%_ _%L137614%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137629%_ ((_%rest137632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137614%_ (cons _%L137613%_ '())))
                                (_%bind137634%_ '())
                                (_%args137635%_ '()))
               (let* ((_%rest137636137644%_ _%rest137632%_)
                      (_%else137638137652%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137634%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137635%_)
                                                 '()))))))
                      (_%K137640137738%_
                       (lambda (_%rest137655%_ _%e137656%_)
                         (let* ((_%__stx144608144609%_ _%e137656%_)
                                (_%g137661137679%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144608144609%_)))))
                           (let ((_%__kont144610144611%_
                                  (lambda ()
                                    (let ((__tmp145122
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137656%_))
                                                 _%args137635%_)))
                                      (declare (not safe))
                                      (_%lp137629%_
                                       _%rest137655%_
                                       _%bind137634%_
                                       __tmp145122))))
                                 (_%__kont144612144613%_
                                  (lambda ()
                                    (let ((__tmp145123
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137656%_))
                                                 _%args137635%_)))
                                      (declare (not safe))
                                      (_%lp137629%_
                                       _%rest137655%_
                                       _%bind137634%_
                                       __tmp145123))))
                                 (_%__kont144614144615%_
                                  (lambda ()
                                    (let ((_%tmp137686%_
                                           (let ((__tmp145124
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145124))))
                                      (let ((__tmp145126
                                             (cons (cons _%tmp137686%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137656%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137634%_))
                                            (__tmp145125
                                             (cons _%tmp137686%_
                                                   _%args137635%_)))
                                        (declare (not safe))
                                        (_%lp137629%_
                                         _%rest137655%_
                                         __tmp145126
                                         __tmp145125))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144608144609%_))
                                 (let ((_%e137665137717%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144608144609%_))))
                                   (let ((_%tl137663137722%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137665137717%_)))
                                         (_%hd137664137720%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137665137717%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137664137720%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137664137720%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137663137722%_))
                                                 (let ((_%e137668137725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137663137722%_))))
                                                   (let ((_%tl137666137730%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137668137725%_)))
                                                         (_%hd137667137728%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137668137725%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137666137730%_))
                                                         (_%__kont144610144611%_)
                                                         (_%__kont144614144615%_))))
                                                 (_%__kont144614144615%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137664137720%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137663137722%_))
                                                     (let ((_%e137674137702%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137663137722%_))))
                                                       (let ((_%tl137672137707%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137674137702%_)))
                     (_%hd137673137705%_
                      (let () (declare (not safe)) (##car _%e137674137702%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137672137707%_))
                     (_%__kont144612144613%_)
                     (_%__kont144614144615%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144614144615%_))
                                                 (_%__kont144614144615%_)))
                                         (_%__kont144614144615%_))))
                                 (_%__kont144614144615%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137636137644%_))
                     (let ((_%hd137641137741%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137636137644%_)))
                           (_%tl137642137743%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137636137644%_))))
                       (let* ((_%e137746%_ _%hd137641137741%_)
                              (_%rest137748%_ _%tl137642137743%_))
                         (declare (not safe))
                         (_%K137640137738%_ _%rest137748%_ _%e137746%_)))
                     (let () (declare (not safe)) (_%else137638137652%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137578137608%_
                                               _%hd137575137600%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137567137584%_
                                                 _%g137568137587%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137567137584%_
                                         _%g137568137587%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137567137584%_ _%g137568137587%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137567137584%_ _%g137568137587%_))))))
          (declare (not safe))
          (_%g137566137750%_ _%stx137565%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137375%_ _%stx137376%_)
        (let* ((_%g137378137395%_
                (lambda (_%g137379137392%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137379137392%_))))
               (_%g137377137561%_
                (lambda (_%g137379137398%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137379137398%_))
                      (let ((_%e137384137400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137379137398%_))))
                        (let ((_%hd137383137403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137384137400%_)))
                              (_%tl137382137405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137384137400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137382137405%_))
                              (let ((_%e137387137408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137382137405%_))))
                                (let ((_%hd137386137411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137387137408%_)))
                                      (_%tl137385137413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137387137408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137385137413%_))
                                      (let ((_%e137390137416%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137385137413%_))))
                                        (let ((_%hd137389137419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137390137416%_)))
                                              (_%tl137388137421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137390137416%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137388137421%_))
                                              ((lambda (_%L137424%_
                                                        _%L137425%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137375%_ _%L137424%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137375%_ _%L137425%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137440%_ ((_%rest137443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137425%_ (cons _%L137424%_ '())))
                                (_%bind137445%_ '())
                                (_%args137446%_ '()))
               (let* ((_%rest137447137455%_ _%rest137443%_)
                      (_%else137449137463%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137445%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137446%_)
                                                 '()))))))
                      (_%K137451137549%_
                       (lambda (_%rest137466%_ _%e137467%_)
                         (let* ((_%__stx144654144655%_ _%e137467%_)
                                (_%g137472137490%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144654144655%_)))))
                           (let ((_%__kont144656144657%_
                                  (lambda ()
                                    (let ((__tmp145127
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137467%_))
                                                 _%args137446%_)))
                                      (declare (not safe))
                                      (_%lp137440%_
                                       _%rest137466%_
                                       _%bind137445%_
                                       __tmp145127))))
                                 (_%__kont144658144659%_
                                  (lambda ()
                                    (let ((__tmp145128
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _%e137467%_))
                                                 _%args137446%_)))
                                      (declare (not safe))
                                      (_%lp137440%_
                                       _%rest137466%_
                                       _%bind137445%_
                                       __tmp145128))))
                                 (_%__kont144660144661%_
                                  (lambda ()
                                    (let ((_%tmp137497%_
                                           (let ((__tmp145129
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145129))))
                                      (let ((__tmp145131
                                             (cons (cons _%tmp137497%_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _%e137467%_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%bind137445%_))
                                            (__tmp145130
                                             (cons _%tmp137497%_
                                                   _%args137446%_)))
                                        (declare (not safe))
                                        (_%lp137440%_
                                         _%rest137466%_
                                         __tmp145131
                                         __tmp145130))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144654144655%_))
                                 (let ((_%e137476137528%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144654144655%_))))
                                   (let ((_%tl137474137533%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137476137528%_)))
                                         (_%hd137475137531%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137476137528%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137475137531%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137475137531%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137474137533%_))
                                                 (let ((_%e137479137536%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137474137533%_))))
                                                   (let ((_%tl137477137541%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137479137536%_)))
                                                         (_%hd137478137539%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137479137536%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137477137541%_))
                                                         (_%__kont144656144657%_)
                                                         (_%__kont144660144661%_))))
                                                 (_%__kont144660144661%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137475137531%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137474137533%_))
                                                     (let ((_%e137485137513%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137474137533%_))))
                                                       (let ((_%tl137483137518%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137485137513%_)))
                     (_%hd137484137516%_
                      (let () (declare (not safe)) (##car _%e137485137513%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137483137518%_))
                     (_%__kont144658144659%_)
                     (_%__kont144660144661%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144660144661%_))
                                                 (_%__kont144660144661%_)))
                                         (_%__kont144660144661%_))))
                                 (_%__kont144660144661%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137447137455%_))
                     (let ((_%hd137452137552%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137447137455%_)))
                           (_%tl137453137554%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137447137455%_))))
                       (let* ((_%e137557%_ _%hd137452137552%_)
                              (_%rest137559%_ _%tl137453137554%_))
                         (declare (not safe))
                         (_%K137451137549%_ _%rest137559%_ _%e137557%_)))
                     (let () (declare (not safe)) (_%else137449137463%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137389137419%_
                                               _%hd137386137411%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g137378137395%_
                                                 _%g137379137398%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137378137395%_
                                         _%g137379137398%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137378137395%_ _%g137379137398%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137378137395%_ _%g137379137398%_))))))
          (declare (not safe))
          (_%g137377137561%_ _%stx137376%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137291%_ _%stx137292%_)
        (let* ((_%g137294137315%_
                (lambda (_%g137295137312%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137295137312%_))))
               (_%g137293137372%_
                (lambda (_%g137295137318%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137295137318%_))
                      (let ((_%e137301137320%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137295137318%_))))
                        (let ((_%hd137300137323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137301137320%_)))
                              (_%tl137299137325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137301137320%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137299137325%_))
                              (let ((_%e137304137328%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137299137325%_))))
                                (let ((_%hd137303137331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137304137328%_)))
                                      (_%tl137302137333%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137304137328%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137302137333%_))
                                      (let ((_%e137307137336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137302137333%_))))
                                        (let ((_%hd137306137339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137307137336%_)))
                                              (_%tl137305137341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137307137336%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137305137341%_))
                                              (let ((_%e137310137344%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137305137341%_))))
                                                (let ((_%hd137309137347%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137310137344%_)))
                                                      (_%tl137308137349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137310137344%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137308137349%_))
                                                      ((lambda (_%L137352%_
                                                                _%L137353%_
                                                                _%L137354%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137291%_ _%L137352%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137291%_
                                      _%L137353%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137291%_
                                            _%L137354%_))
                                         (cons ''#f '()))))))
               _%hd137309137347%_
               _%hd137306137339%_
               _%hd137303137331%_)
              (let ()
                (declare (not safe))
                (_%g137294137315%_ _%g137295137318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137294137315%_
                                                 _%g137295137318%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137294137315%_
                                         _%g137295137318%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137294137315%_ _%g137295137318%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137294137315%_ _%g137295137318%_))))))
          (declare (not safe))
          (_%g137293137372%_ _%stx137292%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137191%_ _%stx137192%_)
        (let* ((_%g137194137219%_
                (lambda (_%g137195137216%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137195137216%_))))
               (_%g137193137288%_
                (lambda (_%g137195137222%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137195137222%_))
                      (let ((_%e137202137224%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137195137222%_))))
                        (let ((_%hd137201137227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137202137224%_)))
                              (_%tl137200137229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137202137224%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137200137229%_))
                              (let ((_%e137205137232%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137200137229%_))))
                                (let ((_%hd137204137235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137205137232%_)))
                                      (_%tl137203137237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137205137232%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137203137237%_))
                                      (let ((_%e137208137240%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137203137237%_))))
                                        (let ((_%hd137207137243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137208137240%_)))
                                              (_%tl137206137245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137208137240%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137206137245%_))
                                              (let ((_%e137211137248%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137206137245%_))))
                                                (let ((_%hd137210137251%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137211137248%_)))
                                                      (_%tl137209137253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137211137248%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137209137253%_))
                                                      (let ((_%e137214137256%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137209137253%_))))
                (let ((_%hd137213137259%_
                       (let () (declare (not safe)) (##car _%e137214137256%_)))
                      (_%tl137212137261%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137214137256%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137212137261%_))
                      ((lambda (_%L137264%_
                                _%L137265%_
                                _%L137266%_
                                _%L137267%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137191%_
                                        _%L137265%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137191%_
                                              _%L137264%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137191%_
                                                    _%L137266%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137191%_
                                                          _%L137267%_))
                                                       (cons ''#f '())))))))
                       _%hd137213137259%_
                       _%hd137210137251%_
                       _%hd137207137243%_
                       _%hd137204137235%_)
                      (let ()
                        (declare (not safe))
                        (_%g137194137219%_ _%g137195137222%_)))))
              (let ()
                (declare (not safe))
                (_%g137194137219%_ _%g137195137222%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137194137219%_
                                                 _%g137195137222%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137194137219%_
                                         _%g137195137222%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137194137219%_ _%g137195137222%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137194137219%_ _%g137195137222%_))))))
          (declare (not safe))
          (_%g137193137288%_ _%stx137192%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137107%_ _%stx137108%_)
        (let* ((_%g137110137131%_
                (lambda (_%g137111137128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137111137128%_))))
               (_%g137109137188%_
                (lambda (_%g137111137134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137111137134%_))
                      (let ((_%e137117137136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137111137134%_))))
                        (let ((_%hd137116137139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137117137136%_)))
                              (_%tl137115137141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137117137136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137115137141%_))
                              (let ((_%e137120137144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137115137141%_))))
                                (let ((_%hd137119137147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137120137144%_)))
                                      (_%tl137118137149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137120137144%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137118137149%_))
                                      (let ((_%e137123137152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137118137149%_))))
                                        (let ((_%hd137122137155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137123137152%_)))
                                              (_%tl137121137157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137123137152%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137121137157%_))
                                              (let ((_%e137126137160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137121137157%_))))
                                                (let ((_%hd137125137163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137126137160%_)))
                                                      (_%tl137124137165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137126137160%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137124137165%_))
                                                      ((lambda (_%L137168%_
                                                                _%L137169%_
                                                                _%L137170%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137107%_ _%L137168%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137107%_
                                      _%L137169%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137107%_
                                            _%L137170%_))
                                         (cons ''#f '()))))))
               _%hd137125137163%_
               _%hd137122137155%_
               _%hd137119137147%_)
              (let ()
                (declare (not safe))
                (_%g137110137131%_ _%g137111137134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137110137131%_
                                                 _%g137111137134%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137110137131%_
                                         _%g137111137134%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137110137131%_ _%g137111137134%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137110137131%_ _%g137111137134%_))))))
          (declare (not safe))
          (_%g137109137188%_ _%stx137108%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self137007%_ _%stx137008%_)
        (let* ((_%g137010137035%_
                (lambda (_%g137011137032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137011137032%_))))
               (_%g137009137104%_
                (lambda (_%g137011137038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137011137038%_))
                      (let ((_%e137018137040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137011137038%_))))
                        (let ((_%hd137017137043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137018137040%_)))
                              (_%tl137016137045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137018137040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137016137045%_))
                              (let ((_%e137021137048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137016137045%_))))
                                (let ((_%hd137020137051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137021137048%_)))
                                      (_%tl137019137053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137021137048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137019137053%_))
                                      (let ((_%e137024137056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137019137053%_))))
                                        (let ((_%hd137023137059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137024137056%_)))
                                              (_%tl137022137061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137024137056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137022137061%_))
                                              (let ((_%e137027137064%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137022137061%_))))
                                                (let ((_%hd137026137067%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137027137064%_)))
                                                      (_%tl137025137069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137027137064%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137025137069%_))
                                                      (let ((_%e137030137072%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137025137069%_))))
                (let ((_%hd137029137075%_
                       (let () (declare (not safe)) (##car _%e137030137072%_)))
                      (_%tl137028137077%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137030137072%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137028137077%_))
                      ((lambda (_%L137080%_
                                _%L137081%_
                                _%L137082%_
                                _%L137083%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137007%_
                                        _%L137081%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137007%_
                                              _%L137080%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137007%_
                                                    _%L137082%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137007%_
                                                          _%L137083%_))
                                                       (cons ''#f '())))))))
                       _%hd137029137075%_
                       _%hd137026137067%_
                       _%hd137023137059%_
                       _%hd137020137051%_)
                      (let ()
                        (declare (not safe))
                        (_%g137010137035%_ _%g137011137038%_)))))
              (let ()
                (declare (not safe))
                (_%g137010137035%_ _%g137011137038%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g137010137035%_
                                                 _%g137011137038%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g137010137035%_
                                         _%g137011137038%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g137010137035%_ _%g137011137038%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g137010137035%_ _%g137011137038%_))))))
          (declare (not safe))
          (_%g137009137104%_ _%stx137008%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136802%_ _%stx136803%_)
        (let* ((_%g136805136826%_
                (lambda (_%g136806136823%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136806136823%_))))
               (_%g136804137004%_
                (lambda (_%g136806136829%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136806136829%_))
                      (let ((_%e136812136831%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136806136829%_))))
                        (let ((_%hd136811136834%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136812136831%_)))
                              (_%tl136810136836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136812136831%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136810136836%_))
                              (let ((_%e136815136839%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136810136836%_))))
                                (let ((_%hd136814136842%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136815136839%_)))
                                      (_%tl136813136844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136815136839%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136813136844%_))
                                      (let ((_%e136818136847%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136813136844%_))))
                                        (let ((_%hd136817136850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136818136847%_)))
                                              (_%tl136816136852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136818136847%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136816136852%_))
                                              (let ((_%e136821136855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136816136852%_))))
                                                (let ((_%hd136820136858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136821136855%_)))
                                                      (_%tl136819136860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136821136855%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136819136860%_))
                                                      ((lambda (_%L136863%_
                                                                _%L136864%_
                                                                _%L136865%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136802%_
                                    _%L136863%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136802%_
                                          _%L136864%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp136883%_ ((_%rest136886%_
                                         (cons _%L136864%_
                                               (cons _%L136863%_ '())))
                                        (_%bind136888%_ '())
                                        (_%args136889%_ '()))
                       (let* ((_%rest136890136898%_ _%rest136886%_)
                              (_%else136892136906%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind136888%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145132 _%args136889%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K136894136992%_
                               (lambda (_%rest136909%_ _%e136910%_)
                                 (let* ((_%__stx144700144701%_ _%e136910%_)
                                        (_%g136915136933%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144700144701%_)))))
                                   (let ((_%__kont144702144703%_
                                          (lambda ()
                                            (let ((__tmp145133
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e136910%_))
                                                         _%args136889%_)))
                                              (declare (not safe))
                                              (_%lp136883%_
                                               _%rest136909%_
                                               _%bind136888%_
                                               __tmp145133))))
                                         (_%__kont144704144705%_
                                          (lambda ()
                                            (let ((__tmp145134
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e136910%_))
                                                         _%args136889%_)))
                                              (declare (not safe))
                                              (_%lp136883%_
                                               _%rest136909%_
                                               _%bind136888%_
                                               __tmp145134))))
                                         (_%__kont144706144707%_
                                          (lambda ()
                                            (let ((_%tmp136940%_
                                                   (let ((__tmp145135
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145135))))
                                              (let ((__tmp145137
                                                     (cons (cons _%tmp136940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _%e136910%_))
                               '()))
                   _%bind136888%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp145136
                                                     (cons _%tmp136940%_
                                                           _%args136889%_)))
                                                (declare (not safe))
                                                (_%lp136883%_
                                                 _%rest136909%_
                                                 __tmp145137
                                                 __tmp145136))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144700144701%_))
                                         (let ((_%e136919136971%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144700144701%_))))
                                           (let ((_%tl136917136976%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e136919136971%_)))
                                                 (_%hd136918136974%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e136919136971%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd136918136974%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd136918136974%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl136917136976%_))
                                                         (let ((_%e136922136979%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl136917136976%_))))
                   (let ((_%tl136920136984%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e136922136979%_)))
                         (_%hd136921136982%_
                          (let ()
                            (declare (not safe))
                            (##car _%e136922136979%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl136920136984%_))
                         (_%__kont144702144703%_)
                         (_%__kont144706144707%_))))
                 (_%__kont144706144707%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd136918136974%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl136917136976%_))
                     (let ((_%e136928136956%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl136917136976%_))))
                       (let ((_%tl136926136961%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e136928136956%_)))
                             (_%hd136927136959%_
                              (let ()
                                (declare (not safe))
                                (##car _%e136928136956%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl136926136961%_))
                             (_%__kont144704144705%_)
                             (_%__kont144706144707%_))))
                     (_%__kont144706144707%_))
                 (_%__kont144706144707%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144706144707%_))))
                                         (_%__kont144706144707%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest136890136898%_))
                             (let ((_%hd136895136995%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest136890136898%_)))
                                   (_%tl136896136997%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest136890136898%_))))
                               (let* ((_%e137000%_ _%hd136895136995%_)
                                      (_%rest137002%_ _%tl136896136997%_))
                                 (declare (not safe))
                                 (_%K136894136992%_
                                  _%rest137002%_
                                  _%e137000%_)))
                             (let ()
                               (declare (not safe))
                               (_%else136892136906%_)))))))
               _%hd136820136858%_
               _%hd136817136850%_
               _%hd136814136842%_)
              (let ()
                (declare (not safe))
                (_%g136805136826%_ _%g136806136829%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136805136826%_
                                                 _%g136806136829%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136805136826%_
                                         _%g136806136829%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136805136826%_ _%g136806136829%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136805136826%_ _%g136806136829%_))))))
          (declare (not safe))
          (_%g136804137004%_ _%stx136803%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136581%_ _%stx136582%_)
        (let* ((_%g136584136609%_
                (lambda (_%g136585136606%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136585136606%_))))
               (_%g136583136799%_
                (lambda (_%g136585136612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136585136612%_))
                      (let ((_%e136592136614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136585136612%_))))
                        (let ((_%hd136591136617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136592136614%_)))
                              (_%tl136590136619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136592136614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136590136619%_))
                              (let ((_%e136595136622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136590136619%_))))
                                (let ((_%hd136594136625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136595136622%_)))
                                      (_%tl136593136627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136595136622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136593136627%_))
                                      (let ((_%e136598136630%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136593136627%_))))
                                        (let ((_%hd136597136633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136598136630%_)))
                                              (_%tl136596136635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136598136630%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136596136635%_))
                                              (let ((_%e136601136638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136596136635%_))))
                                                (let ((_%hd136600136641%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136601136638%_)))
                                                      (_%tl136599136643%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136601136638%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136599136643%_))
                                                      (let ((_%e136604136646%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136599136643%_))))
                (let ((_%hd136603136649%_
                       (let () (declare (not safe)) (##car _%e136604136646%_)))
                      (_%tl136602136651%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136604136646%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136602136651%_))
                      ((lambda (_%L136654%_
                                _%L136655%_
                                _%L136656%_
                                _%L136657%_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136581%_
                                            _%L136655%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136581%_
                                                  _%L136654%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136581%_
                                                        _%L136656%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136678%_ ((_%rest136681%_
                                                 (cons _%L136656%_
                                                       (cons _%L136654%_
                                                             (cons _%L136655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136683%_ '())
                                                (_%args136684%_ '()))
                               (let* ((_%rest136685136693%_ _%rest136681%_)
                                      (_%else136687136701%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136683%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145138 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145138 _%args136684%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136689136787%_
                                       (lambda (_%rest136704%_ _%e136705%_)
                                         (let* ((_%__stx144746144747%_
                                                 _%e136705%_)
                                                (_%g136710136728%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144746144747%_)))))
                                           (let ((_%__kont144748144749%_
                                                  (lambda ()
                                                    (let ((__tmp145139
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136705%_))
                         _%args136684%_)))
              (declare (not safe))
              (_%lp136678%_ _%rest136704%_ _%bind136683%_ __tmp145139))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144750144751%_
                                                  (lambda ()
                                                    (let ((__tmp145140
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136705%_))
                         _%args136684%_)))
              (declare (not safe))
              (_%lp136678%_ _%rest136704%_ _%bind136683%_ __tmp145140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144752144753%_
                                                  (lambda ()
                                                    (let ((_%tmp136735%_
                                                           (let ((__tmp145141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145141))))
              (let ((__tmp145143
                     (cons (cons _%tmp136735%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _%e136705%_))
                                       '()))
                           _%bind136683%_))
                    (__tmp145142 (cons _%tmp136735%_ _%args136684%_)))
                (declare (not safe))
                (_%lp136678%_ _%rest136704%_ __tmp145143 __tmp145142))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144746144747%_))
                                                 (let ((_%e136714136766%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144746144747%_))))
                                                   (let ((_%tl136712136771%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136714136766%_)))
                                                         (_%hd136713136769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136714136766%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136713136769%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136713136769%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136712136771%_))
                         (let ((_%e136717136774%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136712136771%_))))
                           (let ((_%tl136715136779%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136717136774%_)))
                                 (_%hd136716136777%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136717136774%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136715136779%_))
                                 (_%__kont144748144749%_)
                                 (_%__kont144752144753%_))))
                         (_%__kont144752144753%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136713136769%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136712136771%_))
                             (let ((_%e136723136751%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136712136771%_))))
                               (let ((_%tl136721136756%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136723136751%_)))
                                     (_%hd136722136754%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136723136751%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136721136756%_))
                                     (_%__kont144750144751%_)
                                     (_%__kont144752144753%_))))
                             (_%__kont144752144753%_))
                         (_%__kont144752144753%_)))
                 (_%__kont144752144753%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144752144753%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136685136693%_))
                                     (let ((_%hd136690136790%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136685136693%_)))
                                           (_%tl136691136792%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136685136693%_))))
                                       (let* ((_%e136795%_ _%hd136690136790%_)
                                              (_%rest136797%_
                                               _%tl136691136792%_))
                                         (declare (not safe))
                                         (_%K136689136787%_
                                          _%rest136797%_
                                          _%e136795%_)))
                                     (let ()
                                       (declare (not safe))
                                       (_%else136687136701%_)))))))
                       _%hd136603136649%_
                       _%hd136600136641%_
                       _%hd136597136633%_
                       _%hd136594136625%_)
                      (let ()
                        (declare (not safe))
                        (_%g136584136609%_ _%g136585136612%_)))))
              (let ()
                (declare (not safe))
                (_%g136584136609%_ _%g136585136612%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g136584136609%_
                                                 _%g136585136612%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136584136609%_
                                         _%g136585136612%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136584136609%_ _%g136585136612%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136584136609%_ _%g136585136612%_))))))
          (declare (not safe))
          (_%g136583136799%_ _%stx136582%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136420%_ _%stx136421%_)
        (letrec ((_%import-set-template136423%_
                  (lambda (_%in136526%_ _%phi136527%_)
                    (let ((_%iphi136529%_
                           (fx+ _%phi136527%_
                                (##direct-structure-ref
                                 _%in136526%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136530%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136526%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136532%_ ((_%rest136534%_ _%imports136530%_)
                                         (_%r136535%_ '()))
                        (let* ((_%rest136536136544%_ _%rest136534%_)
                               (_%else136538136552%_ (lambda () _%r136535%_))
                               (_%K136540136569%_
                                (lambda (_%rest136555%_ _%in136556%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136556%_
                                         'gx#module-context::t))
                                      (let ()
                                        (if (let ()
                                              (declare (not safe))
                                              (##fxzero? _%iphi136529%_))
                                            (let ((__tmp145144
                                                   (cons _%in136556%_
                                                         _%r136535%_)))
                                              (declare (not safe))
                                              (_%lp136532%_
                                               _%rest136555%_
                                               __tmp145144))
                                            (let ()
                                              (declare (not safe))
                                              (_%lp136532%_
                                               _%rest136555%_
                                               _%r136535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136556%_
                                             'gx#module-import::t))
                                          (let ()
                                            (let ((_%iphi136560%_
                                                   (fx+ _%phi136527%_
                                                        (##direct-structure-ref
                                                         _%in136556%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fxzero? _%iphi136560%_))
                                                  (let ((__tmp145145
                                                         (cons (##direct-structure-ref
                                                                (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136556%_
                         '1
                         gx#module-import::t
                         '#f)
                        '1
                        gx#module-export::t
                        '#f)
                       _%r136535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_%lp136532%_
                                                     _%rest136555%_
                                                     __tmp145145))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%lp136532%_
                                                     _%rest136555%_
                                                     _%r136535%_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136556%_
                                                 'gx#import-set::t))
                                              (let ()
                                                (let ((_%xphi136563%_
                                                       (fx+ _%iphi136529%_
                                                            (##direct-structure-ref
                                                             _%in136556%_
                                                             '2
                                                             gx#import-set::t
                                                             '#f))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##fxzero?
                                                         _%xphi136563%_))
                                                      (let ()
                                                        (let ((__tmp145146
                                                               (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%in136556%_
                              '1
                              gx#import-set::t
                              '#f)
                             _%r136535%_)))
                  (declare (not safe))
                  (_%lp136532%_ _%rest136555%_ __tmp145146)))
              (if (let () (declare (not safe)) (##fxpositive? _%xphi136563%_))
                  (let ()
                    (let ((__tmp145147
                           (let ((__tmp145148
                                  (let ()
                                    (declare (not safe))
                                    (_%import-set-template136423%_
                                     _%in136556%_
                                     _%iphi136529%_))))
                             (declare (not safe))
                             (__foldl1 cons _%r136535%_ __tmp145148))))
                      (declare (not safe))
                      (_%lp136532%_ _%rest136555%_ __tmp145147)))
                  (let ()
                    (let ()
                      (declare (not safe))
                      (_%lp136532%_ _%rest136555%_ _%r136535%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp136532%_
                                                   _%rest136555%_
                                                   _%r136535%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136536136544%_))
                              (let ((_%hd136541136572%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136536136544%_)))
                                    (_%tl136542136574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136536136544%_))))
                                (let* ((_%in136577%_ _%hd136541136572%_)
                                       (_%rest136579%_ _%tl136542136574%_))
                                  (declare (not safe))
                                  (_%K136540136569%_
                                   _%rest136579%_
                                   _%in136577%_)))
                              (let ()
                                (declare (not safe))
                                (_%else136538136552%_)))))))))
          (let* ((_%g136425136435%_
                  (lambda (_%g136426136432%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136426136432%_))))
                 (_%g136424136523%_
                  (lambda (_%g136426136438%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136426136438%_))
                        (let ((_%e136430136440%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136426136438%_))))
                          (let ((_%hd136429136443%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136430136440%_)))
                                (_%tl136428136445%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136430136440%_))))
                            ((lambda (_%L136448%_)
                               (let ((_%ht136459%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136461%_ ((_%rest136463%_
                                                     _%L136448%_)
                                                    (_%loads136464%_ '()))
                                   (letrec ((_%K136466%_
                                             (lambda (_%ctx136516%_
                                                      _%rest136517%_)
                                               (let ((_%id136519%_
                                                      (##structure-ref
                                                       _%ctx136516%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136459%_
                                                        _%id136519%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp136461%_
                                                        _%rest136517%_
                                                        _%loads136464%_))
                                                     (let ((_%rt136521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136519%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136459%_
                                                          _%id136519%_
                                                          _%rt136521%_))
                                                       (let ((__tmp145149
                                                              (cons _%rt136521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%loads136464%_)))
                 (declare (not safe))
                 (_%lp136461%_ _%rest136517%_ __tmp145149))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_%rest136467136475%_
                                             _%rest136463%_)
                                            (_%else136469136487%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145151
                                                            (lambda (_%g136482136484%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136482136484%_)))
                   (__tmp145150 (reverse _%loads136464%_)))
               (declare (not safe))
               (##map __tmp145151 __tmp145150)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136471136504%_
                                             (lambda (_%rest136490%_
                                                      _%in136491%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136491%_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%K136466%_
                                                        _%in136491%_
                                                        _%rest136490%_)))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136491%_
                                                          'gx#module-import::t))
                                                       (let ()
                                                         (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in136491%_
                               '3
                               gx#module-import::t
                               '#f))
                     (let ((__tmp145152
                            (##direct-structure-ref
                             (##direct-structure-ref
                              _%in136491%_
                              '1
                              gx#module-import::t
                              '#f)
                             '1
                             gx#module-export::t
                             '#f)))
                       (declare (not safe))
                       (_%K136466%_ __tmp145152 _%rest136490%_))
                     (let ()
                       (declare (not safe))
                       (_%lp136461%_ _%rest136490%_ _%loads136464%_))))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136491%_
                      'gx#import-set::t))
                   (let ()
                     (let ((_%phi136496%_
                            (##direct-structure-ref
                             _%in136491%_
                             '2
                             gx#import-set::t
                             '#f)))
                       (if (fxzero? _%phi136496%_)
                           (let ()
                             (let ((__tmp145153
                                    (##direct-structure-ref
                                     _%in136491%_
                                     '1
                                     gx#import-set::t
                                     '#f)))
                               (declare (not safe))
                               (_%K136466%_ __tmp145153 _%rest136490%_)))
                           (if (fxpositive? _%phi136496%_)
                               (let ()
                                 (let* ((_%deps136500%_
                                         (let ()
                                           (declare (not safe))
                                           (_%import-set-template136423%_
                                            _%in136491%_
                                            '0)))
                                        (__tmp145154
                                         (let ()
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            _%rest136490%_
                                            _%deps136500%_))))
                                   (declare (not safe))
                                   (_%lp136461%_ __tmp145154 _%loads136464%_)))
                               (let ()
                                 (let ()
                                   (declare (not safe))
                                   (_%lp136461%_
                                    _%rest136490%_
                                    _%loads136464%_)))))))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"Unexpected import"
                        _%stx136421%_
                        _%in136491%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136467136475%_))
                                           (let ((_%hd136472136507%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136467136475%_)))
                                                 (_%tl136473136509%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136467136475%_))))
                                             (let* ((_%in136512%_
                                                     _%hd136472136507%_)
                                                    (_%rest136514%_
                                                     _%tl136473136509%_))
                                               (declare (not safe))
                                               (_%K136471136504%_
                                                _%rest136514%_
                                                _%in136512%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%else136469136487%_))))))))
                             _%tl136428136445%_)))
                        (let ()
                          (declare (not safe))
                          (_%g136425136435%_ _%g136426136438%_))))))
            (declare (not safe))
            (_%g136424136523%_ _%stx136421%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136233%_ _%stx136234%_)
        (letrec ((_%add-lift!136236%_
                  (lambda (_%expr136418%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136418%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136237%_
                  (lambda (_%id136415%_ _%marks136416%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136415%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136416%_
                                                        '()))))))))
                 (_%generate-simple136238%_
                  (lambda (_%stxq136410%_)
                    (let ((_%gid136412%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136413%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq136410%_))))
                      (let ((__tmp145155
                             (cons 'define
                                   (cons _%gid136412%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136237%_
                                                  _%qid136413%_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136236%_ __tmp145155))
                      (let ((__tmp145156
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145156 _%stxq136410%_ _%gid136412%_))
                      _%gid136412%_)))
                 (_%generate-serialized136239%_
                  (lambda (_%stxq136400%_ _%marks136401%_)
                    (let* ((_%mark-refs136403%_
                            (map _%generate-mark136240%_ _%marks136401%_))
                           (_%gid136405%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136407%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq136400%_))))
                      (let ((__tmp145157
                             (cons 'define
                                   (cons _%gid136405%_
                                         (cons (let ((__tmp145158
                                                      (cons 'list
                                                            _%mark-refs136403%_)))
                                                 (declare (not safe))
                                                 (_%generate-syntax-quote136237%_
                                                  _%qid136407%_
                                                  __tmp145158))
                                               '())))))
                        (declare (not safe))
                        (_%add-lift!136236%_ __tmp145157))
                      (let ((__tmp145159
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145159 _%stxq136400%_ _%gid136405%_))
                      _%gid136405%_)))
                 (_%generate-mark136240%_
                  (lambda (_%mark136385%_)
                    (let ((_%$e136387%_
                           (let ((__tmp145160
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145160 _%mark136385%_))))
                      (if _%$e136387%_
                          (values _%$e136387%_)
                          (let ()
                            (let* ((_%gid136391%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-temporary__% '#t)))
                                   (_%repr136393%_
                                    (let ()
                                      (declare (not safe))
                                      (_%serialize-mark136241%_
                                       _%mark136385%_)))
                                   (_%ctx136395%_
                                    (let ((__tmp145161
                                           (##structure-ref
                                            _%mark136385%_
                                            '2
                                            gx#expander-mark::t
                                            '#f)))
                                      (declare (not safe))
                                      (gx#core-context-top__1 __tmp145161)))
                                   (_%ctx-ref136397%_
                                    (if (eq? _%ctx136395%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#current-expander-context)))
                                        '(gx#current-expander-context)
                                        (cons 'gx#import-module
                                              (cons (cons 'quote
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_%context-ref136242%_ _%ctx136395%_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                              (let ((__tmp145162
                                     (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-marks))))
                                (declare (not safe))
                                (hash-put!
                                 __tmp145162
                                 _%mark136385%_
                                 _%gid136391%_))
                              (let ((__tmp145163
                                     (cons 'define
                                           (cons _%gid136391%_
                                                 (cons (cons 'gx#core-deserialize-mark
                                                             (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%repr136393%_ '()))
                           (cons _%ctx-ref136397%_ '())))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (declare (not safe))
                                (_%add-lift!136236%_ __tmp145163))
                              _%gid136391%_))))))
                 (_%serialize-mark136241%_
                  (lambda (_%mark136332%_)
                    (letrec ((_%quote-e136334%_
                              (lambda (_%sym136383%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136383%_))
                                    _%sym136383%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136383%_))))))
                      (let* ((_%mark136335136344%_ _%mark136332%_)
                             (_%E136337136348%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136335136344%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136338136360%_
                              (lambda (_%trace136351%_
                                       _%phi136352%_
                                       _%ctx136353%_
                                       _%subst136354%_)
                                (let ((_%subs136356%_
                                       (if _%subst136354%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136354%_))
                                           '())))
                                  (cons _%phi136352%_
                                        (map (lambda (_%pair136358%_)
                                               (cons (let ((__tmp145164
                                                            (car _%pair136358%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136334%_
                                                        __tmp145164))
                                                     (let ((__tmp145165
                                                            (cdr _%pair136358%_)))
                                                       (declare (not safe))
                                                       (_%quote-e136334%_
                                                        __tmp145165))))
                                             _%subs136356%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136335136344%_
                               'gx#expander-mark::t))
                            (let* ((_%e136339136363%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136335136344%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136366%_ _%e136339136363%_)
                                   (_%e136340136368%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136335136344%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136371%_ _%e136340136368%_)
                                   (_%e136341136373%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136335136344%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136376%_ _%e136341136373%_)
                                   (_%e136342136378%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136335136344%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136381%_ _%e136342136378%_))
                              (declare (not safe))
                              (_%K136338136360%_
                               _%trace136381%_
                               _%phi136376%_
                               _%ctx136371%_
                               _%subst136366%_))
                            (let ()
                              (declare (not safe))
                              (_%E136337136348%_)))))))
                 (_%context-ref136242%_
                  (lambda (_%ctx136319%_)
                    (if (let ((__tmp145166
                               (##structure-ref
                                _%ctx136319%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145166
                           'gx#module-context::t))
                        (let ((_%ctx-ref136321%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-nested136244%_ _%ctx136319%_)))
                              (_%ctx-origin136322%_
                               (let ()
                                 (declare (not safe))
                                 (_%context-ref-origin136243%_ _%ctx136319%_)))
                              (_%origin136323%_
                               (let ((__tmp145167
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (_%context-ref-origin136243%_ __tmp145167))))
                          (if (eq? _%origin136323%_ _%ctx-origin136322%_)
                              (let ((_%ref136325%_
                                     (let ((__tmp145168
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-context))))
                                       (declare (not safe))
                                       (_%context-ref-nested136244%_
                                        __tmp145168))))
                                (let _%lp136327%_ ((_%ref136329%_
                                                    (cdr _%ref136325%_))
                                                   (_%ctx-ref136330%_
                                                    (cdr _%ctx-ref136321%_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _%ref136329%_))
                                           (eq? (car _%ref136329%_)
                                                (car _%ctx-ref136330%_)))
                                      (let ((__tmp145170 (cdr _%ref136329%_))
                                            (__tmp145169
                                             (cdr _%ctx-ref136330%_)))
                                        (declare (not safe))
                                        (_%lp136327%_ __tmp145170 __tmp145169))
                                      (cons '#f _%ctx-ref136330%_))))
                              _%ctx-ref136321%_))
                        (let ((__tmp145171
                               (##structure-ref
                                _%ctx136319%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145171)))))
                 (_%context-ref-origin136243%_
                  (lambda (_%ctx136311%_)
                    (let _%lp136313%_ ((_%ctx136315%_ _%ctx136311%_))
                      (let ((_%super136317%_
                             (##structure-ref
                              _%ctx136315%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136317%_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_%lp136313%_ _%super136317%_))
                            _%ctx136315%_)))))
                 (_%context-ref-nested136244%_
                  (lambda (_%ctx136302%_)
                    (let _%lp136304%_ ((_%ctx136306%_ _%ctx136302%_)
                                       (_%r136307%_ '()))
                      (let ((_%super136309%_
                             (##structure-ref
                              _%ctx136306%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136309%_
                               'gx#module-context::t))
                            (let ((__tmp145172
                                   (cons (car (##structure-ref
                                               _%ctx136306%_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _%r136307%_)))
                              (declare (not safe))
                              (_%lp136304%_ _%super136309%_ __tmp145172))
                            (cons (let ((__tmp145173
                                         (##structure-ref
                                          _%ctx136306%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145173))
                                  _%r136307%_)))))))
          (let* ((_%g136246136259%_
                  (lambda (_%g136247136256%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136247136256%_))))
                 (_%g136245136299%_
                  (lambda (_%g136247136262%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136247136262%_))
                        (let ((_%e136251136264%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136247136262%_))))
                          (let ((_%hd136250136267%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136251136264%_)))
                                (_%tl136249136269%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136251136264%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136249136269%_))
                                (let ((_%e136254136272%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136249136269%_))))
                                  (let ((_%hd136253136275%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136254136272%_)))
                                        (_%tl136252136277%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136254136272%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136252136277%_))
                                        ((lambda (_%L136280%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136280%_))
                                               (let ((_%$e136293%_
                                                      (let ((__tmp145174
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145174 _%L136280%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136293%_
                                                     (values _%$e136293%_)
                                                     (let ()
                                                       (let ((_%marks136297%_
                                                              (##direct-structure-ref
                                                               _%L136280%_
                                                               '4
                                                               gx#syntax-quote::t
                                                               '#f)))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (null? _%marks136297%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-simple136238%_ _%L136280%_))
                     (let ()
                       (declare (not safe))
                       (_%generate-serialized136239%_
                        _%L136280%_
                        _%marks136297%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136280%_))))
                                         _%hd136253136275%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g136246136259%_
                                           _%g136247136262%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g136246136259%_ _%g136247136262%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g136246136259%_ _%g136247136262%_))))))
            (declare (not safe))
            (_%g136245136299%_ _%stx136234%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136165%_ _%stx136166%_)
        (let* ((_%g136168136185%_
                (lambda (_%g136169136182%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136169136182%_))))
               (_%g136167136230%_
                (lambda (_%g136169136188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136169136188%_))
                      (let ((_%e136174136190%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136169136188%_))))
                        (let ((_%hd136173136193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136174136190%_)))
                              (_%tl136172136195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136174136190%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136172136195%_))
                              (let ((_%e136177136198%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136172136195%_))))
                                (let ((_%hd136176136201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136177136198%_)))
                                      (_%tl136175136203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136177136198%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136175136203%_))
                                      (let ((_%e136180136206%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136175136203%_))))
                                        (let ((_%hd136179136209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136180136206%_)))
                                              (_%tl136178136211%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136180136206%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136178136211%_))
                                              ((lambda (_%L136214%_
                                                        _%L136215%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136215%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136165%_ _%L136214%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136179136209%_
                                               _%hd136176136201%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g136168136185%_
                                                 _%g136169136188%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g136168136185%_
                                         _%g136169136188%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g136168136185%_ _%g136169136188%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g136168136185%_ _%g136169136188%_))))))
          (declare (not safe))
          (_%g136167136230%_ _%stx136166%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136114%_ _%stx136115%_)
        (let* ((_%g136117136127%_
                (lambda (_%g136118136124%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136118136124%_))))
               (_%g136116136162%_
                (lambda (_%g136118136130%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136118136130%_))
                      (let ((_%e136122136132%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136118136130%_))))
                        (let ((_%hd136121136135%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136122136132%_)))
                              (_%tl136120136137%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136122136132%_))))
                          ((lambda (_%L136140%_)
                             (let* ((_%c-body136154%_
                                     (map (lambda (_%g136149136151%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136114%_
                                               _%g136149136151%_)))
                                          _%L136140%_))
                                    (_%c-body136159%_
                                     (let ((__tmp145175
                                            (lambda (_%$obj136156%_)
                                              (let ((__tmp145176
                                                     (let ()
                                                       (declare (not safe))
                                                       (eq? _%$obj136156%_
                                                            '#!void))))
                                                (declare (not safe))
                                                (not __tmp145176)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145175
                                        _%c-body136154%_))))
                               (cons '%#begin _%c-body136159%_)))
                           _%tl136120136137%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136117136127%_ _%g136118136130%_))))))
          (declare (not safe))
          (_%g136116136162%_ _%stx136115%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self136019%_ _%stx136020%_)
        (let* ((_%g136022136032%_
                (lambda (_%g136023136029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136023136029%_))))
               (_%g136021136111%_
                (lambda (_%g136023136035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136023136035%_))
                      (let ((_%e136027136037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136023136035%_))))
                        (let ((_%hd136026136040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136027136037%_)))
                              (_%tl136025136042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136027136037%_))))
                          ((lambda (_%L136045%_)
                             (let* ((_%phi136055%_
                                     (let ((__tmp145177
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145177 '1)))
                                    (_%block136057%_
                                     (let ((__tmp145178
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _%self136019%_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp145178
                                        _%phi136055%_)))
                                    (_%compiled136060%_
                                     (let ((__tmp145179
                                            (lambda ()
                                              (let ((__tmp145181
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%L136045%_))
                                                    (__tmp145180
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self136019%_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp145181
                                                 'state:
                                                 __tmp145180)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145179
                                        gx#current-expander-phi
                                        _%phi136055%_))))
                               (let* ((_%g136063136073%_
                                       (lambda (_%g136064136070%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g136064136070%_))))
                                      (_%g136062136108%_
                                       (lambda (_%g136064136076%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%g136064136076%_))
                                             (let ((_%e136068136078%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%g136064136076%_))))
                                               (let ((_%hd136067136081%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e136068136078%_)))
                                                     (_%tl136066136083%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e136068136078%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd136067136081%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _%hd136067136081%_))
                                                         ((lambda (_%L136086%_)
                                                            (let ((_%c-body136103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_%$obj136100%_)
                                     (let ((__tmp145182
                                            (let ()
                                              (declare (not safe))
                                              (eq? _%$obj136100%_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp145182)))
                                   _%L136086%_)))
                      (if _%block136057%_
                          (let ()
                            (cons '%#begin-syntax
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons 'load-module
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons _%block136057%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%c-body136103%_)))
                          (if (let ()
                                (declare (not safe))
                                (null? _%c-body136103%_))
                              (let () '#!void)
                              (let ()
                                (cons '%#begin-syntax _%c-body136103%_))))))
                  _%tl136066136083%_)
                 (let ()
                   (declare (not safe))
                   (_%g136063136073%_ _%g136064136076%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g136063136073%_
                                                        _%g136064136076%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g136063136073%_
                                                _%g136064136076%_))))))
                                 (declare (not safe))
                                 (_%g136062136108%_ _%compiled136060%_))))
                           _%tl136025136042%_)))
                      (let ()
                        (declare (not safe))
                        (_%g136022136032%_ _%g136023136035%_))))))
          (declare (not safe))
          (_%g136021136111%_ _%stx136020%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self135950%_ _%stx135951%_)
        (let ((__tmp145183
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135950%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145183))
        (let* ((_%g135953135967%_
                (lambda (_%g135954135964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135954135964%_))))
               (_%g135952136016%_
                (lambda (_%g135954135970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135954135970%_))
                      (let ((_%e135959135972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135954135970%_))))
                        (let ((_%hd135958135975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135959135972%_)))
                              (_%tl135957135977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135959135972%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135957135977%_))
                              (let ((_%e135962135980%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135957135977%_))))
                                (let ((_%hd135961135983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135962135980%_)))
                                      (_%tl135960135985%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135962135980%_))))
                                  ((lambda (_%L135988%_ _%L135989%_)
                                     (let ((_%key136002%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L135989%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key136002%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx135951%_
                                              _%L135989%_
                                              _%key136002%_)))
                                       (let* ((_%ctx136004%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L135989%_)))
                                              (_%code136007%_
                                               (let ((__tmp145184
                                                      (lambda ()
                                                        (let ((__tmp145185
                                                               (##structure-ref
                                                                _%ctx136004%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self135950%_
                                                           __tmp145185)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145184
                                                  gx#current-expander-context
                                                  _%ctx136004%_)))
                                              (_%rt136009%_
                                               (let ((__tmp145186
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145186
                                                  _%ctx136004%_)))
                                              (_%loader136011%_
                                               (if _%rt136009%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt136009%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid136013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L135989%_))))
                                         (let ((__tmp145187
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self135950%_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp145187))
                                         (cons '%#module
                                               (cons _%modid136013%_
                                                     (cons _%code136007%_
                                                           _%loader136011%_))))))
                                   _%tl135960135985%_
                                   _%hd135961135983%_)))
                              (let ()
                                (declare (not safe))
                                (_%g135953135967%_ _%g135954135970%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135953135967%_ _%g135954135970%_))))))
          (declare (not safe))
          (_%g135952136016%_ _%stx135951%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx135937%_ _%context-chain135938%_)
        (let _%lp135940%_ ((_%ctx135942%_ _%ctx135937%_) (_%path135943%_ '()))
          (let ((_%super135945%_
                 (##structure-ref _%ctx135942%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super135945%_ _%context-chain135938%_)
                (let ()
                  (let ((__tmp145188
                         (let ((__tmp145189
                                (car (##structure-ref
                                      _%ctx135942%_
                                      '7
                                      gx#module-context::t
                                      '#f))))
                           (declare (not safe))
                           (cons __tmp145189 _%path135943%_))))
                    (declare (not safe))
                    (cons '#f __tmp145188)))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super135945%_
                       'gx#module-context::t))
                    (let ()
                      (let ((__tmp145190
                             (cons (car (##structure-ref
                                         _%ctx135942%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%path135943%_)))
                        (declare (not safe))
                        (_%lp135940%_ _%super135945%_ __tmp145190)))
                    (let ()
                      (cons (let ((__tmp145191
                                   (##structure-ref
                                    _%ctx135942%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (make-symbol__1 '":" __tmp145191))
                            _%path135943%_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp135930%_ ((_%ctx135932%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r135933%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx135932%_ 'gx#module-context::t))
              (let ()
                (let ((__tmp145193
                       (##structure-ref
                        _%ctx135932%_
                        '3
                        gx#phi-context::t
                        '#f))
                      (__tmp145192 (cons _%ctx135932%_ _%r135933%_)))
                  (declare (not safe))
                  (_%lp135930%_ __tmp145193 __tmp145192)))
              (let () _%r135933%_)))))
    (define gxc#generate-meta-import%
      (lambda (_%self135693%_ _%stx135694%_)
        (letrec* ((_%context-chain135696%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-spec135697%_
                   (lambda (_%in135866%_)
                     (let* ((_%in135867135879%_ _%in135866%_)
                            (_%E135869135883%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in135867135879%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K135870135893%_
                             (lambda (_%phi135886%_
                                      _%name135887%_
                                      _%src-name135888%_
                                      _%src-phi135889%_
                                      _%src-key135890%_
                                      _%src-ctx135891%_)
                               (cons _%phi135886%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name135887%_))
                                           (cons _%src-phi135889%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name135888%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in135867135879%_
                              'gx#module-import::t))
                           (let ((_%e135871135896%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in135867135879%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e135871135896%_
                                    'gx#module-export::t))
                                 (let* ((_%e135874135899%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135871135896%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx135902%_ _%e135874135899%_)
                                        (_%e135875135904%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135871135896%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key135907%_ _%e135875135904%_)
                                        (_%e135876135909%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135871135896%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi135912%_ _%e135876135909%_)
                                        (_%e135877135914%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135871135896%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name135917%_ _%e135877135914%_)
                                        (_%e135872135919%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135867135879%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name135922%_ _%e135872135919%_)
                                        (_%e135873135924%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135867135879%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi135927%_ _%e135873135924%_))
                                   (declare (not safe))
                                   (_%K135870135893%_
                                    _%phi135927%_
                                    _%name135922%_
                                    _%src-name135917%_
                                    _%src-phi135912%_
                                    _%src-key135907%_
                                    _%src-ctx135902%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%E135869135883%_))))
                           (let ()
                             (declare (not safe))
                             (_%E135869135883%_))))))
                  (_%make-import-path135698%_
                   (lambda (_%ctx135864%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135864%_
                        _%context-chain135696%_))))
                  (_%make-import-spec-in135699%_
                   (lambda (_%ctx135861%_ _%in135862%_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_%make-import-path135698%_ _%ctx135861%_))
                                 (reverse _%in135862%_))))))
          (let ((__tmp145194
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self135693%_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp145194))
          (let* ((_%g135701135711%_
                  (lambda (_%g135702135708%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135702135708%_))))
                 (_%g135700135858%_
                  (lambda (_%g135702135714%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135702135714%_))
                        (let ((_%e135706135716%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135702135714%_))))
                          (let ((_%hd135705135719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135706135716%_)))
                                (_%tl135704135721%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135706135716%_))))
                            ((lambda (_%L135724%_)
                               (let _%lp135735%_ ((_%rest135737%_ _%L135724%_)
                                                  (_%current-src135738%_ '#f)
                                                  (_%current-in135739%_ '())
                                                  (_%r135740%_ '()))
                                 (let* ((_%rest135741135749%_ _%rest135737%_)
                                        (_%else135743135759%_
                                         (lambda ()
                                           (let ((_%r135757%_
                                                  (if _%current-src135738%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_%make-import-spec-in135699%_
                                                               _%current-src135738%_
                                                               _%current-in135739%_))
                                                            _%r135740%_)
                                                      _%r135740%_)))
                                             (cons '%#import
                                                   (reverse _%r135757%_)))))
                                        (_%K135745135846%_
                                         (lambda (_%rest135762%_ _%in135763%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135763%_
                                                  'gx#module-import::t))
                                               (let ()
                                                 (let* ((_%in135765135772%_
                                                         _%in135763%_)
                                                        (_%E135767135776%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%in135765135772%_
                            '((module-import (module-export src-ctx)))))
                   '#!void))
                (_%K135768135784%_
                 (lambda (_%src-ctx135779%_)
                   (if (eq? _%current-src135738%_ _%src-ctx135779%_)
                       (let ()
                         (let ((__tmp145195
                                (cons (let ()
                                        (declare (not safe))
                                        (_%make-import-spec135697%_
                                         _%in135763%_))
                                      _%current-in135739%_)))
                           (declare (not safe))
                           (_%lp135735%_
                            _%rest135762%_
                            _%current-src135738%_
                            __tmp145195
                            _%r135740%_)))
                       (if _%current-src135738%_
                           (let ()
                             (let ((__tmp145197
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135697%_
                                             _%in135763%_))
                                          '()))
                                   (__tmp145196
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec-in135699%_
                                             _%current-src135738%_
                                             _%current-in135739%_))
                                          _%r135740%_)))
                               (declare (not safe))
                               (_%lp135735%_
                                _%rest135762%_
                                _%src-ctx135779%_
                                __tmp145197
                                __tmp145196)))
                           (let ()
                             (let ((__tmp145198
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%make-import-spec135697%_
                                             _%in135763%_))
                                          '())))
                               (declare (not safe))
                               (_%lp135735%_
                                _%rest135762%_
                                _%src-ctx135779%_
                                __tmp145198
                                _%r135740%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in135765135772%_
                                                          'gx#module-import::t))
                                                       (let ((_%e135769135787%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%in135765135772%_
                         '1
                         '#f
                         '#f))))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%e135769135787%_
                        'gx#module-export::t))
                     (let* ((_%e135770135790%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%e135769135787%_
                                '1
                                '#f
                                '#f)))
                            (_%src-ctx135793%_ _%e135770135790%_))
                       (declare (not safe))
                       (_%K135768135784%_ _%src-ctx135793%_))
                     (let () (declare (not safe)) (_%E135767135776%_))))
               (let () (declare (not safe)) (_%E135767135776%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135763%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (let* ((_%phi135796%_
                                                             (##direct-structure-ref
                                                              _%in135763%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src135798%_
                                                             (##direct-structure-ref
                                                              _%in135763%_
                                                              '1
                                                              gx#import-set::t
                                                              '#f))
                                                            (_%src-in135838%_
                                                             (let* ((_%g135799135808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (_%make-import-path135698%_ _%src135798%_)))
                            (_%E135802135812%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g135799135808%_
                                        '([path])
                                        '(path)))
                               '#!void)))
                       (let ((_%K135804135828%_
                              (lambda (_%path135826%_) _%path135826%_))
                             (_%K135803135818%_
                              (lambda (_%path135816%_)
                                (cons 'in: _%path135816%_))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%g135799135808%_))
                             (let ((_%tl135806135833%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g135799135808%_)))
                                   (_%hd135805135831%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g135799135808%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl135806135833%_))
                                   (let ((_%path135836%_ _%hd135805135831%_))
                                     (declare (not safe))
                                     (_%K135804135828%_ _%path135836%_))
                                   (let ((_%path135821%_ _%g135799135808%_))
                                     (declare (not safe))
                                     (_%K135803135818%_ _%path135821%_))))
                             (let ((_%path135821%_ _%g135799135808%_))
                               (declare (not safe))
                               (_%K135803135818%_ _%path135821%_))))))
                    (_%r135840%_
                     (if _%current-src135738%_
                         (cons (let ()
                                 (declare (not safe))
                                 (_%make-import-spec-in135699%_
                                  _%current-src135738%_
                                  _%current-in135739%_))
                               _%r135740%_)
                         _%r135740%_)))
               (let ((__tmp145199
                      (cons (if (fxzero? _%phi135796%_)
                                _%src-in135838%_
                                (cons 'phi:
                                      (cons _%phi135796%_
                                            (cons _%src-in135838%_ '()))))
                            _%r135840%_)))
                 (declare (not safe))
                 (_%lp135735%_ _%rest135762%_ '#f '() __tmp145199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135763%_
                                                          'gx#module-context::t))
                                                       (let ()
                                                         (let* ((_%r135844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if _%current-src135738%_
                             (cons (let ()
                                     (declare (not safe))
                                     (_%make-import-spec-in135699%_
                                      _%current-src135738%_
                                      _%current-in135739%_))
                                   _%r135740%_)
                             _%r135740%_))
                        (__tmp145200
                         (cons (cons 'runtime:
                                     (let ()
                                       (declare (not safe))
                                       (_%make-import-path135698%_
                                        _%in135763%_)))
                               _%r135844%_)))
                   (declare (not safe))
                   (_%lp135735%_ _%rest135762%_ '#f '() __tmp145200)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135741135749%_))
                                       (let ((_%hd135746135849%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135741135749%_)))
                                             (_%tl135747135851%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135741135749%_))))
                                         (let* ((_%in135854%_
                                                 _%hd135746135849%_)
                                                (_%rest135856%_
                                                 _%tl135747135851%_))
                                           (declare (not safe))
                                           (_%K135745135846%_
                                            _%rest135856%_
                                            _%in135854%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135743135759%_))))))
                             _%tl135704135721%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135701135711%_ _%g135702135714%_))))))
            (declare (not safe))
            (_%g135700135858%_ _%stx135694%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135503%_ _%stx135504%_)
        (letrec* ((_%context-chain135506%_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_%make-import-path135507%_
                   (lambda (_%ctx135691%_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _%ctx135691%_
                        _%context-chain135506%_)))))
          (let* ((_%g135509135519%_
                  (lambda (_%g135510135516%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135510135516%_))))
                 (_%g135508135688%_
                  (lambda (_%g135510135522%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135510135522%_))
                        (let ((_%e135514135524%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135510135522%_))))
                          (let ((_%hd135513135527%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135514135524%_)))
                                (_%tl135512135529%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135514135524%_))))
                            ((lambda (_%L135532%_)
                               (let _%lp135543%_ ((_%rest135545%_ _%L135532%_)
                                                  (_%r135546%_ '()))
                                 (let* ((_%rest135547135555%_ _%rest135545%_)
                                        (_%else135549135563%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135546%_))))
                                        (_%K135551135676%_
                                         (lambda (_%rest135566%_ _%out135567%_)
                                           (let* ((_%out135568135581%_
                                                   _%out135567%_)
                                                  (_%E135571135585%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135568135581%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135575135655%_
                                                    (lambda (_%name135651%_
                                                             _%phi135652%_
                                                             _%key135653%_)
                                                      (let ((__tmp145201
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%phi135652%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%key135653%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _%name135651%_))
                                                   '()))))
                           _%r135546%_)))
                (declare (not safe))
                (_%lp135543%_ _%rest135566%_ __tmp145201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135572135635%_
                                                    (lambda (_%phi135589%_
                                                             _%src135590%_)
                                                      (let* ((_%out135630%_
                                                              (if _%src135590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135591135600%_
                                              (let ()
                                                (declare (not safe))
                                                (_%make-import-path135507%_
                                                 _%src135590%_)))
                                             (_%E135594135604%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135591135600%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135596135620%_
                                               (lambda (_%path135618%_)
                                                 _%path135618%_))
                                              (_%K135595135610%_
                                               (lambda (_%path135608%_)
                                                 (cons 'in: _%path135608%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135591135600%_))
                                              (let ((_%tl135598135625%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135591135600%_)))
                                                    (_%hd135597135623%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135591135600%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135598135625%_))
                                                    (let ((_%path135628%_
                                                           _%hd135597135623%_))
                                                      (declare (not safe))
                                                      (_%K135596135620%_
                                                       _%path135628%_))
                                                    (let ((_%path135613%_
                                                           _%g135591135600%_))
                                                      (declare (not safe))
                                                      (_%K135595135610%_
                                                       _%path135613%_))))
                                              (let ((_%path135613%_
                                                     _%g135591135600%_))
                                                (declare (not safe))
                                                (_%K135595135610%_
                                                 _%path135613%_)))))
                                      '()))
                          '#t))
                     (_%out135632%_
                      (if (fxzero? _%phi135589%_)
                          _%out135630%_
                          (cons 'phi:
                                (cons _%phi135589%_
                                      (cons _%out135630%_ '()))))))
                (let ((__tmp145202 (cons _%out135632%_ _%r135546%_)))
                  (declare (not safe))
                  (_%lp135543%_ _%rest135566%_ __tmp145202))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135570135648%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135568135581%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135573135638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135568135581%_
                               '1
                               '#f
                               '#f)))
                           (_%e135574135643%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135568135581%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135641%_ _%e135573135638%_)
                            (_%phi135646%_ _%e135574135643%_))
                        (let ()
                          (declare (not safe))
                          (_%K135572135635%_ _%phi135646%_ _%src135641%_))))
                    (let () (declare (not safe)) (_%E135571135585%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135568135581%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135576135658%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135568135581%_
                        '1
                        '#f
                        '#f)))
                    (_%e135577135661%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135568135581%_
                        '2
                        '#f
                        '#f)))
                    (_%e135578135666%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135568135581%_
                        '3
                        '#f
                        '#f)))
                    (_%e135579135671%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135568135581%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135664%_ _%e135577135661%_)
                     (_%phi135669%_ _%e135578135666%_)
                     (_%name135674%_ _%e135579135671%_))
                 (let ()
                   (declare (not safe))
                   (_%K135575135655%_
                    _%name135674%_
                    _%phi135669%_
                    _%key135664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%try-match135570135648%_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135547135555%_))
                                       (let ((_%hd135552135679%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135547135555%_)))
                                             (_%tl135553135681%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135547135555%_))))
                                         (let* ((_%out135684%_
                                                 _%hd135552135679%_)
                                                (_%rest135686%_
                                                 _%tl135553135681%_))
                                           (declare (not safe))
                                           (_%K135551135676%_
                                            _%rest135686%_
                                            _%out135684%_)))
                                       (let ()
                                         (declare (not safe))
                                         (_%else135549135563%_))))))
                             _%tl135512135529%_)))
                        (let ()
                          (declare (not safe))
                          (_%g135509135519%_ _%g135510135522%_))))))
            (declare (not safe))
            (_%g135508135688%_ _%stx135504%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135464%_ _%stx135465%_)
        (let ((__tmp145203
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self135464%_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp145203))
        (let* ((_%g135467135477%_
                (lambda (_%g135468135474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135468135474%_))))
               (_%g135466135500%_
                (lambda (_%g135468135480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135468135480%_))
                      (let ((_%e135472135482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135468135480%_))))
                        (let ((_%hd135471135485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135472135482%_)))
                              (_%tl135470135487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135472135482%_))))
                          ((lambda (_%L135490%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135490%_)))
                           _%tl135470135487%_)))
                      (let ()
                        (declare (not safe))
                        (_%g135467135477%_ _%g135468135480%_))))))
          (declare (not safe))
          (_%g135466135500%_ _%stx135465%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135335%_ _%stx135336%_)
        (letrec ((_%generate1135338%_
                  (lambda (_%id135459%_ _%eid135460%_)
                    (let ((_%eid135462%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135460%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135462%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135336%_
                             _%eid135462%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id135459%_))
                            (cons _%eid135462%_ '()))))))
          (let* ((_%g135340135368%_
                  (lambda (_%g135341135365%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135341135365%_))))
                 (_%g135339135456%_
                  (lambda (_%g135341135371%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135341135371%_))
                        (let ((_%e135346135373%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135341135371%_))))
                          (let ((_%hd135345135376%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135346135373%_)))
                                (_%tl135344135378%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135346135373%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135344135378%_))
                                (let ((_g145204_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135344135378%_
                                          '0))))
                                  (begin
                                    (let ((_g145205_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145204_)
                                                 (##vector-length _g145204_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145205_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145205_)))
                                    (let ((_%target135347135381%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145204_ 0)))
                                          (_%tl135349135383%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145204_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135349135383%_))
                                          (letrec ((_%loop135350135386%_
                                                    (lambda (_%hd135348135389%_
                                                             _%eid135354135391%_
                                                             _%id135355135393%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135348135389%_))
                                                          (let ((_%e135351135396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135348135389%_))))
                    (let ((_%lp-hd135352135399%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135351135396%_)))
                          (_%lp-tl135353135401%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135351135396%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135352135399%_))
                          (let ((_%e135360135404%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135352135399%_))))
                            (let ((_%hd135359135407%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135360135404%_)))
                                  (_%tl135358135409%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135360135404%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135358135409%_))
                                  (let ((_%e135363135412%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135358135409%_))))
                                    (let ((_%hd135362135415%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135363135412%_)))
                                          (_%tl135361135417%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135363135412%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135361135417%_))
                                          (let ((__tmp145207
                                                 (cons _%hd135362135415%_
                                                       _%eid135354135391%_))
                                                (__tmp145206
                                                 (cons _%hd135359135407%_
                                                       _%id135355135393%_)))
                                            (declare (not safe))
                                            (_%loop135350135386%_
                                             _%lp-tl135353135401%_
                                             __tmp145207
                                             __tmp145206))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135340135368%_
                                             _%g135341135371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g135340135368%_ _%g135341135371%_)))))
                          (let ()
                            (declare (not safe))
                            (_%g135340135368%_ _%g135341135371%_)))))
                  (let ((_%eid135356135420%_ (reverse _%eid135354135391%_))
                        (_%id135357135422%_ (reverse _%id135355135393%_)))
                    ((lambda (_%L135425%_ _%L135426%_)
                       (cons '%#extern
                             (map _%generate1135338%_
                                  (let ((__tmp145208
                                         (lambda (_%g135441135444%_
                                                  _%g135442135446%_)
                                           (cons _%g135441135444%_
                                                 _%g135442135446%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145208 '() _%L135426%_))
                                  (let ((__tmp145209
                                         (lambda (_%g135448135451%_
                                                  _%g135449135453%_)
                                           (cons _%g135448135451%_
                                                 _%g135449135453%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145209 '() _%L135425%_)))))
                     _%eid135356135420%_
                     _%id135357135422%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_%loop135350135386%_
                                               _%target135347135381%_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_%g135340135368%_
                                             _%g135341135371%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135340135368%_ _%g135341135371%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135340135368%_ _%g135341135371%_))))))
            (declare (not safe))
            (_%g135339135456%_ _%stx135336%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135125%_ _%stx135126%_)
        (letrec ((_%generate1135128%_
                  (lambda (_%id135330%_)
                    (let ((_%eid135332%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135330%_)))
                          (_%ident135333%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id135330%_))))
                      (cons '%#define-runtime
                            (cons _%ident135333%_ (cons _%eid135332%_ '()))))))
                 (_%generate*135129%_
                  (lambda (_%all135298%_)
                    (let* ((_%all135299135307%_ _%all135298%_)
                           (_%else135301135315%_
                            (lambda () (cons '%#begin _%all135298%_)))
                           (_%K135303135320%_
                            (lambda (_%one135318%_) _%one135318%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135299135307%_))
                          (let ((_%hd135304135323%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135299135307%_)))
                                (_%tl135305135325%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135299135307%_))))
                            (let ((_%one135328%_ _%hd135304135323%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135305135325%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K135303135320%_ _%one135328%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else135301135315%_)))))
                          (let ()
                            (declare (not safe))
                            (_%else135301135315%_)))))))
          (let* ((_%g135131135148%_
                  (lambda (_%g135132135145%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135132135145%_))))
                 (_%g135130135295%_
                  (lambda (_%g135132135151%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135132135151%_))
                        (let ((_%e135137135153%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135132135151%_))))
                          (let ((_%hd135136135156%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135137135153%_)))
                                (_%tl135135135158%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135137135153%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135135135158%_))
                                (let ((_%e135140135161%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135135135158%_))))
                                  (let ((_%hd135139135164%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135140135161%_)))
                                        (_%tl135138135166%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135140135161%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135138135166%_))
                                        (let ((_%e135143135169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135138135166%_))))
                                          (let ((_%hd135142135172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135143135169%_)))
                                                (_%tl135141135174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135143135169%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135141135174%_))
                                                ((lambda (_%L135177%_
                                                          _%L135178%_)
                                                   (let _%lp135194%_ ((_%rest135196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135178%_)
                              (_%r135197%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144825144826%_
                                                             _%rest135196%_)
                                                            (_%g135202135219%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144825144826%_)))))
               (let ((_%__kont144827144828%_
                      (lambda (_%L135282%_)
                        (let ()
                          (declare (not safe))
                          (_%lp135194%_ _%L135282%_ _%r135197%_))))
                     (_%__kont144829144830%_
                      (lambda (_%L135255%_ _%L135256%_)
                        (let ((__tmp145210
                               (cons (let ()
                                       (declare (not safe))
                                       (_%generate1135128%_ _%L135256%_))
                                     _%r135197%_)))
                          (declare (not safe))
                          (_%lp135194%_ _%L135255%_ __tmp145210))))
                     (_%__kont144831144832%_
                      (lambda (_%L135231%_)
                        (let ((__tmp145211
                               (let ((__tmp145212
                                      (cons (let ()
                                              (declare (not safe))
                                              (_%generate1135128%_
                                               _%L135231%_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp145212 _%r135197%_))))
                          (declare (not safe))
                          (_%generate*135129%_ __tmp145211))))
                     (_%__kont144833144834%_
                      (lambda ()
                        (let ((__tmp145213 (reverse _%r135197%_)))
                          (declare (not safe))
                          (_%generate*135129%_ __tmp145213)))))
                 (let ((_%g135200135242%_
                        (lambda ()
                          (let ((_%L135231%_ _%__stx144825144826%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135231%_))
                                (_%__kont144831144832%_ _%L135231%_)
                                (_%__kont144833144834%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144825144826%_))
                       (let ((_%e135207135271%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144825144826%_))))
                         (let ((_%tl135205135276%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135207135271%_)))
                               (_%hd135206135274%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135207135271%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135206135274%_))
                               (let ((_%e135208135279%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135206135274%_))))
                                 (if (equal? _%e135208135279%_ '#f)
                                     (_%__kont144827144828%_
                                      _%tl135205135276%_)
                                     (_%__kont144829144830%_
                                      _%tl135205135276%_
                                      _%hd135206135274%_)))
                               (_%__kont144829144830%_
                                _%tl135205135276%_
                                _%hd135206135274%_))))
                       (let () (declare (not safe)) (_%g135200135242%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135142135172%_
                                                 _%hd135139135164%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g135131135148%_
                                                   _%g135132135151%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g135131135148%_
                                           _%g135132135151%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g135131135148%_ _%g135132135151%_)))))
                        (let ()
                          (declare (not safe))
                          (_%g135131135148%_ _%g135132135151%_))))))
            (declare (not safe))
            (_%g135130135295%_ _%stx135126%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self135022%_ _%stx135023%_)
        (let* ((_%g135025135042%_
                (lambda (_%g135026135039%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135026135039%_))))
               (_%g135024135122%_
                (lambda (_%g135026135045%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135026135045%_))
                      (let ((_%e135031135047%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135026135045%_))))
                        (let ((_%hd135030135050%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135031135047%_)))
                              (_%tl135029135052%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135031135047%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135029135052%_))
                              (let ((_%e135034135055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135029135052%_))))
                                (let ((_%hd135033135058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135034135055%_)))
                                      (_%tl135032135060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135034135055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135032135060%_))
                                      (let ((_%e135037135063%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135032135060%_))))
                                        (let ((_%hd135036135066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135037135063%_)))
                                              (_%tl135035135068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135037135063%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135035135068%_))
                                              ((lambda (_%L135071%_
                                                        _%L135072%_)
                                                 (let* ((_%eid135087%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135072%_)))
                                                        (_%phi135089%_
                                                         (let ((__tmp145214
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145214 '1)))
                (_%block135091%_
                 (let ((__tmp145215
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _%self135022%_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp145215 _%phi135089%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135094135101%_
                                                           (lambda (_%g135095135098%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135095135098%_))))
                  (_%g135093135119%_
                   (lambda (_%g135095135104%_)
                     ((lambda (_%L135106%_)
                        (let ()
                          (let ((__tmp145217
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _%self135022%_ 'state)))
                                (__tmp145216
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime))
                                       (cons _%L135106%_
                                             (cons _%L135071%_ '())))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp145217
                             _%phi135089%_
                             __tmp145216))))
                      _%g135095135104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%g135093135119%_
                                                      _%eid135087%_))
                                                   (if _%block135091%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%L135072%_))
                                             (cons _%eid135087%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135072%_))
                           (cons _%eid135087%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135036135066%_
                                               _%hd135033135058%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g135025135042%_
                                                 _%g135026135045%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g135025135042%_
                                         _%g135026135045%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g135025135042%_ _%g135026135045%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g135025135042%_ _%g135026135045%_))))))
          (declare (not safe))
          (_%g135024135122%_ _%stx135023%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self134954%_ _%stx134955%_)
        (let* ((_%g134957134974%_
                (lambda (_%g134958134971%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134958134971%_))))
               (_%g134956135019%_
                (lambda (_%g134958134977%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134958134977%_))
                      (let ((_%e134963134979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134958134977%_))))
                        (let ((_%hd134962134982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134963134979%_)))
                              (_%tl134961134984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134963134979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134961134984%_))
                              (let ((_%e134966134987%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134961134984%_))))
                                (let ((_%hd134965134990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134966134987%_)))
                                      (_%tl134964134992%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134966134987%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134964134992%_))
                                      (let ((_%e134969134995%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134964134992%_))))
                                        (let ((_%hd134968134998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134969134995%_)))
                                              (_%tl134967135000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134969134995%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134967135000%_))
                                              ((lambda (_%L135003%_
                                                        _%L135004%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%L135004%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%L135003%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134968134998%_
                                               _%hd134965134990%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134957134974%_
                                                 _%g134958134977%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134957134974%_
                                         _%g134958134977%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134957134974%_ _%g134958134977%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134957134974%_ _%g134958134977%_))))))
          (declare (not safe))
          (_%g134956135019%_ _%stx134955%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self134951%_ _%stx134952%_)
        (let ((__tmp145219
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self134951%_ 'state)))
              (__tmp145218
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145219 __tmp145218 _%stx134952%_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _%self134951%_ _%stx134952%_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self134948%_ _%stx134949%_)
        (let ((__tmp145221
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _%self134948%_ 'state)))
              (__tmp145220
               (let () (declare (not safe)) (gx#current-expander-phi))))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp145221 __tmp145220 _%stx134949%_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145223 (list)) (__tmp145222 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145223
         '(src n open blocks)
         __tmp145222
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args134945%_
        (apply make-instance gxc#meta-state::t _%$args134945%_)))
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
      (lambda (_%self134931%_ _%ctx134932%_)
        (let ()
          (let ((_%self134935%_ _%self134931%_))
            (let ()
              (if (let ((__tmp145224
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self134935%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp145224))
                  (begin
                    (let ((__tmp145225
                           (let ((__tmp145226
                                  (##structure-ref
                                   _%ctx134932%_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#module-id->path-string __tmp145226))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self134935%_
                       __tmp145225
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self134935%_
                       '1
                       '2
                       '#f
                       '#f))
                    (let ((__tmp145227
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self134935%_
                       __tmp145227
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self134935%_
                       '()
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp145228
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self134935%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self134935%_
                           '4
                           __tmp145228))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145230 (list)) (__tmp145229 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145230
         '(ctx phi n code)
         __tmp145229
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134806%_
        (apply make-instance gxc#meta-state-block::t _%$args134806%_)))
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
      (lambda (_%state134765%_ _%phi134766%_)
        (let* ((_%state134767134775%_ _%state134765%_)
               (_%E134769134779%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134767134775%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134770134788%_
                (lambda (_%open134782%_ _%n134783%_ _%src134784%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134782%_ _%phi134766%_))
                      '#f
                      (let ((_%block-ref134786%_
                             (let ((__tmp145231 (number->string _%n134783%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134784%_
                                '"~"
                                __tmp145231))))
                        (##structure-set!
                         _%state134765%_
                         (let () (declare (not safe)) (##fx+ _%n134783%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145232
                               (let ((__tmp145233
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145233
                                  _%phi134766%_
                                  _%n134783%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134782%_ _%phi134766%_ __tmp145232))
                        _%block-ref134786%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134767134775%_
                 'gxc#meta-state::t))
              (let* ((_%e134771134791%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134767134775%_
                         '1
                         '#f
                         '#f)))
                     (_%src134794%_ _%e134771134791%_)
                     (_%e134772134796%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134767134775%_
                         '2
                         '#f
                         '#f)))
                     (_%n134799%_ _%e134772134796%_)
                     (_%e134773134801%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134767134775%_
                         '3
                         '#f
                         '#f)))
                     (_%open134804%_ _%e134773134801%_))
                (declare (not safe))
                (_%K134770134788%_ _%open134804%_ _%n134799%_ _%src134794%_))
              (let () (declare (not safe)) (_%E134769134779%_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134759%_ _%phi134760%_ _%stx134761%_)
        (let ((_%block134763%_
               (let ((__tmp145234
                      (##structure-ref
                       _%state134759%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145234 _%phi134760%_))))
          (##structure-set!
           _%block134763%_
           (cons _%stx134761%_
                 (##structure-ref
                  _%block134763%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134753%_)
        (##structure-set!
         _%state134753%_
         (let ((__tmp145237
                (lambda (_%_134755%_ _%block134756%_ _%r134757%_)
                  (cons _%block134756%_ _%r134757%_)))
               (__tmp145236
                (##structure-ref _%state134753%_ '4 gxc#meta-state::t '#f))
               (__tmp145235
                (##structure-ref _%state134753%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145237 __tmp145236 __tmp145235))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134753%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134705%_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _%state134705%_))
        (let ((__tmp145239
               (lambda (_%block134707%_ _%r134708%_)
                 (let* ((_%block134709134718%_ _%block134707%_)
                        (_%E134711134722%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134709134718%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134712134730%_
                         (lambda (_%code134725%_
                                  _%n134726%_
                                  _%phi134727%_
                                  _%ctx134728%_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _%code134725%_))
                               _%r134708%_
                               (cons (cons _%ctx134728%_
                                           (cons _%phi134727%_
                                                 (cons _%n134726%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134725%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134708%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134709134718%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134713134733%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134709134718%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134736%_ _%e134713134733%_)
                              (_%e134714134738%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134709134718%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134741%_ _%e134714134738%_)
                              (_%e134715134743%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134709134718%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134746%_ _%e134715134743%_)
                              (_%e134716134748%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134709134718%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134751%_ _%e134716134748%_))
                         (declare (not safe))
                         (_%K134712134730%_
                          _%code134751%_
                          _%n134746%_
                          _%phi134741%_
                          _%ctx134736%_))
                       (let () (declare (not safe)) (_%E134711134722%_))))))
              (__tmp145238
               (##structure-ref _%state134705%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145239 '() __tmp145238))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134701%_)
        (let ((_%ht134703%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs
             _%stx134701%_
             'table:
             _%ht134703%_))
          _%ht134703%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134644%_ _%stx134645%_)
        (let* ((_%g134647134660%_
                (lambda (_%g134648134657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134648134657%_))))
               (_%g134646134698%_
                (lambda (_%g134648134663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134648134663%_))
                      (let ((_%e134652134665%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134648134663%_))))
                        (let ((_%hd134651134668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134652134665%_)))
                              (_%tl134650134670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134652134665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134650134670%_))
                              (let ((_%e134655134673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134650134670%_))))
                                (let ((_%hd134654134676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134655134673%_)))
                                      (_%tl134653134678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134655134673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134653134678%_))
                                      ((lambda (_%L134681%_)
                                         (let* ((_%bind134693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134681%_)))
                                                (_%eid134695%_
                                                 (if _%bind134693%_
                                                     (##structure-ref
                                                      _%bind134693%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134681%_)))))
                                           (let ((__tmp145240
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _%self134644%_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp145240
                                              _%eid134695%_
                                              _%eid134695%_))))
                                       _%hd134654134676%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g134647134660%_
                                         _%g134648134663%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134647134660%_ _%g134648134663%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134647134660%_ _%g134648134663%_))))))
          (declare (not safe))
          (_%g134646134698%_ _%stx134645%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134571%_ _%stx134572%_)
        (let* ((_%g134574134591%_
                (lambda (_%g134575134588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134575134588%_))))
               (_%g134573134641%_
                (lambda (_%g134575134594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134575134594%_))
                      (let ((_%e134580134596%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134575134594%_))))
                        (let ((_%hd134579134599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134580134596%_)))
                              (_%tl134578134601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134580134596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134578134601%_))
                              (let ((_%e134583134604%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134578134601%_))))
                                (let ((_%hd134582134607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134583134604%_)))
                                      (_%tl134581134609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134583134604%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134581134609%_))
                                      (let ((_%e134586134612%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134581134609%_))))
                                        (let ((_%hd134585134615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134586134612%_)))
                                              (_%tl134584134617%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134586134612%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134584134617%_))
                                              ((lambda (_%L134620%_
                                                        _%L134621%_)
                                                 (let* ((_%bind134636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134621%_)))
                                                        (_%eid134638%_
                                                         (if _%bind134636%_
                                                             (##structure-ref
                                                              _%bind134636%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134621%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145241
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134571%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145241
                                                      _%eid134638%_
                                                      _%eid134638%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134571%_
                                                      _%L134620%_))))
                                               _%hd134585134615%_
                                               _%hd134582134607%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g134574134591%_
                                                 _%g134575134594%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134574134591%_
                                         _%g134575134594%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134574134591%_ _%g134575134594%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134574134591%_ _%g134575134594%_))))))
          (declare (not safe))
          (_%g134573134641%_ _%stx134572%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134528%_ _%stx134529%_)
        (let* ((_%g134531134541%_
                (lambda (_%g134532134538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134532134538%_))))
               (_%g134530134568%_
                (lambda (_%g134532134544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134532134544%_))
                      (let ((_%e134536134546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134532134544%_))))
                        (let ((_%hd134535134549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134536134546%_)))
                              (_%tl134534134551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134536134546%_))))
                          ((lambda (_%L134554%_)
                             (let ((__tmp145242
                                    (lambda (_%g134563134565%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134528%_
                                         _%g134563134565%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145242 _%L134554%_)))
                           _%tl134534134551%_)))
                      (let ()
                        (declare (not safe))
                        (_%g134531134541%_ _%g134532134544%_))))))
          (declare (not safe))
          (_%g134530134568%_ _%stx134529%_))))
    (define gxc#count-values-single%
      (lambda (_%self134525%_ _%stx134526%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134391%_ _%stx134392%_)
        (let* ((_%__stx144855144856%_ _%stx134392%_)
               (_%g134395134424%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144855144856%_)))))
          (let ((_%__kont144857144858%_
                 (lambda (_%L134492%_ _%L134493%_)
                   (length (let ((__tmp145243
                                  (lambda (_%g134514134517%_ _%g134515134519%_)
                                    (cons _%g134514134517%_
                                          _%g134515134519%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145243 '() _%L134492%_)))))
                (_%__kont144861144862%_ (lambda () '#f)))
            (let ((_%__match144900144901%_
                   (lambda (_%e134401134436%_
                            _%hd134400134439%_
                            _%tl134399134441%_
                            _%e134404134444%_
                            _%hd134403134447%_
                            _%tl134402134449%_
                            _%e134407134452%_
                            _%hd134406134455%_
                            _%tl134405134457%_
                            _%e134410134460%_
                            _%hd134409134463%_
                            _%tl134408134465%_
                            _%__splice144859144860%_
                            _%target134411134468%_
                            _%tl134413134470%_)
                     (letrec ((_%loop134414134473%_
                               (lambda (_%hd134412134476%_
                                        _%rand134418134478%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134412134476%_))
                                     (let ((_%e134415134481%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134412134476%_))))
                                       (let ((_%lp-tl134417134486%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134415134481%_)))
                                             (_%lp-hd134416134484%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134415134481%_))))
                                         (let ((__tmp145244
                                                (cons _%lp-hd134416134484%_
                                                      _%rand134418134478%_)))
                                           (declare (not safe))
                                           (_%loop134414134473%_
                                            _%lp-tl134417134486%_
                                            __tmp145244))))
                                     (let ((_%rand134419134489%_
                                            (reverse _%rand134418134478%_)))
                                       (let ((_%L134492%_ _%rand134419134489%_)
                                             (_%L134493%_ _%hd134409134463%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134493%_
                                                'values))
                                             (_%__kont144857144858%_
                                              _%L134492%_
                                              _%L134493%_)
                                             (_%__kont144861144862%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop134414134473%_ _%target134411134468%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144855144856%_))
                  (let ((_%e134401134436%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144855144856%_))))
                    (let ((_%tl134399134441%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134401134436%_)))
                          (_%hd134400134439%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134401134436%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134399134441%_))
                          (let ((_%e134404134444%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134399134441%_))))
                            (let ((_%tl134402134449%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134404134444%_)))
                                  (_%hd134403134447%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134404134444%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134403134447%_))
                                  (let ((_%e134407134452%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134403134447%_))))
                                    (let ((_%tl134405134457%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134407134452%_)))
                                          (_%hd134406134455%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134407134452%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134406134455%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134406134455%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134405134457%_))
                                                  (let ((_%e134410134460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134405134457%_))))
                                                    (let ((_%tl134408134465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134410134460%_)))
                                                          (_%hd134409134463%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134410134460%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134408134465%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134402134449%_))
                      (let ((_%__splice144859144860%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134402134449%_
                                '0))))
                        (let ((_%tl134413134470%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144859144860%_ '1)))
                              (_%target134411134468%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144859144860%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134413134470%_))
                              (_%__match144900144901%_
                               _%e134401134436%_
                               _%hd134400134439%_
                               _%tl134399134441%_
                               _%e134404134444%_
                               _%hd134403134447%_
                               _%tl134402134449%_
                               _%e134407134452%_
                               _%hd134406134455%_
                               _%tl134405134457%_
                               _%e134410134460%_
                               _%hd134409134463%_
                               _%tl134408134465%_
                               _%__splice144859144860%_
                               _%target134411134468%_
                               _%tl134413134470%_)
                              (_%__kont144861144862%_))))
                      (_%__kont144861144862%_))
                  (_%__kont144861144862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144861144862%_))
                                              (_%__kont144861144862%_))
                                          (_%__kont144861144862%_))))
                                  (_%__kont144861144862%_))))
                          (_%__kont144861144862%_))))
                  (_%__kont144861144862%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134294%_ _%stx134295%_)
        (let* ((_%g134297134318%_
                (lambda (_%g134298134315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134298134315%_))))
               (_%g134296134388%_
                (lambda (_%g134298134321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134298134321%_))
                      (let ((_%e134304134323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134298134321%_))))
                        (let ((_%hd134303134326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134304134323%_)))
                              (_%tl134302134328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134304134323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134302134328%_))
                              (let ((_%e134307134331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134302134328%_))))
                                (let ((_%hd134306134334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134307134331%_)))
                                      (_%tl134305134336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134307134331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134305134336%_))
                                      (let ((_%e134310134339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134305134336%_))))
                                        (let ((_%hd134309134342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134310134339%_)))
                                              (_%tl134308134344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134310134339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134308134344%_))
                                              (let ((_%e134313134347%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134308134344%_))))
                                                (let ((_%hd134312134350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134313134347%_)))
                                                      (_%tl134311134352%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134313134347%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134311134352%_))
                                                      ((lambda (_%L134355%_
                                                                _%L134356%_
                                                                _%L134357%_)
                                                         (let ((_%c1134374134376%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134294%_ _%L134356%_))))
                   (if _%c1134374134376%_
                       (let* ((_%c1134379%_ _%c1134374134376%_)
                              (_%c2134380134382%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134294%_
                                  _%L134355%_))))
                         (if _%c2134380134382%_
                             (let ((_%c2134385%_ _%c2134380134382%_))
                               (if (fx= _%c1134379%_ _%c2134385%_)
                                   _%c1134379%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134312134350%_
               _%hd134309134342%_
               _%hd134306134334%_)
              (let ()
                (declare (not safe))
                (_%g134297134318%_ _%g134298134321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g134297134318%_
                                                 _%g134298134321%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g134297134318%_
                                         _%g134298134321%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g134297134318%_ _%g134298134321%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g134297134318%_ _%g134298134321%_))))))
          (declare (not safe))
          (_%g134296134388%_ _%stx134295%_))))))
