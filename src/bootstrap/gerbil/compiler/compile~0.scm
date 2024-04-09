(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712702631)
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
        (letrec ((_%hash-e143561%_
                  (lambda (_%id143563%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id143563%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e143561%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp144948 (list gxc#::void::t))
            (__tmp144947 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp144948
         '()
         __tmp144947
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args143557%_
        (apply make-instance gxc#::collect-bindings::t _%$args143557%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp144949
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
        (__make-promise __tmp144949)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx143549%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self143552%_
                (let ((__obj144923
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj144923))
               (__tmp144950
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143552%_ _%stx143549%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144950
           gxc#current-compile-method
           _%self143552%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp144952 (list gxc#::void::t))
            (__tmp144951 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp144952
         '(modules)
         __tmp144951
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args143546%_
        (apply make-instance gxc#::lift-modules::t _%$args143546%_)))
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
      (let ((__tmp144953
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
        (__make-promise __tmp144953)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords143520%_ _%modules143517143521%_ _%stx143523%_)
        (let ((_%modules143526%_
               (if (eq? _%modules143517143521%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules143517143521%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self143528%_
                  (let ((__obj144925
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144925
                       _%modules143526%_
                       '1
                       '#f
                       '#f))
                    __obj144925))
                 (__tmp144954
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143528%_ _%stx143523%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144954
             gxc#current-compile-method
             _%self143528%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords143535%_ . _%args143536%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords143535%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143535%_
                  'modules:
                  absent-value))
               _%args143536%_)))
    (define gxc#apply-lift-modules
      (lambda _%args143518143542%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args143518143542%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp144956 (list)) (__tmp144955 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp144956
         '()
         __tmp144955
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args143513%_
        (apply make-instance gxc#::find-runtime-code::t _%$args143513%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp144957
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
        (__make-promise __tmp144957)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx143505%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self143508%_
                (let ((__obj144927
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj144927))
               (__tmp144958
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143508%_ _%stx143505%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144958
           gxc#current-compile-method
           _%self143508%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp144960 (list gxc#::false::t))
            (__tmp144959 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp144960
         '()
         __tmp144959
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args143502%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args143502%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp144961
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
        (__make-promise __tmp144961)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx143494%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self143497%_
                (let ((__obj144929
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj144929))
               (__tmp144962
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143497%_ _%stx143494%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144962
           gxc#current-compile-method
           _%self143497%_))))
    (define gxc#::count-values::t
      (let ((__tmp144964 (list gxc#::false-expression::t))
            (__tmp144963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp144964
         '()
         __tmp144963
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args143491%_
        (apply make-instance gxc#::count-values::t _%$args143491%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp144965
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
        (__make-promise __tmp144965)))
    (define gxc#apply-count-values
      (lambda (_%stx143483%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self143486%_
                (let ((__obj144931
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj144931))
               (__tmp144966
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143486%_ _%stx143483%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144966
           gxc#current-compile-method
           _%self143486%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp144967 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp144967
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args143480%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args143480%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp144968
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
        (__make-promise __tmp144968)))
    (define gxc#::generate-loader::t
      (let ((__tmp144970 (list gxc#::generate-runtime-empty::t))
            (__tmp144969 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp144970
         '()
         __tmp144969
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args143476%_
        (apply make-instance gxc#::generate-loader::t _%$args143476%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp144971
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
        (__make-promise __tmp144971)))
    (define gxc#apply-generate-loader
      (lambda (_%stx143468%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self143471%_
                (let ((__obj144934
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj144934))
               (__tmp144972
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143471%_ _%stx143468%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144972
           gxc#current-compile-method
           _%self143471%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp144973 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp144973
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args143465%_
        (apply make-instance gxc#::generate-runtime::t _%$args143465%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp144974
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
        (__make-promise __tmp144974)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx143457%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self143460%_
                (let ((__obj144936
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj144936))
               (__tmp144975
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143460%_ _%stx143457%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144975
           gxc#current-compile-method
           _%self143460%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp144977 (list gxc#::generate-runtime::t))
            (__tmp144976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp144977
         '()
         __tmp144976
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args143454%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args143454%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp144978
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
        (__make-promise __tmp144978)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx143446%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self143449%_
                (let ((__obj144938
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj144938))
               (__tmp144979
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self143449%_ _%stx143446%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp144979
           gxc#current-compile-method
           _%self143449%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp144980 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp144980
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args143443%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args143443%_)))
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
      (let ((__tmp144981
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
        (__make-promise __tmp144981)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords143417%_ _%table143414143418%_ _%stx143420%_)
        (let ((_%table143423%_
               (if (eq? _%table143414143418%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table143414143418%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self143425%_
                  (let ((__obj144940
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144940
                       _%table143423%_
                       '1
                       '#f
                       '#f))
                    __obj144940))
                 (__tmp144982
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143425%_ _%stx143420%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144982
             gxc#current-compile-method
             _%self143425%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords143432%_ . _%args143433%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords143432%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143432%_
                  'table:
                  absent-value))
               _%args143433%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args143415143439%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args143415143439%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp144984 (list gxc#::void-expression::t))
            (__tmp144983 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp144984
         '(state)
         __tmp144983
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args143410%_
        (apply make-instance gxc#::generate-meta::t _%$args143410%_)))
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
      (let ((__tmp144985
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
        (__make-promise __tmp144985)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords143384%_ _%state143381143385%_ _%stx143387%_)
        (let ((_%state143390%_
               (if (eq? _%state143381143385%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143381143385%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self143392%_
                  (let ((__obj144942
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144942
                       _%state143390%_
                       '1
                       '#f
                       '#f))
                    __obj144942))
                 (__tmp144986
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143392%_ _%stx143387%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144986
             gxc#current-compile-method
             _%self143392%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords143399%_ . _%args143400%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords143399%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143399%_
                  'state:
                  absent-value))
               _%args143400%_)))
    (define gxc#apply-generate-meta
      (lambda _%args143382143406%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args143382143406%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp144988 (list)) (__tmp144987 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp144988
         '(state)
         __tmp144987
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args143377%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args143377%_)))
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
      (let ((__tmp144989
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
        (__make-promise __tmp144989)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords143351%_ _%state143348143352%_ _%stx143354%_)
        (let ((_%state143357%_
               (if (eq? _%state143348143352%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state143348143352%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self143359%_
                  (let ((__obj144944
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj144944
                       _%state143357%_
                       '1
                       '#f
                       '#f))
                    __obj144944))
                 (__tmp144990
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self143359%_ _%stx143354%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp144990
             gxc#current-compile-method
             _%self143359%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords143366%_ . _%args143367%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords143366%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords143366%_
                  'state:
                  absent-value))
               _%args143367%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args143349143373%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args143349143373%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self143277%_ _%stx143278%_)
        (let* ((_%g143280143297%_
                (lambda (_%g143281143294%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143281143294%_))))
               (_%g143279143344%_
                (lambda (_%g143281143300%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143281143300%_))
                      (let ((_%e143284143302%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143281143300%_))))
                        (let ((_%hd143285143305%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143284143302%_)))
                              (_%tl143286143307%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143284143302%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143286143307%_))
                              (let ((_%e143287143310%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143286143307%_))))
                                (let ((_%hd143288143313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143287143310%_)))
                                      (_%tl143289143315%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143287143310%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143289143315%_))
                                      (let ((_%e143290143318%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143289143315%_))))
                                        (let ((_%hd143291143321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143290143318%_)))
                                              (_%tl143292143323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143290143318%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143292143323%_))
                                              ((lambda (_%L143326%_
                                                        _%L143327%_)
                                                 (let ((__tmp144991
                                                        (lambda (_%bind143342%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind143342%_))
                      (gxc#add-module-binding! _%bind143342%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp144991
                                                    _%L143327%_)))
                                               _%hd143291143321%_
                                               _%hd143288143313%_)
                                              (_%g143280143297%_
                                               _%g143281143300%_))))
                                      (_%g143280143297%_ _%g143281143300%_))))
                              (_%g143280143297%_ _%g143281143300%_))))
                      (_%g143280143297%_ _%g143281143300%_)))))
          (_%g143279143344%_ _%stx143278%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self143209%_ _%stx143210%_)
        (let* ((_%g143212143229%_
                (lambda (_%g143213143226%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143213143226%_))))
               (_%g143211143274%_
                (lambda (_%g143213143232%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143213143232%_))
                      (let ((_%e143216143234%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143213143232%_))))
                        (let ((_%hd143217143237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143216143234%_)))
                              (_%tl143218143239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143216143234%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143218143239%_))
                              (let ((_%e143219143242%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143218143239%_))))
                                (let ((_%hd143220143245%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143219143242%_)))
                                      (_%tl143221143247%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143219143242%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143221143247%_))
                                      (let ((_%e143222143250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143221143247%_))))
                                        (let ((_%hd143223143253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143222143250%_)))
                                              (_%tl143224143255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143222143250%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143224143255%_))
                                              ((lambda (_%L143258%_
                                                        _%L143259%_)
                                                 (gxc#add-module-binding!
                                                  _%L143259%_
                                                  '#t))
                                               _%hd143223143253%_
                                               _%hd143220143245%_)
                                              (_%g143212143229%_
                                               _%g143213143232%_))))
                                      (_%g143212143229%_ _%g143213143232%_))))
                              (_%g143212143229%_ _%g143213143232%_))))
                      (_%g143212143229%_ _%g143213143232%_)))))
          (_%g143211143274%_ _%stx143210%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self143151%_ _%stx143152%_)
        (let* ((_%g143154143168%_
                (lambda (_%g143155143165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143155143165%_))))
               (_%g143153143206%_
                (lambda (_%g143155143171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143155143171%_))
                      (let ((_%e143158143173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143155143171%_))))
                        (let ((_%hd143159143176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143158143173%_)))
                              (_%tl143160143178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143158143173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143160143178%_))
                              (let ((_%e143161143181%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143160143178%_))))
                                (let ((_%hd143162143184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143161143181%_)))
                                      (_%tl143163143186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143161143181%_))))
                                  ((lambda (_%L143189%_ _%L143190%_)
                                     (let ((_%ctx143203%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L143190%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self143151%_
                                           'modules))
                                        (cons _%ctx143203%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self143151%_
                                                        'modules)))))
                                       (let ((__tmp144992
                                              (lambda ()
                                                (let ((__tmp144993
                                                       (##structure-ref
                                                        _%ctx143203%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143151%_
                                                   __tmp144993)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp144992
                                          gx#current-expander-context
                                          _%ctx143203%_))))
                                   _%tl143163143186%_
                                   _%hd143162143184%_)))
                              (_%g143154143168%_ _%g143155143171%_))))
                      (_%g143154143168%_ _%g143155143171%_)))))
          (_%g143153143206%_ _%stx143152%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls143104143106%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls143104143106%_
              (let ((_%decls143109%_ _%decls143104143106%_))
                (let _%lp143111%_ ((_%rest143113%_ _%decls143109%_))
                  (let* ((_%rest143114143122%_ _%rest143113%_)
                         (_%else143116143130%_ (lambda () '#f))
                         (_%K143118143139%_
                          (lambda (_%decls143133%_ _%decl143134%_)
                            (if (equal? _%decl143134%_ '(not safe))
                                '#t
                                (if (equal? _%decl143134%_ '(safe))
                                    '#f
                                    (_%lp143111%_ _%decls143133%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest143114143122%_))
                        (let ((_%hd143119143142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest143114143122%_)))
                              (_%tl143120143144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest143114143122%_))))
                          (let* ((_%decl143147%_ _%hd143119143142%_)
                                 (_%decls143149%_ _%tl143120143144%_))
                            (_%K143118143139%_
                             _%decls143149%_
                             _%decl143147%_)))
                        (_%else143116143130%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id143098%_ _%syntax?143099%_)
        (let ((_%eid143101%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id143098%_))
                '1
                gx#binding::t
                '#f))
              (_%ht143102%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid143101%_))
              '#!void
              (let ((__tmp144994
                     (let ((__tmp144995
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid143101%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp144995 _%syntax?143099%_))))
                (declare (not safe))
                (hash-put! _%ht143102%_ _%eid143101%_ __tmp144994))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id143096%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id143096%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key143051%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key143051%_))
            _%key143051%_
            (if (uninterned-symbol? _%key143051%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key143051%_))
                (let* ((_%key143055143062%_ _%key143051%_)
                       (_%E143057143066%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key143055143062%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K143058143084%_
                        (lambda (_%mark143069%_ _%eid143070%_)
                          (let ((_%$e143072%_
                                 (##structure-ref
                                  _%mark143069%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e143072%_
                                ((lambda (_%ht143075%_)
                                   (let ((_%$e143077%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht143075%_
                                             _%eid143070%_))))
                                     (if _%$e143077%_
                                         ((lambda (_%id143080%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id143080%_))
                                                _%id143080%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id143080%_))))
                                          _%$e143077%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid143070%_))))
                                 _%$e143072%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid143070%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key143055143062%_))
                      (let ((_%hd143059143087%_
                             (let ()
                               (declare (not safe))
                               (##car _%key143055143062%_)))
                            (_%tl143060143089%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key143055143062%_))))
                        (let* ((_%eid143092%_ _%hd143059143087%_)
                               (_%mark143094%_ _%tl143060143089%_))
                          (_%K143058143084%_ _%mark143094%_ _%eid143092%_)))
                      (_%E143057143066%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self143048%_ _%stx143049%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self142895%_ _%stx142896%_)
        (letrec ((_%simplify142898%_
                  (lambda (_%body142946%_)
                    (let _%lp142948%_ ((_%rest142950%_ _%body142946%_)
                                       (_%r142951%_ '()))
                      (let* ((_%rest142952142960%_ _%rest142950%_)
                             (_%else142954142968%_
                              (lambda () (reverse _%r142951%_)))
                             (_%K142956143036%_
                              (lambda (_%rest142971%_ _%hd142972%_)
                                (let* ((_%hd142973142989%_ _%hd142972%_)
                                       (_%else142977142997%_
                                        (lambda ()
                                          (_%lp142948%_
                                           _%rest142971%_
                                           (cons _%hd142972%_ _%r142951%_)))))
                                  (let ((_%K142985143026%_
                                         (lambda (_%exprs143024%_)
                                           (_%lp142948%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest142971%_
                                               _%exprs143024%_))
                                            _%r142951%_)))
                                        (_%K142980143010%_
                                         (lambda ()
                                           (if (null? _%rest142971%_)
                                               (_%lp142948%_
                                                _%rest142971%_
                                                (cons _%hd142972%_
                                                      _%r142951%_))
                                               (_%lp142948%_
                                                _%rest142971%_
                                                _%r142951%_))))
                                        (_%K142979143002%_
                                         (lambda ()
                                           (if (null? _%rest142971%_)
                                               (_%lp142948%_
                                                _%rest142971%_
                                                (cons _%hd142972%_
                                                      _%r142951%_))
                                               (_%lp142948%_
                                                _%rest142971%_
                                                _%r142951%_)))))
                                    (let ((_%try-match142976143005%_
                                           (lambda ()
                                             (if (symbol? _%hd142973142989%_)
                                                 (_%K142979143002%_)
                                                 (_%else142977142997%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142973142989%_))
                                          (let ((_%tl142987143031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142973142989%_)))
                                                (_%hd142986143029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142973142989%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142986143029%_
                                                         'begin))
                                                (let ((_%exprs143034%_
                                                       _%tl142987143031%_))
                                                  (_%K142985143026%_
                                                   _%exprs143034%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd142986143029%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl142987143031%_))
                                                        (let ((_%tl142984143018%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl142987143031%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl142984143018%_))
                      (_%K142980143010%_)
                      (_%try-match142976143005%_)))
                (_%try-match142976143005%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match142976143005%_))))
                                          (_%try-match142976143005%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142952142960%_))
                            (let ((_%hd142957143039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142952142960%_)))
                                  (_%tl142958143041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142952142960%_))))
                              (let* ((_%hd143044%_ _%hd142957143039%_)
                                     (_%rest143046%_ _%tl142958143041%_))
                                (_%K142956143036%_
                                 _%rest143046%_
                                 _%hd143044%_)))
                            (_%else142954142968%_)))))))
          (let* ((_%g142900142910%_
                  (lambda (_%g142901142907%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142901142907%_))))
                 (_%g142899142943%_
                  (lambda (_%g142901142913%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142901142913%_))
                        (let ((_%e142903142915%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142901142913%_))))
                          (let ((_%hd142904142918%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142903142915%_)))
                                (_%tl142905142920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142903142915%_))))
                            ((lambda (_%L142923%_)
                               (let* ((_%body142938%_
                                       (map (lambda (_%g142933142935%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self142895%_
                                                 _%g142933142935%_)))
                                            _%L142923%_))
                                      (_%body142940%_
                                       (_%simplify142898%_ _%body142938%_)))
                                 (if (let ((__tmp144996
                                            (length _%body142940%_)))
                                       (declare (not safe))
                                       (##fx= __tmp144996 '1))
                                     (car _%body142940%_)
                                     (cons 'begin _%body142940%_))))
                             _%tl142905142920%_)))
                        (_%g142900142910%_ _%g142901142913%_)))))
            (_%g142899142943%_ _%stx142896%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self142856%_ _%stx142857%_)
        (let* ((_%g142859142869%_
                (lambda (_%g142860142866%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142860142866%_))))
               (_%g142858142892%_
                (lambda (_%g142860142872%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142860142872%_))
                      (let ((_%e142862142874%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142860142872%_))))
                        (let ((_%hd142863142877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142862142874%_)))
                              (_%tl142864142879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142862142874%_))))
                          ((lambda (_%L142882%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L142882%_))))
                           _%tl142864142879%_)))
                      (_%g142859142869%_ _%g142860142872%_)))))
          (_%g142858142892%_ _%stx142857%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self142620%_ _%stx142621%_)
        (let* ((_%__stx143586143587%_ _%stx142621%_)
               (_%g142625142677%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx143586143587%_)))))
          (let ((_%__kont143588143589%_
                 (lambda (_%L142838%_ _%L142839%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self142620%_ _%L142838%_))))
                (_%__kont143590143591%_
                 (lambda (_%L142786%_ _%L142787%_ _%L142788%_)
                   (if (let ((__tmp144997
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L142788%_))))
                         (declare (not safe))
                         (##memq __tmp144997 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self142620%_ _%L142786%_)))))
                (_%__kont143594143595%_
                 (lambda (_%L142706%_ _%L142707%_)
                   (let ((_%decls142722%_ (map gx#syntax->datum _%L142707%_)))
                     (let ((__tmp145000
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls142722%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self142620%_
                                                   _%L142706%_))
                                                '())))))
                           (__tmp144998
                            (let ((__tmp144999
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp144999 _%decls142722%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp145000
                        gxc#current-compile-decls
                        __tmp144998))))))
            (let* ((_%__match143641143642%_
                    (lambda (_%e142641142730%_
                             _%hd142642142733%_
                             _%tl142643142735%_
                             _%e142644142738%_
                             _%hd142645142741%_
                             _%tl142646142743%_
                             _%e142647142746%_
                             _%hd142648142749%_
                             _%tl142649142751%_
                             _%__splice143592143593%_
                             _%target142650142754%_
                             _%tl142652142756%_)
                      (letrec ((_%loop142653142759%_
                                (lambda (_%hd142651142762%_
                                         _%param142657142764%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142651142762%_))
                                      (let ((_%e142654142767%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142651142762%_))))
                                        (let ((_%lp-tl142656142772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142654142767%_)))
                                              (_%lp-hd142655142770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142654142767%_))))
                                          (_%loop142653142759%_
                                           _%lp-tl142656142772%_
                                           (cons _%lp-hd142655142770%_
                                                 _%param142657142764%_))))
                                      (let ((_%param142658142775%_
                                             (reverse _%param142657142764%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142646142743%_))
                                            (let ((_%e142659142778%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142646142743%_))))
                                              (let ((_%tl142661142783%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142659142778%_)))
                                                    (_%hd142660142781%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142659142778%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142661142783%_))
                                                    (let ((_%L142786%_
                                                           _%hd142660142781%_)
                                                          (_%L142787%_
                                                           _%param142658142775%_)
                                                          (_%L142788%_
                                                           _%hd142648142749%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L142788%_))
                       (not (let ((__tmp145001
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L142788%_))))
                              (declare (not safe))
                              (##memq __tmp145001 gxc#gambit-annotations))))
                  (_%__kont143590143591%_ _%L142786%_ _%L142787%_ _%L142788%_)
                  (_%__kont143594143595%_
                   _%hd142660142781%_
                   _%hd142645142741%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142625142677%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142625142677%_))))))))
                        (_%loop142653142759%_ _%target142650142754%_ '()))))
                   (_%__match143615143616%_
                    (lambda (_%e142629142814%_
                             _%hd142630142817%_
                             _%tl142631142819%_
                             _%e142632142822%_
                             _%hd142633142825%_
                             _%tl142634142827%_
                             _%e142635142830%_
                             _%hd142636142833%_
                             _%tl142637142835%_)
                      (let ((_%L142838%_ _%hd142636142833%_)
                            (_%L142839%_ _%hd142633142825%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L142839%_))
                            (_%__kont143588143589%_ _%L142838%_ _%L142839%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd142633142825%_))
                                (let ((_%e142647142746%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd142633142825%_))))
                                  (let ((_%tl142649142751%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142647142746%_)))
                                        (_%hd142648142749%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142647142746%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142649142751%_))
                                        (let ((_%__splice143592143593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142649142751%_
                                                  '0))))
                                          (let ((_%tl142652142756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143592143593%_
                                                    '1)))
                                                (_%target142650142754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice143592143593%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142652142756%_))
                                                (_%__match143641143642%_
                                                 _%e142629142814%_
                                                 _%hd142630142817%_
                                                 _%tl142631142819%_
                                                 _%e142632142822%_
                                                 _%hd142633142825%_
                                                 _%tl142634142827%_
                                                 _%e142647142746%_
                                                 _%hd142648142749%_
                                                 _%tl142649142751%_
                                                 _%__splice143592143593%_
                                                 _%target142650142754%_
                                                 _%tl142652142756%_)
                                                (_%__kont143594143595%_
                                                 _%hd142636142833%_
                                                 _%hd142633142825%_))))
                                        (_%__kont143594143595%_
                                         _%hd142636142833%_
                                         _%hd142633142825%_))))
                                (_%__kont143594143595%_
                                 _%hd142636142833%_
                                 _%hd142633142825%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx143586143587%_))
                  (let ((_%e142629142814%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx143586143587%_))))
                    (let ((_%tl142631142819%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142629142814%_)))
                          (_%hd142630142817%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142629142814%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142631142819%_))
                          (let ((_%e142632142822%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142631142819%_))))
                            (let ((_%tl142634142827%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142632142822%_)))
                                  (_%hd142633142825%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142632142822%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142634142827%_))
                                  (let ((_%e142635142830%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142634142827%_))))
                                    (let ((_%tl142637142835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142635142830%_)))
                                          (_%hd142636142833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142635142830%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142637142835%_))
                                          (_%__match143615143616%_
                                           _%e142629142814%_
                                           _%hd142630142817%_
                                           _%tl142631142819%_
                                           _%e142632142822%_
                                           _%hd142633142825%_
                                           _%tl142634142827%_
                                           _%e142635142830%_
                                           _%hd142636142833%_
                                           _%tl142637142835%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142633142825%_))
                                              (let ((_%e142647142746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142633142825%_))))
                                                (let ((_%tl142649142751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142647142746%_)))
                                                      (_%hd142648142749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142647142746%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl142649142751%_))
                                                      (let ((_%__splice143592143593%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl142649142751%_ '0))))
                (let ((_%tl142652142756%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143592143593%_ '1)))
                      (_%target142650142754%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice143592143593%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142652142756%_))
                      (_%__match143641143642%_
                       _%e142629142814%_
                       _%hd142630142817%_
                       _%tl142631142819%_
                       _%e142632142822%_
                       _%hd142633142825%_
                       _%tl142634142827%_
                       _%e142647142746%_
                       _%hd142648142749%_
                       _%tl142649142751%_
                       _%__splice143592143593%_
                       _%target142650142754%_
                       _%tl142652142756%_)
                      (let () (declare (not safe)) (_%g142625142677%_)))))
              (let () (declare (not safe)) (_%g142625142677%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142625142677%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd142633142825%_))
                                      (let ((_%e142647142746%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd142633142825%_))))
                                        (let ((_%tl142649142751%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142647142746%_)))
                                              (_%hd142648142749%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142647142746%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl142649142751%_))
                                              (let ((_%__splice143592143593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl142649142751%_
                                                        '0))))
                                                (let ((_%tl142652142756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143592143593%_
                                                          '1)))
                                                      (_%target142650142754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice143592143593%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142652142756%_))
                                                      (_%__match143641143642%_
                                                       _%e142629142814%_
                                                       _%hd142630142817%_
                                                       _%tl142631142819%_
                                                       _%e142632142822%_
                                                       _%hd142633142825%_
                                                       _%tl142634142827%_
                                                       _%e142647142746%_
                                                       _%hd142648142749%_
                                                       _%tl142649142751%_
                                                       _%__splice143592143593%_
                                                       _%target142650142754%_
                                                       _%tl142652142756%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g142625142677%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142625142677%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142625142677%_))))))
                          (let () (declare (not safe)) (_%g142625142677%_)))))
                  (let () (declare (not safe)) (_%g142625142677%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self142579%_ _%stx142580%_)
        (let* ((_%g142582142592%_
                (lambda (_%g142583142589%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142583142589%_))))
               (_%g142581142617%_
                (lambda (_%g142583142595%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142583142595%_))
                      (let ((_%e142585142597%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142583142595%_))))
                        (let ((_%hd142586142600%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142585142597%_)))
                              (_%tl142587142602%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142585142597%_))))
                          ((lambda (_%L142605%_)
                             (let ((_%decls142615%_
                                    (map gx#syntax->datum _%L142605%_)))
                               (let ((__tmp145002
                                      (let ((__tmp145003
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp145003
                                         _%decls142615%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp145002))
                               (cons 'declare _%decls142615%_)))
                           _%tl142587142602%_)))
                      (_%g142582142592%_ _%g142583142595%_)))))
          (_%g142581142617%_ _%stx142580%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self142325%_ _%stx142326%_)
        (let* ((_%g142328142345%_
                (lambda (_%g142329142342%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142329142342%_))))
               (_%g142327142576%_
                (lambda (_%g142329142348%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142329142348%_))
                      (let ((_%e142332142350%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142329142348%_))))
                        (let ((_%hd142333142353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142332142350%_)))
                              (_%tl142334142355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142332142350%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142334142355%_))
                              (let ((_%e142335142358%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142334142355%_))))
                                (let ((_%hd142336142361%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142335142358%_)))
                                      (_%tl142337142363%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142335142358%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142337142363%_))
                                      (let ((_%e142338142366%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142337142363%_))))
                                        (let ((_%hd142339142369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142338142366%_)))
                                              (_%tl142340142371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142338142366%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142340142371%_))
                                              ((lambda (_%L142374%_
                                                        _%L142375%_)
                                                 (let* ((_%__stx143694143695%_
                                                         _%L142375%_)
                                                        (_%g142392142406%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx143694143695%_)))))
                                                   (let ((_%__kont143696143697%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self142325%_
                                                               _%L142374%_))))
                                                         (_%__kont143698143699%_
                                                          (lambda (_%L142538%_)
                                                            (let ((_%eid142547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L142538%_))))
                      (let ((_%lambda-expr142548142550%_
                             (gxc#apply-find-lambda-expression _%L142374%_)))
                        (if _%lambda-expr142548142550%_
                            (let* ((_%lambda-expr142553%_
                                    _%lambda-expr142548142550%_)
                                   (__tmp145004
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145004
                               _%lambda-expr142553%_
                               _%eid142547%_))
                            '#f))
                      (cons 'define
                            (cons _%eid142547%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self142325%_
                                           _%L142374%_))
                                        '()))))))
                 (_%__kont143700143701%_
                  (lambda ()
                    (let* ((_%tmp142413%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body142522%_
                            (let _%lp142415%_ ((_%rest142417%_ _%L142375%_)
                                               (_%k142418%_ '0)
                                               (_%r142419%_ '()))
                              (let* ((_%__stx143664143665%_ _%rest142417%_)
                                     (_%g142424142441%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx143664143665%_)))))
                                (let ((_%__kont143666143667%_
                                       (lambda (_%L142509%_)
                                         (_%lp142415%_
                                          _%L142509%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142418%_ '1))
                                          _%r142419%_)))
                                      (_%__kont143668143669%_
                                       (lambda (_%L142482%_ _%L142483%_)
                                         (_%lp142415%_
                                          _%L142482%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k142418%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L142483%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp142413%_
                           _%k142418%_
                           _%L142482%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r142419%_))))
                                      (_%__kont143670143671%_
                                       (lambda (_%L142453%_)
                                         (let ((__tmp145005
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L142453%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp142413%_
                                 _%k142418%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp145005
                                            _%r142419%_))))
                                      (_%__kont143672143673%_
                                       (lambda () (reverse _%r142419%_))))
                                  (let ((_%g142422142469%_
                                         (lambda ()
                                           (let ((_%L142453%_
                                                  _%__stx143664143665%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L142453%_))
                                                 (_%__kont143670143671%_
                                                  _%L142453%_)
                                                 (_%__kont143672143673%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx143664143665%_))
                                        (let ((_%e142427142498%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx143664143665%_))))
                                          (let ((_%tl142429142503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142427142498%_)))
                                                (_%hd142428142501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142427142498%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd142428142501%_))
                                                (let ((_%e142430142506%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142428142501%_))))
                                                  (if (equal? _%e142430142506%_
                                                              '#f)
                                                      (_%__kont143666143667%_
                                                       _%tl142429142503%_)
                                                      (_%__kont143668143669%_
                                                       _%tl142429142503%_
                                                       _%hd142428142501%_)))
                                                (_%__kont143668143669%_
                                                 _%tl142429142503%_
                                                 _%hd142428142501%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142422142469%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp142413%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142325%_
                                                       _%L142374%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp142413%_
                                         _%L142375%_
                                         _%L142374%_)
                                        _%body142522%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx143694143695%_))
                                                         (let ((_%e142394142560%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx143694143695%_))))
                   (let ((_%tl142396142565%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e142394142560%_)))
                         (_%hd142395142563%_
                          (let ()
                            (declare (not safe))
                            (##car _%e142394142560%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd142395142563%_))
                         (let ((_%e142397142568%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd142395142563%_))))
                           (if (equal? _%e142397142568%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142396142565%_))
                                   (_%__kont143696143697%_)
                                   (_%__kont143700143701%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl142396142565%_))
                                   (_%__kont143698143699%_ _%hd142395142563%_)
                                   (_%__kont143700143701%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142396142565%_))
                             (_%__kont143698143699%_ _%hd142395142563%_)
                             (_%__kont143700143701%_)))))
                 (_%__kont143700143701%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd142339142369%_
                                               _%hd142336142361%_)
                                              (_%g142328142345%_
                                               _%g142329142348%_))))
                                      (_%g142328142345%_ _%g142329142348%_))))
                              (_%g142328142345%_ _%g142329142348%_))))
                      (_%g142328142345%_ _%g142329142348%_)))))
          (_%g142327142576%_ _%stx142326%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals142300%_ _%hd142301%_ _%expr142302%_)
        (let ((_%$e142304%_ (gxc#apply-count-values _%expr142302%_)))
          (if _%$e142304%_
              ((lambda (_%count142307%_)
                 (let ((_%len142309%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd142301%_)))
                       (_%cmp142310%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd142301%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len142309%_ '0))
                           (_%cmp142310%_ _%count142307%_ _%len142309%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr142302%_
                          _%hd142301%_)))))
               _%$e142304%_)
              (let* ((_%len142316%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd142301%_)))
                     (_%cmp142318%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd142301%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg142320%_
                      (let ((__tmp145007
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd142301%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp145006 (number->string _%len142316%_)))
                        (declare (not safe))
                        (##string-append __tmp145007 __tmp145006 '" values")))
                     (_%count142322%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd142301%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len142316%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count142322%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals142300%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp142318%_
                                (cons _%count142322%_
                                      (cons _%len142316%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp142318%_
                                                        (cons _%count142322%_
                                                              (cons _%len142316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg142320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count142322%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var142295%_)
        (letrec ((_%generate-inline142297%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var142295%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var142295%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142297%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142297%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var142288%_ _%i142289%_ _%rest142290%_)
        (letrec ((_%generate-inline142292%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i142289%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest142290%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var142288%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var142288%_
                                                      (cons '0 '())))
                                          (cons _%var142288%_ '()))))
                        (cons '##vector-ref
                              (cons _%var142288%_ (cons _%i142289%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline142292%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline142292%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var142282%_ _%i142283%_)
        (if (let () (declare (not safe)) (##fx= _%i142283%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var142282%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var142282%_ '()))
                                  (cons (cons 'list (cons _%var142282%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var142282%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var142282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var142282%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i142283%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var142282%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var142282%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var142282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var142282%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var142282%_ '()))
                                (cons _%i142283%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var142282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i142283%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self142214%_ _%stx142215%_)
        (let* ((_%g142217142234%_
                (lambda (_%g142218142231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g142218142231%_))))
               (_%g142216142279%_
                (lambda (_%g142218142237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g142218142237%_))
                      (let ((_%e142221142239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g142218142237%_))))
                        (let ((_%hd142222142242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142221142239%_)))
                              (_%tl142223142244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142221142239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl142223142244%_))
                              (let ((_%e142224142247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl142223142244%_))))
                                (let ((_%hd142225142250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142224142247%_)))
                                      (_%tl142226142252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142224142247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142226142252%_))
                                      (let ((_%e142227142255%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142226142252%_))))
                                        (let ((_%hd142228142258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142227142255%_)))
                                              (_%tl142229142260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142227142255%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142229142260%_))
                                              ((lambda (_%L142263%_
                                                        _%L142264%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self142214%_
                                                  _%L142264%_
                                                  _%L142263%_))
                                               _%hd142228142258%_
                                               _%hd142225142250%_)
                                              (_%g142217142234%_
                                               _%g142218142237%_))))
                                      (_%g142217142234%_ _%g142218142237%_))))
                              (_%g142217142234%_ _%g142218142237%_))))
                      (_%g142217142234%_ _%g142218142237%_)))))
          (_%g142216142279%_ _%stx142215%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self142173%_ _%hd142174%_ _%body142175%_)
        (let* ((_%hd142177%_ (gxc#generate-runtime-lambda-head _%hd142174%_))
               (_%body142179%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self142173%_ _%body142175%_)))
               (_%body142211%_
                (let* ((_%body142180142188%_ _%body142179%_)
                       (_%else142182142196%_
                        (lambda () (cons _%body142179%_ '())))
                       (_%K142184142201%_
                        (lambda (_%exprs142199%_) _%exprs142199%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body142180142188%_))
                      (let ((_%hd142185142204%_
                             (let ()
                               (declare (not safe))
                               (##car _%body142180142188%_)))
                            (_%tl142186142206%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body142180142188%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd142185142204%_ 'begin))
                            (let ((_%exprs142209%_ _%tl142186142206%_))
                              (_%K142184142201%_ _%exprs142209%_))
                            (_%else142182142196%_)))
                      (_%else142182142196%_)))))
          (cons 'lambda (cons _%hd142177%_ _%body142211%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd142171%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd142171%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self140710%_ _%stx140711%_)
        (letrec ((_%dispatch-case?140713%_
                  (lambda (_%hd141401%_ _%body141402%_)
                    (let* ((_%form141404%_
                            (cons _%hd141401%_ (cons _%body141402%_ '())))
                           (_%__stx143726143727%_ _%form141404%_)
                           (_%g141409141566%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143726143727%_)))))
                      (let ((_%__kont143728143729%_
                             (lambda (_%L142091%_ _%L142092%_ _%L142093%_)
                               '#t))
                            (_%__kont143734143735%_
                             (lambda (_%L141879%_
                                      _%L141880%_
                                      _%L141881%_
                                      _%L141882%_
                                      _%L141883%_
                                      _%L141884%_)
                               '#t))
                            (_%__kont143740143741%_
                             (lambda (_%L141674%_
                                      _%L141675%_
                                      _%L141676%_
                                      _%L141677%_)
                               '#t))
                            (_%__kont143742143743%_ (lambda () '#f)))
                        (let* ((_%__match143867143868%_
                                (lambda (_%e141526141578%_
                                         _%hd141527141581%_
                                         _%tl141528141583%_
                                         _%e141529141586%_
                                         _%hd141530141589%_
                                         _%tl141531141591%_
                                         _%e141532141594%_
                                         _%hd141533141597%_
                                         _%tl141534141599%_
                                         _%e141535141602%_
                                         _%hd141536141605%_
                                         _%tl141537141607%_
                                         _%e141538141610%_
                                         _%hd141539141613%_
                                         _%tl141540141615%_
                                         _%e141541141618%_
                                         _%hd141542141621%_
                                         _%tl141543141623%_
                                         _%e141544141626%_
                                         _%hd141545141629%_
                                         _%tl141546141631%_
                                         _%e141547141634%_
                                         _%hd141548141637%_
                                         _%tl141549141639%_
                                         _%e141550141642%_
                                         _%hd141551141645%_
                                         _%tl141552141647%_
                                         _%e141553141650%_
                                         _%hd141554141653%_
                                         _%tl141555141655%_
                                         _%e141556141658%_
                                         _%hd141557141661%_
                                         _%tl141558141663%_
                                         _%e141559141666%_
                                         _%hd141560141669%_
                                         _%tl141561141671%_)
                                  (let ((_%L141674%_ _%hd141560141669%_)
                                        (_%L141675%_ _%hd141551141645%_)
                                        (_%L141676%_ _%hd141542141621%_)
                                        (_%L141677%_ _%hd141527141581%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L141677%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L141676%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L141677%_
                                                _%L141674%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L141675%_
                                                     _%L141677%_))))
                                        (_%__kont143740143741%_
                                         _%L141674%_
                                         _%L141675%_
                                         _%L141676%_
                                         _%L141677%_)
                                        (_%__kont143742143743%_)))))
                               (_%__match143839143840%_
                                (lambda (_%e141526141578%_
                                         _%hd141527141581%_
                                         _%tl141528141583%_
                                         _%e141529141586%_
                                         _%hd141530141589%_
                                         _%tl141531141591%_
                                         _%e141532141594%_
                                         _%hd141533141597%_
                                         _%tl141534141599%_
                                         _%e141535141602%_
                                         _%hd141536141605%_
                                         _%tl141537141607%_
                                         _%e141538141610%_
                                         _%hd141539141613%_
                                         _%tl141540141615%_
                                         _%e141541141618%_
                                         _%hd141542141621%_
                                         _%tl141543141623%_
                                         _%e141544141626%_
                                         _%hd141545141629%_
                                         _%tl141546141631%_
                                         _%e141547141634%_
                                         _%hd141548141637%_
                                         _%tl141549141639%_
                                         _%e141550141642%_
                                         _%hd141551141645%_
                                         _%tl141552141647%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141546141631%_))
                                      (let ((_%e141553141650%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141546141631%_))))
                                        (let ((_%tl141555141655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141553141650%_)))
                                              (_%hd141554141653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141553141650%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd141554141653%_))
                                              (let ((_%e141556141658%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd141554141653%_))))
                                                (let ((_%tl141558141663%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141556141658%_)))
                                                      (_%hd141557141661%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141556141658%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd141557141661%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd141557141661%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141558141663%_))
                      (let ((_%e141559141666%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141558141663%_))))
                        (let ((_%tl141561141671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141559141666%_)))
                              (_%hd141560141669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141559141666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl141561141671%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141555141655%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141531141591%_))
                                      (_%__match143867143868%_
                                       _%e141526141578%_
                                       _%hd141527141581%_
                                       _%tl141528141583%_
                                       _%e141529141586%_
                                       _%hd141530141589%_
                                       _%tl141531141591%_
                                       _%e141532141594%_
                                       _%hd141533141597%_
                                       _%tl141534141599%_
                                       _%e141535141602%_
                                       _%hd141536141605%_
                                       _%tl141537141607%_
                                       _%e141538141610%_
                                       _%hd141539141613%_
                                       _%tl141540141615%_
                                       _%e141541141618%_
                                       _%hd141542141621%_
                                       _%tl141543141623%_
                                       _%e141544141626%_
                                       _%hd141545141629%_
                                       _%tl141546141631%_
                                       _%e141547141634%_
                                       _%hd141548141637%_
                                       _%tl141549141639%_
                                       _%e141550141642%_
                                       _%hd141551141645%_
                                       _%tl141552141647%_
                                       _%e141553141650%_
                                       _%hd141554141653%_
                                       _%tl141555141655%_
                                       _%e141556141658%_
                                       _%hd141557141661%_
                                       _%tl141558141663%_
                                       _%e141559141666%_
                                       _%hd141560141669%_
                                       _%tl141561141671%_)
                                      (_%__kont143742143743%_))
                                  (_%__kont143742143743%_))
                              (_%__kont143742143743%_))))
                      (_%__kont143742143743%_))
                  (_%__kont143742143743%_))
              (_%__kont143742143743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143742143743%_))))
                                      (_%__kont143742143743%_))))
                               (_%__match143769143770%_
                                (lambda (_%e141462141719%_
                                         _%hd141463141722%_
                                         _%tl141464141724%_
                                         _%__splice143736143737%_
                                         _%target141465141727%_
                                         _%tl141467141729%_)
                                  (letrec ((_%loop141468141732%_
                                            (lambda (_%hd141466141735%_
                                                     _%arg141472141737%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141466141735%_))
                                                  (let ((_%e141469141740%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141466141735%_))))
                                                    (let ((_%lp-tl141471141745%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141469141740%_)))
                                                          (_%lp-hd141470141743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141469141740%_))))
                                                      (_%loop141468141732%_
                                                       _%lp-tl141471141745%_
                                                       (cons _%lp-hd141470141743%_
                                                             _%arg141472141737%_))))
                                                  (let ((_%arg141473141748%_
                                                         (reverse _%arg141472141737%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141464141724%_))
                                                        (let ((_%e141474141751%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141464141724%_))))
                  (let ((_%tl141476141756%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141474141751%_)))
                        (_%hd141475141754%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141474141751%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141475141754%_))
                        (let ((_%e141477141759%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141475141754%_))))
                          (let ((_%tl141479141764%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141477141759%_)))
                                (_%hd141478141762%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141477141759%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141478141762%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141478141762%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141479141764%_))
                                        (let ((_%e141480141767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141479141764%_))))
                                          (let ((_%tl141482141772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141480141767%_)))
                                                (_%hd141481141770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141480141767%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141481141770%_))
                                                (let ((_%e141483141775%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141481141770%_))))
                                                  (let ((_%tl141485141780%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141483141775%_)))
                                                        (_%hd141484141778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141483141775%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141484141778%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141484141778%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141485141780%_))
                        (let ((_%e141486141783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141485141780%_))))
                          (let ((_%tl141488141788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141486141783%_)))
                                (_%hd141487141786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141486141783%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141488141788%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl141482141772%_))
                                    (let ((_%e141489141791%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl141482141772%_))))
                                      (let ((_%tl141491141796%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e141489141791%_)))
                                            (_%hd141490141794%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e141489141791%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd141490141794%_))
                                            (let ((_%e141492141799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd141490141794%_))))
                                              (let ((_%tl141494141804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141492141799%_)))
                                                    (_%hd141493141802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141492141799%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd141493141802%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd141493141802%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141494141804%_))
                                                            (let ((_%e141495141807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141494141804%_))))
                      (let ((_%tl141497141812%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141495141807%_)))
                            (_%hd141496141810%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141495141807%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141497141812%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl141491141796%_))
                                (if (let ((__tmp145008
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl141491141796%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp145008 '1))
                                    (let ((_%__splice143738143739%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141491141796%_
                                              '1))))
                                      (let ((_%tl141500141817%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143738143739%_
                                                '1)))
                                            (_%target141498141815%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143738143739%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141500141817%_))
                                            (let ((_%e141507141820%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141500141817%_))))
                                              (let ((_%tl141509141825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141507141820%_)))
                                                    (_%hd141508141823%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141507141820%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd141508141823%_))
                                                    (let ((_%e141510141828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd141508141823%_))))
                                                      (let ((_%tl141512141833%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141510141828%_)))
                    (_%hd141511141831%_
                     (let () (declare (not safe)) (##car _%e141510141828%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd141511141831%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd141511141831%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl141512141833%_))
                            (let ((_%e141513141836%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl141512141833%_))))
                              (let ((_%tl141515141841%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141513141836%_)))
                                    (_%hd141514141839%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141513141836%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl141515141841%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl141509141825%_))
                                        (letrec ((_%loop141501141844%_
                                                  (lambda (_%hd141499141847%_
                                                           _%xarg141505141849%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd141499141847%_))
                                                        (let ((_%e141502141852%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd141499141847%_))))
                  (let ((_%lp-tl141504141857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141502141852%_)))
                        (_%lp-hd141503141855%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141502141852%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd141503141855%_))
                        (let ((_%e141516141860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd141503141855%_))))
                          (let ((_%tl141518141865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141516141860%_)))
                                (_%hd141517141863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141516141860%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141517141863%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd141517141863%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141518141865%_))
                                        (let ((_%e141519141868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141518141865%_))))
                                          (let ((_%tl141521141873%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141519141868%_)))
                                                (_%hd141520141871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141519141868%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141521141873%_))
                                                (_%loop141501141844%_
                                                 _%lp-tl141504141857%_
                                                 (cons _%hd141520141871%_
                                                       _%xarg141505141849%_))
                                                (_%__match143839143840%_
                                                 _%e141462141719%_
                                                 _%hd141463141722%_
                                                 _%tl141464141724%_
                                                 _%e141474141751%_
                                                 _%hd141475141754%_
                                                 _%tl141476141756%_
                                                 _%e141477141759%_
                                                 _%hd141478141762%_
                                                 _%tl141479141764%_
                                                 _%e141480141767%_
                                                 _%hd141481141770%_
                                                 _%tl141482141772%_
                                                 _%e141483141775%_
                                                 _%hd141484141778%_
                                                 _%tl141485141780%_
                                                 _%e141486141783%_
                                                 _%hd141487141786%_
                                                 _%tl141488141788%_
                                                 _%e141489141791%_
                                                 _%hd141490141794%_
                                                 _%tl141491141796%_
                                                 _%e141492141799%_
                                                 _%hd141493141802%_
                                                 _%tl141494141804%_
                                                 _%e141495141807%_
                                                 _%hd141496141810%_
                                                 _%tl141497141812%_))))
                                        (_%__match143839143840%_
                                         _%e141462141719%_
                                         _%hd141463141722%_
                                         _%tl141464141724%_
                                         _%e141474141751%_
                                         _%hd141475141754%_
                                         _%tl141476141756%_
                                         _%e141477141759%_
                                         _%hd141478141762%_
                                         _%tl141479141764%_
                                         _%e141480141767%_
                                         _%hd141481141770%_
                                         _%tl141482141772%_
                                         _%e141483141775%_
                                         _%hd141484141778%_
                                         _%tl141485141780%_
                                         _%e141486141783%_
                                         _%hd141487141786%_
                                         _%tl141488141788%_
                                         _%e141489141791%_
                                         _%hd141490141794%_
                                         _%tl141491141796%_
                                         _%e141492141799%_
                                         _%hd141493141802%_
                                         _%tl141494141804%_
                                         _%e141495141807%_
                                         _%hd141496141810%_
                                         _%tl141497141812%_))
                                    (_%__match143839143840%_
                                     _%e141462141719%_
                                     _%hd141463141722%_
                                     _%tl141464141724%_
                                     _%e141474141751%_
                                     _%hd141475141754%_
                                     _%tl141476141756%_
                                     _%e141477141759%_
                                     _%hd141478141762%_
                                     _%tl141479141764%_
                                     _%e141480141767%_
                                     _%hd141481141770%_
                                     _%tl141482141772%_
                                     _%e141483141775%_
                                     _%hd141484141778%_
                                     _%tl141485141780%_
                                     _%e141486141783%_
                                     _%hd141487141786%_
                                     _%tl141488141788%_
                                     _%e141489141791%_
                                     _%hd141490141794%_
                                     _%tl141491141796%_
                                     _%e141492141799%_
                                     _%hd141493141802%_
                                     _%tl141494141804%_
                                     _%e141495141807%_
                                     _%hd141496141810%_
                                     _%tl141497141812%_))
                                (_%__match143839143840%_
                                 _%e141462141719%_
                                 _%hd141463141722%_
                                 _%tl141464141724%_
                                 _%e141474141751%_
                                 _%hd141475141754%_
                                 _%tl141476141756%_
                                 _%e141477141759%_
                                 _%hd141478141762%_
                                 _%tl141479141764%_
                                 _%e141480141767%_
                                 _%hd141481141770%_
                                 _%tl141482141772%_
                                 _%e141483141775%_
                                 _%hd141484141778%_
                                 _%tl141485141780%_
                                 _%e141486141783%_
                                 _%hd141487141786%_
                                 _%tl141488141788%_
                                 _%e141489141791%_
                                 _%hd141490141794%_
                                 _%tl141491141796%_
                                 _%e141492141799%_
                                 _%hd141493141802%_
                                 _%tl141494141804%_
                                 _%e141495141807%_
                                 _%hd141496141810%_
                                 _%tl141497141812%_))))
                        (_%__match143839143840%_
                         _%e141462141719%_
                         _%hd141463141722%_
                         _%tl141464141724%_
                         _%e141474141751%_
                         _%hd141475141754%_
                         _%tl141476141756%_
                         _%e141477141759%_
                         _%hd141478141762%_
                         _%tl141479141764%_
                         _%e141480141767%_
                         _%hd141481141770%_
                         _%tl141482141772%_
                         _%e141483141775%_
                         _%hd141484141778%_
                         _%tl141485141780%_
                         _%e141486141783%_
                         _%hd141487141786%_
                         _%tl141488141788%_
                         _%e141489141791%_
                         _%hd141490141794%_
                         _%tl141491141796%_
                         _%e141492141799%_
                         _%hd141493141802%_
                         _%tl141494141804%_
                         _%e141495141807%_
                         _%hd141496141810%_
                         _%tl141497141812%_))))
                (let ((_%xarg141506141876%_ (reverse _%xarg141505141849%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141476141756%_))
                      (let ((_%L141879%_ _%hd141514141839%_)
                            (_%L141880%_ _%xarg141506141876%_)
                            (_%L141881%_ _%hd141496141810%_)
                            (_%L141882%_ _%hd141487141786%_)
                            (_%L141883%_ _%tl141467141729%_)
                            (_%L141884%_ _%arg141473141748%_))
                        (if (and (let ((__tmp145009
                                        (let ((__tmp145010
                                               (lambda (_%g141927141930%_
                                                        _%g141928141932%_)
                                                 (cons _%g141927141930%_
                                                       _%g141928141932%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145010
                                           '()
                                           _%L141884%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp145009))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L141883%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L141882%_
                                    'apply))
                                 (let ((__tmp145013
                                        (length (let ((__tmp145014
                                                       (lambda (_%g141934141937%_
                                                                _%g141935141939%_)
                                                         (cons _%g141934141937%_
                                                               _%g141935141939%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145014
                                                   '()
                                                   _%L141884%_))))
                                       (__tmp145011
                                        (length (let ((__tmp145012
                                                       (lambda (_%g141941141944%_
                                                                _%g141942141946%_)
                                                         (cons _%g141941141944%_
                                                               _%g141942141946%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp145012
                                                   '()
                                                   _%L141880%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp145013 __tmp145011))
                                 (let ((__tmp145017
                                        (let ((__tmp145018
                                               (lambda (_%g141948141951%_
                                                        _%g141949141953%_)
                                                 (cons _%g141948141951%_
                                                       _%g141949141953%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145018
                                           '()
                                           _%L141884%_)))
                                       (__tmp145015
                                        (let ((__tmp145016
                                               (lambda (_%g141955141958%_
                                                        _%g141956141960%_)
                                                 (cons _%g141955141958%_
                                                       _%g141956141960%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp145016
                                           '()
                                           _%L141880%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp145017
                                    __tmp145015))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L141883%_
                                    _%L141879%_))
                                 (not (let ((__tmp145022
                                             (lambda (_%g141962141964%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g141962141964%_
                                                  _%L141881%_))))
                                            (__tmp145019
                                             (let ((__tmp145021
                                                    (lambda (_%g141966141969%_
                                                             _%g141967141971%_)
                                                      (cons _%g141966141969%_
                                                            _%g141967141971%_)))
                                                   (__tmp145020
                                                    (cons _%L141883%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145021
                                                __tmp145020
                                                _%L141884%_))))
                                        (declare (not safe))
                                        (__find __tmp145022 __tmp145019))))
                            (_%__kont143734143735%_
                             _%L141879%_
                             _%L141880%_
                             _%L141881%_
                             _%L141882%_
                             _%L141883%_
                             _%L141884%_)
                            (_%__match143839143840%_
                             _%e141462141719%_
                             _%hd141463141722%_
                             _%tl141464141724%_
                             _%e141474141751%_
                             _%hd141475141754%_
                             _%tl141476141756%_
                             _%e141477141759%_
                             _%hd141478141762%_
                             _%tl141479141764%_
                             _%e141480141767%_
                             _%hd141481141770%_
                             _%tl141482141772%_
                             _%e141483141775%_
                             _%hd141484141778%_
                             _%tl141485141780%_
                             _%e141486141783%_
                             _%hd141487141786%_
                             _%tl141488141788%_
                             _%e141489141791%_
                             _%hd141490141794%_
                             _%tl141491141796%_
                             _%e141492141799%_
                             _%hd141493141802%_
                             _%tl141494141804%_
                             _%e141495141807%_
                             _%hd141496141810%_
                             _%tl141497141812%_)))
                      (_%__match143839143840%_
                       _%e141462141719%_
                       _%hd141463141722%_
                       _%tl141464141724%_
                       _%e141474141751%_
                       _%hd141475141754%_
                       _%tl141476141756%_
                       _%e141477141759%_
                       _%hd141478141762%_
                       _%tl141479141764%_
                       _%e141480141767%_
                       _%hd141481141770%_
                       _%tl141482141772%_
                       _%e141483141775%_
                       _%hd141484141778%_
                       _%tl141485141780%_
                       _%e141486141783%_
                       _%hd141487141786%_
                       _%tl141488141788%_
                       _%e141489141791%_
                       _%hd141490141794%_
                       _%tl141491141796%_
                       _%e141492141799%_
                       _%hd141493141802%_
                       _%tl141494141804%_
                       _%e141495141807%_
                       _%hd141496141810%_
                       _%tl141497141812%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop141501141844%_
                                           _%target141498141815%_
                                           '()))
                                        (_%__match143839143840%_
                                         _%e141462141719%_
                                         _%hd141463141722%_
                                         _%tl141464141724%_
                                         _%e141474141751%_
                                         _%hd141475141754%_
                                         _%tl141476141756%_
                                         _%e141477141759%_
                                         _%hd141478141762%_
                                         _%tl141479141764%_
                                         _%e141480141767%_
                                         _%hd141481141770%_
                                         _%tl141482141772%_
                                         _%e141483141775%_
                                         _%hd141484141778%_
                                         _%tl141485141780%_
                                         _%e141486141783%_
                                         _%hd141487141786%_
                                         _%tl141488141788%_
                                         _%e141489141791%_
                                         _%hd141490141794%_
                                         _%tl141491141796%_
                                         _%e141492141799%_
                                         _%hd141493141802%_
                                         _%tl141494141804%_
                                         _%e141495141807%_
                                         _%hd141496141810%_
                                         _%tl141497141812%_))
                                    (_%__match143839143840%_
                                     _%e141462141719%_
                                     _%hd141463141722%_
                                     _%tl141464141724%_
                                     _%e141474141751%_
                                     _%hd141475141754%_
                                     _%tl141476141756%_
                                     _%e141477141759%_
                                     _%hd141478141762%_
                                     _%tl141479141764%_
                                     _%e141480141767%_
                                     _%hd141481141770%_
                                     _%tl141482141772%_
                                     _%e141483141775%_
                                     _%hd141484141778%_
                                     _%tl141485141780%_
                                     _%e141486141783%_
                                     _%hd141487141786%_
                                     _%tl141488141788%_
                                     _%e141489141791%_
                                     _%hd141490141794%_
                                     _%tl141491141796%_
                                     _%e141492141799%_
                                     _%hd141493141802%_
                                     _%tl141494141804%_
                                     _%e141495141807%_
                                     _%hd141496141810%_
                                     _%tl141497141812%_))))
                            (_%__match143839143840%_
                             _%e141462141719%_
                             _%hd141463141722%_
                             _%tl141464141724%_
                             _%e141474141751%_
                             _%hd141475141754%_
                             _%tl141476141756%_
                             _%e141477141759%_
                             _%hd141478141762%_
                             _%tl141479141764%_
                             _%e141480141767%_
                             _%hd141481141770%_
                             _%tl141482141772%_
                             _%e141483141775%_
                             _%hd141484141778%_
                             _%tl141485141780%_
                             _%e141486141783%_
                             _%hd141487141786%_
                             _%tl141488141788%_
                             _%e141489141791%_
                             _%hd141490141794%_
                             _%tl141491141796%_
                             _%e141492141799%_
                             _%hd141493141802%_
                             _%tl141494141804%_
                             _%e141495141807%_
                             _%hd141496141810%_
                             _%tl141497141812%_))
                        (_%__match143839143840%_
                         _%e141462141719%_
                         _%hd141463141722%_
                         _%tl141464141724%_
                         _%e141474141751%_
                         _%hd141475141754%_
                         _%tl141476141756%_
                         _%e141477141759%_
                         _%hd141478141762%_
                         _%tl141479141764%_
                         _%e141480141767%_
                         _%hd141481141770%_
                         _%tl141482141772%_
                         _%e141483141775%_
                         _%hd141484141778%_
                         _%tl141485141780%_
                         _%e141486141783%_
                         _%hd141487141786%_
                         _%tl141488141788%_
                         _%e141489141791%_
                         _%hd141490141794%_
                         _%tl141491141796%_
                         _%e141492141799%_
                         _%hd141493141802%_
                         _%tl141494141804%_
                         _%e141495141807%_
                         _%hd141496141810%_
                         _%tl141497141812%_))
                    (_%__match143839143840%_
                     _%e141462141719%_
                     _%hd141463141722%_
                     _%tl141464141724%_
                     _%e141474141751%_
                     _%hd141475141754%_
                     _%tl141476141756%_
                     _%e141477141759%_
                     _%hd141478141762%_
                     _%tl141479141764%_
                     _%e141480141767%_
                     _%hd141481141770%_
                     _%tl141482141772%_
                     _%e141483141775%_
                     _%hd141484141778%_
                     _%tl141485141780%_
                     _%e141486141783%_
                     _%hd141487141786%_
                     _%tl141488141788%_
                     _%e141489141791%_
                     _%hd141490141794%_
                     _%tl141491141796%_
                     _%e141492141799%_
                     _%hd141493141802%_
                     _%tl141494141804%_
                     _%e141495141807%_
                     _%hd141496141810%_
                     _%tl141497141812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match143839143840%_
                                                     _%e141462141719%_
                                                     _%hd141463141722%_
                                                     _%tl141464141724%_
                                                     _%e141474141751%_
                                                     _%hd141475141754%_
                                                     _%tl141476141756%_
                                                     _%e141477141759%_
                                                     _%hd141478141762%_
                                                     _%tl141479141764%_
                                                     _%e141480141767%_
                                                     _%hd141481141770%_
                                                     _%tl141482141772%_
                                                     _%e141483141775%_
                                                     _%hd141484141778%_
                                                     _%tl141485141780%_
                                                     _%e141486141783%_
                                                     _%hd141487141786%_
                                                     _%tl141488141788%_
                                                     _%e141489141791%_
                                                     _%hd141490141794%_
                                                     _%tl141491141796%_
                                                     _%e141492141799%_
                                                     _%hd141493141802%_
                                                     _%tl141494141804%_
                                                     _%e141495141807%_
                                                     _%hd141496141810%_
                                                     _%tl141497141812%_))))
                                            (_%__match143839143840%_
                                             _%e141462141719%_
                                             _%hd141463141722%_
                                             _%tl141464141724%_
                                             _%e141474141751%_
                                             _%hd141475141754%_
                                             _%tl141476141756%_
                                             _%e141477141759%_
                                             _%hd141478141762%_
                                             _%tl141479141764%_
                                             _%e141480141767%_
                                             _%hd141481141770%_
                                             _%tl141482141772%_
                                             _%e141483141775%_
                                             _%hd141484141778%_
                                             _%tl141485141780%_
                                             _%e141486141783%_
                                             _%hd141487141786%_
                                             _%tl141488141788%_
                                             _%e141489141791%_
                                             _%hd141490141794%_
                                             _%tl141491141796%_
                                             _%e141492141799%_
                                             _%hd141493141802%_
                                             _%tl141494141804%_
                                             _%e141495141807%_
                                             _%hd141496141810%_
                                             _%tl141497141812%_))))
                                    (_%__match143839143840%_
                                     _%e141462141719%_
                                     _%hd141463141722%_
                                     _%tl141464141724%_
                                     _%e141474141751%_
                                     _%hd141475141754%_
                                     _%tl141476141756%_
                                     _%e141477141759%_
                                     _%hd141478141762%_
                                     _%tl141479141764%_
                                     _%e141480141767%_
                                     _%hd141481141770%_
                                     _%tl141482141772%_
                                     _%e141483141775%_
                                     _%hd141484141778%_
                                     _%tl141485141780%_
                                     _%e141486141783%_
                                     _%hd141487141786%_
                                     _%tl141488141788%_
                                     _%e141489141791%_
                                     _%hd141490141794%_
                                     _%tl141491141796%_
                                     _%e141492141799%_
                                     _%hd141493141802%_
                                     _%tl141494141804%_
                                     _%e141495141807%_
                                     _%hd141496141810%_
                                     _%tl141497141812%_))
                                (_%__match143839143840%_
                                 _%e141462141719%_
                                 _%hd141463141722%_
                                 _%tl141464141724%_
                                 _%e141474141751%_
                                 _%hd141475141754%_
                                 _%tl141476141756%_
                                 _%e141477141759%_
                                 _%hd141478141762%_
                                 _%tl141479141764%_
                                 _%e141480141767%_
                                 _%hd141481141770%_
                                 _%tl141482141772%_
                                 _%e141483141775%_
                                 _%hd141484141778%_
                                 _%tl141485141780%_
                                 _%e141486141783%_
                                 _%hd141487141786%_
                                 _%tl141488141788%_
                                 _%e141489141791%_
                                 _%hd141490141794%_
                                 _%tl141491141796%_
                                 _%e141492141799%_
                                 _%hd141493141802%_
                                 _%tl141494141804%_
                                 _%e141495141807%_
                                 _%hd141496141810%_
                                 _%tl141497141812%_))
                            (_%__kont143742143743%_))))
                    (_%__kont143742143743%_))
                (_%__kont143742143743%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont143742143743%_))))
                                            (_%__kont143742143743%_))))
                                    (_%__kont143742143743%_))
                                (_%__kont143742143743%_))))
                        (_%__kont143742143743%_))
                    (_%__kont143742143743%_))
                (_%__kont143742143743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont143742143743%_))))
                                        (_%__kont143742143743%_))
                                    (_%__kont143742143743%_))
                                (_%__kont143742143743%_))))
                        (_%__kont143742143743%_))))
                (_%__kont143742143743%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141468141732%_
                                     _%target141465141727%_
                                     '()))))
                               (_%__match143757143758%_
                                (lambda (_%e141414141979%_
                                         _%hd141415141982%_
                                         _%tl141416141984%_
                                         _%__splice143730143731%_
                                         _%target141417141987%_
                                         _%tl141419141989%_)
                                  (letrec ((_%loop141420141992%_
                                            (lambda (_%hd141418141995%_
                                                     _%arg141424141997%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141418141995%_))
                                                  (let ((_%e141421142000%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141418141995%_))))
                                                    (let ((_%lp-tl141423142005%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141421142000%_)))
                                                          (_%lp-hd141422142003%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141421142000%_))))
                                                      (_%loop141420141992%_
                                                       _%lp-tl141423142005%_
                                                       (cons _%lp-hd141422142003%_
                                                             _%arg141424141997%_))))
                                                  (let ((_%arg141425142008%_
                                                         (reverse _%arg141424141997%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl141416141984%_))
                                                        (let ((_%e141426142011%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl141416141984%_))))
                  (let ((_%tl141428142016%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e141426142011%_)))
                        (_%hd141427142014%_
                         (let ()
                           (declare (not safe))
                           (##car _%e141426142011%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd141427142014%_))
                        (let ((_%e141429142019%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd141427142014%_))))
                          (let ((_%tl141431142024%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141429142019%_)))
                                (_%hd141430142022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141429142019%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd141430142022%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd141430142022%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141431142024%_))
                                        (let ((_%e141432142027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141431142024%_))))
                                          (let ((_%tl141434142032%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141432142027%_)))
                                                (_%hd141433142030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141432142027%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141433142030%_))
                                                (let ((_%e141435142035%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141433142030%_))))
                                                  (let ((_%tl141437142040%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141435142035%_)))
                                                        (_%hd141436142038%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141435142035%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd141436142038%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd141436142038%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl141437142040%_))
                        (let ((_%e141438142043%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl141437142040%_))))
                          (let ((_%tl141440142048%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141438142043%_)))
                                (_%hd141439142046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141438142043%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl141440142048%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl141434142032%_))
                                    (let ((_%__splice143732143733%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl141434142032%_
                                              '0))))
                                      (let ((_%tl141443142053%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143732143733%_
                                                '1)))
                                            (_%target141441142051%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143732143733%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl141443142053%_))
                                            (letrec ((_%loop141444142056%_
                                                      (lambda (_%hd141442142059%_
                                                               _%xarg141448142061%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd141442142059%_))
                                                            (let ((_%e141445142064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd141442142059%_))))
                      (let ((_%lp-tl141447142069%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141445142064%_)))
                            (_%lp-hd141446142067%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141445142064%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd141446142067%_))
                            (let ((_%e141450142072%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd141446142067%_))))
                              (let ((_%tl141452142077%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141450142072%_)))
                                    (_%hd141451142075%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141450142072%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141451142075%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd141451142075%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141452142077%_))
                                            (let ((_%e141453142080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141452142077%_))))
                                              (let ((_%tl141455142085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141453142080%_)))
                                                    (_%hd141454142083%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141453142080%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl141455142085%_))
                                                    (_%loop141444142056%_
                                                     _%lp-tl141447142069%_
                                                     (cons _%hd141454142083%_
                                                           _%xarg141448142061%_))
                                                    (_%__match143769143770%_
                                                     _%e141414141979%_
                                                     _%hd141415141982%_
                                                     _%tl141416141984%_
                                                     _%__splice143730143731%_
                                                     _%target141417141987%_
                                                     _%tl141419141989%_))))
                                            (_%__match143769143770%_
                                             _%e141414141979%_
                                             _%hd141415141982%_
                                             _%tl141416141984%_
                                             _%__splice143730143731%_
                                             _%target141417141987%_
                                             _%tl141419141989%_))
                                        (_%__match143769143770%_
                                         _%e141414141979%_
                                         _%hd141415141982%_
                                         _%tl141416141984%_
                                         _%__splice143730143731%_
                                         _%target141417141987%_
                                         _%tl141419141989%_))
                                    (_%__match143769143770%_
                                     _%e141414141979%_
                                     _%hd141415141982%_
                                     _%tl141416141984%_
                                     _%__splice143730143731%_
                                     _%target141417141987%_
                                     _%tl141419141989%_))))
                            (_%__match143769143770%_
                             _%e141414141979%_
                             _%hd141415141982%_
                             _%tl141416141984%_
                             _%__splice143730143731%_
                             _%target141417141987%_
                             _%tl141419141989%_))))
                    (let ((_%xarg141449142088%_
                           (reverse _%xarg141448142061%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl141428142016%_))
                          (let ((_%L142091%_ _%xarg141449142088%_)
                                (_%L142092%_ _%hd141439142046%_)
                                (_%L142093%_ _%arg141425142008%_))
                            (if (and (let ((__tmp145023
                                            (let ((__tmp145024
                                                   (lambda (_%g142121142124%_
                                                            _%g142122142126%_)
                                                     (cons _%g142121142124%_
                                                           _%g142122142126%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145024
                                               '()
                                               _%L142093%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp145023))
                                     (let ((__tmp145027
                                            (length (let ((__tmp145028
                                                           (lambda (_%g142128142131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142129142133%_)
                     (cons _%g142128142131%_ _%g142129142133%_))))
              (declare (not safe))
              (__foldr1 __tmp145028 '() _%L142093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp145025
                                            (length (let ((__tmp145026
                                                           (lambda (_%g142135142138%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142136142140%_)
                     (cons _%g142135142138%_ _%g142136142140%_))))
              (declare (not safe))
              (__foldr1 __tmp145026 '() _%L142091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145027 __tmp145025))
                                     (let ((__tmp145031
                                            (let ((__tmp145032
                                                   (lambda (_%g142142142145%_
                                                            _%g142143142147%_)
                                                     (cons _%g142142142145%_
                                                           _%g142143142147%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145032
                                               '()
                                               _%L142093%_)))
                                           (__tmp145029
                                            (let ((__tmp145030
                                                   (lambda (_%g142149142152%_
                                                            _%g142150142154%_)
                                                     (cons _%g142149142152%_
                                                           _%g142150142154%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145030
                                               '()
                                               _%L142091%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp145031
                                        __tmp145029))
                                     (not (let ((__tmp145035
                                                 (lambda (_%g142156142158%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g142156142158%_
                                                      _%L142092%_))))
                                                (__tmp145033
                                                 (let ((__tmp145034
                                                        (lambda (_%g142160142163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g142161142165%_)
                  (cons _%g142160142163%_ _%g142161142165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp145034
                                                    '()
                                                    _%L142093%_))))
                                            (declare (not safe))
                                            (__find __tmp145035 __tmp145033))))
                                (_%__kont143728143729%_
                                 _%L142091%_
                                 _%L142092%_
                                 _%L142093%_)
                                (_%__match143769143770%_
                                 _%e141414141979%_
                                 _%hd141415141982%_
                                 _%tl141416141984%_
                                 _%__splice143730143731%_
                                 _%target141417141987%_
                                 _%tl141419141989%_)))
                          (_%__match143769143770%_
                           _%e141414141979%_
                           _%hd141415141982%_
                           _%tl141416141984%_
                           _%__splice143730143731%_
                           _%target141417141987%_
                           _%tl141419141989%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop141444142056%_
                                               _%target141441142051%_
                                               '()))
                                            (_%__match143769143770%_
                                             _%e141414141979%_
                                             _%hd141415141982%_
                                             _%tl141416141984%_
                                             _%__splice143730143731%_
                                             _%target141417141987%_
                                             _%tl141419141989%_))))
                                    (_%__match143769143770%_
                                     _%e141414141979%_
                                     _%hd141415141982%_
                                     _%tl141416141984%_
                                     _%__splice143730143731%_
                                     _%target141417141987%_
                                     _%tl141419141989%_))
                                (_%__match143769143770%_
                                 _%e141414141979%_
                                 _%hd141415141982%_
                                 _%tl141416141984%_
                                 _%__splice143730143731%_
                                 _%target141417141987%_
                                 _%tl141419141989%_))))
                        (_%__match143769143770%_
                         _%e141414141979%_
                         _%hd141415141982%_
                         _%tl141416141984%_
                         _%__splice143730143731%_
                         _%target141417141987%_
                         _%tl141419141989%_))
                    (_%__match143769143770%_
                     _%e141414141979%_
                     _%hd141415141982%_
                     _%tl141416141984%_
                     _%__splice143730143731%_
                     _%target141417141987%_
                     _%tl141419141989%_))
                (_%__match143769143770%_
                 _%e141414141979%_
                 _%hd141415141982%_
                 _%tl141416141984%_
                 _%__splice143730143731%_
                 _%target141417141987%_
                 _%tl141419141989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143769143770%_
                                                 _%e141414141979%_
                                                 _%hd141415141982%_
                                                 _%tl141416141984%_
                                                 _%__splice143730143731%_
                                                 _%target141417141987%_
                                                 _%tl141419141989%_))))
                                        (_%__match143769143770%_
                                         _%e141414141979%_
                                         _%hd141415141982%_
                                         _%tl141416141984%_
                                         _%__splice143730143731%_
                                         _%target141417141987%_
                                         _%tl141419141989%_))
                                    (_%__match143769143770%_
                                     _%e141414141979%_
                                     _%hd141415141982%_
                                     _%tl141416141984%_
                                     _%__splice143730143731%_
                                     _%target141417141987%_
                                     _%tl141419141989%_))
                                (_%__match143769143770%_
                                 _%e141414141979%_
                                 _%hd141415141982%_
                                 _%tl141416141984%_
                                 _%__splice143730143731%_
                                 _%target141417141987%_
                                 _%tl141419141989%_))))
                        (_%__match143769143770%_
                         _%e141414141979%_
                         _%hd141415141982%_
                         _%tl141416141984%_
                         _%__splice143730143731%_
                         _%target141417141987%_
                         _%tl141419141989%_))))
                (_%__match143769143770%_
                 _%e141414141979%_
                 _%hd141415141982%_
                 _%tl141416141984%_
                 _%__splice143730143731%_
                 _%target141417141987%_
                 _%tl141419141989%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop141420141992%_
                                     _%target141417141987%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143726143727%_))
                              (let ((_%e141414141979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143726143727%_))))
                                (let ((_%tl141416141984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141414141979%_)))
                                      (_%hd141415141982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141414141979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd141415141982%_))
                                      (let ((_%__splice143730143731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd141415141982%_
                                                '0))))
                                        (let ((_%tl141419141989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143730143731%_
                                                  '1)))
                                              (_%target141417141987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143730143731%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141419141989%_))
                                              (_%__match143757143758%_
                                               _%e141414141979%_
                                               _%hd141415141982%_
                                               _%tl141416141984%_
                                               _%__splice143730143731%_
                                               _%target141417141987%_
                                               _%tl141419141989%_)
                                              (_%__match143769143770%_
                                               _%e141414141979%_
                                               _%hd141415141982%_
                                               _%tl141416141984%_
                                               _%__splice143730143731%_
                                               _%target141417141987%_
                                               _%tl141419141989%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141416141984%_))
                                          (let ((_%e141529141586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141416141984%_))))
                                            (let ((_%tl141531141591%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141529141586%_)))
                                                  (_%hd141530141589%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141529141586%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd141530141589%_))
                                                  (let ((_%e141532141594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd141530141589%_))))
                                                    (let ((_%tl141534141599%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141532141594%_)))
                                                          (_%hd141533141597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141532141594%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd141533141597%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd141533141597%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141534141599%_))
                          (let ((_%e141535141602%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141534141599%_))))
                            (let ((_%tl141537141607%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141535141602%_)))
                                  (_%hd141536141605%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141535141602%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd141536141605%_))
                                  (let ((_%e141538141610%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd141536141605%_))))
                                    (let ((_%tl141540141615%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e141538141610%_)))
                                          (_%hd141539141613%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e141538141610%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd141539141613%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd141539141613%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl141540141615%_))
                                                  (let ((_%e141541141618%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl141540141615%_))))
                                                    (let ((_%tl141543141623%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e141541141618%_)))
                                                          (_%hd141542141621%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e141541141618%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141543141623%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl141537141607%_))
                      (let ((_%e141544141626%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl141537141607%_))))
                        (let ((_%tl141546141631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141544141626%_)))
                              (_%hd141545141629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141544141626%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd141545141629%_))
                              (let ((_%e141547141634%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd141545141629%_))))
                                (let ((_%tl141549141639%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141547141634%_)))
                                      (_%hd141548141637%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141547141634%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd141548141637%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd141548141637%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141549141639%_))
                                              (let ((_%e141550141642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141549141639%_))))
                                                (let ((_%tl141552141647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141550141642%_)))
                                                      (_%hd141551141645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141550141642%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141552141647%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl141546141631%_))
                                                          (let ((_%e141553141650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl141546141631%_))))
                    (let ((_%tl141555141655%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e141553141650%_)))
                          (_%hd141554141653%_
                           (let ()
                             (declare (not safe))
                             (##car _%e141553141650%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd141554141653%_))
                          (let ((_%e141556141658%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd141554141653%_))))
                            (let ((_%tl141558141663%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141556141658%_)))
                                  (_%hd141557141661%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141556141658%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd141557141661%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd141557141661%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl141558141663%_))
                                          (let ((_%e141559141666%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl141558141663%_))))
                                            (let ((_%tl141561141671%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e141559141666%_)))
                                                  (_%hd141560141669%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e141559141666%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl141561141671%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141555141655%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl141531141591%_))
                                                          (_%__match143867143868%_
                                                           _%e141414141979%_
                                                           _%hd141415141982%_
                                                           _%tl141416141984%_
                                                           _%e141529141586%_
                                                           _%hd141530141589%_
                                                           _%tl141531141591%_
                                                           _%e141532141594%_
                                                           _%hd141533141597%_
                                                           _%tl141534141599%_
                                                           _%e141535141602%_
                                                           _%hd141536141605%_
                                                           _%tl141537141607%_
                                                           _%e141538141610%_
                                                           _%hd141539141613%_
                                                           _%tl141540141615%_
                                                           _%e141541141618%_
                                                           _%hd141542141621%_
                                                           _%tl141543141623%_
                                                           _%e141544141626%_
                                                           _%hd141545141629%_
                                                           _%tl141546141631%_
                                                           _%e141547141634%_
                                                           _%hd141548141637%_
                                                           _%tl141549141639%_
                                                           _%e141550141642%_
                                                           _%hd141551141645%_
                                                           _%tl141552141647%_
                                                           _%e141553141650%_
                                                           _%hd141554141653%_
                                                           _%tl141555141655%_
                                                           _%e141556141658%_
                                                           _%hd141557141661%_
                                                           _%tl141558141663%_
                                                           _%e141559141666%_
                                                           _%hd141560141669%_
                                                           _%tl141561141671%_)
                                                          (_%__kont143742143743%_))
                                                      (_%__kont143742143743%_))
                                                  (_%__kont143742143743%_))))
                                          (_%__kont143742143743%_))
                                      (_%__kont143742143743%_))
                                  (_%__kont143742143743%_))))
                          (_%__kont143742143743%_))))
                  (_%__kont143742143743%_))
              (_%__kont143742143743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont143742143743%_))
                                          (_%__kont143742143743%_))
                                      (_%__kont143742143743%_))))
                              (_%__kont143742143743%_))))
                      (_%__kont143742143743%_))
                  (_%__kont143742143743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143742143743%_))
                                              (_%__kont143742143743%_))
                                          (_%__kont143742143743%_))))
                                  (_%__kont143742143743%_))))
                          (_%__kont143742143743%_))
                      (_%__kont143742143743%_))
                  (_%__kont143742143743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont143742143743%_))))
                                          (_%__kont143742143743%_)))))
                              (_%__kont143742143743%_)))))))
                 (_%dispatch-case-e140714%_
                  (lambda (_%hd140865%_ _%body140866%_)
                    (let* ((_%form140868%_
                            (cons _%hd140865%_ (cons _%body140866%_ '())))
                           (_%__stx143870143871%_ _%form140868%_)
                           (_%g140872140996%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx143870143871%_)))))
                      (let ((_%__kont143872143873%_
                             (lambda (_%L141367%_ _%L141368%_ _%L141369%_)
                               (let ((__tmp145036
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141368%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140710%_
                                  __tmp145036))))
                            (_%__kont143878143879%_
                             (lambda (_%L141215%_
                                      _%L141216%_
                                      _%L141217%_
                                      _%L141218%_)
                               (let ((__tmp145037
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141215%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140710%_
                                  __tmp145037))))
                            (_%__kont143882143883%_
                             (lambda (_%L141081%_ _%L141082%_ _%L141083%_)
                               (let ((__tmp145038
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L141081%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self140710%_
                                  __tmp145038)))))
                        (let* ((_%__match143979143980%_
                                (lambda (_%e140962141001%_
                                         _%hd140963141004%_
                                         _%tl140964141006%_
                                         _%e140965141009%_
                                         _%hd140966141012%_
                                         _%tl140967141014%_
                                         _%e140968141017%_
                                         _%hd140969141020%_
                                         _%tl140970141022%_
                                         _%e140971141025%_
                                         _%hd140972141028%_
                                         _%tl140973141030%_
                                         _%e140974141033%_
                                         _%hd140975141036%_
                                         _%tl140976141038%_
                                         _%e140977141041%_
                                         _%hd140978141044%_
                                         _%tl140979141046%_
                                         _%e140980141049%_
                                         _%hd140981141052%_
                                         _%tl140982141054%_
                                         _%e140983141057%_
                                         _%hd140984141060%_
                                         _%tl140985141062%_
                                         _%e140986141065%_
                                         _%hd140987141068%_
                                         _%tl140988141070%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140982141054%_))
                                      (let ((_%e140989141073%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140982141054%_))))
                                        (let ((_%tl140991141078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140989141073%_)))
                                              (_%hd140990141076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140989141073%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140991141078%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140967141014%_))
                                                  (_%__kont143882143883%_
                                                   _%hd140987141068%_
                                                   _%hd140978141044%_
                                                   _%hd140963141004%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140872140996%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140872140996%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140872140996%_)))))
                               (_%__match143909143910%_
                                (lambda (_%e140923141119%_
                                         _%hd140924141122%_
                                         _%tl140925141124%_
                                         _%__splice143880143881%_
                                         _%target140926141127%_
                                         _%tl140928141129%_)
                                  (letrec ((_%loop140929141132%_
                                            (lambda (_%hd140927141135%_
                                                     _%arg140933141137%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140927141135%_))
                                                  (let ((_%e140930141140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140927141135%_))))
                                                    (let ((_%lp-tl140932141145%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140930141140%_)))
                                                          (_%lp-hd140931141143%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140930141140%_))))
                                                      (_%loop140929141132%_
                                                       _%lp-tl140932141145%_
                                                       (cons _%lp-hd140931141143%_
                                                             _%arg140933141137%_))))
                                                  (let ((_%arg140934141148%_
                                                         (reverse _%arg140933141137%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140925141124%_))
                                                        (let ((_%e140935141151%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140925141124%_))))
                  (let ((_%tl140937141156%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140935141151%_)))
                        (_%hd140936141154%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140935141151%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140936141154%_))
                        (let ((_%e140938141159%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140936141154%_))))
                          (let ((_%tl140940141164%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140938141159%_)))
                                (_%hd140939141162%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140938141159%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140939141162%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140939141162%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140940141164%_))
                                        (let ((_%e140941141167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140940141164%_))))
                                          (let ((_%tl140943141172%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140941141167%_)))
                                                (_%hd140942141170%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140941141167%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140942141170%_))
                                                (let ((_%e140944141175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140942141170%_))))
                                                  (let ((_%tl140946141180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140944141175%_)))
                                                        (_%hd140945141178%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140944141175%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140945141178%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140945141178%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140946141180%_))
                        (let ((_%e140947141183%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140946141180%_))))
                          (let ((_%tl140949141188%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140947141183%_)))
                                (_%hd140948141186%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140947141183%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140949141188%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl140943141172%_))
                                    (let ((_%e140950141191%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl140943141172%_))))
                                      (let ((_%tl140952141196%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e140950141191%_)))
                                            (_%hd140951141194%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e140950141191%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd140951141194%_))
                                            (let ((_%e140953141199%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd140951141194%_))))
                                              (let ((_%tl140955141204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140953141199%_)))
                                                    (_%hd140954141202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140953141199%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd140954141202%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd140954141202%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140955141204%_))
                                                            (let ((_%e140956141207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140955141204%_))))
                      (let ((_%tl140958141212%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140956141207%_)))
                            (_%hd140957141210%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140956141207%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140958141212%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140937141156%_))
                                (_%__kont143878143879%_
                                 _%hd140957141210%_
                                 _%hd140948141186%_
                                 _%tl140928141129%_
                                 _%arg140934141148%_)
                                (_%__match143979143980%_
                                 _%e140923141119%_
                                 _%hd140924141122%_
                                 _%tl140925141124%_
                                 _%e140935141151%_
                                 _%hd140936141154%_
                                 _%tl140937141156%_
                                 _%e140938141159%_
                                 _%hd140939141162%_
                                 _%tl140940141164%_
                                 _%e140941141167%_
                                 _%hd140942141170%_
                                 _%tl140943141172%_
                                 _%e140944141175%_
                                 _%hd140945141178%_
                                 _%tl140946141180%_
                                 _%e140947141183%_
                                 _%hd140948141186%_
                                 _%tl140949141188%_
                                 _%e140950141191%_
                                 _%hd140951141194%_
                                 _%tl140952141196%_
                                 _%e140953141199%_
                                 _%hd140954141202%_
                                 _%tl140955141204%_
                                 _%e140956141207%_
                                 _%hd140957141210%_
                                 _%tl140958141212%_))
                            (let ()
                              (declare (not safe))
                              (_%g140872140996%_)))))
                    (let () (declare (not safe)) (_%g140872140996%_)))
                (let () (declare (not safe)) (_%g140872140996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140872140996%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g140872140996%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140872140996%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140872140996%_)))))
                        (let () (declare (not safe)) (_%g140872140996%_)))
                    (let () (declare (not safe)) (_%g140872140996%_)))
                (let () (declare (not safe)) (_%g140872140996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g140872140996%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140872140996%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g140872140996%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g140872140996%_)))))
                        (let () (declare (not safe)) (_%g140872140996%_)))))
                (let () (declare (not safe)) (_%g140872140996%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140929141132%_
                                     _%target140926141127%_
                                     '()))))
                               (_%__match143897143898%_
                                (lambda (_%e140877141255%_
                                         _%hd140878141258%_
                                         _%tl140879141260%_
                                         _%__splice143874143875%_
                                         _%target140880141263%_
                                         _%tl140882141265%_)
                                  (letrec ((_%loop140883141268%_
                                            (lambda (_%hd140881141271%_
                                                     _%arg140887141273%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140881141271%_))
                                                  (let ((_%e140884141276%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140881141271%_))))
                                                    (let ((_%lp-tl140886141281%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140884141276%_)))
                                                          (_%lp-hd140885141279%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140884141276%_))))
                                                      (_%loop140883141268%_
                                                       _%lp-tl140886141281%_
                                                       (cons _%lp-hd140885141279%_
                                                             _%arg140887141273%_))))
                                                  (let ((_%arg140888141284%_
                                                         (reverse _%arg140887141273%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140879141260%_))
                                                        (let ((_%e140889141287%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140879141260%_))))
                  (let ((_%tl140891141292%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140889141287%_)))
                        (_%hd140890141290%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140889141287%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140890141290%_))
                        (let ((_%e140892141295%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140890141290%_))))
                          (let ((_%tl140894141300%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140892141295%_)))
                                (_%hd140893141298%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140892141295%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd140893141298%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd140893141298%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140894141300%_))
                                        (let ((_%e140895141303%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140894141300%_))))
                                          (let ((_%tl140897141308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140895141303%_)))
                                                (_%hd140896141306%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140895141303%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140896141306%_))
                                                (let ((_%e140898141311%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140896141306%_))))
                                                  (let ((_%tl140900141316%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140898141311%_)))
                                                        (_%hd140899141314%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140898141311%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd140899141314%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd140899141314%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl140900141316%_))
                        (let ((_%e140901141319%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl140900141316%_))))
                          (let ((_%tl140903141324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140901141319%_)))
                                (_%hd140902141322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140901141319%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140903141324%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl140897141308%_))
                                    (let ((_%__splice143876143877%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl140897141308%_
                                              '0))))
                                      (let ((_%tl140906141329%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143876143877%_
                                                '1)))
                                            (_%target140904141327%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice143876143877%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl140906141329%_))
                                            (letrec ((_%loop140907141332%_
                                                      (lambda (_%hd140905141335%_
                                                               _%xarg140911141337%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd140905141335%_))
                                                            (let ((_%e140908141340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd140905141335%_))))
                      (let ((_%lp-tl140910141345%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140908141340%_)))
                            (_%lp-hd140909141343%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140908141340%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd140909141343%_))
                            (let ((_%e140913141348%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd140909141343%_))))
                              (let ((_%tl140915141353%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140913141348%_)))
                                    (_%hd140914141351%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140913141348%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140914141351%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd140914141351%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140915141353%_))
                                            (let ((_%e140916141356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140915141353%_))))
                                              (let ((_%tl140918141361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140916141356%_)))
                                                    (_%hd140917141359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140916141356%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl140918141361%_))
                                                    (_%loop140907141332%_
                                                     _%lp-tl140910141345%_
                                                     (cons _%hd140917141359%_
                                                           _%xarg140911141337%_))
                                                    (_%__match143909143910%_
                                                     _%e140877141255%_
                                                     _%hd140878141258%_
                                                     _%tl140879141260%_
                                                     _%__splice143874143875%_
                                                     _%target140880141263%_
                                                     _%tl140882141265%_))))
                                            (_%__match143909143910%_
                                             _%e140877141255%_
                                             _%hd140878141258%_
                                             _%tl140879141260%_
                                             _%__splice143874143875%_
                                             _%target140880141263%_
                                             _%tl140882141265%_))
                                        (_%__match143909143910%_
                                         _%e140877141255%_
                                         _%hd140878141258%_
                                         _%tl140879141260%_
                                         _%__splice143874143875%_
                                         _%target140880141263%_
                                         _%tl140882141265%_))
                                    (_%__match143909143910%_
                                     _%e140877141255%_
                                     _%hd140878141258%_
                                     _%tl140879141260%_
                                     _%__splice143874143875%_
                                     _%target140880141263%_
                                     _%tl140882141265%_))))
                            (_%__match143909143910%_
                             _%e140877141255%_
                             _%hd140878141258%_
                             _%tl140879141260%_
                             _%__splice143874143875%_
                             _%target140880141263%_
                             _%tl140882141265%_))))
                    (let ((_%xarg140912141364%_
                           (reverse _%xarg140911141337%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140891141292%_))
                          (_%__kont143872143873%_
                           _%xarg140912141364%_
                           _%hd140902141322%_
                           _%arg140888141284%_)
                          (_%__match143909143910%_
                           _%e140877141255%_
                           _%hd140878141258%_
                           _%tl140879141260%_
                           _%__splice143874143875%_
                           _%target140880141263%_
                           _%tl140882141265%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop140907141332%_
                                               _%target140904141327%_
                                               '()))
                                            (_%__match143909143910%_
                                             _%e140877141255%_
                                             _%hd140878141258%_
                                             _%tl140879141260%_
                                             _%__splice143874143875%_
                                             _%target140880141263%_
                                             _%tl140882141265%_))))
                                    (_%__match143909143910%_
                                     _%e140877141255%_
                                     _%hd140878141258%_
                                     _%tl140879141260%_
                                     _%__splice143874143875%_
                                     _%target140880141263%_
                                     _%tl140882141265%_))
                                (_%__match143909143910%_
                                 _%e140877141255%_
                                 _%hd140878141258%_
                                 _%tl140879141260%_
                                 _%__splice143874143875%_
                                 _%target140880141263%_
                                 _%tl140882141265%_))))
                        (_%__match143909143910%_
                         _%e140877141255%_
                         _%hd140878141258%_
                         _%tl140879141260%_
                         _%__splice143874143875%_
                         _%target140880141263%_
                         _%tl140882141265%_))
                    (_%__match143909143910%_
                     _%e140877141255%_
                     _%hd140878141258%_
                     _%tl140879141260%_
                     _%__splice143874143875%_
                     _%target140880141263%_
                     _%tl140882141265%_))
                (_%__match143909143910%_
                 _%e140877141255%_
                 _%hd140878141258%_
                 _%tl140879141260%_
                 _%__splice143874143875%_
                 _%target140880141263%_
                 _%tl140882141265%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match143909143910%_
                                                 _%e140877141255%_
                                                 _%hd140878141258%_
                                                 _%tl140879141260%_
                                                 _%__splice143874143875%_
                                                 _%target140880141263%_
                                                 _%tl140882141265%_))))
                                        (_%__match143909143910%_
                                         _%e140877141255%_
                                         _%hd140878141258%_
                                         _%tl140879141260%_
                                         _%__splice143874143875%_
                                         _%target140880141263%_
                                         _%tl140882141265%_))
                                    (_%__match143909143910%_
                                     _%e140877141255%_
                                     _%hd140878141258%_
                                     _%tl140879141260%_
                                     _%__splice143874143875%_
                                     _%target140880141263%_
                                     _%tl140882141265%_))
                                (_%__match143909143910%_
                                 _%e140877141255%_
                                 _%hd140878141258%_
                                 _%tl140879141260%_
                                 _%__splice143874143875%_
                                 _%target140880141263%_
                                 _%tl140882141265%_))))
                        (_%__match143909143910%_
                         _%e140877141255%_
                         _%hd140878141258%_
                         _%tl140879141260%_
                         _%__splice143874143875%_
                         _%target140880141263%_
                         _%tl140882141265%_))))
                (_%__match143909143910%_
                 _%e140877141255%_
                 _%hd140878141258%_
                 _%tl140879141260%_
                 _%__splice143874143875%_
                 _%target140880141263%_
                 _%tl140882141265%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop140883141268%_
                                     _%target140880141263%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx143870143871%_))
                              (let ((_%e140877141255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx143870143871%_))))
                                (let ((_%tl140879141260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140877141255%_)))
                                      (_%hd140878141258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140877141255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd140878141258%_))
                                      (let ((_%__splice143874143875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd140878141258%_
                                                '0))))
                                        (let ((_%tl140882141265%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143874143875%_
                                                  '1)))
                                              (_%target140880141263%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice143874143875%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140882141265%_))
                                              (_%__match143897143898%_
                                               _%e140877141255%_
                                               _%hd140878141258%_
                                               _%tl140879141260%_
                                               _%__splice143874143875%_
                                               _%target140880141263%_
                                               _%tl140882141265%_)
                                              (_%__match143909143910%_
                                               _%e140877141255%_
                                               _%hd140878141258%_
                                               _%tl140879141260%_
                                               _%__splice143874143875%_
                                               _%target140880141263%_
                                               _%tl140882141265%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl140879141260%_))
                                          (let ((_%e140965141009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl140879141260%_))))
                                            (let ((_%tl140967141014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e140965141009%_)))
                                                  (_%hd140966141012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e140965141009%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd140966141012%_))
                                                  (let ((_%e140968141017%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd140966141012%_))))
                                                    (let ((_%tl140970141022%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140968141017%_)))
                                                          (_%hd140969141020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140968141017%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd140969141020%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd140969141020%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140970141022%_))
                          (let ((_%e140971141025%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140970141022%_))))
                            (let ((_%tl140973141030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140971141025%_)))
                                  (_%hd140972141028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140971141025%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140972141028%_))
                                  (let ((_%e140974141033%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140972141028%_))))
                                    (let ((_%tl140976141038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140974141033%_)))
                                          (_%hd140975141036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140974141033%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140975141036%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140975141036%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140976141038%_))
                                                  (let ((_%e140977141041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140976141038%_))))
                                                    (let ((_%tl140979141046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140977141041%_)))
                                                          (_%hd140978141044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140977141041%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140979141046%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl140973141030%_))
                      (let ((_%e140980141049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl140973141030%_))))
                        (let ((_%tl140982141054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140980141049%_)))
                              (_%hd140981141052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140980141049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd140981141052%_))
                              (let ((_%e140983141057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd140981141052%_))))
                                (let ((_%tl140985141062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140983141057%_)))
                                      (_%hd140984141060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140983141057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd140984141060%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd140984141060%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140985141062%_))
                                              (let ((_%e140986141065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140985141062%_))))
                                                (let ((_%tl140988141070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140986141065%_)))
                                                      (_%hd140987141068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140986141065%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140988141070%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl140982141054%_))
                                                          (let ((_%e140989141073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl140982141054%_))))
                    (let ((_%tl140991141078%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140989141073%_)))
                          (_%hd140990141076%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140989141073%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl140991141078%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140967141014%_))
                              (_%__kont143882143883%_
                               _%hd140987141068%_
                               _%hd140978141044%_
                               _%hd140878141258%_)
                              (let ()
                                (declare (not safe))
                                (_%g140872140996%_)))
                          (let () (declare (not safe)) (_%g140872140996%_)))))
                  (let () (declare (not safe)) (_%g140872140996%_)))
              (let () (declare (not safe)) (_%g140872140996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g140872140996%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140872140996%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g140872140996%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g140872140996%_)))))
                      (let () (declare (not safe)) (_%g140872140996%_)))
                  (let () (declare (not safe)) (_%g140872140996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140872140996%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g140872140996%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140872140996%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g140872140996%_)))))
                          (let () (declare (not safe)) (_%g140872140996%_)))
                      (let () (declare (not safe)) (_%g140872140996%_)))
                  (let () (declare (not safe)) (_%g140872140996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g140872140996%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g140872140996%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g140872140996%_))))))))
                 (_%generate1140715%_
                  (lambda (_%args140850%_
                           _%arglen140851%_
                           _%hd140852%_
                           _%body140853%_)
                    (let* ((_%len140855%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd140852%_)))
                           (_%condition140860%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd140852%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen140851%_
                                                (cons _%len140855%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen140851%_ (cons _%len140855%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len140855%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen140851%_
                                                    (cons _%len140855%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen140851%_ (cons _%len140855%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch140862%_
                            (if (_%dispatch-case?140713%_
                                 _%hd140852%_
                                 _%body140853%_)
                                (_%dispatch-case-e140714%_
                                 _%hd140852%_
                                 _%body140853%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self140710%_
                                 _%hd140852%_
                                 _%body140853%_))))
                      (cons _%condition140860%_
                            (cons (cons 'apply
                                        (cons _%dispatch140862%_
                                              (cons _%args140850%_ '())))
                                  '()))))))
          (let* ((_%g140717140745%_
                  (lambda (_%g140718140742%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140718140742%_))))
                 (_%g140716140847%_
                  (lambda (_%g140718140748%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140718140748%_))
                        (let ((_%e140721140750%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140718140748%_))))
                          (let ((_%hd140722140753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140721140750%_)))
                                (_%tl140723140755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140721140750%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl140723140755%_))
                                (let ((_g145039_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl140723140755%_
                                          '0))))
                                  (begin
                                    (let ((_g145040_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145039_)
                                                 (##vector-length _g145039_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145040_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145040_)))
                                    (let ((_%target140724140758%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145039_ 0)))
                                          (_%tl140726140760%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145039_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140726140760%_))
                                          (letrec ((_%loop140727140763%_
                                                    (lambda (_%hd140725140766%_
                                                             _%body140731140768%_
                                                             _%hd140732140770%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd140725140766%_))
                                                          (let ((_%e140728140773%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd140725140766%_))))
                    (let ((_%lp-hd140729140776%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140728140773%_)))
                          (_%lp-tl140730140778%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140728140773%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd140729140776%_))
                          (let ((_%e140735140781%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd140729140776%_))))
                            (let ((_%hd140736140784%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140735140781%_)))
                                  (_%tl140737140786%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140735140781%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl140737140786%_))
                                  (let ((_%e140738140789%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl140737140786%_))))
                                    (let ((_%hd140739140792%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140738140789%_)))
                                          (_%tl140740140794%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140738140789%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl140740140794%_))
                                          (_%loop140727140763%_
                                           _%lp-tl140730140778%_
                                           (cons _%hd140739140792%_
                                                 _%body140731140768%_)
                                           (cons _%hd140736140784%_
                                                 _%hd140732140770%_))
                                          (_%g140717140745%_
                                           _%g140718140748%_))))
                                  (_%g140717140745%_ _%g140718140748%_))))
                          (_%g140717140745%_ _%g140718140748%_))))
                  (let ((_%body140733140797%_ (reverse _%body140731140768%_))
                        (_%hd140734140799%_ (reverse _%hd140732140770%_)))
                    ((lambda (_%L140802%_ _%L140803%_)
                       (let ((_%args140822%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen140823%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name140824%_
                              (let ((_%$e140819%_
                                     (let ((__tmp145041
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp145041 _%stx140711%_))))
                                (if _%$e140819%_
                                    _%$e140819%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args140822%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen140823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args140822%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args140822%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp145045
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name140824%_
                                                                (cons _%args140822%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp145042
                                  (map (lambda (_%g140825140828%_
                                                _%g140826140830%_)
                                         (_%generate1140715%_
                                          _%args140822%_
                                          _%arglen140823%_
                                          _%g140825140828%_
                                          _%g140826140830%_))
                                       (let ((__tmp145043
                                              (lambda (_%g140832140835%_
                                                       _%g140833140837%_)
                                                (cons _%g140832140835%_
                                                      _%g140833140837%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145043
                                          '()
                                          _%L140803%_))
                                       (let ((__tmp145044
                                              (lambda (_%g140839140842%_
                                                       _%g140840140844%_)
                                                (cons _%g140839140842%_
                                                      _%g140840140844%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp145044
                                          '()
                                          _%L140802%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp145045 __tmp145042)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body140733140797%_
                     _%hd140734140799%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop140727140763%_
                                             _%target140724140758%_
                                             '()
                                             '()))
                                          (_%g140717140745%_
                                           _%g140718140748%_)))))
                                (_%g140717140745%_ _%g140718140748%_))))
                        (_%g140717140745%_ _%g140718140748%_)))))
            (_%g140716140847%_ _%stx140711%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self139947%_ _%stx139948%_ _%compiled-body?139949%_)
        (letrec ((_%generate-simple139951%_
                  (lambda (_%hd140695%_ _%body140696%_)
                    (_%coalesce-boolean139952%_
                     (_%simplify-let139953%_
                      (gxc#generate-runtime-simple-let
                       _%self139947%_
                       'let
                       _%hd140695%_
                       _%body140696%_
                       _%compiled-body?139949%_)))))
                 (_%coalesce-boolean139952%_
                  (lambda (_%code140556%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code140557140583%_ _%code140556%_)
                               (_%else140559140591%_
                                (lambda () _%code140556%_))
                               (_%K140561140628%_
                                (lambda (_%expr2140594%_
                                         _%expr1140595%_
                                         _%id140596%_)
                                  (let* ((_%expr2140597140605%_
                                          _%expr2140594%_)
                                         (_%else140599140613%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1140595%_
                                                        (cons _%expr2140594%_
                                                              '())))))
                                         (_%K140601140618%_
                                          (lambda (_%exprs140616%_)
                                            (cons 'or
                                                  (cons _%expr1140595%_
                                                        _%exprs140616%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2140597140605%_))
                                        (let ((_%hd140602140621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2140597140605%_)))
                                              (_%tl140603140623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2140597140605%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140602140621%_ 'or))
                                              (let ((_%exprs140626%_
                                                     _%tl140603140623%_))
                                                (_%K140601140618%_
                                                 _%exprs140626%_))
                                              (_%else140599140613%_)))
                                        (_%else140599140613%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code140557140583%_))
                              (let ((_%hd140562140631%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code140557140583%_)))
                                    (_%tl140563140633%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code140557140583%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd140562140631%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl140563140633%_))
                                        (let ((_%hd140564140636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl140563140633%_)))
                                              (_%tl140565140638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl140563140633%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd140564140636%_))
                                              (let ((_%hd140576140641%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd140564140636%_)))
                                                    (_%tl140577140643%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd140564140636%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd140576140641%_))
                                                    (let ((_%hd140578140646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd140576140641%_)))
                                                          (_%tl140579140648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd140576140641%_))))
                                                      (let ((_%id140651%_
                                                             _%hd140578140646%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl140579140648%_))
                                                            (let ((_%hd140580140653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl140579140648%_)))
                          (_%tl140581140655%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140579140648%_))))
                      (let ((_%expr1140658%_ _%hd140580140653%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl140581140655%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl140577140643%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140565140638%_))
                                    (let ((_%hd140566140660%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140565140638%_)))
                                          (_%tl140567140662%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140565140638%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd140566140660%_))
                                          (let ((_%hd140568140665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd140566140660%_)))
                                                (_%tl140569140667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd140566140660%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd140568140665%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140569140667%_))
                                                    (let ((_%hd140570140670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140569140667%_)))
                                                          (_%tl140571140672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140569140667%_))))
                                                      (if ((lambda (_%g140674140676%_)
                                                             (eq? _%g140674140676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id140651%_))
                   _%hd140570140670%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl140571140672%_))
                      (let ((_%hd140572140679%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl140571140672%_)))
                            (_%tl140573140681%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl140571140672%_))))
                        (if ((lambda (_%g140683140685%_)
                               (eq? _%g140683140685%_ _%id140651%_))
                             _%hd140572140679%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140573140681%_))
                                (let ((_%hd140574140688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140573140681%_)))
                                      (_%tl140575140690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140573140681%_))))
                                  (let ((_%expr2140693%_ _%hd140574140688%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140575140690%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl140567140662%_))
                                            (_%K140561140628%_
                                             _%expr2140693%_
                                             _%expr1140658%_
                                             _%id140651%_)
                                            (_%else140559140591%_))
                                        (_%else140559140591%_))))
                                (_%else140559140591%_))
                            (_%else140559140591%_)))
                      (_%else140559140591%_))
                  (_%else140559140591%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140559140591%_))
                                                (_%else140559140591%_)))
                                          (_%else140559140591%_)))
                                    (_%else140559140591%_))
                                (_%else140559140591%_))
                            (_%else140559140591%_))))
                    (_%else140559140591%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140559140591%_)))
                                              (_%else140559140591%_)))
                                        (_%else140559140591%_))
                                    (_%else140559140591%_)))
                              (_%else140559140591%_)))
                        _%code140556%_)))
                 (_%simplify-let139953%_
                  (lambda (_%code140255%_)
                    (let* ((_%code140256140328%_ _%code140255%_)
                           (_%else140261140336%_ (lambda () _%code140255%_)))
                      (let ((_%K140320140536%_
                             (lambda (_%expr140534%_) _%expr140534%_))
                            (_%K140303140482%_
                             (lambda (_%body140478%_
                                      _%expr140479%_
                                      _%id140480%_)
                               (cons 'let
                                     (cons (cons (cons _%id140480%_
                                                       (cons _%expr140479%_
                                                             '()))
                                                 '())
                                           _%body140478%_))))
                            (_%K140280140406%_
                             (lambda (_%body140400%_
                                      _%expr2140401%_
                                      _%id2140402%_
                                      _%expr1140403%_
                                      _%id1140404%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140404%_
                                                       (cons _%expr1140403%_
                                                             '()))
                                                 (cons (cons _%id2140402%_
                                                             (cons _%expr2140401%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body140400%_))))
                            (_%K140263140345%_
                             (lambda (_%body140340%_
                                      _%bind140341%_
                                      _%expr1140342%_
                                      _%id1140343%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1140343%_
                                                       (cons _%expr1140342%_
                                                             '()))
                                                 _%bind140341%_)
                                           _%body140340%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code140256140328%_))
                            (let ((_%tl140322140541%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code140256140328%_)))
                                  (_%hd140321140539%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code140256140328%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140321140539%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl140322140541%_))
                                      (let ((_%tl140324140546%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl140322140541%_)))
                                            (_%hd140323140544%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl140322140541%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd140323140544%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl140324140546%_))
                                                (let ((_%tl140326140551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl140324140546%_)))
                                                      (_%hd140325140549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl140324140546%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl140326140551%_))
                                                      (let ((_%expr140554%_
                                                             _%hd140325140549%_))
                                                        (_%K140320140536%_
                                                         _%expr140554%_))
                                                      (_%else140261140336%_)))
                                                (_%else140261140336%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd140323140544%_))
                                                (let ((_%tl140315140497%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd140323140544%_)))
                                                      (_%hd140314140495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd140323140544%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd140314140495%_))
                                                      (let ((_%tl140317140502%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd140314140495%_)))
                    (_%hd140316140500%_
                     (let () (declare (not safe)) (##car _%hd140314140495%_))))
                (if (let () (declare (not safe)) (##pair? _%tl140317140502%_))
                    (let ((_%tl140319140509%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl140317140502%_)))
                          (_%hd140318140507%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl140317140502%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl140319140509%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl140315140497%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl140324140546%_))
                                  (let ((_%tl140309140516%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl140324140546%_)))
                                        (_%hd140308140514%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl140324140546%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd140308140514%_))
                                        (let ((_%tl140311140521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd140308140514%_)))
                                              (_%hd140310140519%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd140308140514%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd140310140519%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl140311140521%_))
                                                  (let ((_%tl140313140526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl140311140521%_)))
                                                        (_%hd140312140524%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl140311140521%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd140312140524%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl140309140516%_))
                                                            (let ((_%id140505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd140316140500%_)
                          (_%expr140512%_ _%hd140318140507%_)
                          (_%body140529%_ _%tl140313140526%_))
                      (_%K140303140482%_
                       _%body140529%_
                       _%expr140512%_
                       _%id140505%_))
                    (_%else140261140336%_))
                (if (let () (declare (not safe)) (##pair? _%hd140312140524%_))
                    (let ((_%tl140292140455%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd140312140524%_)))
                          (_%hd140291140453%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd140312140524%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140291140453%_))
                          (let ((_%tl140294140460%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140291140453%_)))
                                (_%hd140293140458%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140291140453%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl140294140460%_))
                                (let ((_%tl140296140467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl140294140460%_)))
                                      (_%hd140295140465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl140294140460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140296140467%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140292140455%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl140309140516%_))
                                              (let ((_%id1140429%_
                                                     _%hd140316140500%_)
                                                    (_%expr1140436%_
                                                     _%hd140318140507%_)
                                                    (_%id2140463%_
                                                     _%hd140293140458%_)
                                                    (_%expr2140470%_
                                                     _%hd140295140465%_)
                                                    (_%body140472%_
                                                     _%tl140313140526%_))
                                                (_%K140280140406%_
                                                 _%body140472%_
                                                 _%expr2140470%_
                                                 _%id2140463%_
                                                 _%expr1140436%_
                                                 _%id1140429%_))
                                              (_%else140261140336%_))
                                          (_%else140261140336%_))
                                      (_%else140261140336%_)))
                                (_%else140261140336%_)))
                          (_%else140261140336%_)))
                    (_%else140261140336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140261140336%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd140310140519%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl140311140521%_))
                                                      (let ((_%tl140273140389%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl140311140521%_)))
                    (_%hd140272140387%_
                     (let () (declare (not safe)) (##car _%tl140311140521%_))))
                (if (let () (declare (not safe)) (##null? _%tl140309140516%_))
                    (let ((_%id1140368%_ _%hd140316140500%_)
                          (_%expr1140375%_ _%hd140318140507%_)
                          (_%bind140392%_ _%hd140272140387%_)
                          (_%body140394%_ _%tl140273140389%_))
                      (_%K140263140345%_
                       _%body140394%_
                       _%bind140392%_
                       _%expr1140375%_
                       _%id1140368%_))
                    (_%else140261140336%_)))
              (_%else140261140336%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else140261140336%_))))
                                        (_%else140261140336%_)))
                                  (_%else140261140336%_))
                              (_%else140261140336%_))
                          (_%else140261140336%_)))
                    (_%else140261140336%_)))
              (_%else140261140336%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else140261140336%_))))
                                      (_%else140261140336%_))
                                  (_%else140261140336%_)))
                            (_%else140261140336%_))))))
                 (_%generate-values139954%_
                  (lambda (_%hd140068%_ _%body140069%_)
                    (let _%lp140071%_ ((_%rest140073%_ _%hd140068%_)
                                       (_%bind140074%_ '())
                                       (_%check140075%_ '())
                                       (_%post140076%_ '()))
                      (let* ((_%__stx144199144200%_ _%rest140073%_)
                             (_%g140079140090%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144199144200%_)))))
                        (let ((_%__kont144201144202%_
                               (lambda (_%L140117%_ _%L140118%_)
                                 (let* ((_%__stx144155144156%_ _%L140118%_)
                                        (_%g140133140158%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144155144156%_)))))
                                   (let ((_%__kont144157144158%_
                                          (lambda (_%L140231%_ _%L140232%_)
                                            (let ((_%eid140246%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L140232%_)))
                                                  (_%expr140247%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139947%_
                                                      _%L140231%_))))
                                              (_%lp140071%_
                                               _%L140117%_
                                               (cons (cons _%eid140246%_
                                                           (cons _%expr140247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140074%_)
                                               _%check140075%_
                                               _%post140076%_))))
                                         (_%__kont144159144160%_
                                          (lambda (_%L140179%_ _%L140180%_)
                                            (let* ((_%vals140193%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values140195%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals140193%_
                                                     _%L140180%_
                                                     _%L140179%_))
                                                   (_%refs140197%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals140193%_
                                                     _%L140180%_))
                                                   (_%expr140199%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139947%_
                                                       _%L140179%_))))
                                              (_%lp140071%_
                                               _%L140117%_
                                               (cons (cons _%vals140193%_
                                                           (cons _%expr140199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140074%_)
                                               (cons _%check-values140195%_
                                                     _%check140075%_)
                                               (cons _%refs140197%_
                                                     _%post140076%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144155144156%_))
                                         (let ((_%e140137140207%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144155144156%_))))
                                           (let ((_%tl140139140212%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140137140207%_)))
                                                 (_%hd140138140210%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140137140207%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd140138140210%_))
                                                 (let ((_%e140140140215%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd140138140210%_))))
                                                   (let ((_%tl140142140220%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140140140215%_)))
                                                         (_%hd140141140218%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140140140215%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl140142140220%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140139140212%_))
                     (let ((_%e140143140223%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140139140212%_))))
                       (let ((_%tl140145140228%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140143140223%_)))
                             (_%hd140144140226%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140143140223%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140145140228%_))
                             (_%__kont144157144158%_
                              _%hd140144140226%_
                              _%hd140141140218%_)
                             (let ()
                               (declare (not safe))
                               (_%g140133140158%_)))))
                     (let () (declare (not safe)) (_%g140133140158%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl140139140212%_))
                     (let ((_%e140151140171%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140139140212%_))))
                       (let ((_%tl140153140176%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140151140171%_)))
                             (_%hd140152140174%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140151140171%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140153140176%_))
                             (_%__kont144159144160%_
                              _%hd140152140174%_
                              _%hd140138140210%_)
                             (let ()
                               (declare (not safe))
                               (_%g140133140158%_)))))
                     (let () (declare (not safe)) (_%g140133140158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl140139140212%_))
                                                     (let ((_%e140151140171%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl140139140212%_))))
                                                       (let ((_%tl140153140176%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e140151140171%_)))
                     (_%hd140152140174%_
                      (let () (declare (not safe)) (##car _%e140151140171%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl140153140176%_))
                     (_%__kont144159144160%_
                      _%hd140152140174%_
                      _%hd140138140210%_)
                     (let () (declare (not safe)) (_%g140133140158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g140133140158%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g140133140158%_)))))))
                              (_%__kont144203144204%_
                               (lambda ()
                                 (let* ((_%body140097%_
                                         (if _%compiled-body?139949%_
                                             _%body140069%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139947%_
                                                _%body140069%_))))
                                        (_%body140099%_
                                         (_%generate-values-post139955%_
                                          _%post140076%_
                                          _%body140097%_))
                                        (_%body140101%_
                                         (_%generate-values-check139956%_
                                          _%check140075%_
                                          _%body140099%_)))
                                   (cons 'let
                                         (cons (reverse _%bind140074%_)
                                               (cons _%body140101%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144199144200%_))
                              (let ((_%e140083140109%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144199144200%_))))
                                (let ((_%tl140085140114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140083140109%_)))
                                      (_%hd140084140112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140083140109%_))))
                                  (_%__kont144201144202%_
                                   _%tl140085140114%_
                                   _%hd140084140112%_)))
                              (_%__kont144203144204%_)))))))
                 (_%generate-values-post139955%_
                  (lambda (_%post140027%_ _%body140028%_)
                    (let _%lp140030%_ ((_%rest140032%_ _%post140027%_)
                                       (_%body140033%_ _%body140028%_))
                      (let* ((_%rest140034140042%_ _%rest140032%_)
                             (_%else140036140050%_ (lambda () _%body140033%_))
                             (_%K140038140056%_
                              (lambda (_%rest140053%_ _%bind140054%_)
                                (_%lp140030%_
                                 _%rest140053%_
                                 (cons 'let
                                       (cons _%bind140054%_
                                             (cons _%body140033%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140034140042%_))
                            (let ((_%hd140039140059%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140034140042%_)))
                                  (_%tl140040140061%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140034140042%_))))
                              (let* ((_%bind140064%_ _%hd140039140059%_)
                                     (_%rest140066%_ _%tl140040140061%_))
                                (_%K140038140056%_
                                 _%rest140066%_
                                 _%bind140064%_)))
                            (_%else140036140050%_))))))
                 (_%generate-values-check139956%_
                  (lambda (_%check140024%_ _%body140025%_)
                    (cons 'begin
                          (let ((__tmp145047 (cons _%body140025%_ '()))
                                (__tmp145046 (reverse _%check140024%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145047 __tmp145046))))))
          (let* ((_%g139958139975%_
                  (lambda (_%g139959139972%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139959139972%_))))
                 (_%g139957140021%_
                  (lambda (_%g139959139978%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139959139978%_))
                        (let ((_%e139962139980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139959139978%_))))
                          (let ((_%hd139963139983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139962139980%_)))
                                (_%tl139964139985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139962139980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139964139985%_))
                                (let ((_%e139965139988%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139964139985%_))))
                                  (let ((_%hd139966139991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139965139988%_)))
                                        (_%tl139967139993%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139965139988%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139967139993%_))
                                        (let ((_%e139968139996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139967139993%_))))
                                          (let ((_%hd139969139999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139968139996%_)))
                                                (_%tl139970140001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139968139996%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139970140001%_))
                                                ((lambda (_%L140004%_
                                                          _%L140005%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140005%_)
                                                       (_%generate-simple139951%_
                                                        _%L140005%_
                                                        _%L140004%_)
                                                       (_%generate-values139954%_
                                                        _%L140005%_
                                                        _%L140004%_)))
                                                 _%hd139969139999%_
                                                 _%hd139966139991%_)
                                                (_%g139958139975%_
                                                 _%g139959139978%_))))
                                        (_%g139958139975%_
                                         _%g139959139978%_))))
                                (_%g139958139975%_ _%g139959139978%_))))
                        (_%g139958139975%_ _%g139959139978%_)))))
            (_%g139957140021%_ _%stx139948%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self140701%_ _%stx140702%_)
        (let ((_%compiled-body?140704%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self140701%_
           _%stx140702%_
           _%compiled-body?140704%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g145049_
        (let ((_g145048_ (let () (declare (not safe)) (##length _g145049_))))
          (cond ((let () (declare (not safe)) (##fx= _g145048_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g145049_))
                ((let () (declare (not safe)) (##fx= _g145048_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g145049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g145049_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals139841%_ _%hd139842%_)
        (let _%lp139844%_ ((_%rest139846%_ _%hd139842%_)
                           (_%k139847%_ '0)
                           (_%r139848%_ '()))
          (let* ((_%__stx144213144214%_ _%rest139846%_)
                 (_%g139853139870%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx144213144214%_)))))
            (let ((_%__kont144215144216%_
                   (lambda (_%L139933%_)
                     (_%lp139844%_
                      _%L139933%_
                      (let () (declare (not safe)) (##fx+ _%k139847%_ '1))
                      _%r139848%_)))
                  (_%__kont144217144218%_
                   (lambda (_%L139906%_ _%L139907%_)
                     (_%lp139844%_
                      _%L139906%_
                      (let () (declare (not safe)) (##fx+ _%k139847%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L139907%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals139841%_
                                         _%k139847%_
                                         _%L139906%_)
                                        '()))
                            _%r139848%_))))
                  (_%__kont144219144220%_
                   (lambda (_%L139882%_)
                     (let ((__tmp145050
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L139882%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals139841%_
                                               _%k139847%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp145050 _%r139848%_))))
                  (_%__kont144221144222%_ (lambda () (reverse _%r139848%_))))
              (let ((_%g139851139893%_
                     (lambda ()
                       (let ((_%L139882%_ _%__stx144213144214%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L139882%_))
                             (_%__kont144219144220%_ _%L139882%_)
                             (_%__kont144221144222%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx144213144214%_))
                    (let ((_%e139856139922%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx144213144214%_))))
                      (let ((_%tl139858139927%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139856139922%_)))
                            (_%hd139857139925%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139856139922%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd139857139925%_))
                            (let ((_%e139859139930%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd139857139925%_))))
                              (if (equal? _%e139859139930%_ '#f)
                                  (_%__kont144215144216%_ _%tl139858139927%_)
                                  (_%__kont144217144218%_
                                   _%tl139858139927%_
                                   _%hd139857139925%_)))
                            (_%__kont144217144218%_
                             _%tl139858139927%_
                             _%hd139857139925%_))))
                    (let () (declare (not safe)) (_%g139851139893%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self139520%_ _%stx139521%_ _%compiled-body?139522%_)
        (letrec ((_%generate-simple139524%_
                  (lambda (_%hd139826%_ _%body139827%_)
                    (gxc#generate-runtime-simple-let
                     _%self139520%_
                     'letrec
                     _%hd139826%_
                     _%body139827%_
                     _%compiled-body?139522%_)))
                 (_%generate-values139525%_
                  (lambda (_%hd139605%_ _%body139606%_)
                    (let _%lp139608%_ ((_%rest139610%_ _%hd139605%_)
                                       (_%bind139611%_ '())
                                       (_%check139612%_ '())
                                       (_%post139613%_ '()))
                      (let* ((_%__stx144287144288%_ _%rest139610%_)
                             (_%g139616139627%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144287144288%_)))))
                        (let ((_%__kont144289144290%_
                               (lambda (_%L139654%_ _%L139655%_)
                                 (let* ((_%__stx144243144244%_ _%L139655%_)
                                        (_%g139670139695%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144243144244%_)))))
                                   (let ((_%__kont144245144246%_
                                          (lambda (_%L139802%_ _%L139803%_)
                                            (let ((_%eid139817%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L139803%_)))
                                                  (_%expr139818%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139520%_
                                                      _%L139802%_))))
                                              (_%lp139608%_
                                               _%L139654%_
                                               (cons (cons _%eid139817%_
                                                           (cons _%expr139818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind139611%_)
                                               _%check139612%_
                                               _%post139613%_))))
                                         (_%__kont144247144248%_
                                          (lambda (_%L139716%_ _%L139717%_)
                                            (let* ((_%vals139730%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values139732%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals139730%_
                                                     _%L139717%_
                                                     _%L139716%_))
                                                   (_%refs139734%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals139730%_
                                                     _%L139717%_))
                                                   (_%expr139736%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self139520%_
                                                       _%L139716%_))))
                                              (_%lp139608%_
                                               _%L139654%_
                                               (let ((__tmp145052
                                                      (cons (cons _%vals139730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr139736%_ '()))
                    _%bind139611%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp145051
                                                      (map (lambda (_%e139738139740%_)
                                                             (let* ((_%g139742139751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e139738139740%_)
                            (_%E139744139755%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g139742139751%_
                                        '([eid _])))
                               '#!void))
                            (_%K139745139760%_
                             (lambda (_%eid139758%_)
                               (cons _%eid139758%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g139742139751%_))
                           (let ((_%hd139746139763%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139742139751%_)))
                                 (_%tl139747139765%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139742139751%_))))
                             (let ((_%eid139768%_ _%hd139746139763%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl139747139765%_))
                                   (let ((_%tl139749139770%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl139747139765%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl139749139770%_))
                                         (_%K139745139760%_ _%eid139768%_)
                                         (_%E139744139755%_)))
                                   (_%E139744139755%_))))
                           (_%E139744139755%_))))
                   _%refs139734%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp145052
                                                  __tmp145051))
                                               (cons _%check-values139732%_
                                                     _%check139612%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs139734%_
                                                  _%post139613%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144243144244%_))
                                         (let ((_%e139674139778%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144243144244%_))))
                                           (let ((_%tl139676139783%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e139674139778%_)))
                                                 (_%hd139675139781%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e139674139778%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd139675139781%_))
                                                 (let ((_%e139677139786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd139675139781%_))))
                                                   (let ((_%tl139679139791%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139677139786%_)))
                                                         (_%hd139678139789%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139677139786%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139679139791%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139676139783%_))
                     (let ((_%e139680139794%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139676139783%_))))
                       (let ((_%tl139682139799%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139680139794%_)))
                             (_%hd139681139797%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139680139794%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139682139799%_))
                             (_%__kont144245144246%_
                              _%hd139681139797%_
                              _%hd139678139789%_)
                             (let ()
                               (declare (not safe))
                               (_%g139670139695%_)))))
                     (let () (declare (not safe)) (_%g139670139695%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl139676139783%_))
                     (let ((_%e139688139708%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139676139783%_))))
                       (let ((_%tl139690139713%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139688139708%_)))
                             (_%hd139689139711%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139688139708%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139690139713%_))
                             (_%__kont144247144248%_
                              _%hd139689139711%_
                              _%hd139675139781%_)
                             (let ()
                               (declare (not safe))
                               (_%g139670139695%_)))))
                     (let () (declare (not safe)) (_%g139670139695%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139676139783%_))
                                                     (let ((_%e139688139708%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139676139783%_))))
                                                       (let ((_%tl139690139713%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139688139708%_)))
                     (_%hd139689139711%_
                      (let () (declare (not safe)) (##car _%e139688139708%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139690139713%_))
                     (_%__kont144247144248%_
                      _%hd139689139711%_
                      _%hd139675139781%_)
                     (let () (declare (not safe)) (_%g139670139695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g139670139695%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g139670139695%_)))))))
                              (_%__kont144291144292%_
                               (lambda ()
                                 (let* ((_%body139634%_
                                         (if _%compiled-body?139522%_
                                             _%body139606%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self139520%_
                                                _%body139606%_))))
                                        (_%body139636%_
                                         (_%generate-values-post139527%_
                                          _%post139613%_
                                          _%body139634%_))
                                        (_%body139638%_
                                         (_%generate-values-check139526%_
                                          _%check139612%_
                                          _%body139636%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind139611%_)
                                               (cons _%body139638%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx144287144288%_))
                              (let ((_%e139620139646%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx144287144288%_))))
                                (let ((_%tl139622139651%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139620139646%_)))
                                      (_%hd139621139649%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139620139646%_))))
                                  (_%__kont144289144290%_
                                   _%tl139622139651%_
                                   _%hd139621139649%_)))
                              (_%__kont144291144292%_)))))))
                 (_%generate-values-check139526%_
                  (lambda (_%check139602%_ _%body139603%_)
                    (cons 'begin
                          (let ((__tmp145054 (cons _%body139603%_ '()))
                                (__tmp145053 (reverse _%check139602%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp145054 __tmp145053)))))
                 (_%generate-values-post139527%_
                  (lambda (_%post139595%_ _%body139596%_)
                    (cons 'begin
                          (let ((__tmp145058 (cons _%body139596%_ '()))
                                (__tmp145055
                                 (let ((__tmp145057
                                        (lambda (_%g139597139599%_)
                                          (cons 'set! _%g139597139599%_)))
                                       (__tmp145056 (reverse _%post139595%_)))
                                   (declare (not safe))
                                   (##map __tmp145057 __tmp145056))))
                            (declare (not safe))
                            (__foldr1 cons __tmp145058 __tmp145055))))))
          (let* ((_%g139529139546%_
                  (lambda (_%g139530139543%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139530139543%_))))
                 (_%g139528139592%_
                  (lambda (_%g139530139549%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139530139549%_))
                        (let ((_%e139533139551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139530139549%_))))
                          (let ((_%hd139534139554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139533139551%_)))
                                (_%tl139535139556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139533139551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139535139556%_))
                                (let ((_%e139536139559%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139535139556%_))))
                                  (let ((_%hd139537139562%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139536139559%_)))
                                        (_%tl139538139564%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139536139559%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139538139564%_))
                                        (let ((_%e139539139567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139538139564%_))))
                                          (let ((_%hd139540139570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139539139567%_)))
                                                (_%tl139541139572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139539139567%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139541139572%_))
                                                ((lambda (_%L139575%_
                                                          _%L139576%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139576%_)
                                                       (_%generate-simple139524%_
                                                        _%L139576%_
                                                        _%L139575%_)
                                                       (_%generate-values139525%_
                                                        _%L139576%_
                                                        _%L139575%_)))
                                                 _%hd139540139570%_
                                                 _%hd139537139562%_)
                                                (_%g139529139546%_
                                                 _%g139530139549%_))))
                                        (_%g139529139546%_
                                         _%g139530139549%_))))
                                (_%g139529139546%_ _%g139530139549%_))))
                        (_%g139529139546%_ _%g139530139549%_)))))
            (_%g139528139592%_ _%stx139521%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self139832%_ _%stx139833%_)
        (let ((_%compiled-body?139835%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self139832%_
           _%stx139833%_
           _%compiled-body?139835%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g145060_
        (let ((_g145059_ (let () (declare (not safe)) (##length _g145060_))))
          (cond ((let () (declare (not safe)) (##fx= _g145059_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g145060_))
                ((let () (declare (not safe)) (##fx= _g145059_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g145060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g145060_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self139101%_ _%stx139102%_)
        (letrec ((_%generate-values139104%_
                  (lambda (_%hd139347%_ _%body139348%_)
                    (let _%lp139350%_ ((_%rest139352%_ _%hd139347%_)
                                       (_%bind139353%_ '()))
                      (let* ((_%rest139354139362%_ _%rest139352%_)
                             (_%else139356139373%_
                              (lambda ()
                                (let ((_%bind139370%_ (reverse _%bind139353%_))
                                      (_%body139371%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self139101%_
                                          _%body139348%_))))
                                  (cons 'letrec*
                                        (cons _%bind139370%_
                                              (cons _%body139371%_ '()))))))
                             (_%K139358139507%_
                              (lambda (_%rest139376%_ _%hd-bind139377%_)
                                (let* ((_%__stx144301144302%_
                                        _%hd-bind139377%_)
                                       (_%g139380139405%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx144301144302%_)))))
                                  (let ((_%__kont144303144304%_
                                         (lambda (_%L139486%_ _%L139487%_)
                                           (let ((_%eid139501%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L139487%_)))
                                                 (_%expr139502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self139101%_
                                                     _%L139486%_))))
                                             (_%lp139350%_
                                              _%rest139376%_
                                              (cons (cons _%eid139501%_
                                                          (cons _%expr139502%_
                                                                '()))
                                                    _%bind139353%_)))))
                                        (_%__kont144305144306%_
                                         (lambda (_%L139426%_ _%L139427%_)
                                           (let* ((_%vals139446%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp139448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values139450%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp139448%_
                                                    _%L139427%_
                                                    _%L139426%_))
                                                  (_%refs139452%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals139446%_
                                                    _%L139427%_))
                                                  (_%expr139454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self139101%_
                                                      _%L139426%_))))
                                             (_%lp139350%_
                                              _%rest139376%_
                                              (let ((__tmp145061
                                                     (cons (cons _%vals139446%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp139448%_
                                                       (cons _%expr139454%_
                                                             '()))
                                                 '())
                                           (cons _%check-values139450%_
                                                 (cons _%tmp139448%_ '()))))
                               '()))
                   _%bind139353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp145061
                                                 _%refs139452%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx144301144302%_))
                                        (let ((_%e139384139462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx144301144302%_))))
                                          (let ((_%tl139386139467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139384139462%_)))
                                                (_%hd139385139465%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139384139462%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd139385139465%_))
                                                (let ((_%e139387139470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd139385139465%_))))
                                                  (let ((_%tl139389139475%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139387139470%_)))
                                                        (_%hd139388139473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139387139470%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139389139475%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl139386139467%_))
                                                            (let ((_%e139390139478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139386139467%_))))
                      (let ((_%tl139392139483%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139390139478%_)))
                            (_%hd139391139481%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139390139478%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139392139483%_))
                            (_%__kont144303144304%_
                             _%hd139391139481%_
                             _%hd139388139473%_)
                            (let ()
                              (declare (not safe))
                              (_%g139380139405%_)))))
                    (let () (declare (not safe)) (_%g139380139405%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl139386139467%_))
                    (let ((_%e139398139418%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl139386139467%_))))
                      (let ((_%tl139400139423%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e139398139418%_)))
                            (_%hd139399139421%_
                             (let ()
                               (declare (not safe))
                               (##car _%e139398139418%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl139400139423%_))
                            (_%__kont144305144306%_
                             _%hd139399139421%_
                             _%hd139385139465%_)
                            (let ()
                              (declare (not safe))
                              (_%g139380139405%_)))))
                    (let () (declare (not safe)) (_%g139380139405%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139386139467%_))
                                                    (let ((_%e139398139418%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139386139467%_))))
                                                      (let ((_%tl139400139423%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139398139418%_)))
                    (_%hd139399139421%_
                     (let () (declare (not safe)) (##car _%e139398139418%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139400139423%_))
                    (_%__kont144305144306%_
                     _%hd139399139421%_
                     _%hd139385139465%_)
                    (let () (declare (not safe)) (_%g139380139405%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g139380139405%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g139380139405%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139354139362%_))
                            (let ((_%hd139359139510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139354139362%_)))
                                  (_%tl139360139512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139354139362%_))))
                              (let* ((_%hd-bind139515%_ _%hd139359139510%_)
                                     (_%rest139517%_ _%tl139360139512%_))
                                (_%K139358139507%_
                                 _%rest139517%_
                                 _%hd-bind139515%_)))
                            (_%else139356139373%_))))))
                 (_%generate-letrec?139105%_
                  (lambda (_%hd139237%_)
                    (let _%lp139239%_ ((_%rest139241%_ _%hd139237%_))
                      (let* ((_%rest139242139250%_ _%rest139241%_)
                             (_%else139244139258%_ (lambda () '#t))
                             (_%K139246139335%_
                              (lambda (_%rest139261%_ _%hd-bind139262%_)
                                (let* ((_%g139264139281%_
                                        (lambda (_%g139265139278%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g139265139278%_))))
                                       (_%g139263139332%_
                                        (lambda (_%g139265139284%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g139265139284%_))
                                              (let ((_%e139268139286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g139265139284%_))))
                                                (let ((_%hd139269139289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139268139286%_)))
                                                      (_%tl139270139291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139268139286%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd139269139289%_))
                                                      (let ((_%e139271139294%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd139269139289%_))))
                (let ((_%hd139272139297%_
                       (let () (declare (not safe)) (##car _%e139271139294%_)))
                      (_%tl139273139299%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139271139294%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139273139299%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139270139291%_))
                          (let ((_%e139274139302%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139270139291%_))))
                            (let ((_%hd139275139305%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139274139302%_)))
                                  (_%tl139276139307%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139274139302%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl139276139307%_))
                                  ((lambda (_%L139310%_ _%L139311%_)
                                     (if (_%is-lambda-expr?139106%_
                                          _%L139310%_)
                                         (_%lp139239%_ _%rest139261%_)
                                         '#f))
                                   _%hd139275139305%_
                                   _%hd139272139297%_)
                                  (_%g139264139281%_ _%g139265139284%_))))
                          (_%g139264139281%_ _%g139265139284%_))
                      (_%g139264139281%_ _%g139265139284%_))))
              (_%g139264139281%_ _%g139265139284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139264139281%_
                                               _%g139265139284%_)))))
                                  (_%g139263139332%_ _%hd-bind139262%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest139242139250%_))
                            (let ((_%hd139247139338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest139242139250%_)))
                                  (_%tl139248139340%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest139242139250%_))))
                              (let* ((_%hd-bind139343%_ _%hd139247139338%_)
                                     (_%rest139345%_ _%tl139248139340%_))
                                (_%K139246139335%_
                                 _%rest139345%_
                                 _%hd-bind139343%_)))
                            (_%else139244139258%_))))))
                 (_%is-lambda-expr?139106%_
                  (lambda (_%expr139174%_)
                    (let* ((_%__stx144345144346%_ _%expr139174%_)
                           (_%g139177139191%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx144345144346%_)))))
                      (let ((_%__kont144347144348%_
                             (lambda (_%L139219%_ _%L139220%_) '#t))
                            (_%__kont144349144350%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx144345144346%_))
                            (let ((_%e139181139203%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx144345144346%_))))
                              (let ((_%tl139183139208%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e139181139203%_)))
                                    (_%hd139182139206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e139181139203%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd139182139206%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd139182139206%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl139183139208%_))
                                            (let ((_%e139184139211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl139183139208%_))))
                                              (let ((_%tl139186139216%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e139184139211%_)))
                                                    (_%hd139185139214%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e139184139211%_))))
                                                (_%__kont144347144348%_
                                                 _%tl139186139216%_
                                                 _%hd139185139214%_)))
                                            (_%__kont144349144350%_))
                                        (_%__kont144349144350%_))
                                    (_%__kont144349144350%_))))
                            (_%__kont144349144350%_)))))))
          (let* ((_%g139108139125%_
                  (lambda (_%g139109139122%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139109139122%_))))
                 (_%g139107139171%_
                  (lambda (_%g139109139128%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139109139128%_))
                        (let ((_%e139112139130%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139109139128%_))))
                          (let ((_%hd139113139133%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139112139130%_)))
                                (_%tl139114139135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139112139130%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139114139135%_))
                                (let ((_%e139115139138%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139114139135%_))))
                                  (let ((_%hd139116139141%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139115139138%_)))
                                        (_%tl139117139143%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139115139138%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139117139143%_))
                                        (let ((_%e139118139146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139117139143%_))))
                                          (let ((_%hd139119139149%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139118139146%_)))
                                                (_%tl139120139151%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139118139146%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139120139151%_))
                                                ((lambda (_%L139154%_
                                                          _%L139155%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L139155%_)
                                                       (if (_%generate-letrec?139105%_
                                                            _%L139155%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139101%_
                                                            'letrec
                                                            _%L139155%_
                                                            _%L139154%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self139101%_
                                                            'letrec*
                                                            _%L139155%_
                                                            _%L139154%_
                                                            '#f))
                                                       (_%generate-values139104%_
                                                        _%L139155%_
                                                        _%L139154%_)))
                                                 _%hd139119139149%_
                                                 _%hd139116139141%_)
                                                (_%g139108139125%_
                                                 _%g139109139128%_))))
                                        (_%g139108139125%_
                                         _%g139109139128%_))))
                                (_%g139108139125%_ _%g139109139128%_))))
                        (_%g139108139125%_ _%g139109139128%_)))))
            (_%g139107139171%_ _%stx139102%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd139038%_)
        (let _%lp139040%_ ((_%rest139042%_ _%hd139038%_))
          (let* ((_%rest139043139059%_ _%rest139042%_)
                 (_%else139046139067%_ (lambda () '#f)))
            (let ((_%K139049139080%_
                   (lambda (_%rest139078%_) (_%lp139040%_ _%rest139078%_)))
                  (_%K139048139072%_ (lambda () '#t)))
              (let ((_%try-match139045139075%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest139043139059%_))
                           (_%K139048139072%_)
                           (_%else139046139067%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139043139059%_))
                    (let ((_%tl139051139085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139043139059%_)))
                          (_%hd139050139083%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139043139059%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd139050139083%_))
                          (let ((_%tl139053139090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd139050139083%_)))
                                (_%hd139052139088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd139050139083%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd139052139088%_))
                                (let ((_%tl139057139093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd139052139088%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139057139093%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl139053139090%_))
                                          (let ((_%tl139055139096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl139053139090%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl139055139096%_))
                                                (let ((_%rest139099%_
                                                       _%tl139051139085%_))
                                                  (_%lp139040%_
                                                   _%rest139099%_))
                                                (_%else139046139067%_)))
                                          (_%else139046139067%_))
                                      (_%else139046139067%_)))
                                (_%else139046139067%_)))
                          (_%else139046139067%_)))
                    (_%try-match139045139075%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self138949%_
               _%form138950%_
               _%hd138951%_
               _%body138952%_
               _%compiled-body?138953%_)
        (letrec ((_%generate1138955%_
                  (lambda (_%bind138994%_)
                    (let* ((_%bind138995139006%_ _%bind138994%_)
                           (_%E138997139010%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind138995139006%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K138998139016%_
                            (lambda (_%expr139013%_ _%id139014%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id139014%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self138949%_
                                             _%expr139013%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind138995139006%_))
                          (let ((_%hd138999139019%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind138995139006%_)))
                                (_%tl139000139021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind138995139006%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd138999139019%_))
                                (let ((_%hd139003139024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd138999139019%_)))
                                      (_%tl139004139026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd138999139019%_))))
                                  (let ((_%id139029%_ _%hd139003139024%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl139004139026%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139000139021%_))
                                            (let ((_%hd139001139031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139000139021%_)))
                                                  (_%tl139002139033%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139000139021%_))))
                                              (let ((_%expr139036%_
                                                     _%hd139001139031%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl139002139033%_))
                                                    (_%K138998139016%_
                                                     _%expr139036%_
                                                     _%id139029%_)
                                                    (_%E138997139010%_))))
                                            (_%E138997139010%_))
                                        (_%E138997139010%_))))
                                (_%E138997139010%_)))
                          (_%E138997139010%_))))))
          (let* ((_%bind138957%_ (map _%generate1138955%_ _%hd138951%_))
                 (_%body138959%_
                  (if _%compiled-body?138953%_
                      _%body138952%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self138949%_ _%body138952%_))))
                 (_%body138991%_
                  (let* ((_%body138960138968%_ _%body138959%_)
                         (_%else138962138976%_
                          (lambda () (cons _%body138959%_ '())))
                         (_%K138964138981%_
                          (lambda (_%exprs138979%_) _%exprs138979%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body138960138968%_))
                        (let ((_%hd138965138984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body138960138968%_)))
                              (_%tl138966138986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body138960138968%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd138965138984%_ 'begin))
                              (let ((_%exprs138989%_ _%tl138966138986%_))
                                (_%K138964138981%_ _%exprs138989%_))
                              (_%else138962138976%_)))
                        (_%else138962138976%_)))))
            (cons _%form138950%_ (cons _%bind138957%_ _%body138991%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self138849%_ _%stx138850%_)
        (letrec ((_%generate1138852%_
                  (lambda (_%datum138904%_)
                    (if (or (null? _%datum138904%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum138904%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum138904%_))
                            (eof-object? _%datum138904%_))
                        _%datum138904%_
                        (if (uninterned-symbol? _%datum138904%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum138904%_
                               '#t))
                            (if (pair? _%datum138904%_)
                                (cons (_%generate1138852%_
                                       (car _%datum138904%_))
                                      (_%generate1138852%_
                                       (cdr _%datum138904%_)))
                                (if (box? _%datum138904%_)
                                    (box (_%generate1138852%_
                                          (unbox _%datum138904%_)))
                                    (if (vector? _%datum138904%_)
                                        (vector-map
                                         _%generate1138852%_
                                         _%datum138904%_)
                                        (if (or (s8vector? _%datum138904%_)
                                                (u8vector? _%datum138904%_)
                                                (s16vector? _%datum138904%_)
                                                (u16vector? _%datum138904%_)
                                                (s32vector? _%datum138904%_)
                                                (u32vector? _%datum138904%_)
                                                (s64vector? _%datum138904%_)
                                                (u64vector? _%datum138904%_)
                                                (f32vector? _%datum138904%_)
                                                (f64vector? _%datum138904%_))
                                            _%datum138904%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx138850%_)))))))))))
          (let* ((_%g138854138867%_
                  (lambda (_%g138855138864%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138855138864%_))))
                 (_%g138853138901%_
                  (lambda (_%g138855138870%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138855138870%_))
                        (let ((_%e138857138872%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138855138870%_))))
                          (let ((_%hd138858138875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138857138872%_)))
                                (_%tl138859138877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138857138872%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138859138877%_))
                                (let ((_%e138860138880%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138859138877%_))))
                                  (let ((_%hd138861138883%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138860138880%_)))
                                        (_%tl138862138885%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138860138880%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138862138885%_))
                                        ((lambda (_%L138888%_)
                                           (cons 'quote
                                                 (cons (_%generate1138852%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L138888%_)))
                                                       '())))
                                         _%hd138861138883%_)
                                        (_%g138854138867%_
                                         _%g138855138870%_))))
                                (_%g138854138867%_ _%g138855138870%_))))
                        (_%g138854138867%_ _%g138855138870%_)))))
            (_%g138853138901%_ _%stx138850%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self138290%_ _%stx138291%_)
        (letrec ((_%compile-call138293%_
                  (lambda (_%rator138582%_ _%rands138583%_)
                    (let ((_%rator138589%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self138290%_
                              _%rator138582%_)))
                          (_%rands138590%_
                           (map (lambda (_%g138584138586%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self138290%_
                                     _%g138584138586%_)))
                                _%rands138583%_)))
                      (let* ((_%__stx144392144393%_ _%rator138589%_)
                             (_%g138593138645%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx144392144393%_)))))
                        (let ((_%__kont144394144395%_
                               (lambda (_%L138769%_
                                        _%L138770%_
                                        _%L138771%_
                                        _%L138772%_)
                                 (if (let ((__tmp145064
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands138590%_)))
                                           (__tmp145062
                                            (length (let ((__tmp145063
                                                           (lambda (_%g138808138811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138809138813%_)
                     (cons _%g138808138811%_ _%g138809138813%_))))
              (declare (not safe))
              (__foldr1 __tmp145063 '() _%L138771%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp145064 __tmp145062))
                                     (let* ((_%id138816%_ _%L138772%_)
                                            (_%args138825%_
                                             (let ((__tmp145065
                                                    (lambda (_%g138817138820%_
                                                             _%g138818138822%_)
                                                      (cons _%g138817138820%_
                                                            _%g138818138822%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145065
                                                '()
                                                _%L138771%_)))
                                            (_%body138834%_
                                             (let ((__tmp145066
                                                    (lambda (_%g138826138829%_
                                                             _%g138827138831%_)
                                                      (cons _%g138826138829%_
                                                            _%g138827138831%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp145066
                                                '()
                                                _%L138770%_)))
                                            (_%init138836%_
                                             (map list
                                                  _%args138825%_
                                                  _%rands138590%_)))
                                       (cons 'let
                                             (cons _%id138816%_
                                                   (cons _%init138836%_
                                                         _%body138834%_))))
                                     (let ((__tmp145067
                                            (let ((__tmp145068
                                                   (lambda (_%g138838138841%_
                                                            _%g138839138843%_)
                                                     (cons _%g138838138841%_
                                                           _%g138839138843%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp145068
                                               '()
                                               _%L138771%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx138291%_
                                        __tmp145067
                                        _%rands138590%_)))))
                              (_%__kont144400144401%_
                               (lambda ()
                                 (cons _%rator138589%_ _%rands138590%_))))
                          (let ((_%__match144459144460%_
                                 (lambda (_%e138599138657%_
                                          _%hd138600138660%_
                                          _%tl138601138662%_
                                          _%e138602138665%_
                                          _%hd138603138668%_
                                          _%tl138604138670%_
                                          _%e138605138673%_
                                          _%hd138606138676%_
                                          _%tl138607138678%_
                                          _%e138608138681%_
                                          _%hd138609138684%_
                                          _%tl138610138686%_
                                          _%e138611138689%_
                                          _%hd138612138692%_
                                          _%tl138613138694%_
                                          _%e138614138697%_
                                          _%hd138615138700%_
                                          _%tl138616138702%_
                                          _%e138617138705%_
                                          _%hd138618138708%_
                                          _%tl138619138710%_
                                          _%__splice144396144397%_
                                          _%target138620138713%_
                                          _%tl138622138715%_)
                                   (letrec ((_%loop138623138718%_
                                             (lambda (_%hd138621138721%_
                                                      _%arg138627138723%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd138621138721%_))
                                                   (let ((_%e138624138726%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd138621138721%_))))
                                                     (let ((_%lp-tl138626138731%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e138624138726%_)))
                                                           (_%lp-hd138625138729%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e138624138726%_))))
                                                       (_%loop138623138718%_
                                                        _%lp-tl138626138731%_
                                                        (cons _%lp-hd138625138729%_
                                                              _%arg138627138723%_))))
                                                   (let ((_%arg138628138734%_
                                                          (reverse _%arg138627138723%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl138619138710%_))
                                                         (let ((_%__splice144398144399%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl138619138710%_ '0))))
                   (let ((_%tl138631138739%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144398144399%_ '1)))
                         (_%target138629138737%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice144398144399%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138631138739%_))
                         (letrec ((_%loop138632138742%_
                                   (lambda (_%hd138630138745%_
                                            _%body138636138747%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd138630138745%_))
                                         (let ((_%e138633138750%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd138630138745%_))))
                                           (let ((_%lp-tl138635138755%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138633138750%_)))
                                                 (_%lp-hd138634138753%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138633138750%_))))
                                             (_%loop138632138742%_
                                              _%lp-tl138635138755%_
                                              (cons _%lp-hd138634138753%_
                                                    _%body138636138747%_))))
                                         (let ((_%body138637138758%_
                                                (reverse _%body138636138747%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl138613138694%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl138607138678%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl138604138670%_))
                                                       (let ((_%e138638138761%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl138604138670%_))))
                 (let ((_%tl138640138766%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e138638138761%_)))
                       (_%hd138639138764%_
                        (let ()
                          (declare (not safe))
                          (##car _%e138638138761%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl138640138766%_))
                       (let ((_%L138769%_ _%hd138639138764%_)
                             (_%L138770%_ _%body138637138758%_)
                             (_%L138771%_ _%arg138628138734%_)
                             (_%L138772%_ _%hd138609138684%_))
                         (if (eq? _%L138772%_ _%L138769%_)
                             (_%__kont144394144395%_
                              _%L138769%_
                              _%L138770%_
                              _%L138771%_
                              _%L138772%_)
                             (_%__kont144400144401%_)))
                       (_%__kont144400144401%_))))
               (_%__kont144400144401%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144400144401%_))
                                               (_%__kont144400144401%_)))))))
                           (_%loop138632138742%_ _%target138629138737%_ '()))
                         (_%__kont144400144401%_))))
                 (_%__kont144400144401%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop138623138718%_
                                      _%target138620138713%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144392144393%_))
                                (let ((_%e138599138657%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144392144393%_))))
                                  (let ((_%tl138601138662%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138599138657%_)))
                                        (_%hd138600138660%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138599138657%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138600138660%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd138600138660%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138601138662%_))
                                                (let ((_%e138602138665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138601138662%_))))
                                                  (let ((_%tl138604138670%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138602138665%_)))
                                                        (_%hd138603138668%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138602138665%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd138603138668%_))
                                                        (let ((_%e138605138673%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd138603138668%_))))
                  (let ((_%tl138607138678%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138605138673%_)))
                        (_%hd138606138676%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138605138673%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd138606138676%_))
                        (let ((_%e138608138681%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd138606138676%_))))
                          (let ((_%tl138610138686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138608138681%_)))
                                (_%hd138609138684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138608138681%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138610138686%_))
                                (let ((_%e138611138689%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138610138686%_))))
                                  (let ((_%tl138613138694%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138611138689%_)))
                                        (_%hd138612138692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138611138689%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd138612138692%_))
                                        (let ((_%e138614138697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd138612138692%_))))
                                          (let ((_%tl138616138702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e138614138697%_)))
                                                (_%hd138615138700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e138614138697%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd138615138700%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd138615138700%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl138616138702%_))
                                                        (let ((_%e138617138705%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl138616138702%_))))
                  (let ((_%tl138619138710%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e138617138705%_)))
                        (_%hd138618138708%_
                         (let ()
                           (declare (not safe))
                           (##car _%e138617138705%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd138618138708%_))
                        (let ((_%__splice144396144397%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd138618138708%_
                                  '0))))
                          (let ((_%tl138622138715%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice144396144397%_ '1)))
                                (_%target138620138713%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice144396144397%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl138622138715%_))
                                (_%__match144459144460%_
                                 _%e138599138657%_
                                 _%hd138600138660%_
                                 _%tl138601138662%_
                                 _%e138602138665%_
                                 _%hd138603138668%_
                                 _%tl138604138670%_
                                 _%e138605138673%_
                                 _%hd138606138676%_
                                 _%tl138607138678%_
                                 _%e138608138681%_
                                 _%hd138609138684%_
                                 _%tl138610138686%_
                                 _%e138611138689%_
                                 _%hd138612138692%_
                                 _%tl138613138694%_
                                 _%e138614138697%_
                                 _%hd138615138700%_
                                 _%tl138616138702%_
                                 _%e138617138705%_
                                 _%hd138618138708%_
                                 _%tl138619138710%_
                                 _%__splice144396144397%_
                                 _%target138620138713%_
                                 _%tl138622138715%_)
                                (_%__kont144400144401%_))))
                        (_%__kont144400144401%_))))
                (_%__kont144400144401%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144400144401%_))
                                                (_%__kont144400144401%_))))
                                        (_%__kont144400144401%_))))
                                (_%__kont144400144401%_))))
                        (_%__kont144400144401%_))))
                (_%__kont144400144401%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont144400144401%_))
                                            (_%__kont144400144401%_))
                                        (_%__kont144400144401%_))))
                                (_%__kont144400144401%_)))))))))
          (let* ((_%g138295138318%_
                  (lambda (_%g138296138315%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138296138315%_))))
                 (_%g138294138579%_
                  (lambda (_%g138296138321%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138296138321%_))
                        (let ((_%e138299138323%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138296138321%_))))
                          (let ((_%hd138300138326%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138299138323%_)))
                                (_%tl138301138328%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138299138323%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138301138328%_))
                                (let ((_%e138302138331%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138301138328%_))))
                                  (let ((_%hd138303138334%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138302138331%_)))
                                        (_%tl138304138336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138302138331%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl138304138336%_))
                                        (let ((_g145069_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl138304138336%_
                                                  '0))))
                                          (begin
                                            (let ((_g145070_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g145069_)
                                                         (##vector-length
                                                          _g145069_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g145070_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g145070_)))
                                            (let ((_%target138305138339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145069_
                                                      0)))
                                                  (_%tl138307138341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g145069_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl138307138341%_))
                                                  (letrec ((_%loop138308138344%_
                                                            (lambda (_%hd138306138347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand138312138349%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd138306138347%_))
                          (let ((_%e138309138352%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd138306138347%_))))
                            (let ((_%lp-hd138310138355%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138309138352%_)))
                                  (_%lp-tl138311138357%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138309138352%_))))
                              (_%loop138308138344%_
                               _%lp-tl138311138357%_
                               (cons _%lp-hd138310138355%_
                                     _%rand138312138349%_))))
                          (let ((_%rand138313138360%_
                                 (reverse _%rand138312138349%_)))
                            ((lambda (_%L138363%_ _%L138364%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call138293%_
                                    _%L138364%_
                                    (let ((__tmp145071
                                           (lambda (_%g138381138384%_
                                                    _%g138382138386%_)
                                             (cons _%g138381138384%_
                                                   _%g138382138386%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp145071 '() _%L138363%_)))
                                   (let* ((_%__stx144508144509%_ _%L138364%_)
                                          (_%g138390138402%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx144508144509%_)))))
                                     (let ((_%__kont144510144511%_
                                            (lambda ()
                                              (let ((_%f138439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138290%_
                                                        _%L138364%_))))
                                                (if (and (let ((__tmp145072
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f138439%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp145072))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f138439%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp138441%_ ((_%rest138444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp145074
                                                (lambda (_%g138561138564%_
                                                         _%g138562138566%_)
                                                  (cons _%g138561138564%_
                                                        _%g138562138566%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp145074
                                            '()
                                            _%L138363%_))))
                               (_%bind138446%_ '())
                               (_%args138447%_ '()))
              (let* ((_%rest138448138456%_ _%rest138444%_)
                     (_%else138450138464%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind138446%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f138439%_
                                                      _%args138447%_)
                                                '()))))))
                     (_%K138452138550%_
                      (lambda (_%rest138467%_ _%e138468%_)
                        (let* ((_%__stx144462144463%_ _%e138468%_)
                               (_%g138473138491%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx144462144463%_)))))
                          (let ((_%__kont144464144465%_
                                 (lambda ()
                                   (_%lp138441%_
                                    _%rest138467%_
                                    _%bind138446%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138468%_))
                                          _%args138447%_))))
                                (_%__kont144466144467%_
                                 (lambda ()
                                   (_%lp138441%_
                                    _%rest138467%_
                                    _%bind138446%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e138468%_))
                                          _%args138447%_))))
                                (_%__kont144468144469%_
                                 (lambda ()
                                   (let ((_%tmp138498%_
                                          (let ((__tmp145073
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp145073))))
                                     (_%lp138441%_
                                      _%rest138467%_
                                      (cons (cons _%tmp138498%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e138468%_))
                                                        '()))
                                            _%bind138446%_)
                                      (cons _%tmp138498%_ _%args138447%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx144462144463%_))
                                (let ((_%e138475138529%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx144462144463%_))))
                                  (let ((_%tl138477138534%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138475138529%_)))
                                        (_%hd138476138532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138475138529%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd138476138532%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd138476138532%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl138477138534%_))
                                                (let ((_%e138478138537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl138477138534%_))))
                                                  (let ((_%tl138480138542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e138478138537%_)))
                                                        (_%hd138479138540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e138478138537%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl138480138542%_))
                                                        (_%__kont144464144465%_)
                                                        (_%__kont144468144469%_))))
                                                (_%__kont144468144469%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd138476138532%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl138477138534%_))
                                                    (let ((_%e138484138514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl138477138534%_))))
                                                      (let ((_%tl138486138519%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e138484138514%_)))
                    (_%hd138485138517%_
                     (let () (declare (not safe)) (##car _%e138484138514%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl138486138519%_))
                    (_%__kont144466144467%_)
                    (_%__kont144468144469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont144468144469%_))
                                                (_%__kont144468144469%_)))
                                        (_%__kont144468144469%_))))
                                (_%__kont144468144469%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest138448138456%_))
                    (let ((_%hd138453138553%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest138448138456%_)))
                          (_%tl138454138555%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest138448138456%_))))
                      (let* ((_%e138558%_ _%hd138453138553%_)
                             (_%rest138560%_ _%tl138454138555%_))
                        (_%K138452138550%_ _%rest138560%_ _%e138558%_)))
                    (_%else138450138464%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call138293%_
                                                     _%L138364%_
                                                     (let ((__tmp145075
                                                            (lambda (_%g138568138571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g138569138573%_)
                      (cons _%g138568138571%_ _%g138569138573%_))))
               (declare (not safe))
               (__foldr1 __tmp145075 '() _%L138363%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont144512144513%_
                                            (lambda ()
                                              (_%compile-call138293%_
                                               _%L138364%_
                                               (let ((__tmp145076
                                                      (lambda (_%g138408138411%_
                                                               _%g138409138413%_)
                                                        (cons _%g138408138411%_
                                                              _%g138409138413%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp145076
                                                  '()
                                                  _%L138363%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx144508144509%_))
                                           (let ((_%e138392138421%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx144508144509%_))))
                                             (let ((_%tl138394138426%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138392138421%_)))
                                                   (_%hd138393138424%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138392138421%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138393138424%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd138393138424%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl138394138426%_))
                                                           (let ((_%e138395138429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl138394138426%_))))
                     (let ((_%tl138397138434%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e138395138429%_)))
                           (_%hd138396138432%_
                            (let ()
                              (declare (not safe))
                              (##car _%e138395138429%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl138397138434%_))
                           (_%__kont144510144511%_)
                           (_%__kont144512144513%_))))
                   (_%__kont144512144513%_))
               (_%__kont144512144513%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont144512144513%_))))
                                           (_%__kont144512144513%_))))))
                             _%rand138313138360%_
                             _%hd138303138334%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop138308138344%_
                                                     _%target138305138339%_
                                                     '()))
                                                  (_%g138295138318%_
                                                   _%g138296138321%_)))))
                                        (_%g138295138318%_
                                         _%g138296138321%_))))
                                (_%g138295138318%_ _%g138296138321%_))))
                        (_%g138295138318%_ _%g138296138321%_)))))
            (_%g138294138579%_ _%stx138291%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self138033%_ _%stx138034%_)
        (let* ((_%__stx144580144581%_ _%stx138034%_)
               (_%g138037138066%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144580144581%_)))))
          (let ((_%__kont144582144583%_
                 (lambda (_%L138134%_ _%L138135%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self138033%_
                        _%stx138034%_)
                       (let ((_%f138157%_
                              (let ((__tmp145077
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L138135%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self138033%_
                                 __tmp145077))))
                         (let _%lp138159%_ ((_%rest138162%_
                                             (reverse (let ((__tmp145079
                                                             (lambda (_%g138279138282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g138280138284%_)
                       (cons _%g138279138282%_ _%g138280138284%_))))
                (declare (not safe))
                (__foldr1 __tmp145079 '() _%L138134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind138164%_ '())
                                            (_%args138165%_ '()))
                           (let* ((_%rest138166138174%_ _%rest138162%_)
                                  (_%else138168138182%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind138164%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f138157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args138165%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K138170138268%_
                                   (lambda (_%rest138185%_ _%e138186%_)
                                     (let* ((_%__stx144534144535%_ _%e138186%_)
                                            (_%g138191138209%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx144534144535%_)))))
                                       (let ((_%__kont144536144537%_
                                              (lambda ()
                                                (_%lp138159%_
                                                 _%rest138185%_
                                                 _%bind138164%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138186%_))
                                                       _%args138165%_))))
                                             (_%__kont144538144539%_
                                              (lambda ()
                                                (_%lp138159%_
                                                 _%rest138185%_
                                                 _%bind138164%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e138186%_))
                                                       _%args138165%_))))
                                             (_%__kont144540144541%_
                                              (lambda ()
                                                (let ((_%tmp138216%_
                                                       (let ((__tmp145078
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp145078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp138159%_
                                                   _%rest138185%_
                                                   (cons (cons _%tmp138216%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e138186%_))
                             '()))
                 _%bind138164%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp138216%_
                                                         _%args138165%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx144534144535%_))
                                             (let ((_%e138193138247%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx144534144535%_))))
                                               (let ((_%tl138195138252%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e138193138247%_)))
                                                     (_%hd138194138250%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e138193138247%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd138194138250%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd138194138250%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138195138252%_))
                     (let ((_%e138196138255%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138195138252%_))))
                       (let ((_%tl138198138260%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138196138255%_)))
                             (_%hd138197138258%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138196138255%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138198138260%_))
                             (_%__kont144536144537%_)
                             (_%__kont144540144541%_))))
                     (_%__kont144540144541%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd138194138250%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138195138252%_))
                         (let ((_%e138202138232%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138195138252%_))))
                           (let ((_%tl138204138237%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138202138232%_)))
                                 (_%hd138203138235%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138202138232%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138204138237%_))
                                 (_%__kont144538144539%_)
                                 (_%__kont144540144541%_))))
                         (_%__kont144540144541%_))
                     (_%__kont144540144541%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144540144541%_))))
                                             (_%__kont144540144541%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest138166138174%_))
                                 (let ((_%hd138171138271%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest138166138174%_)))
                                       (_%tl138172138273%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest138166138174%_))))
                                   (let* ((_%e138276%_ _%hd138171138271%_)
                                          (_%rest138278%_ _%tl138172138273%_))
                                     (_%K138170138268%_
                                      _%rest138278%_
                                      _%e138276%_)))
                                 (_%else138168138182%_))))))))
                (_%__kont144586144587%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self138033%_ _%stx138034%_))))
            (let ((_%__match144625144626%_
                   (lambda (_%e138041138078%_
                            _%hd138042138081%_
                            _%tl138043138083%_
                            _%e138044138086%_
                            _%hd138045138089%_
                            _%tl138046138091%_
                            _%e138047138094%_
                            _%hd138048138097%_
                            _%tl138049138099%_
                            _%e138050138102%_
                            _%hd138051138105%_
                            _%tl138052138107%_
                            _%__splice144584144585%_
                            _%target138053138110%_
                            _%tl138055138112%_)
                     (letrec ((_%loop138056138115%_
                               (lambda (_%hd138054138118%_
                                        _%rand138060138120%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138054138118%_))
                                     (let ((_%e138057138123%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138054138118%_))))
                                       (let ((_%lp-tl138059138128%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138057138123%_)))
                                             (_%lp-hd138058138126%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138057138123%_))))
                                         (_%loop138056138115%_
                                          _%lp-tl138059138128%_
                                          (cons _%lp-hd138058138126%_
                                                _%rand138060138120%_))))
                                     (let ((_%rand138061138131%_
                                            (reverse _%rand138060138120%_)))
                                       (_%__kont144582144583%_
                                        _%rand138061138131%_
                                        _%hd138051138105%_))))))
                       (_%loop138056138115%_ _%target138053138110%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144580144581%_))
                  (let ((_%e138041138078%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144580144581%_))))
                    (let ((_%tl138043138083%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138041138078%_)))
                          (_%hd138042138081%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138041138078%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138043138083%_))
                          (let ((_%e138044138086%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138043138083%_))))
                            (let ((_%tl138046138091%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138044138086%_)))
                                  (_%hd138045138089%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138044138086%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138045138089%_))
                                  (let ((_%e138047138094%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138045138089%_))))
                                    (let ((_%tl138049138099%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138047138094%_)))
                                          (_%hd138048138097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138047138094%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138048138097%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138048138097%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138049138099%_))
                                                  (let ((_%e138050138102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138049138099%_))))
                                                    (let ((_%tl138052138107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138050138102%_)))
                                                          (_%hd138051138105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138050138102%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138052138107%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138046138091%_))
                      (let ((_%__splice144584144585%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138046138091%_
                                '0))))
                        (let ((_%tl138055138112%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144584144585%_ '1)))
                              (_%target138053138110%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144584144585%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138055138112%_))
                              (_%__match144625144626%_
                               _%e138041138078%_
                               _%hd138042138081%_
                               _%tl138043138083%_
                               _%e138044138086%_
                               _%hd138045138089%_
                               _%tl138046138091%_
                               _%e138047138094%_
                               _%hd138048138097%_
                               _%tl138049138099%_
                               _%e138050138102%_
                               _%hd138051138105%_
                               _%tl138052138107%_
                               _%__splice144584144585%_
                               _%target138053138110%_
                               _%tl138055138112%_)
                              (_%__kont144586144587%_))))
                      (_%__kont144586144587%_))
                  (_%__kont144586144587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144586144587%_))
                                              (_%__kont144586144587%_))
                                          (_%__kont144586144587%_))))
                                  (_%__kont144586144587%_))))
                          (_%__kont144586144587%_))))
                  (_%__kont144586144587%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self137845%_ _%stx137846%_)
        (letrec ((_%simplify137848%_
                  (lambda (_%code137933%_)
                    (let* ((_%code137934137952%_ _%code137933%_)
                           (_%else137936137960%_ (lambda () _%code137933%_))
                           (_%K137938137996%_
                            (lambda (_%expr137963%_ _%test137964%_)
                              (let* ((_%expr137965137973%_ _%expr137963%_)
                                     (_%else137967137981%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test137964%_
                                                    (cons _%expr137963%_
                                                          '())))))
                                     (_%K137969137986%_
                                      (lambda (_%exprs137984%_)
                                        (cons 'and
                                              (cons _%test137964%_
                                                    _%exprs137984%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr137965137973%_))
                                    (let ((_%hd137970137989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr137965137973%_)))
                                          (_%tl137971137991%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr137965137973%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd137970137989%_ 'and))
                                          (let ((_%exprs137994%_
                                                 _%tl137971137991%_))
                                            (_%K137969137986%_
                                             _%exprs137994%_))
                                          (_%else137967137981%_)))
                                    (_%else137967137981%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code137934137952%_))
                          (let ((_%hd137939137999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code137934137952%_)))
                                (_%tl137940138001%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code137934137952%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd137939137999%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl137940138001%_))
                                    (let ((_%hd137941138004%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl137940138001%_)))
                                          (_%tl137942138006%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl137940138001%_))))
                                      (let ((_%test138009%_
                                             _%hd137941138004%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl137942138006%_))
                                            (let ((_%hd137943138011%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl137942138006%_)))
                                                  (_%tl137944138013%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl137942138006%_))))
                                              (let ((_%expr138016%_
                                                     _%hd137943138011%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl137944138013%_))
                                                    (let ((_%hd137945138018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl137944138013%_)))
                                                          (_%tl137946138020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl137944138013%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd137945138018%_))
                                                          (let ((_%hd137947138023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd137945138018%_)))
                        (_%tl137948138025%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd137945138018%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd137947138023%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl137948138025%_))
                            (let ((_%hd137949138028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl137948138025%_)))
                                  (_%tl137950138030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl137948138025%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd137949138028%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl137950138030%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl137946138020%_))
                                          (_%K137938137996%_
                                           _%expr138016%_
                                           _%test138009%_)
                                          (_%else137936137960%_))
                                      (_%else137936137960%_))
                                  (_%else137936137960%_)))
                            (_%else137936137960%_))
                        (_%else137936137960%_)))
                  (_%else137936137960%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else137936137960%_))))
                                            (_%else137936137960%_))))
                                    (_%else137936137960%_))
                                (_%else137936137960%_)))
                          (_%else137936137960%_))))))
          (let* ((_%g137850137871%_
                  (lambda (_%g137851137868%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137851137868%_))))
                 (_%g137849137930%_
                  (lambda (_%g137851137874%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137851137874%_))
                        (let ((_%e137855137876%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137851137874%_))))
                          (let ((_%hd137856137879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137855137876%_)))
                                (_%tl137857137881%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137855137876%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137857137881%_))
                                (let ((_%e137858137884%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137857137881%_))))
                                  (let ((_%hd137859137887%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137858137884%_)))
                                        (_%tl137860137889%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137858137884%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137860137889%_))
                                        (let ((_%e137861137892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137860137889%_))))
                                          (let ((_%hd137862137895%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137861137892%_)))
                                                (_%tl137863137897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137861137892%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl137863137897%_))
                                                (let ((_%e137864137900%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl137863137897%_))))
                                                  (let ((_%hd137865137903%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e137864137900%_)))
                                                        (_%tl137866137905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e137864137900%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl137866137905%_))
                                                        ((lambda (_%L137908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L137909%_
                          _%L137910%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify137848%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self137845%_
                                       _%L137910%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self137845%_
                                             _%L137909%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self137845%_
                                                   _%L137908%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp145080
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137845%_
                                               _%L137910%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp145080
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137845%_
                                            _%L137909%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137845%_
                                                  _%L137908%_))
                                               '()))))))
                 _%hd137865137903%_
                 _%hd137862137895%_
                 _%hd137859137887%_)
                (_%g137850137871%_ _%g137851137874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g137850137871%_
                                                 _%g137851137874%_))))
                                        (_%g137850137871%_
                                         _%g137851137874%_))))
                                (_%g137850137871%_ _%g137851137874%_))))
                        (_%g137850137871%_ _%g137851137874%_)))))
            (_%g137849137930%_ _%stx137846%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self137793%_ _%stx137794%_)
        (let* ((_%g137796137809%_
                (lambda (_%g137797137806%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137797137806%_))))
               (_%g137795137842%_
                (lambda (_%g137797137812%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137797137812%_))
                      (let ((_%e137799137814%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137797137812%_))))
                        (let ((_%hd137800137817%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137799137814%_)))
                              (_%tl137801137819%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137799137814%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137801137819%_))
                              (let ((_%e137802137822%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137801137819%_))))
                                (let ((_%hd137803137825%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137802137822%_)))
                                      (_%tl137804137827%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137802137822%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl137804137827%_))
                                      ((lambda (_%L137830%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L137830%_)))
                                       _%hd137803137825%_)
                                      (_%g137796137809%_ _%g137797137812%_))))
                              (_%g137796137809%_ _%g137797137812%_))))
                      (_%g137796137809%_ _%g137797137812%_)))))
          (_%g137795137842%_ _%stx137794%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self137725%_ _%stx137726%_)
        (let* ((_%g137728137745%_
                (lambda (_%g137729137742%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137729137742%_))))
               (_%g137727137790%_
                (lambda (_%g137729137748%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137729137748%_))
                      (let ((_%e137732137750%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137729137748%_))))
                        (let ((_%hd137733137753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137732137750%_)))
                              (_%tl137734137755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137732137750%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137734137755%_))
                              (let ((_%e137735137758%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137734137755%_))))
                                (let ((_%hd137736137761%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137735137758%_)))
                                      (_%tl137737137763%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137735137758%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137737137763%_))
                                      (let ((_%e137738137766%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137737137763%_))))
                                        (let ((_%hd137739137769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137738137766%_)))
                                              (_%tl137740137771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137738137766%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137740137771%_))
                                              ((lambda (_%L137774%_
                                                        _%L137775%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L137775%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137725%_ _%L137774%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137739137769%_
                                               _%hd137736137761%_)
                                              (_%g137728137745%_
                                               _%g137729137748%_))))
                                      (_%g137728137745%_ _%g137729137748%_))))
                              (_%g137728137745%_ _%g137729137748%_))))
                      (_%g137728137745%_ _%g137729137748%_)))))
          (_%g137727137790%_ _%stx137726%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self137536%_ _%stx137537%_)
        (let* ((_%g137539137556%_
                (lambda (_%g137540137553%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137540137553%_))))
               (_%g137538137722%_
                (lambda (_%g137540137559%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137540137559%_))
                      (let ((_%e137543137561%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137540137559%_))))
                        (let ((_%hd137544137564%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137543137561%_)))
                              (_%tl137545137566%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137543137561%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137545137566%_))
                              (let ((_%e137546137569%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137545137566%_))))
                                (let ((_%hd137547137572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137546137569%_)))
                                      (_%tl137548137574%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137546137569%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137548137574%_))
                                      (let ((_%e137549137577%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137548137574%_))))
                                        (let ((_%hd137550137580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137549137577%_)))
                                              (_%tl137551137582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137549137577%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137551137582%_))
                                              ((lambda (_%L137585%_
                                                        _%L137586%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137536%_ _%L137585%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137536%_ _%L137586%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137601%_ ((_%rest137604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137586%_ (cons _%L137585%_ '())))
                                (_%bind137606%_ '())
                                (_%args137607%_ '()))
               (let* ((_%rest137608137616%_ _%rest137604%_)
                      (_%else137610137624%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137606%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args137607%_)
                                                 '()))))))
                      (_%K137612137710%_
                       (lambda (_%rest137627%_ _%e137628%_)
                         (let* ((_%__stx144628144629%_ _%e137628%_)
                                (_%g137633137651%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144628144629%_)))))
                           (let ((_%__kont144630144631%_
                                  (lambda ()
                                    (_%lp137601%_
                                     _%rest137627%_
                                     _%bind137606%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137628%_))
                                           _%args137607%_))))
                                 (_%__kont144632144633%_
                                  (lambda ()
                                    (_%lp137601%_
                                     _%rest137627%_
                                     _%bind137606%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137628%_))
                                           _%args137607%_))))
                                 (_%__kont144634144635%_
                                  (lambda ()
                                    (let ((_%tmp137658%_
                                           (let ((__tmp145081
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145081))))
                                      (_%lp137601%_
                                       _%rest137627%_
                                       (cons (cons _%tmp137658%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137628%_))
                                                         '()))
                                             _%bind137606%_)
                                       (cons _%tmp137658%_ _%args137607%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144628144629%_))
                                 (let ((_%e137635137689%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144628144629%_))))
                                   (let ((_%tl137637137694%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137635137689%_)))
                                         (_%hd137636137692%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137635137689%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137636137692%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137636137692%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137637137694%_))
                                                 (let ((_%e137638137697%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137637137694%_))))
                                                   (let ((_%tl137640137702%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137638137697%_)))
                                                         (_%hd137639137700%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137638137697%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137640137702%_))
                                                         (_%__kont144630144631%_)
                                                         (_%__kont144634144635%_))))
                                                 (_%__kont144634144635%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137636137692%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137637137694%_))
                                                     (let ((_%e137644137674%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137637137694%_))))
                                                       (let ((_%tl137646137679%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137644137674%_)))
                     (_%hd137645137677%_
                      (let () (declare (not safe)) (##car _%e137644137674%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137646137679%_))
                     (_%__kont144632144633%_)
                     (_%__kont144634144635%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144634144635%_))
                                                 (_%__kont144634144635%_)))
                                         (_%__kont144634144635%_))))
                                 (_%__kont144634144635%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137608137616%_))
                     (let ((_%hd137613137713%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137608137616%_)))
                           (_%tl137614137715%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137608137616%_))))
                       (let* ((_%e137718%_ _%hd137613137713%_)
                              (_%rest137720%_ _%tl137614137715%_))
                         (_%K137612137710%_ _%rest137720%_ _%e137718%_)))
                     (_%else137610137624%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137550137580%_
                                               _%hd137547137572%_)
                                              (_%g137539137556%_
                                               _%g137540137559%_))))
                                      (_%g137539137556%_ _%g137540137559%_))))
                              (_%g137539137556%_ _%g137540137559%_))))
                      (_%g137539137556%_ _%g137540137559%_)))))
          (_%g137538137722%_ _%stx137537%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self137347%_ _%stx137348%_)
        (let* ((_%g137350137367%_
                (lambda (_%g137351137364%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137351137364%_))))
               (_%g137349137533%_
                (lambda (_%g137351137370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137351137370%_))
                      (let ((_%e137354137372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137351137370%_))))
                        (let ((_%hd137355137375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137354137372%_)))
                              (_%tl137356137377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137354137372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137356137377%_))
                              (let ((_%e137357137380%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137356137377%_))))
                                (let ((_%hd137358137383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137357137380%_)))
                                      (_%tl137359137385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137357137380%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137359137385%_))
                                      (let ((_%e137360137388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137359137385%_))))
                                        (let ((_%hd137361137391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137360137388%_)))
                                              (_%tl137362137393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137360137388%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137362137393%_))
                                              ((lambda (_%L137396%_
                                                        _%L137397%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self137347%_ _%L137396%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self137347%_ _%L137397%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp137412%_ ((_%rest137415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L137397%_ (cons _%L137396%_ '())))
                                (_%bind137417%_ '())
                                (_%args137418%_ '()))
               (let* ((_%rest137419137427%_ _%rest137415%_)
                      (_%else137421137435%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind137417%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args137418%_)
                                                 '()))))))
                      (_%K137423137521%_
                       (lambda (_%rest137438%_ _%e137439%_)
                         (let* ((_%__stx144674144675%_ _%e137439%_)
                                (_%g137444137462%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx144674144675%_)))))
                           (let ((_%__kont144676144677%_
                                  (lambda ()
                                    (_%lp137412%_
                                     _%rest137438%_
                                     _%bind137417%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137439%_))
                                           _%args137418%_))))
                                 (_%__kont144678144679%_
                                  (lambda ()
                                    (_%lp137412%_
                                     _%rest137438%_
                                     _%bind137417%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e137439%_))
                                           _%args137418%_))))
                                 (_%__kont144680144681%_
                                  (lambda ()
                                    (let ((_%tmp137469%_
                                           (let ((__tmp145082
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp145082))))
                                      (_%lp137412%_
                                       _%rest137438%_
                                       (cons (cons _%tmp137469%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e137439%_))
                                                         '()))
                                             _%bind137417%_)
                                       (cons _%tmp137469%_ _%args137418%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx144674144675%_))
                                 (let ((_%e137446137500%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx144674144675%_))))
                                   (let ((_%tl137448137505%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e137446137500%_)))
                                         (_%hd137447137503%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e137446137500%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd137447137503%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd137447137503%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl137448137505%_))
                                                 (let ((_%e137449137508%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl137448137505%_))))
                                                   (let ((_%tl137451137513%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e137449137508%_)))
                                                         (_%hd137450137511%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e137449137508%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl137451137513%_))
                                                         (_%__kont144676144677%_)
                                                         (_%__kont144680144681%_))))
                                                 (_%__kont144680144681%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd137447137503%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl137448137505%_))
                                                     (let ((_%e137455137485%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl137448137505%_))))
                                                       (let ((_%tl137457137490%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e137455137485%_)))
                     (_%hd137456137488%_
                      (let () (declare (not safe)) (##car _%e137455137485%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl137457137490%_))
                     (_%__kont144678144679%_)
                     (_%__kont144680144681%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont144680144681%_))
                                                 (_%__kont144680144681%_)))
                                         (_%__kont144680144681%_))))
                                 (_%__kont144680144681%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest137419137427%_))
                     (let ((_%hd137424137524%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest137419137427%_)))
                           (_%tl137425137526%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest137419137427%_))))
                       (let* ((_%e137529%_ _%hd137424137524%_)
                              (_%rest137531%_ _%tl137425137526%_))
                         (_%K137423137521%_ _%rest137531%_ _%e137529%_)))
                     (_%else137421137435%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137361137391%_
                                               _%hd137358137383%_)
                                              (_%g137350137367%_
                                               _%g137351137370%_))))
                                      (_%g137350137367%_ _%g137351137370%_))))
                              (_%g137350137367%_ _%g137351137370%_))))
                      (_%g137350137367%_ _%g137351137370%_)))))
          (_%g137349137533%_ _%stx137348%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self137263%_ _%stx137264%_)
        (let* ((_%g137266137287%_
                (lambda (_%g137267137284%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137267137284%_))))
               (_%g137265137344%_
                (lambda (_%g137267137290%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137267137290%_))
                      (let ((_%e137271137292%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137267137290%_))))
                        (let ((_%hd137272137295%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137271137292%_)))
                              (_%tl137273137297%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137271137292%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137273137297%_))
                              (let ((_%e137274137300%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137273137297%_))))
                                (let ((_%hd137275137303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137274137300%_)))
                                      (_%tl137276137305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137274137300%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137276137305%_))
                                      (let ((_%e137277137308%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137276137305%_))))
                                        (let ((_%hd137278137311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137277137308%_)))
                                              (_%tl137279137313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137277137308%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137279137313%_))
                                              (let ((_%e137280137316%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137279137313%_))))
                                                (let ((_%hd137281137319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137280137316%_)))
                                                      (_%tl137282137321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137280137316%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137282137321%_))
                                                      ((lambda (_%L137324%_
                                                                _%L137325%_
                                                                _%L137326%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137263%_ _%L137324%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137263%_
                                      _%L137325%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137263%_
                                            _%L137326%_))
                                         (cons ''#f '()))))))
               _%hd137281137319%_
               _%hd137278137311%_
               _%hd137275137303%_)
              (_%g137266137287%_ _%g137267137290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137266137287%_
                                               _%g137267137290%_))))
                                      (_%g137266137287%_ _%g137267137290%_))))
                              (_%g137266137287%_ _%g137267137290%_))))
                      (_%g137266137287%_ _%g137267137290%_)))))
          (_%g137265137344%_ _%stx137264%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self137163%_ _%stx137164%_)
        (let* ((_%g137166137191%_
                (lambda (_%g137167137188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137167137188%_))))
               (_%g137165137260%_
                (lambda (_%g137167137194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137167137194%_))
                      (let ((_%e137172137196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137167137194%_))))
                        (let ((_%hd137173137199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137172137196%_)))
                              (_%tl137174137201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137172137196%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137174137201%_))
                              (let ((_%e137175137204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137174137201%_))))
                                (let ((_%hd137176137207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137175137204%_)))
                                      (_%tl137177137209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137175137204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137177137209%_))
                                      (let ((_%e137178137212%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137177137209%_))))
                                        (let ((_%hd137179137215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137178137212%_)))
                                              (_%tl137180137217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137178137212%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137180137217%_))
                                              (let ((_%e137181137220%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137180137217%_))))
                                                (let ((_%hd137182137223%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137181137220%_)))
                                                      (_%tl137183137225%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137181137220%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137183137225%_))
                                                      (let ((_%e137184137228%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137183137225%_))))
                (let ((_%hd137185137231%_
                       (let () (declare (not safe)) (##car _%e137184137228%_)))
                      (_%tl137186137233%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137184137228%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137186137233%_))
                      ((lambda (_%L137236%_
                                _%L137237%_
                                _%L137238%_
                                _%L137239%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self137163%_
                                        _%L137237%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self137163%_
                                              _%L137236%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self137163%_
                                                    _%L137238%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self137163%_
                                                          _%L137239%_))
                                                       (cons ''#f '())))))))
                       _%hd137185137231%_
                       _%hd137182137223%_
                       _%hd137179137215%_
                       _%hd137176137207%_)
                      (_%g137166137191%_ _%g137167137194%_))))
              (_%g137166137191%_ _%g137167137194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137166137191%_
                                               _%g137167137194%_))))
                                      (_%g137166137191%_ _%g137167137194%_))))
                              (_%g137166137191%_ _%g137167137194%_))))
                      (_%g137166137191%_ _%g137167137194%_)))))
          (_%g137165137260%_ _%stx137164%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self137079%_ _%stx137080%_)
        (let* ((_%g137082137103%_
                (lambda (_%g137083137100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137083137100%_))))
               (_%g137081137160%_
                (lambda (_%g137083137106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137083137106%_))
                      (let ((_%e137087137108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137083137106%_))))
                        (let ((_%hd137088137111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137087137108%_)))
                              (_%tl137089137113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137087137108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137089137113%_))
                              (let ((_%e137090137116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137089137113%_))))
                                (let ((_%hd137091137119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137090137116%_)))
                                      (_%tl137092137121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137090137116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137092137121%_))
                                      (let ((_%e137093137124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137092137121%_))))
                                        (let ((_%hd137094137127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137093137124%_)))
                                              (_%tl137095137129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137093137124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137095137129%_))
                                              (let ((_%e137096137132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137095137129%_))))
                                                (let ((_%hd137097137135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137096137132%_)))
                                                      (_%tl137098137137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137096137132%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl137098137137%_))
                                                      ((lambda (_%L137140%_
                                                                _%L137141%_
                                                                _%L137142%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self137079%_ _%L137140%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self137079%_
                                      _%L137141%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137079%_
                                            _%L137142%_))
                                         (cons ''#f '()))))))
               _%hd137097137135%_
               _%hd137094137127%_
               _%hd137091137119%_)
              (_%g137082137103%_ _%g137083137106%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137082137103%_
                                               _%g137083137106%_))))
                                      (_%g137082137103%_ _%g137083137106%_))))
                              (_%g137082137103%_ _%g137083137106%_))))
                      (_%g137082137103%_ _%g137083137106%_)))))
          (_%g137081137160%_ _%stx137080%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self136979%_ _%stx136980%_)
        (let* ((_%g136982137007%_
                (lambda (_%g136983137004%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136983137004%_))))
               (_%g136981137076%_
                (lambda (_%g136983137010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136983137010%_))
                      (let ((_%e136988137012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136983137010%_))))
                        (let ((_%hd136989137015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136988137012%_)))
                              (_%tl136990137017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136988137012%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136990137017%_))
                              (let ((_%e136991137020%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136990137017%_))))
                                (let ((_%hd136992137023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136991137020%_)))
                                      (_%tl136993137025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136991137020%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136993137025%_))
                                      (let ((_%e136994137028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136993137025%_))))
                                        (let ((_%hd136995137031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136994137028%_)))
                                              (_%tl136996137033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136994137028%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136996137033%_))
                                              (let ((_%e136997137036%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136996137033%_))))
                                                (let ((_%hd136998137039%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136997137036%_)))
                                                      (_%tl136999137041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136997137036%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136999137041%_))
                                                      (let ((_%e137000137044%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136999137041%_))))
                (let ((_%hd137001137047%_
                       (let () (declare (not safe)) (##car _%e137000137044%_)))
                      (_%tl137002137049%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137000137044%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137002137049%_))
                      ((lambda (_%L137052%_
                                _%L137053%_
                                _%L137054%_
                                _%L137055%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self136979%_
                                        _%L137053%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self136979%_
                                              _%L137052%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self136979%_
                                                    _%L137054%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self136979%_
                                                          _%L137055%_))
                                                       (cons ''#f '())))))))
                       _%hd137001137047%_
                       _%hd136998137039%_
                       _%hd136995137031%_
                       _%hd136992137023%_)
                      (_%g136982137007%_ _%g136983137010%_))))
              (_%g136982137007%_ _%g136983137010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136982137007%_
                                               _%g136983137010%_))))
                                      (_%g136982137007%_ _%g136983137010%_))))
                              (_%g136982137007%_ _%g136983137010%_))))
                      (_%g136982137007%_ _%g136983137010%_)))))
          (_%g136981137076%_ _%stx136980%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self136774%_ _%stx136775%_)
        (let* ((_%g136777136798%_
                (lambda (_%g136778136795%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136778136795%_))))
               (_%g136776136976%_
                (lambda (_%g136778136801%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136778136801%_))
                      (let ((_%e136782136803%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136778136801%_))))
                        (let ((_%hd136783136806%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136782136803%_)))
                              (_%tl136784136808%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136782136803%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136784136808%_))
                              (let ((_%e136785136811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136784136808%_))))
                                (let ((_%hd136786136814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136785136811%_)))
                                      (_%tl136787136816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136785136811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136787136816%_))
                                      (let ((_%e136788136819%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136787136816%_))))
                                        (let ((_%hd136789136822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136788136819%_)))
                                              (_%tl136790136824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136788136819%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136790136824%_))
                                              (let ((_%e136791136827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136790136824%_))))
                                                (let ((_%hd136792136830%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136791136827%_)))
                                                      (_%tl136793136832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136791136827%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136793136832%_))
                                                      ((lambda (_%L136835%_
                                                                _%L136836%_
                                                                _%L136837%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self136774%_
                                    _%L136835%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self136774%_
                                          _%L136836%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp136855%_ ((_%rest136858%_
                                         (cons _%L136836%_
                                               (cons _%L136835%_ '())))
                                        (_%bind136860%_ '())
                                        (_%args136861%_ '()))
                       (let* ((_%rest136862136870%_ _%rest136858%_)
                              (_%else136864136878%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind136860%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp145083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp145083 _%args136861%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K136866136964%_
                               (lambda (_%rest136881%_ _%e136882%_)
                                 (let* ((_%__stx144720144721%_ _%e136882%_)
                                        (_%g136887136905%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx144720144721%_)))))
                                   (let ((_%__kont144722144723%_
                                          (lambda ()
                                            (_%lp136855%_
                                             _%rest136881%_
                                             _%bind136860%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136882%_))
                                                   _%args136861%_))))
                                         (_%__kont144724144725%_
                                          (lambda ()
                                            (_%lp136855%_
                                             _%rest136881%_
                                             _%bind136860%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e136882%_))
                                                   _%args136861%_))))
                                         (_%__kont144726144727%_
                                          (lambda ()
                                            (let ((_%tmp136912%_
                                                   (let ((__tmp145084
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp145084))))
                                              (_%lp136855%_
                                               _%rest136881%_
                                               (cons (cons _%tmp136912%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e136882%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind136860%_)
                                               (cons _%tmp136912%_
                                                     _%args136861%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx144720144721%_))
                                         (let ((_%e136889136943%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx144720144721%_))))
                                           (let ((_%tl136891136948%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e136889136943%_)))
                                                 (_%hd136890136946%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e136889136943%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd136890136946%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd136890136946%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl136891136948%_))
                                                         (let ((_%e136892136951%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl136891136948%_))))
                   (let ((_%tl136894136956%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e136892136951%_)))
                         (_%hd136893136954%_
                          (let ()
                            (declare (not safe))
                            (##car _%e136892136951%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl136894136956%_))
                         (_%__kont144722144723%_)
                         (_%__kont144726144727%_))))
                 (_%__kont144726144727%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd136890136946%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl136891136948%_))
                     (let ((_%e136898136928%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl136891136948%_))))
                       (let ((_%tl136900136933%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e136898136928%_)))
                             (_%hd136899136931%_
                              (let ()
                                (declare (not safe))
                                (##car _%e136898136928%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl136900136933%_))
                             (_%__kont144724144725%_)
                             (_%__kont144726144727%_))))
                     (_%__kont144726144727%_))
                 (_%__kont144726144727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144726144727%_))))
                                         (_%__kont144726144727%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest136862136870%_))
                             (let ((_%hd136867136967%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest136862136870%_)))
                                   (_%tl136868136969%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest136862136870%_))))
                               (let* ((_%e136972%_ _%hd136867136967%_)
                                      (_%rest136974%_ _%tl136868136969%_))
                                 (_%K136866136964%_
                                  _%rest136974%_
                                  _%e136972%_)))
                             (_%else136864136878%_))))))
               _%hd136792136830%_
               _%hd136789136822%_
               _%hd136786136814%_)
              (_%g136777136798%_ _%g136778136801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136777136798%_
                                               _%g136778136801%_))))
                                      (_%g136777136798%_ _%g136778136801%_))))
                              (_%g136777136798%_ _%g136778136801%_))))
                      (_%g136777136798%_ _%g136778136801%_)))))
          (_%g136776136976%_ _%stx136775%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self136553%_ _%stx136554%_)
        (let* ((_%g136556136581%_
                (lambda (_%g136557136578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136557136578%_))))
               (_%g136555136771%_
                (lambda (_%g136557136584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136557136584%_))
                      (let ((_%e136562136586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136557136584%_))))
                        (let ((_%hd136563136589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136562136586%_)))
                              (_%tl136564136591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136562136586%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136564136591%_))
                              (let ((_%e136565136594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136564136591%_))))
                                (let ((_%hd136566136597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136565136594%_)))
                                      (_%tl136567136599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136565136594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136567136599%_))
                                      (let ((_%e136568136602%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136567136599%_))))
                                        (let ((_%hd136569136605%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136568136602%_)))
                                              (_%tl136570136607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136568136602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136570136607%_))
                                              (let ((_%e136571136610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136570136607%_))))
                                                (let ((_%hd136572136613%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136571136610%_)))
                                                      (_%tl136573136615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136571136610%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl136573136615%_))
                                                      (let ((_%e136574136618%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl136573136615%_))))
                (let ((_%hd136575136621%_
                       (let () (declare (not safe)) (##car _%e136574136618%_)))
                      (_%tl136576136623%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e136574136618%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl136576136623%_))
                      ((lambda (_%L136626%_
                                _%L136627%_
                                _%L136628%_
                                _%L136629%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self136553%_
                                            _%L136627%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self136553%_
                                                  _%L136626%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self136553%_
                                                        _%L136628%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp136650%_ ((_%rest136653%_
                                                 (cons _%L136628%_
                                                       (cons _%L136626%_
                                                             (cons _%L136627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind136655%_ '())
                                                (_%args136656%_ '()))
                               (let* ((_%rest136657136665%_ _%rest136653%_)
                                      (_%else136659136673%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind136655%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp145085 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp145085 _%args136656%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K136661136759%_
                                       (lambda (_%rest136676%_ _%e136677%_)
                                         (let* ((_%__stx144766144767%_
                                                 _%e136677%_)
                                                (_%g136682136700%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx144766144767%_)))))
                                           (let ((_%__kont144768144769%_
                                                  (lambda ()
                                                    (_%lp136650%_
                                                     _%rest136676%_
                                                     _%bind136655%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136677%_))
                                                           _%args136656%_))))
                                                 (_%__kont144770144771%_
                                                  (lambda ()
                                                    (_%lp136650%_
                                                     _%rest136676%_
                                                     _%bind136655%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e136677%_))
                                                           _%args136656%_))))
                                                 (_%__kont144772144773%_
                                                  (lambda ()
                                                    (let ((_%tmp136707%_
                                                           (let ((__tmp145086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp145086))))
              (_%lp136650%_
               _%rest136676%_
               (cons (cons _%tmp136707%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e136677%_))
                                 '()))
                     _%bind136655%_)
               (cons _%tmp136707%_ _%args136656%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx144766144767%_))
                                                 (let ((_%e136684136738%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx144766144767%_))))
                                                   (let ((_%tl136686136743%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e136684136738%_)))
                                                         (_%hd136685136741%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e136684136738%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd136685136741%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd136685136741%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl136686136743%_))
                         (let ((_%e136687136746%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl136686136743%_))))
                           (let ((_%tl136689136751%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e136687136746%_)))
                                 (_%hd136688136749%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e136687136746%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl136689136751%_))
                                 (_%__kont144768144769%_)
                                 (_%__kont144772144773%_))))
                         (_%__kont144772144773%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd136685136741%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl136686136743%_))
                             (let ((_%e136693136723%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl136686136743%_))))
                               (let ((_%tl136695136728%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e136693136723%_)))
                                     (_%hd136694136726%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e136693136723%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl136695136728%_))
                                     (_%__kont144770144771%_)
                                     (_%__kont144772144773%_))))
                             (_%__kont144772144773%_))
                         (_%__kont144772144773%_)))
                 (_%__kont144772144773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont144772144773%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest136657136665%_))
                                     (let ((_%hd136662136762%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest136657136665%_)))
                                           (_%tl136663136764%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest136657136665%_))))
                                       (let* ((_%e136767%_ _%hd136662136762%_)
                                              (_%rest136769%_
                                               _%tl136663136764%_))
                                         (_%K136661136759%_
                                          _%rest136769%_
                                          _%e136767%_)))
                                     (_%else136659136673%_))))))
                       _%hd136575136621%_
                       _%hd136572136613%_
                       _%hd136569136605%_
                       _%hd136566136597%_)
                      (_%g136556136581%_ _%g136557136584%_))))
              (_%g136556136581%_ _%g136557136584%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136556136581%_
                                               _%g136557136584%_))))
                                      (_%g136556136581%_ _%g136557136584%_))))
                              (_%g136556136581%_ _%g136557136584%_))))
                      (_%g136556136581%_ _%g136557136584%_)))))
          (_%g136555136771%_ _%stx136554%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self136392%_ _%stx136393%_)
        (letrec ((_%import-set-template136395%_
                  (lambda (_%in136498%_ _%phi136499%_)
                    (let ((_%iphi136501%_
                           (fx+ _%phi136499%_
                                (##direct-structure-ref
                                 _%in136498%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports136502%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in136498%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp136504%_ ((_%rest136506%_ _%imports136502%_)
                                         (_%r136507%_ '()))
                        (let* ((_%rest136508136516%_ _%rest136506%_)
                               (_%else136510136524%_ (lambda () _%r136507%_))
                               (_%K136512136541%_
                                (lambda (_%rest136527%_ _%in136528%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in136528%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi136501%_))
                                          (_%lp136504%_
                                           _%rest136527%_
                                           (cons _%in136528%_ _%r136507%_))
                                          (_%lp136504%_
                                           _%rest136527%_
                                           _%r136507%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in136528%_
                                             'gx#module-import::t))
                                          (let ((_%iphi136532%_
                                                 (fx+ _%phi136499%_
                                                      (##direct-structure-ref
                                                       _%in136528%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi136532%_))
                                                (_%lp136504%_
                                                 _%rest136527%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in136528%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r136507%_))
                                                (_%lp136504%_
                                                 _%rest136527%_
                                                 _%r136507%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in136528%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi136535%_
                                                     (fx+ _%iphi136501%_
                                                          (##direct-structure-ref
                                                           _%in136528%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi136535%_))
                                                    (_%lp136504%_
                                                     _%rest136527%_
                                                     (cons (##direct-structure-ref
                                                            _%in136528%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r136507%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi136535%_))
                                                        (_%lp136504%_
                                                         _%rest136527%_
                                                         (let ((__tmp145087
                                                                (_%import-set-template136395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in136528%_
                         _%iphi136501%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r136507%_ __tmp145087)))
                (_%lp136504%_ _%rest136527%_ _%r136507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp136504%_
                                               _%rest136527%_
                                               _%r136507%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest136508136516%_))
                              (let ((_%hd136513136544%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136508136516%_)))
                                    (_%tl136514136546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136508136516%_))))
                                (let* ((_%in136549%_ _%hd136513136544%_)
                                       (_%rest136551%_ _%tl136514136546%_))
                                  (_%K136512136541%_
                                   _%rest136551%_
                                   _%in136549%_)))
                              (_%else136510136524%_))))))))
          (let* ((_%g136397136407%_
                  (lambda (_%g136398136404%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136398136404%_))))
                 (_%g136396136495%_
                  (lambda (_%g136398136410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136398136410%_))
                        (let ((_%e136400136412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136398136410%_))))
                          (let ((_%hd136401136415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136400136412%_)))
                                (_%tl136402136417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136400136412%_))))
                            ((lambda (_%L136420%_)
                               (let ((_%ht136431%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp136433%_ ((_%rest136435%_
                                                     _%L136420%_)
                                                    (_%loads136436%_ '()))
                                   (letrec ((_%K136438%_
                                             (lambda (_%ctx136488%_
                                                      _%rest136489%_)
                                               (let ((_%id136491%_
                                                      (##structure-ref
                                                       _%ctx136488%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht136431%_
                                                        _%id136491%_))
                                                     (_%lp136433%_
                                                      _%rest136489%_
                                                      _%loads136436%_)
                                                     (let ((_%rt136493%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id136491%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht136431%_
                                                          _%id136491%_
                                                          _%rt136493%_))
                                                       (_%lp136433%_
                                                        _%rest136489%_
                                                        (cons _%rt136493%_
                                                              _%loads136436%_))))))))
                                     (let* ((_%rest136439136447%_
                                             _%rest136435%_)
                                            (_%else136441136459%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp145089
                                                            (lambda (_%g136454136456%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g136454136456%_)))
                   (__tmp145088 (reverse _%loads136436%_)))
               (declare (not safe))
               (##map __tmp145089 __tmp145088)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K136443136476%_
                                             (lambda (_%rest136462%_
                                                      _%in136463%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in136463%_
                                                      'gx#module-context::t))
                                                   (_%K136438%_
                                                    _%in136463%_
                                                    _%rest136462%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in136463%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in136463%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K136438%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in136463%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest136462%_)
                   (_%lp136433%_ _%rest136462%_ _%loads136436%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in136463%_
                      'gx#import-set::t))
                   (let ((_%phi136468%_
                          (##direct-structure-ref
                           _%in136463%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi136468%_)
                         (_%K136438%_
                          (##direct-structure-ref
                           _%in136463%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest136462%_)
                         (if (fxpositive? _%phi136468%_)
                             (let ((_%deps136472%_
                                    (_%import-set-template136395%_
                                     _%in136463%_
                                     '0)))
                               (_%lp136433%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest136462%_
                                   _%deps136472%_))
                                _%loads136436%_))
                             (_%lp136433%_ _%rest136462%_ _%loads136436%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx136393%_
                      _%in136463%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest136439136447%_))
                                           (let ((_%hd136444136479%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest136439136447%_)))
                                                 (_%tl136445136481%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest136439136447%_))))
                                             (let* ((_%in136484%_
                                                     _%hd136444136479%_)
                                                    (_%rest136486%_
                                                     _%tl136445136481%_))
                                               (_%K136443136476%_
                                                _%rest136486%_
                                                _%in136484%_)))
                                           (_%else136441136459%_)))))))
                             _%tl136402136417%_)))
                        (_%g136397136407%_ _%g136398136410%_)))))
            (_%g136396136495%_ _%stx136393%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self136205%_ _%stx136206%_)
        (letrec ((_%add-lift!136208%_
                  (lambda (_%expr136390%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr136390%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote136209%_
                  (lambda (_%id136387%_ _%marks136388%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id136387%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks136388%_
                                                        '()))))))))
                 (_%generate-simple136210%_
                  (lambda (_%stxq136382%_)
                    (let ((_%gid136384%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid136385%_
                           (gxc#generate-runtime-identifier _%stxq136382%_)))
                      (_%add-lift!136208%_
                       (cons 'define
                             (cons _%gid136384%_
                                   (cons (_%generate-syntax-quote136209%_
                                          _%qid136385%_
                                          ''())
                                         '()))))
                      (let ((__tmp145090
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145090 _%stxq136382%_ _%gid136384%_))
                      _%gid136384%_)))
                 (_%generate-serialized136211%_
                  (lambda (_%stxq136372%_ _%marks136373%_)
                    (let* ((_%mark-refs136375%_
                            (map _%generate-mark136212%_ _%marks136373%_))
                           (_%gid136377%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid136379%_
                            (gxc#generate-runtime-identifier _%stxq136372%_)))
                      (_%add-lift!136208%_
                       (cons 'define
                             (cons _%gid136377%_
                                   (cons (_%generate-syntax-quote136209%_
                                          _%qid136379%_
                                          (cons 'list _%mark-refs136375%_))
                                         '()))))
                      (let ((__tmp145091
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp145091 _%stxq136372%_ _%gid136377%_))
                      _%gid136377%_)))
                 (_%generate-mark136212%_
                  (lambda (_%mark136357%_)
                    (let ((_%$e136359%_
                           (let ((__tmp145092
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp145092 _%mark136357%_))))
                      (if _%$e136359%_
                          (values _%$e136359%_)
                          (let* ((_%gid136363%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr136365%_
                                  (_%serialize-mark136213%_ _%mark136357%_))
                                 (_%ctx136367%_
                                  (let ((__tmp145093
                                         (##structure-ref
                                          _%mark136357%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp145093)))
                                 (_%ctx-ref136369%_
                                  (if (eq? _%ctx136367%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref136214%_
                                                               _%ctx136367%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp145094
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp145094
                               _%mark136357%_
                               _%gid136363%_))
                            (_%add-lift!136208%_
                             (cons 'define
                                   (cons _%gid136363%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr136365%_ '()))
                   (cons _%ctx-ref136369%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid136363%_)))))
                 (_%serialize-mark136213%_
                  (lambda (_%mark136304%_)
                    (letrec ((_%quote-e136306%_
                              (lambda (_%sym136355%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym136355%_))
                                    _%sym136355%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym136355%_))))))
                      (let* ((_%mark136307136316%_ _%mark136304%_)
                             (_%E136309136320%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark136307136316%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K136310136332%_
                              (lambda (_%trace136323%_
                                       _%phi136324%_
                                       _%ctx136325%_
                                       _%subst136326%_)
                                (let ((_%subs136328%_
                                       (if _%subst136326%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst136326%_))
                                           '())))
                                  (cons _%phi136324%_
                                        (map (lambda (_%pair136330%_)
                                               (cons (_%quote-e136306%_
                                                      (car _%pair136330%_))
                                                     (_%quote-e136306%_
                                                      (cdr _%pair136330%_))))
                                             _%subs136328%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark136307136316%_
                               'gx#expander-mark::t))
                            (let* ((_%e136311136335%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136307136316%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst136338%_ _%e136311136335%_)
                                   (_%e136312136340%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136307136316%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx136343%_ _%e136312136340%_)
                                   (_%e136313136345%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136307136316%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi136348%_ _%e136313136345%_)
                                   (_%e136314136350%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark136307136316%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace136353%_ _%e136314136350%_))
                              (_%K136310136332%_
                               _%trace136353%_
                               _%phi136348%_
                               _%ctx136343%_
                               _%subst136338%_))
                            (_%E136309136320%_))))))
                 (_%context-ref136214%_
                  (lambda (_%ctx136291%_)
                    (if (let ((__tmp145095
                               (##structure-ref
                                _%ctx136291%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp145095
                           'gx#module-context::t))
                        (let ((_%ctx-ref136293%_
                               (_%context-ref-nested136216%_ _%ctx136291%_))
                              (_%ctx-origin136294%_
                               (_%context-ref-origin136215%_ _%ctx136291%_))
                              (_%origin136295%_
                               (_%context-ref-origin136215%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin136295%_ _%ctx-origin136294%_)
                              (let ((_%ref136297%_
                                     (_%context-ref-nested136216%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp136299%_ ((_%ref136301%_
                                                    (cdr _%ref136297%_))
                                                   (_%ctx-ref136302%_
                                                    (cdr _%ctx-ref136293%_)))
                                  (if (and (pair? _%ref136301%_)
                                           (eq? (car _%ref136301%_)
                                                (car _%ctx-ref136302%_)))
                                      (_%lp136299%_
                                       (cdr _%ref136301%_)
                                       (cdr _%ctx-ref136302%_))
                                      (cons '#f _%ctx-ref136302%_))))
                              _%ctx-ref136293%_))
                        (let ((__tmp145096
                               (##structure-ref
                                _%ctx136291%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp145096)))))
                 (_%context-ref-origin136215%_
                  (lambda (_%ctx136283%_)
                    (let _%lp136285%_ ((_%ctx136287%_ _%ctx136283%_))
                      (let ((_%super136289%_
                             (##structure-ref
                              _%ctx136287%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136289%_
                               'gx#module-context::t))
                            (_%lp136285%_ _%super136289%_)
                            _%ctx136287%_)))))
                 (_%context-ref-nested136216%_
                  (lambda (_%ctx136274%_)
                    (let _%lp136276%_ ((_%ctx136278%_ _%ctx136274%_)
                                       (_%r136279%_ '()))
                      (let ((_%super136281%_
                             (##structure-ref
                              _%ctx136278%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super136281%_
                               'gx#module-context::t))
                            (_%lp136276%_
                             _%super136281%_
                             (cons (car (##structure-ref
                                         _%ctx136278%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r136279%_))
                            (cons (let ((__tmp145097
                                         (##structure-ref
                                          _%ctx136278%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp145097))
                                  _%r136279%_)))))))
          (let* ((_%g136218136231%_
                  (lambda (_%g136219136228%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136219136228%_))))
                 (_%g136217136271%_
                  (lambda (_%g136219136234%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136219136234%_))
                        (let ((_%e136221136236%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136219136234%_))))
                          (let ((_%hd136222136239%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136221136236%_)))
                                (_%tl136223136241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136221136236%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136223136241%_))
                                (let ((_%e136224136244%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136223136241%_))))
                                  (let ((_%hd136225136247%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136224136244%_)))
                                        (_%tl136226136249%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136224136244%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl136226136249%_))
                                        ((lambda (_%L136252%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L136252%_))
                                               (let ((_%$e136265%_
                                                      (let ((__tmp145098
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp145098 _%L136252%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e136265%_
                                                     (values _%$e136265%_)
                                                     (let ((_%marks136269%_
                                                            (##direct-structure-ref
                                                             _%L136252%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks136269%_)
                                                           (_%generate-simple136210%_
                                                            _%L136252%_)
                                                           (_%generate-serialized136211%_
                                                            _%L136252%_
                                                            _%marks136269%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L136252%_))))
                                         _%hd136225136247%_)
                                        (_%g136218136231%_
                                         _%g136219136234%_))))
                                (_%g136218136231%_ _%g136219136234%_))))
                        (_%g136218136231%_ _%g136219136234%_)))))
            (_%g136217136271%_ _%stx136206%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self136137%_ _%stx136138%_)
        (let* ((_%g136140136157%_
                (lambda (_%g136141136154%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136141136154%_))))
               (_%g136139136202%_
                (lambda (_%g136141136160%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136141136160%_))
                      (let ((_%e136144136162%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136141136160%_))))
                        (let ((_%hd136145136165%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136144136162%_)))
                              (_%tl136146136167%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136144136162%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136146136167%_))
                              (let ((_%e136147136170%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136146136167%_))))
                                (let ((_%hd136148136173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136147136170%_)))
                                      (_%tl136149136175%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136147136170%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136149136175%_))
                                      (let ((_%e136150136178%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136149136175%_))))
                                        (let ((_%hd136151136181%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136150136178%_)))
                                              (_%tl136152136183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136150136178%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136152136183%_))
                                              ((lambda (_%L136186%_
                                                        _%L136187%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136187%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self136137%_ _%L136186%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136151136181%_
                                               _%hd136148136173%_)
                                              (_%g136140136157%_
                                               _%g136141136160%_))))
                                      (_%g136140136157%_ _%g136141136160%_))))
                              (_%g136140136157%_ _%g136141136160%_))))
                      (_%g136140136157%_ _%g136141136160%_)))))
          (_%g136139136202%_ _%stx136138%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self136086%_ _%stx136087%_)
        (let* ((_%g136089136099%_
                (lambda (_%g136090136096%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136090136096%_))))
               (_%g136088136134%_
                (lambda (_%g136090136102%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136090136102%_))
                      (let ((_%e136092136104%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136090136102%_))))
                        (let ((_%hd136093136107%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136092136104%_)))
                              (_%tl136094136109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136092136104%_))))
                          ((lambda (_%L136112%_)
                             (let* ((_%c-body136126%_
                                     (map (lambda (_%g136121136123%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self136086%_
                                               _%g136121136123%_)))
                                          _%L136112%_))
                                    (_%c-body136131%_
                                     (let ((__tmp145099
                                            (lambda (_%$obj136128%_)
                                              (not (eq? _%$obj136128%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp145099
                                        _%c-body136126%_))))
                               (cons '%#begin _%c-body136131%_)))
                           _%tl136094136109%_)))
                      (_%g136089136099%_ _%g136090136102%_)))))
          (_%g136088136134%_ _%stx136087%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self135991%_ _%stx135992%_)
        (let* ((_%g135994136004%_
                (lambda (_%g135995136001%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135995136001%_))))
               (_%g135993136083%_
                (lambda (_%g135995136007%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135995136007%_))
                      (let ((_%e135997136009%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135995136007%_))))
                        (let ((_%hd135998136012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135997136009%_)))
                              (_%tl135999136014%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135997136009%_))))
                          ((lambda (_%L136017%_)
                             (let* ((_%phi136027%_
                                     (let ((__tmp145100
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp145100 '1)))
                                    (_%block136029%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self135991%_ 'state))
                                      _%phi136027%_))
                                    (_%compiled136032%_
                                     (let ((__tmp145101
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self135991%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L136017%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp145101
                                        gx#current-expander-phi
                                        _%phi136027%_)))
                                    (_%g136035136045%_
                                     (lambda (_%g136036136042%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g136036136042%_))))
                                    (_%g136034136080%_
                                     (lambda (_%g136036136048%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g136036136048%_))
                                           (let ((_%e136038136050%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g136036136048%_))))
                                             (let ((_%hd136039136053%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e136038136050%_)))
                                                   (_%tl136040136055%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e136038136050%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd136039136053%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd136039136053%_))
                                                       ((lambda (_%L136058%_)
                                                          (let ((_%c-body136075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj136072%_)
                                   (not (eq? _%$obj136072%_ '#!void)))
                                 _%L136058%_)))
                    (if _%block136029%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block136029%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body136075%_))
                        (if (null? _%c-body136075%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body136075%_)))))
                _%tl136040136055%_)
               (_%g136035136045%_ _%g136036136048%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g136035136045%_
                                                    _%g136036136048%_))))
                                           (_%g136035136045%_
                                            _%g136036136048%_)))))
                               (_%g136034136080%_ _%compiled136032%_)))
                           _%tl135999136014%_)))
                      (_%g135994136004%_ _%g135995136007%_)))))
          (_%g135993136083%_ _%stx135992%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self135922%_ _%stx135923%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135922%_ 'state)))
        (let* ((_%g135925135939%_
                (lambda (_%g135926135936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135926135936%_))))
               (_%g135924135988%_
                (lambda (_%g135926135942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135926135942%_))
                      (let ((_%e135929135944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135926135942%_))))
                        (let ((_%hd135930135947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135929135944%_)))
                              (_%tl135931135949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135929135944%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135931135949%_))
                              (let ((_%e135932135952%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135931135949%_))))
                                (let ((_%hd135933135955%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135932135952%_)))
                                      (_%tl135934135957%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135932135952%_))))
                                  ((lambda (_%L135960%_ _%L135961%_)
                                     (let ((_%key135974%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L135961%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key135974%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx135923%_
                                              _%L135961%_
                                              _%key135974%_)))
                                       (let* ((_%ctx135976%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L135961%_)))
                                              (_%code135979%_
                                               (let ((__tmp145102
                                                      (lambda ()
                                                        (let ((__tmp145103
                                                               (##structure-ref
                                                                _%ctx135976%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self135922%_
                                                           __tmp145103)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp145102
                                                  gx#current-expander-context
                                                  _%ctx135976%_)))
                                              (_%rt135981%_
                                               (let ((__tmp145104
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp145104
                                                  _%ctx135976%_)))
                                              (_%loader135983%_
                                               (if _%rt135981%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt135981%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid135985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L135961%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self135922%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid135985%_
                                                     (cons _%code135979%_
                                                           _%loader135983%_))))))
                                   _%tl135934135957%_
                                   _%hd135933135955%_)))
                              (_%g135925135939%_ _%g135926135942%_))))
                      (_%g135925135939%_ _%g135926135942%_)))))
          (_%g135924135988%_ _%stx135923%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx135909%_ _%context-chain135910%_)
        (let _%lp135912%_ ((_%ctx135914%_ _%ctx135909%_) (_%path135915%_ '()))
          (let ((_%super135917%_
                 (##structure-ref _%ctx135914%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super135917%_ _%context-chain135910%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx135914%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path135915%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super135917%_
                       'gx#module-context::t))
                    (_%lp135912%_
                     _%super135917%_
                     (cons (car (##structure-ref
                                 _%ctx135914%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path135915%_))
                    (cons (let ((__tmp145105
                                 (##structure-ref
                                  _%ctx135914%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp145105))
                          _%path135915%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp135902%_ ((_%ctx135904%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r135905%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx135904%_ 'gx#module-context::t))
              (_%lp135902%_
               (##structure-ref _%ctx135904%_ '3 gx#phi-context::t '#f)
               (cons _%ctx135904%_ _%r135905%_))
              _%r135905%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self135665%_ _%stx135666%_)
        (letrec* ((_%context-chain135668%_ (gxc#current-context-chain))
                  (_%make-import-spec135669%_
                   (lambda (_%in135838%_)
                     (let* ((_%in135839135851%_ _%in135838%_)
                            (_%E135841135855%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in135839135851%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K135842135865%_
                             (lambda (_%phi135858%_
                                      _%name135859%_
                                      _%src-name135860%_
                                      _%src-phi135861%_
                                      _%src-key135862%_
                                      _%src-ctx135863%_)
                               (cons _%phi135858%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name135859%_)
                                           (cons _%src-phi135861%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name135860%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in135839135851%_
                              'gx#module-import::t))
                           (let ((_%e135843135868%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in135839135851%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e135843135868%_
                                    'gx#module-export::t))
                                 (let* ((_%e135846135871%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135843135868%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx135874%_ _%e135846135871%_)
                                        (_%e135847135876%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135843135868%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key135879%_ _%e135847135876%_)
                                        (_%e135848135881%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135843135868%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi135884%_ _%e135848135881%_)
                                        (_%e135849135886%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e135843135868%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name135889%_ _%e135849135886%_)
                                        (_%e135844135891%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135839135851%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name135894%_ _%e135844135891%_)
                                        (_%e135845135896%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in135839135851%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi135899%_ _%e135845135896%_))
                                   (_%K135842135865%_
                                    _%phi135899%_
                                    _%name135894%_
                                    _%src-name135889%_
                                    _%src-phi135884%_
                                    _%src-key135879%_
                                    _%src-ctx135874%_))
                                 (_%E135841135855%_)))
                           (_%E135841135855%_)))))
                  (_%make-import-path135670%_
                   (lambda (_%ctx135836%_)
                     (gxc#generate-meta-import-path
                      _%ctx135836%_
                      _%context-chain135668%_)))
                  (_%make-import-spec-in135671%_
                   (lambda (_%ctx135833%_ _%in135834%_)
                     (cons 'spec:
                           (cons (_%make-import-path135670%_ _%ctx135833%_)
                                 (reverse _%in135834%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self135665%_ 'state)))
          (let* ((_%g135673135683%_
                  (lambda (_%g135674135680%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135674135680%_))))
                 (_%g135672135830%_
                  (lambda (_%g135674135686%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135674135686%_))
                        (let ((_%e135676135688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135674135686%_))))
                          (let ((_%hd135677135691%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135676135688%_)))
                                (_%tl135678135693%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135676135688%_))))
                            ((lambda (_%L135696%_)
                               (let _%lp135707%_ ((_%rest135709%_ _%L135696%_)
                                                  (_%current-src135710%_ '#f)
                                                  (_%current-in135711%_ '())
                                                  (_%r135712%_ '()))
                                 (let* ((_%rest135713135721%_ _%rest135709%_)
                                        (_%else135715135731%_
                                         (lambda ()
                                           (let ((_%r135729%_
                                                  (if _%current-src135710%_
                                                      (cons (_%make-import-spec-in135671%_
                                                             _%current-src135710%_
                                                             _%current-in135711%_)
                                                            _%r135712%_)
                                                      _%r135712%_)))
                                             (cons '%#import
                                                   (reverse _%r135729%_)))))
                                        (_%K135717135818%_
                                         (lambda (_%rest135734%_ _%in135735%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in135735%_
                                                  'gx#module-import::t))
                                               (let* ((_%in135737135744%_
                                                       _%in135735%_)
                                                      (_%E135739135748%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in135737135744%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K135740135756%_
               (lambda (_%src-ctx135751%_)
                 (if (eq? _%current-src135710%_ _%src-ctx135751%_)
                     (_%lp135707%_
                      _%rest135734%_
                      _%current-src135710%_
                      (cons (_%make-import-spec135669%_ _%in135735%_)
                            _%current-in135711%_)
                      _%r135712%_)
                     (if _%current-src135710%_
                         (_%lp135707%_
                          _%rest135734%_
                          _%src-ctx135751%_
                          (cons (_%make-import-spec135669%_ _%in135735%_) '())
                          (cons (_%make-import-spec-in135671%_
                                 _%current-src135710%_
                                 _%current-in135711%_)
                                _%r135712%_))
                         (_%lp135707%_
                          _%rest135734%_
                          _%src-ctx135751%_
                          (cons (_%make-import-spec135669%_ _%in135735%_) '())
                          _%r135712%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in135737135744%_
                                                        'gx#module-import::t))
                                                     (let ((_%e135741135759%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in135737135744%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e135741135759%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e135742135762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e135741135759%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx135765%_ _%e135742135762%_))
                     (_%K135740135756%_ _%src-ctx135765%_))
                   (_%E135739135748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E135739135748%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in135735%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi135768%_
                                                           (##direct-structure-ref
                                                            _%in135735%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src135770%_
                                                           (##direct-structure-ref
                                                            _%in135735%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in135810%_
                                                           (let* ((_%g135771135780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path135670%_ _%src135770%_))
                          (_%E135774135784%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g135771135780%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K135776135800%_
                            (lambda (_%path135798%_) _%path135798%_))
                           (_%K135775135790%_
                            (lambda (_%path135788%_)
                              (cons 'in: _%path135788%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g135771135780%_))
                           (let ((_%tl135778135805%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g135771135780%_)))
                                 (_%hd135777135803%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g135771135780%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl135778135805%_))
                                 (let ((_%path135808%_ _%hd135777135803%_))
                                   (_%K135776135800%_ _%path135808%_))
                                 (let ((_%path135793%_ _%g135771135780%_))
                                   (_%K135775135790%_ _%path135793%_))))
                           (let ((_%path135793%_ _%g135771135780%_))
                             (_%K135775135790%_ _%path135793%_))))))
                  (_%r135812%_
                   (if _%current-src135710%_
                       (cons (_%make-import-spec-in135671%_
                              _%current-src135710%_
                              _%current-in135711%_)
                             _%r135712%_)
                       _%r135712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp135707%_
                                                      _%rest135734%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi135768%_)
                                                                _%src-in135810%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi135768%_
                                    (cons _%src-in135810%_ '()))))
                    _%r135812%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in135735%_
                                                          'gx#module-context::t))
                                                       (let ((_%r135816%_
                                                              (if _%current-src135710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in135671%_
                                 _%current-src135710%_
                                 _%current-in135711%_)
                                _%r135712%_)
                          _%r135712%_)))
                 (_%lp135707%_
                  _%rest135734%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path135670%_ _%in135735%_))
                        _%r135816%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135713135721%_))
                                       (let ((_%hd135718135821%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135713135721%_)))
                                             (_%tl135719135823%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135713135721%_))))
                                         (let* ((_%in135826%_
                                                 _%hd135718135821%_)
                                                (_%rest135828%_
                                                 _%tl135719135823%_))
                                           (_%K135717135818%_
                                            _%rest135828%_
                                            _%in135826%_)))
                                       (_%else135715135731%_)))))
                             _%tl135678135693%_)))
                        (_%g135673135683%_ _%g135674135686%_)))))
            (_%g135672135830%_ _%stx135666%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self135475%_ _%stx135476%_)
        (letrec* ((_%context-chain135478%_ (gxc#current-context-chain))
                  (_%make-import-path135479%_
                   (lambda (_%ctx135663%_)
                     (gxc#generate-meta-import-path
                      _%ctx135663%_
                      _%context-chain135478%_))))
          (let* ((_%g135481135491%_
                  (lambda (_%g135482135488%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135482135488%_))))
                 (_%g135480135660%_
                  (lambda (_%g135482135494%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135482135494%_))
                        (let ((_%e135484135496%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135482135494%_))))
                          (let ((_%hd135485135499%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135484135496%_)))
                                (_%tl135486135501%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135484135496%_))))
                            ((lambda (_%L135504%_)
                               (let _%lp135515%_ ((_%rest135517%_ _%L135504%_)
                                                  (_%r135518%_ '()))
                                 (let* ((_%rest135519135527%_ _%rest135517%_)
                                        (_%else135521135535%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r135518%_))))
                                        (_%K135523135648%_
                                         (lambda (_%rest135538%_ _%out135539%_)
                                           (let* ((_%out135540135553%_
                                                   _%out135539%_)
                                                  (_%E135543135557%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out135540135553%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K135547135627%_
                                                    (lambda (_%name135623%_
                                                             _%phi135624%_
                                                             _%key135625%_)
                                                      (_%lp135515%_
                                                       _%rest135538%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi135624%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key135625%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name135623%_)
                                             '()))))
                     _%r135518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135544135607%_
                                                    (lambda (_%phi135561%_
                                                             _%src135562%_)
                                                      (let* ((_%out135602%_
                                                              (if _%src135562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g135563135572%_
                                              (_%make-import-path135479%_
                                               _%src135562%_))
                                             (_%E135566135576%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g135563135572%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K135568135592%_
                                               (lambda (_%path135590%_)
                                                 _%path135590%_))
                                              (_%K135567135582%_
                                               (lambda (_%path135580%_)
                                                 (cons 'in: _%path135580%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g135563135572%_))
                                              (let ((_%tl135570135597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g135563135572%_)))
                                                    (_%hd135569135595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g135563135572%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl135570135597%_))
                                                    (let ((_%path135600%_
                                                           _%hd135569135595%_))
                                                      (_%K135568135592%_
                                                       _%path135600%_))
                                                    (let ((_%path135585%_
                                                           _%g135563135572%_))
                                                      (_%K135567135582%_
                                                       _%path135585%_))))
                                              (let ((_%path135585%_
                                                     _%g135563135572%_))
                                                (_%K135567135582%_
                                                 _%path135585%_)))))
                                      '()))
                          '#t))
                     (_%out135604%_
                      (if (fxzero? _%phi135561%_)
                          _%out135602%_
                          (cons 'phi:
                                (cons _%phi135561%_
                                      (cons _%out135602%_ '()))))))
                (_%lp135515%_
                 _%rest135538%_
                 (cons _%out135604%_ _%r135518%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match135542135620%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out135540135553%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e135545135610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135540135553%_
                               '1
                               '#f
                               '#f)))
                           (_%e135546135615%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out135540135553%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src135613%_ _%e135545135610%_)
                            (_%phi135618%_ _%e135546135615%_))
                        (_%K135544135607%_ _%phi135618%_ _%src135613%_)))
                    (_%E135543135557%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out135540135553%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e135548135630%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out135540135553%_
                        '1
                        '#f
                        '#f)))
                    (_%e135549135633%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135540135553%_
                        '2
                        '#f
                        '#f)))
                    (_%e135550135638%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135540135553%_
                        '3
                        '#f
                        '#f)))
                    (_%e135551135643%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out135540135553%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key135636%_ _%e135549135633%_)
                     (_%phi135641%_ _%e135550135638%_)
                     (_%name135646%_ _%e135551135643%_))
                 (_%K135547135627%_
                  _%name135646%_
                  _%phi135641%_
                  _%key135636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match135542135620%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest135519135527%_))
                                       (let ((_%hd135524135651%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest135519135527%_)))
                                             (_%tl135525135653%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest135519135527%_))))
                                         (let* ((_%out135656%_
                                                 _%hd135524135651%_)
                                                (_%rest135658%_
                                                 _%tl135525135653%_))
                                           (_%K135523135648%_
                                            _%rest135658%_
                                            _%out135656%_)))
                                       (_%else135521135535%_)))))
                             _%tl135486135501%_)))
                        (_%g135481135491%_ _%g135482135494%_)))))
            (_%g135480135660%_ _%stx135476%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self135436%_ _%stx135437%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self135436%_ 'state)))
        (let* ((_%g135439135449%_
                (lambda (_%g135440135446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135440135446%_))))
               (_%g135438135472%_
                (lambda (_%g135440135452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135440135452%_))
                      (let ((_%e135442135454%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135440135452%_))))
                        (let ((_%hd135443135457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135442135454%_)))
                              (_%tl135444135459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135442135454%_))))
                          ((lambda (_%L135462%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L135462%_)))
                           _%tl135444135459%_)))
                      (_%g135439135449%_ _%g135440135452%_)))))
          (_%g135438135472%_ _%stx135437%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self135307%_ _%stx135308%_)
        (letrec ((_%generate1135310%_
                  (lambda (_%id135431%_ _%eid135432%_)
                    (let ((_%eid135434%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid135432%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid135434%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx135308%_
                             _%eid135434%_)))
                      (cons (gxc#generate-runtime-identifier _%id135431%_)
                            (cons _%eid135434%_ '()))))))
          (let* ((_%g135312135340%_
                  (lambda (_%g135313135337%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135313135337%_))))
                 (_%g135311135428%_
                  (lambda (_%g135313135343%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135313135343%_))
                        (let ((_%e135316135345%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135313135343%_))))
                          (let ((_%hd135317135348%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135316135345%_)))
                                (_%tl135318135350%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135316135345%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl135318135350%_))
                                (let ((_g145106_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl135318135350%_
                                          '0))))
                                  (begin
                                    (let ((_g145107_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g145106_)
                                                 (##vector-length _g145106_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g145107_ 2)))
                                          (error "Context expects 2 values"
                                                 _g145107_)))
                                    (let ((_%target135319135353%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145106_ 0)))
                                          (_%tl135321135355%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g145106_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135321135355%_))
                                          (letrec ((_%loop135322135358%_
                                                    (lambda (_%hd135320135361%_
                                                             _%eid135326135363%_
                                                             _%id135327135365%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd135320135361%_))
                                                          (let ((_%e135323135368%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd135320135361%_))))
                    (let ((_%lp-hd135324135371%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135323135368%_)))
                          (_%lp-tl135325135373%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135323135368%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd135324135371%_))
                          (let ((_%e135330135376%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd135324135371%_))))
                            (let ((_%hd135331135379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135330135376%_)))
                                  (_%tl135332135381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135330135376%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl135332135381%_))
                                  (let ((_%e135333135384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl135332135381%_))))
                                    (let ((_%hd135334135387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135333135384%_)))
                                          (_%tl135335135389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135333135384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl135335135389%_))
                                          (_%loop135322135358%_
                                           _%lp-tl135325135373%_
                                           (cons _%hd135334135387%_
                                                 _%eid135326135363%_)
                                           (cons _%hd135331135379%_
                                                 _%id135327135365%_))
                                          (_%g135312135340%_
                                           _%g135313135343%_))))
                                  (_%g135312135340%_ _%g135313135343%_))))
                          (_%g135312135340%_ _%g135313135343%_))))
                  (let ((_%eid135328135392%_ (reverse _%eid135326135363%_))
                        (_%id135329135394%_ (reverse _%id135327135365%_)))
                    ((lambda (_%L135397%_ _%L135398%_)
                       (cons '%#extern
                             (map _%generate1135310%_
                                  (let ((__tmp145108
                                         (lambda (_%g135413135416%_
                                                  _%g135414135418%_)
                                           (cons _%g135413135416%_
                                                 _%g135414135418%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145108 '() _%L135398%_))
                                  (let ((__tmp145109
                                         (lambda (_%g135420135423%_
                                                  _%g135421135425%_)
                                           (cons _%g135420135423%_
                                                 _%g135421135425%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp145109 '() _%L135397%_)))))
                     _%eid135328135392%_
                     _%id135329135394%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop135322135358%_
                                             _%target135319135353%_
                                             '()
                                             '()))
                                          (_%g135312135340%_
                                           _%g135313135343%_)))))
                                (_%g135312135340%_ _%g135313135343%_))))
                        (_%g135312135340%_ _%g135313135343%_)))))
            (_%g135311135428%_ _%stx135308%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self135097%_ _%stx135098%_)
        (letrec ((_%generate1135100%_
                  (lambda (_%id135302%_)
                    (let ((_%eid135304%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id135302%_)))
                          (_%ident135305%_
                           (gxc#generate-runtime-identifier _%id135302%_)))
                      (cons '%#define-runtime
                            (cons _%ident135305%_ (cons _%eid135304%_ '()))))))
                 (_%generate*135101%_
                  (lambda (_%all135270%_)
                    (let* ((_%all135271135279%_ _%all135270%_)
                           (_%else135273135287%_
                            (lambda () (cons '%#begin _%all135270%_)))
                           (_%K135275135292%_
                            (lambda (_%one135290%_) _%one135290%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all135271135279%_))
                          (let ((_%hd135276135295%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all135271135279%_)))
                                (_%tl135277135297%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all135271135279%_))))
                            (let ((_%one135300%_ _%hd135276135295%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl135277135297%_))
                                  (_%K135275135292%_ _%one135300%_)
                                  (_%else135273135287%_))))
                          (_%else135273135287%_))))))
          (let* ((_%g135103135120%_
                  (lambda (_%g135104135117%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g135104135117%_))))
                 (_%g135102135267%_
                  (lambda (_%g135104135123%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g135104135123%_))
                        (let ((_%e135107135125%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g135104135123%_))))
                          (let ((_%hd135108135128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e135107135125%_)))
                                (_%tl135109135130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e135107135125%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl135109135130%_))
                                (let ((_%e135110135133%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl135109135130%_))))
                                  (let ((_%hd135111135136%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e135110135133%_)))
                                        (_%tl135112135138%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e135110135133%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl135112135138%_))
                                        (let ((_%e135113135141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl135112135138%_))))
                                          (let ((_%hd135114135144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e135113135141%_)))
                                                (_%tl135115135146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e135113135141%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl135115135146%_))
                                                ((lambda (_%L135149%_
                                                          _%L135150%_)
                                                   (let _%lp135166%_ ((_%rest135168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L135150%_)
                              (_%r135169%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx144845144846%_
                                                             _%rest135168%_)
                                                            (_%g135174135191%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx144845144846%_)))))
               (let ((_%__kont144847144848%_
                      (lambda (_%L135254%_)
                        (_%lp135166%_ _%L135254%_ _%r135169%_)))
                     (_%__kont144849144850%_
                      (lambda (_%L135227%_ _%L135228%_)
                        (_%lp135166%_
                         _%L135227%_
                         (cons (_%generate1135100%_ _%L135228%_)
                               _%r135169%_))))
                     (_%__kont144851144852%_
                      (lambda (_%L135203%_)
                        (_%generate*135101%_
                         (let ((__tmp145110
                                (cons (_%generate1135100%_ _%L135203%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp145110 _%r135169%_)))))
                     (_%__kont144853144854%_
                      (lambda () (_%generate*135101%_ (reverse _%r135169%_)))))
                 (let ((_%g135172135214%_
                        (lambda ()
                          (let ((_%L135203%_ _%__stx144845144846%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L135203%_))
                                (_%__kont144851144852%_ _%L135203%_)
                                (_%__kont144853144854%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx144845144846%_))
                       (let ((_%e135177135243%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx144845144846%_))))
                         (let ((_%tl135179135248%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e135177135243%_)))
                               (_%hd135178135246%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e135177135243%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd135178135246%_))
                               (let ((_%e135180135251%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd135178135246%_))))
                                 (if (equal? _%e135180135251%_ '#f)
                                     (_%__kont144847144848%_
                                      _%tl135179135248%_)
                                     (_%__kont144849144850%_
                                      _%tl135179135248%_
                                      _%hd135178135246%_)))
                               (_%__kont144849144850%_
                                _%tl135179135248%_
                                _%hd135178135246%_))))
                       (let () (declare (not safe)) (_%g135172135214%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd135114135144%_
                                                 _%hd135111135136%_)
                                                (_%g135103135120%_
                                                 _%g135104135123%_))))
                                        (_%g135103135120%_
                                         _%g135104135123%_))))
                                (_%g135103135120%_ _%g135104135123%_))))
                        (_%g135103135120%_ _%g135104135123%_)))))
            (_%g135102135267%_ _%stx135098%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self134994%_ _%stx134995%_)
        (let* ((_%g134997135014%_
                (lambda (_%g134998135011%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134998135011%_))))
               (_%g134996135094%_
                (lambda (_%g134998135017%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134998135017%_))
                      (let ((_%e135001135019%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134998135017%_))))
                        (let ((_%hd135002135022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135001135019%_)))
                              (_%tl135003135024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135001135019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135003135024%_))
                              (let ((_%e135004135027%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135003135024%_))))
                                (let ((_%hd135005135030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135004135027%_)))
                                      (_%tl135006135032%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135004135027%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135006135032%_))
                                      (let ((_%e135007135035%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135006135032%_))))
                                        (let ((_%hd135008135038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135007135035%_)))
                                              (_%tl135009135040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135007135035%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135009135040%_))
                                              ((lambda (_%L135043%_
                                                        _%L135044%_)
                                                 (let* ((_%eid135059%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L135044%_)))
                                                        (_%phi135061%_
                                                         (let ((__tmp145111
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp145111 '1)))
                (_%block135063%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self134994%_ 'state))
                  _%phi135061%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g135066135073%_
                                                           (lambda (_%g135067135070%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g135067135070%_))))
                  (_%g135065135091%_
                   (lambda (_%g135067135076%_)
                     ((lambda (_%L135078%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self134994%_ 'state))
                         _%phi135061%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L135078%_ (cons _%L135043%_ '())))))
                      _%g135067135076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g135065135091%_
                                                      _%eid135059%_))
                                                   (if _%block135063%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block135063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L135044%_)
                                             (cons _%eid135059%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L135044%_)
                           (cons _%eid135059%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd135008135038%_
                                               _%hd135005135030%_)
                                              (_%g134997135014%_
                                               _%g134998135017%_))))
                                      (_%g134997135014%_ _%g134998135017%_))))
                              (_%g134997135014%_ _%g134998135017%_))))
                      (_%g134997135014%_ _%g134998135017%_)))))
          (_%g134996135094%_ _%stx134995%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self134926%_ _%stx134927%_)
        (let* ((_%g134929134946%_
                (lambda (_%g134930134943%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134930134943%_))))
               (_%g134928134991%_
                (lambda (_%g134930134949%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134930134949%_))
                      (let ((_%e134933134951%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134930134949%_))))
                        (let ((_%hd134934134954%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134933134951%_)))
                              (_%tl134935134956%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134933134951%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134935134956%_))
                              (let ((_%e134936134959%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134935134956%_))))
                                (let ((_%hd134937134962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134936134959%_)))
                                      (_%tl134938134964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134936134959%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134938134964%_))
                                      (let ((_%e134939134967%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134938134964%_))))
                                        (let ((_%hd134940134970%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134939134967%_)))
                                              (_%tl134941134972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134939134967%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134941134972%_))
                                              ((lambda (_%L134975%_
                                                        _%L134976%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L134976%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L134975%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd134940134970%_
                                               _%hd134937134962%_)
                                              (_%g134929134946%_
                                               _%g134930134949%_))))
                                      (_%g134929134946%_ _%g134930134949%_))))
                              (_%g134929134946%_ _%g134930134949%_))))
                      (_%g134929134946%_ _%g134930134949%_)))))
          (_%g134928134991%_ _%stx134927%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self134923%_ _%stx134924%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134923%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134924%_)
        (gxc#generate-meta-define-values% _%self134923%_ _%stx134924%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self134920%_ _%stx134921%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self134920%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx134921%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp145113 (list)) (__tmp145112 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp145113
         '(src n open blocks)
         __tmp145112
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args134917%_
        (apply make-instance gxc#meta-state::t _%$args134917%_)))
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
      (lambda (_%self134903%_ _%ctx134904%_)
        (let ((_%self134907%_ _%self134903%_))
          (if (let ((__tmp145114
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self134907%_))))
                (declare (not safe))
                (##fx< '4 __tmp145114))
              (begin
                (let ((__tmp145115
                       (let ((__tmp145116
                              (##structure-ref
                               _%ctx134904%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp145116))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134907%_
                   __tmp145115
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134907%_ '1 '2 '#f '#f))
                (let ((__tmp145117
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self134907%_
                   __tmp145117
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self134907%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp145118
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self134907%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self134907%_
                       '4
                       __tmp145118))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp145120 (list)) (__tmp145119 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp145120
         '(ctx phi n code)
         __tmp145119
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args134778%_
        (apply make-instance gxc#meta-state-block::t _%$args134778%_)))
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
      (lambda (_%state134737%_ _%phi134738%_)
        (let* ((_%state134739134747%_ _%state134737%_)
               (_%E134741134751%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state134739134747%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K134742134760%_
                (lambda (_%open134754%_ _%n134755%_ _%src134756%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open134754%_ _%phi134738%_))
                      '#f
                      (let ((_%block-ref134758%_
                             (let ((__tmp145121 (number->string _%n134755%_)))
                               (declare (not safe))
                               (##string-append
                                _%src134756%_
                                '"~"
                                __tmp145121))))
                        (##structure-set!
                         _%state134737%_
                         (let () (declare (not safe)) (##fx+ _%n134755%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp145122
                               (let ((__tmp145123
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp145123
                                  _%phi134738%_
                                  _%n134755%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open134754%_ _%phi134738%_ __tmp145122))
                        _%block-ref134758%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state134739134747%_
                 'gxc#meta-state::t))
              (let* ((_%e134743134763%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134739134747%_
                         '1
                         '#f
                         '#f)))
                     (_%src134766%_ _%e134743134763%_)
                     (_%e134744134768%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134739134747%_
                         '2
                         '#f
                         '#f)))
                     (_%n134771%_ _%e134744134768%_)
                     (_%e134745134773%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state134739134747%_
                         '3
                         '#f
                         '#f)))
                     (_%open134776%_ _%e134745134773%_))
                (_%K134742134760%_ _%open134776%_ _%n134771%_ _%src134766%_))
              (_%E134741134751%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state134731%_ _%phi134732%_ _%stx134733%_)
        (let ((_%block134735%_
               (let ((__tmp145124
                      (##structure-ref
                       _%state134731%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp145124 _%phi134732%_))))
          (##structure-set!
           _%block134735%_
           (cons _%stx134733%_
                 (##structure-ref
                  _%block134735%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state134725%_)
        (##structure-set!
         _%state134725%_
         (let ((__tmp145127
                (lambda (_%_134727%_ _%block134728%_ _%r134729%_)
                  (cons _%block134728%_ _%r134729%_)))
               (__tmp145126
                (##structure-ref _%state134725%_ '4 gxc#meta-state::t '#f))
               (__tmp145125
                (##structure-ref _%state134725%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp145127 __tmp145126 __tmp145125))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state134725%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state134677%_)
        (gxc#meta-state-end-phi! _%state134677%_)
        (let ((__tmp145129
               (lambda (_%block134679%_ _%r134680%_)
                 (let* ((_%block134681134690%_ _%block134679%_)
                        (_%E134683134694%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block134681134690%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K134684134702%_
                         (lambda (_%code134697%_
                                  _%n134698%_
                                  _%phi134699%_
                                  _%ctx134700%_)
                           (if (null? _%code134697%_)
                               _%r134680%_
                               (cons (cons _%ctx134700%_
                                           (cons _%phi134699%_
                                                 (cons _%n134698%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code134697%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r134680%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block134681134690%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e134685134705%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134681134690%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx134708%_ _%e134685134705%_)
                              (_%e134686134710%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134681134690%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi134713%_ _%e134686134710%_)
                              (_%e134687134715%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134681134690%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n134718%_ _%e134687134715%_)
                              (_%e134688134720%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block134681134690%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code134723%_ _%e134688134720%_))
                         (_%K134684134702%_
                          _%code134723%_
                          _%n134718%_
                          _%phi134713%_
                          _%ctx134708%_))
                       (_%E134683134694%_)))))
              (__tmp145128
               (##structure-ref _%state134677%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp145129 '() __tmp145128))))
    (define gxc#collect-expression-refs
      (lambda (_%stx134673%_)
        (let ((_%ht134675%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht134675%_ _%stx134673%_)
          _%ht134675%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self134616%_ _%stx134617%_)
        (let* ((_%g134619134632%_
                (lambda (_%g134620134629%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134620134629%_))))
               (_%g134618134670%_
                (lambda (_%g134620134635%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134620134635%_))
                      (let ((_%e134622134637%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134620134635%_))))
                        (let ((_%hd134623134640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134622134637%_)))
                              (_%tl134624134642%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134622134637%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134624134642%_))
                              (let ((_%e134625134645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134624134642%_))))
                                (let ((_%hd134626134648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134625134645%_)))
                                      (_%tl134627134650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134625134645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl134627134650%_))
                                      ((lambda (_%L134653%_)
                                         (let* ((_%bind134665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L134653%_)))
                                                (_%eid134667%_
                                                 (if _%bind134665%_
                                                     (##structure-ref
                                                      _%bind134665%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L134653%_))))
                                                (__tmp145130
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self134616%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp145130
                                            _%eid134667%_
                                            _%eid134667%_)))
                                       _%hd134626134648%_)
                                      (_%g134619134632%_ _%g134620134635%_))))
                              (_%g134619134632%_ _%g134620134635%_))))
                      (_%g134619134632%_ _%g134620134635%_)))))
          (_%g134618134670%_ _%stx134617%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self134543%_ _%stx134544%_)
        (let* ((_%g134546134563%_
                (lambda (_%g134547134560%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134547134560%_))))
               (_%g134545134613%_
                (lambda (_%g134547134566%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134547134566%_))
                      (let ((_%e134550134568%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134547134566%_))))
                        (let ((_%hd134551134571%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134550134568%_)))
                              (_%tl134552134573%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134550134568%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134552134573%_))
                              (let ((_%e134553134576%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134552134573%_))))
                                (let ((_%hd134554134579%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134553134576%_)))
                                      (_%tl134555134581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134553134576%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134555134581%_))
                                      (let ((_%e134556134584%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134555134581%_))))
                                        (let ((_%hd134557134587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134556134584%_)))
                                              (_%tl134558134589%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134556134584%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl134558134589%_))
                                              ((lambda (_%L134592%_
                                                        _%L134593%_)
                                                 (let* ((_%bind134608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L134593%_)))
                                                        (_%eid134610%_
                                                         (if _%bind134608%_
                                                             (##structure-ref
                                                              _%bind134608%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L134593%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp145131
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self134543%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp145131
                                                      _%eid134610%_
                                                      _%eid134610%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self134543%_
                                                      _%L134592%_))))
                                               _%hd134557134587%_
                                               _%hd134554134579%_)
                                              (_%g134546134563%_
                                               _%g134547134566%_))))
                                      (_%g134546134563%_ _%g134547134566%_))))
                              (_%g134546134563%_ _%g134547134566%_))))
                      (_%g134546134563%_ _%g134547134566%_)))))
          (_%g134545134613%_ _%stx134544%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self134500%_ _%stx134501%_)
        (let* ((_%g134503134513%_
                (lambda (_%g134504134510%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134504134510%_))))
               (_%g134502134540%_
                (lambda (_%g134504134516%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134504134516%_))
                      (let ((_%e134506134518%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134504134516%_))))
                        (let ((_%hd134507134521%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134506134518%_)))
                              (_%tl134508134523%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134506134518%_))))
                          ((lambda (_%L134526%_)
                             (let ((__tmp145132
                                    (lambda (_%g134535134537%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self134500%_
                                         _%g134535134537%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp145132 _%L134526%_)))
                           _%tl134508134523%_)))
                      (_%g134503134513%_ _%g134504134516%_)))))
          (_%g134502134540%_ _%stx134501%_))))
    (define gxc#count-values-single%
      (lambda (_%self134497%_ _%stx134498%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self134363%_ _%stx134364%_)
        (let* ((_%__stx144875144876%_ _%stx134364%_)
               (_%g134367134396%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144875144876%_)))))
          (let ((_%__kont144877144878%_
                 (lambda (_%L134464%_ _%L134465%_)
                   (length (let ((__tmp145133
                                  (lambda (_%g134486134489%_ _%g134487134491%_)
                                    (cons _%g134486134489%_
                                          _%g134487134491%_))))
                             (declare (not safe))
                             (__foldr1 __tmp145133 '() _%L134464%_)))))
                (_%__kont144881144882%_ (lambda () '#f)))
            (let ((_%__match144920144921%_
                   (lambda (_%e134371134408%_
                            _%hd134372134411%_
                            _%tl134373134413%_
                            _%e134374134416%_
                            _%hd134375134419%_
                            _%tl134376134421%_
                            _%e134377134424%_
                            _%hd134378134427%_
                            _%tl134379134429%_
                            _%e134380134432%_
                            _%hd134381134435%_
                            _%tl134382134437%_
                            _%__splice144879144880%_
                            _%target134383134440%_
                            _%tl134385134442%_)
                     (letrec ((_%loop134386134445%_
                               (lambda (_%hd134384134448%_
                                        _%rand134390134450%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd134384134448%_))
                                     (let ((_%e134387134453%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd134384134448%_))))
                                       (let ((_%lp-tl134389134458%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e134387134453%_)))
                                             (_%lp-hd134388134456%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e134387134453%_))))
                                         (_%loop134386134445%_
                                          _%lp-tl134389134458%_
                                          (cons _%lp-hd134388134456%_
                                                _%rand134390134450%_))))
                                     (let ((_%rand134391134461%_
                                            (reverse _%rand134390134450%_)))
                                       (let ((_%L134464%_ _%rand134391134461%_)
                                             (_%L134465%_ _%hd134381134435%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L134465%_
                                                'values))
                                             (_%__kont144877144878%_
                                              _%L134464%_
                                              _%L134465%_)
                                             (_%__kont144881144882%_))))))))
                       (_%loop134386134445%_ _%target134383134440%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144875144876%_))
                  (let ((_%e134371134408%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144875144876%_))))
                    (let ((_%tl134373134413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e134371134408%_)))
                          (_%hd134372134411%_
                           (let ()
                             (declare (not safe))
                             (##car _%e134371134408%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl134373134413%_))
                          (let ((_%e134374134416%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl134373134413%_))))
                            (let ((_%tl134376134421%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e134374134416%_)))
                                  (_%hd134375134419%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e134374134416%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd134375134419%_))
                                  (let ((_%e134377134424%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd134375134419%_))))
                                    (let ((_%tl134379134429%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e134377134424%_)))
                                          (_%hd134378134427%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e134377134424%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd134378134427%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd134378134427%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl134379134429%_))
                                                  (let ((_%e134380134432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl134379134429%_))))
                                                    (let ((_%tl134382134437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e134380134432%_)))
                                                          (_%hd134381134435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e134380134432%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl134382134437%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl134376134421%_))
                      (let ((_%__splice144879144880%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl134376134421%_
                                '0))))
                        (let ((_%tl134385134442%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144879144880%_ '1)))
                              (_%target134383134440%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice144879144880%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl134385134442%_))
                              (_%__match144920144921%_
                               _%e134371134408%_
                               _%hd134372134411%_
                               _%tl134373134413%_
                               _%e134374134416%_
                               _%hd134375134419%_
                               _%tl134376134421%_
                               _%e134377134424%_
                               _%hd134378134427%_
                               _%tl134379134429%_
                               _%e134380134432%_
                               _%hd134381134435%_
                               _%tl134382134437%_
                               _%__splice144879144880%_
                               _%target134383134440%_
                               _%tl134385134442%_)
                              (_%__kont144881144882%_))))
                      (_%__kont144881144882%_))
                  (_%__kont144881144882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont144881144882%_))
                                              (_%__kont144881144882%_))
                                          (_%__kont144881144882%_))))
                                  (_%__kont144881144882%_))))
                          (_%__kont144881144882%_))))
                  (_%__kont144881144882%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self134266%_ _%stx134267%_)
        (let* ((_%g134269134290%_
                (lambda (_%g134270134287%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g134270134287%_))))
               (_%g134268134360%_
                (lambda (_%g134270134293%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g134270134293%_))
                      (let ((_%e134274134295%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g134270134293%_))))
                        (let ((_%hd134275134298%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e134274134295%_)))
                              (_%tl134276134300%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e134274134295%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl134276134300%_))
                              (let ((_%e134277134303%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl134276134300%_))))
                                (let ((_%hd134278134306%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e134277134303%_)))
                                      (_%tl134279134308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e134277134303%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl134279134308%_))
                                      (let ((_%e134280134311%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl134279134308%_))))
                                        (let ((_%hd134281134314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e134280134311%_)))
                                              (_%tl134282134316%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e134280134311%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl134282134316%_))
                                              (let ((_%e134283134319%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl134282134316%_))))
                                                (let ((_%hd134284134322%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e134283134319%_)))
                                                      (_%tl134285134324%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e134283134319%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl134285134324%_))
                                                      ((lambda (_%L134327%_
                                                                _%L134328%_
                                                                _%L134329%_)
                                                         (let ((_%c1134346134348%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self134266%_ _%L134328%_))))
                   (if _%c1134346134348%_
                       (let* ((_%c1134351%_ _%c1134346134348%_)
                              (_%c2134352134354%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self134266%_
                                  _%L134327%_))))
                         (if _%c2134352134354%_
                             (let ((_%c2134357%_ _%c2134352134354%_))
                               (if (fx= _%c1134351%_ _%c2134357%_)
                                   _%c1134351%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd134284134322%_
               _%hd134281134314%_
               _%hd134278134306%_)
              (_%g134269134290%_ _%g134270134293%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g134269134290%_
                                               _%g134270134293%_))))
                                      (_%g134269134290%_ _%g134270134293%_))))
                              (_%g134269134290%_ _%g134270134293%_))))
                      (_%g134269134290%_ _%g134270134293%_)))))
          (_%g134268134360%_ _%stx134267%_))))))
