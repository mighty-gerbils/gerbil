(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710237311)
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
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_hash-e111215_
                  (lambda (_id111217_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id111217_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e111215_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp112573 (list gxc#::void::t))
            (__tmp112571
             (let ((__tmp112572
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112572 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp112573
         '()
         __tmp112571
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args111211_
        (apply make-instance gxc#::collect-bindings::t _$args111211_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp112574
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
                 (seal-class! gxc#::collect-bindings::t)))))
        (declare (not safe))
        (make-promise __tmp112574)))
    (define gxc#apply-collect-bindings
      (lambda (_stx111203_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self111206_
                (let ((__obj112547
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj112547))
               (__tmp112575
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111206_ _stx111203_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112575
           gxc#current-compile-method
           _self111206_))))
    (define gxc#::lift-modules::t
      (let ((__tmp112578 (list gxc#::void::t))
            (__tmp112576
             (let ((__tmp112577
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112577 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp112578
         '(modules)
         __tmp112576
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args111200_
        (apply make-instance gxc#::lift-modules::t _$args111200_)))
    (define gxc#::lift-modules-modules
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-bind-methods!
      (let ((__tmp112579
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
                 (seal-class! gxc#::lift-modules::t)))))
        (declare (not safe))
        (make-promise __tmp112579)))
    (define gxc#apply-lift-modules__%
      (lambda (_g112580_ _modules111171111174_ _stx111176_)
        (let ((_modules111179_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules111171111174_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules111171111174_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self111181_
                  (let ((__obj112549
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112549
                       _modules111179_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj112549))
                 (__tmp112581
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self111181_ _stx111176_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112581
             gxc#current-compile-method
             _self111181_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys111170111188_ . _args111190_)
        (apply gxc#apply-lift-modules__%
               _keys111170111188_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys111170111188_
                  'modules:
                  absent-value))
               _args111190_)))
    (define gxc#apply-lift-modules
      (lambda _args111172111196_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args111172111196_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp112584 (list))
            (__tmp112582
             (let ((__tmp112583
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112583 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp112584
         '()
         __tmp112582
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args111166_
        (apply make-instance gxc#::find-runtime-code::t _$args111166_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp112585
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
                 (seal-class! gxc#::find-runtime-code::t)))))
        (declare (not safe))
        (make-promise __tmp112585)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx111158_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self111161_
                (let ((__obj112551
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj112551))
               (__tmp112586
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111161_ _stx111158_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112586
           gxc#current-compile-method
           _self111161_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp112589 (list gxc#::false::t))
            (__tmp112587
             (let ((__tmp112588
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112588 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp112589
         '()
         __tmp112587
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args111155_
        (apply make-instance gxc#::find-lambda-expression::t _$args111155_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp112590
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#begin
                  gxc#find-last-begin%))
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
                  gxc#find-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec-values
                  gxc#find-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec*-values
                  gxc#find-body-let-values%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::find-lambda-expression::t)))))
        (declare (not safe))
        (make-promise __tmp112590)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx111147_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self111150_
                (let ((__obj112553
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj112553))
               (__tmp112591
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111150_ _stx111147_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112591
           gxc#current-compile-method
           _self111150_))))
    (define gxc#::count-values::t
      (let ((__tmp112594 (list gxc#::false-expression::t))
            (__tmp112592
             (let ((__tmp112593
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112593 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp112594
         '()
         __tmp112592
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args111144_
        (apply make-instance gxc#::count-values::t _$args111144_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp112595
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#begin
                  gxc#count-values-begin%))
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
                  gxc#count-values-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec-values
                  gxc#count-values-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec*-values
                  gxc#count-values-let-values%))
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
                 (seal-class! gxc#::count-values::t)))))
        (declare (not safe))
        (make-promise __tmp112595)))
    (define gxc#apply-count-values
      (lambda (_stx111136_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self111139_
                (let ((__obj112555
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj112555))
               (__tmp112596
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111139_ _stx111136_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112596
           gxc#current-compile-method
           _self111139_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp112597 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp112597
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args111133_
        (apply make-instance gxc#::generate-runtime-empty::t _$args111133_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp112598
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
        (make-promise __tmp112598)))
    (define gxc#::generate-loader::t
      (let ((__tmp112601 (list gxc#::generate-runtime-empty::t))
            (__tmp112599
             (let ((__tmp112600
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112600 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp112601
         '()
         __tmp112599
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args111129_
        (apply make-instance gxc#::generate-loader::t _$args111129_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp112602
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
                 (seal-class! gxc#::generate-loader::t)))))
        (declare (not safe))
        (make-promise __tmp112602)))
    (define gxc#apply-generate-loader
      (lambda (_stx111121_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self111124_
                (let ((__obj112558
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj112558))
               (__tmp112603
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111124_ _stx111121_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112603
           gxc#current-compile-method
           _self111124_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp112604 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp112604
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args111118_
        (apply make-instance gxc#::generate-runtime::t _$args111118_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp112605
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
        (make-promise __tmp112605)))
    (define gxc#apply-generate-runtime
      (lambda (_stx111110_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self111113_
                (let ((__obj112560
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj112560))
               (__tmp112606
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111113_ _stx111110_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112606
           gxc#current-compile-method
           _self111113_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp112609 (list gxc#::generate-runtime::t))
            (__tmp112607
             (let ((__tmp112608
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112608 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp112609
         '()
         __tmp112607
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args111107_
        (apply make-instance gxc#::generate-runtime-phi::t _$args111107_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp112610
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
                 (seal-class! gxc#::generate-runtime-phi::t)))))
        (declare (not safe))
        (make-promise __tmp112610)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx111099_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self111102_
                (let ((__obj112562
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj112562))
               (__tmp112611
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111102_ _stx111099_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112611
           gxc#current-compile-method
           _self111102_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp112612 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp112612
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args111096_
        (apply make-instance gxc#::collect-expression-refs::t _$args111096_)))
    (define gxc#::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-expression-refs::t 'table)))
    (define gxc#::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-expression-refs::t 'table)))
    (define gxc#&::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#&::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#::collect-expression-refs-bind-methods!
      (let ((__tmp112613
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
        (make-promise __tmp112613)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_g112614_ _table111067111070_ _stx111072_)
        (let ((_table111075_
               (if (let ()
                     (declare (not safe))
                     (eq? _table111067111070_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table111067111070_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self111077_
                  (let ((__obj112564
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112564
                       _table111075_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj112564))
                 (__tmp112615
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self111077_ _stx111072_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112615
             gxc#current-compile-method
             _self111077_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys111066111084_ . _args111086_)
        (apply gxc#apply-collect-expression-refs__%
               _keys111066111084_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys111066111084_ 'table: absent-value))
               _args111086_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args111068111092_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args111068111092_)))
    (define gxc#::generate-meta::t
      (let ((__tmp112618 (list gxc#::void-expression::t))
            (__tmp112616
             (let ((__tmp112617
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112617 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp112618
         '(state)
         __tmp112616
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args111062_
        (apply make-instance gxc#::generate-meta::t _$args111062_)))
    (define gxc#::generate-meta-state
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-bind-methods!
      (let ((__tmp112619
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
                 (seal-class! gxc#::generate-meta::t)))))
        (declare (not safe))
        (make-promise __tmp112619)))
    (define gxc#apply-generate-meta__%
      (lambda (_g112620_ _state111033111036_ _stx111038_)
        (let ((_state111041_
               (if (let ()
                     (declare (not safe))
                     (eq? _state111033111036_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state111033111036_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self111043_
                  (let ((__obj112566
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112566
                       _state111041_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj112566))
                 (__tmp112621
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self111043_ _stx111038_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112621
             gxc#current-compile-method
             _self111043_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys111032111050_ . _args111052_)
        (apply gxc#apply-generate-meta__%
               _keys111032111050_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys111032111050_ 'state: absent-value))
               _args111052_)))
    (define gxc#apply-generate-meta
      (lambda _args111034111058_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args111034111058_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp112624 (list))
            (__tmp112622
             (let ((__tmp112623
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112623 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp112624
         '(state)
         __tmp112622
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args111028_
        (apply make-instance gxc#::generate-meta-phi::t _$args111028_)))
    (define gxc#::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::generate-meta-phi::t 'state)))
    (define gxc#::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::generate-meta-phi::t 'state)))
    (define gxc#&::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#&::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#::generate-meta-phi::t 'state)))
    (define gxc#::generate-meta-phi-bind-methods!
      (let ((__tmp112625
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
                 (seal-class! gxc#::generate-meta-phi::t)))))
        (declare (not safe))
        (make-promise __tmp112625)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_g112626_ _state110999111002_ _stx111004_)
        (let ((_state111007_
               (if (let ()
                     (declare (not safe))
                     (eq? _state110999111002_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state110999111002_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self111009_
                  (let ((__obj112568
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112568
                       _state111007_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj112568))
                 (__tmp112627
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self111009_ _stx111004_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112627
             gxc#current-compile-method
             _self111009_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys110998111016_ . _args111018_)
        (apply gxc#apply-generate-meta-phi__%
               _keys110998111016_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys110998111016_ 'state: absent-value))
               _args111018_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args111000111024_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args111000111024_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self110927_ _stx110928_)
        (let* ((_g110930110947_
                (lambda (_g110931110944_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110931110944_))))
               (_g110929110994_
                (lambda (_g110931110950_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110931110950_))
                      (let ((_e110936110952_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110931110950_))))
                        (let ((_hd110935110955_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110936110952_)))
                              (_tl110934110957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110936110952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110934110957_))
                              (let ((_e110939110960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110934110957_))))
                                (let ((_hd110938110963_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110939110960_)))
                                      (_tl110937110965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110939110960_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110937110965_))
                                      (let ((_e110942110968_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110937110965_))))
                                        (let ((_hd110941110971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110942110968_)))
                                              (_tl110940110973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110942110968_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110940110973_))
                                              ((lambda (_L110976_ _L110977_)
                                                 (let ((__tmp112628
                                                        (lambda (_bind110992_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind110992_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind110992_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp112628
                                                    _L110977_)))
                                               _hd110941110971_
                                               _hd110938110963_)
                                              (let ()
                                                (declare (not safe))
                                                (_g110930110947_
                                                 _g110931110950_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110930110947_ _g110931110950_)))))
                              (let ()
                                (declare (not safe))
                                (_g110930110947_ _g110931110950_)))))
                      (let ()
                        (declare (not safe))
                        (_g110930110947_ _g110931110950_))))))
          (declare (not safe))
          (_g110929110994_ _stx110928_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self110859_ _stx110860_)
        (let* ((_g110862110879_
                (lambda (_g110863110876_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110863110876_))))
               (_g110861110924_
                (lambda (_g110863110882_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110863110882_))
                      (let ((_e110868110884_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110863110882_))))
                        (let ((_hd110867110887_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110868110884_)))
                              (_tl110866110889_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110868110884_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110866110889_))
                              (let ((_e110871110892_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110866110889_))))
                                (let ((_hd110870110895_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110871110892_)))
                                      (_tl110869110897_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110871110892_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110869110897_))
                                      (let ((_e110874110900_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110869110897_))))
                                        (let ((_hd110873110903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110874110900_)))
                                              (_tl110872110905_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110874110900_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110872110905_))
                                              ((lambda (_L110908_ _L110909_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L110909_
                                                    '#t)))
                                               _hd110873110903_
                                               _hd110870110895_)
                                              (let ()
                                                (declare (not safe))
                                                (_g110862110879_
                                                 _g110863110882_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110862110879_ _g110863110882_)))))
                              (let ()
                                (declare (not safe))
                                (_g110862110879_ _g110863110882_)))))
                      (let ()
                        (declare (not safe))
                        (_g110862110879_ _g110863110882_))))))
          (declare (not safe))
          (_g110861110924_ _stx110860_))))
    (define gxc#lift-modules-module%
      (lambda (_self110801_ _stx110802_)
        (let* ((_g110804110818_
                (lambda (_g110805110815_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110805110815_))))
               (_g110803110856_
                (lambda (_g110805110821_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110805110821_))
                      (let ((_e110810110823_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110805110821_))))
                        (let ((_hd110809110826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110810110823_)))
                              (_tl110808110828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110810110823_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110808110828_))
                              (let ((_e110813110831_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110808110828_))))
                                (let ((_hd110812110834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110813110831_)))
                                      (_tl110811110836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110813110831_))))
                                  ((lambda (_L110839_ _L110840_)
                                     (let ((_ctx110853_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L110840_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self110801_ 'modules))
                                        (let ((__tmp112629
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self110801_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx110853_ __tmp112629)))
                                       (let ((__tmp112630
                                              (lambda ()
                                                (let ((__tmp112631
                                                       (##structure-ref
                                                        _ctx110853_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self110801_
                                                   __tmp112631)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp112630
                                          gx#current-expander-context
                                          _ctx110853_))))
                                   _tl110811110836_
                                   _hd110812110834_)))
                              (let ()
                                (declare (not safe))
                                (_g110804110818_ _g110805110821_)))))
                      (let ()
                        (declare (not safe))
                        (_g110804110818_ _g110805110821_))))))
          (declare (not safe))
          (_g110803110856_ _stx110802_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls110757110759_ (gxc#current-compile-decls)))
          (if _decls110757110759_
              (let ((_decls110762_ _decls110757110759_))
                (let _lp110764_ ((_rest110766_ _decls110762_))
                  (let* ((_rest110767110775_ _rest110766_)
                         (_else110769110783_ (lambda () '#f))
                         (_K110771110789_
                          (lambda (_decls110786_ _decl110787_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl110787_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl110787_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp110764_ _decls110786_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest110767110775_))
                        (let ((_hd110772110792_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest110767110775_)))
                              (_tl110773110794_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest110767110775_))))
                          (let* ((_decl110797_ _hd110772110792_)
                                 (_decls110799_ _tl110773110794_))
                            (declare (not safe))
                            (_K110771110789_ _decls110799_ _decl110797_)))
                        (let () (declare (not safe)) (_else110769110783_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id110751_ _syntax?110752_)
        (let ((_eid110754_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id110751_))
                '1
                gx#binding::t
                '#f))
              (_ht110755_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _eid110754_))
              '#!void
              (let ((__tmp112632
                     (let ((__tmp112633
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid110754_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp112633 _syntax?110752_))))
                (declare (not safe))
                (hash-put! _ht110755_ _eid110754_ __tmp112632))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1110744_ _id2110745_)
        (letrec ((_symbol-e110747_
                  (lambda (_id110749_)
                    (if (let () (declare (not safe)) (symbol? _id110749_))
                        _id110749_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id110749_))))))
          (let ((__tmp112635
                 (let () (declare (not safe)) (_symbol-e110747_ _id1110744_)))
                (__tmp112634
                 (let () (declare (not safe)) (_symbol-e110747_ _id2110745_))))
            (declare (not safe))
            (eq? __tmp112635 __tmp112634)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id110722_)
        (let ((_$e110724_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id110722_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id110722_))
                   '#f)))
          (if _$e110724_
              ((lambda (_bind110727_)
                 (let ((_eid110729_
                        (##structure-ref _bind110727_ '1 gx#binding::t '#f))
                       (_ht110730_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _eid110729_))
                       _eid110729_
                       (let ((_$e110732_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht110730_ _eid110729_))))
                         (if _$e110732_
                             (values _$e110732_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind110727_
                                    'gx#local-binding::t))
                                 (let ((_gid110735_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid110729_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht110730_
                                      _eid110729_
                                      _gid110735_))
                                   _gid110735_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind110727_
                                        'gx#module-binding::t))
                                     (let ((_gid110742_
                                            (let ((_$e110737_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind110727_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e110737_
                                                  ((lambda (_ns110740_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns110740_
                                                        '"#"
                                                        _eid110729_)))
                                                   _$e110737_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid110729_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht110730_
                                          _eid110729_
                                          _gid110742_))
                                       _gid110742_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id110722_
                                        _eid110729_
                                        _bind110727_)))))))))
               _$e110724_)
              (if (let ((__tmp112636
                         (let () (declare (not safe)) (gx#stx-e _id110722_))))
                    (declare (not safe))
                    (interned-symbol? __tmp112636))
                  (let () (declare (not safe)) (gx#stx-e _id110722_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id110722_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id110720_)
        (if (let () (declare (not safe)) (gx#identifier? _id110720_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id110720_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym110700_ _quote?110701_)
        (let* ((_ht110703_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e110705_
                (let ()
                  (declare (not safe))
                  (hash-get _ht110703_ _sym110700_))))
          (if _$e110705_
              (values _$e110705_)
              (let ((_g110708_
                     (if _quote?110701_
                         (let ((__tmp112637 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym110700_
                            '"__"
                            __tmp112637))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym110700_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht110703_ _sym110700_ _g110708_))
                _g110708_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym110713_)
        (let ((_quote?110715_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym110713_
           _quote?110715_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g112639_
        (let ((_g112638_ (let () (declare (not safe)) (##length _g112639_))))
          (cond ((let () (declare (not safe)) (##fx= _g112638_ 1))
                 (apply (lambda (_sym110713_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym110713_)))
                        _g112639_))
                ((let () (declare (not safe)) (##fx= _g112638_ 2))
                 (apply (lambda (_sym110717_ _quote?110718_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym110717_
                             _quote?110718_)))
                        _g112639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g112639_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id110697_)
        (let ((__tmp112640
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id110697_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp112640))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key110657_)
        (if (let () (declare (not safe)) (interned-symbol? _key110657_))
            _key110657_
            (if (uninterned-symbol? _key110657_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key110657_))
                (let* ((_key110658110665_ _key110657_)
                       (_E110660110669_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key110658110665_))))
                       (_K110661110685_
                        (lambda (_mark110672_ _eid110673_)
                          (let ((_$e110675_
                                 (##structure-ref
                                  _mark110672_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e110675_
                                ((lambda (_ht110678_)
                                   (let ((_$e110680_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht110678_
                                             _eid110673_))))
                                     (if _$e110680_
                                         ((lambda (_id110683_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _id110683_))
                                                _id110683_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id110683_))))
                                          _$e110680_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid110673_)))))
                                 _$e110675_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid110673_)))))))
                  (if (let () (declare (not safe)) (##pair? _key110658110665_))
                      (let ((_hd110662110688_
                             (let ()
                               (declare (not safe))
                               (##car _key110658110665_)))
                            (_tl110663110690_
                             (let ()
                               (declare (not safe))
                               (##cdr _key110658110665_))))
                        (let* ((_eid110693_ _hd110662110688_)
                               (_mark110695_ _tl110663110690_))
                          (declare (not safe))
                          (_K110661110685_ _mark110695_ _eid110693_)))
                      (let () (declare (not safe)) (_E110660110669_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top110644_)
        (if _top110644_
            (let ((_ns110646_
                   (##structure-ref
                    (let ((__tmp112642 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp112642))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi110647_ (gx#current-expander-phi)))
              (if _ns110646_
                  (if (fxpositive? _phi110647_)
                      (let ((__tmp112648 (number->string _phi110647_))
                            (__tmp112647 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns110646_
                         '"["
                         __tmp112648
                         '"]#_"
                         __tmp112647
                         '"_"))
                      (let ((__tmp112646 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns110646_ '"#_" __tmp112646 '"_")))
                  (if (fxpositive? _phi110647_)
                      (let ((__tmp112645 (number->string _phi110647_))
                            (__tmp112644 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp112645
                         '"]#_"
                         __tmp112644
                         '"_"))
                      (let ((__tmp112643 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp112643 '"_")))))
            (let ((__tmp112641 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp112641 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top110653_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top110653_))))
    (define gxc#generate-runtime-temporary
      (lambda _g112650_
        (let ((_g112649_ (let () (declare (not safe)) (##length _g112650_))))
          (cond ((let () (declare (not safe)) (##fx= _g112649_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g112650_))
                ((let () (declare (not safe)) (##fx= _g112649_ 1))
                 (apply (lambda (_top110655_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top110655_)))
                        _g112650_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g112650_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self110640_ _stx110641_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self110487_ _stx110488_)
        (letrec ((_simplify110490_
                  (lambda (_body110538_)
                    (let _lp110540_ ((_rest110542_ _body110538_)
                                     (_r110543_ '()))
                      (let* ((_rest110544110552_ _rest110542_)
                             (_else110546110560_
                              (lambda () (reverse _r110543_)))
                             (_K110548110628_
                              (lambda (_rest110563_ _hd110564_)
                                (let* ((_hd110565110581_ _hd110564_)
                                       (_else110569110589_
                                        (lambda ()
                                          (let ((__tmp112651
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd110564_
                                                         _r110543_))))
                                            (declare (not safe))
                                            (_lp110540_
                                             _rest110563_
                                             __tmp112651)))))
                                  (let ((_K110577110618_
                                         (lambda (_exprs110616_)
                                           (let ((__tmp112652
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest110563_
                                                            _exprs110616_))))
                                             (declare (not safe))
                                             (_lp110540_
                                              __tmp112652
                                              _r110543_))))
                                        (_K110572110602_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest110563_))
                                               (let ((__tmp112653
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd110564_
                                                              _r110543_))))
                                                 (declare (not safe))
                                                 (_lp110540_
                                                  _rest110563_
                                                  __tmp112653))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110540_
                                                  _rest110563_
                                                  _r110543_)))))
                                        (_K110571110594_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest110563_))
                                               (let ((__tmp112654
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd110564_
                                                              _r110543_))))
                                                 (declare (not safe))
                                                 (_lp110540_
                                                  _rest110563_
                                                  __tmp112654))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110540_
                                                  _rest110563_
                                                  _r110543_))))))
                                    (let ((_try-match110568110597_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd110565110581_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K110571110594_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else110569110589_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd110565110581_))
                                          (let ((_tl110579110623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd110565110581_)))
                                                (_hd110578110621_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd110565110581_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd110578110621_
                                                         'begin))
                                                (let ((_exprs110626_
                                                       _tl110579110623_))
                                                  (declare (not safe))
                                                  (_K110577110618_
                                                   _exprs110626_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd110578110621_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl110579110623_))
                                                        (let ((_tl110576110610_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl110579110623_))))
                  (if (let () (declare (not safe)) (##null? _tl110576110610_))
                      (let () (declare (not safe)) (_K110572110602_))
                      (let () (declare (not safe)) (_try-match110568110597_))))
                (let () (declare (not safe)) (_try-match110568110597_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match110568110597_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match110568110597_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110544110552_))
                            (let ((_hd110549110631_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110544110552_)))
                                  (_tl110550110633_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110544110552_))))
                              (let* ((_hd110636_ _hd110549110631_)
                                     (_rest110638_ _tl110550110633_))
                                (declare (not safe))
                                (_K110548110628_ _rest110638_ _hd110636_)))
                            (let ()
                              (declare (not safe))
                              (_else110546110560_))))))))
          (let* ((_g110492110502_
                  (lambda (_g110493110499_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g110493110499_))))
                 (_g110491110535_
                  (lambda (_g110493110505_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g110493110505_))
                        (let ((_e110497110507_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g110493110505_))))
                          (let ((_hd110496110510_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110497110507_)))
                                (_tl110495110512_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110497110507_))))
                            ((lambda (_L110515_)
                               (let* ((_body110530_
                                       (map (lambda (_g110525110527_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self110487_
                                                 _g110525110527_)))
                                            _L110515_))
                                      (_body110532_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify110490_ _body110530_))))
                                 (if (fx= (length _body110532_) '1)
                                     (car _body110532_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body110532_)))))
                             _tl110495110512_)))
                        (let ()
                          (declare (not safe))
                          (_g110492110502_ _g110493110505_))))))
            (declare (not safe))
            (_g110491110535_ _stx110488_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self110448_ _stx110449_)
        (let* ((_g110451110461_
                (lambda (_g110452110458_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110452110458_))))
               (_g110450110484_
                (lambda (_g110452110464_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110452110464_))
                      (let ((_e110456110466_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110452110464_))))
                        (let ((_hd110455110469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110456110466_)))
                              (_tl110454110471_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110456110466_))))
                          ((lambda (_L110474_)
                             (let ((__tmp112655
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L110474_))))
                               (declare (not safe))
                               (cons 'begin __tmp112655)))
                           _tl110454110471_)))
                      (let ()
                        (declare (not safe))
                        (_g110451110461_ _g110452110464_))))))
          (declare (not safe))
          (_g110450110484_ _stx110449_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self110212_ _stx110213_)
        (let* ((___stx111240111241_ _stx110213_)
               (_g110217110269_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx111240111241_)))))
          (let ((___kont111242111243_
                 (lambda (_L110430_ _L110431_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self110212_ _L110430_))))
                (___kont111244111245_
                 (lambda (_L110378_ _L110379_ _L110380_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self110212_ _L110378_))))
                (___kont111248111249_
                 (lambda (_L110298_ _L110299_)
                   (let ((_decls110314_ (map gx#syntax->datum _L110299_)))
                     (let ((__tmp112658
                            (lambda ()
                              (let ((__tmp112659
                                     (let ((__tmp112662
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls110314_)))
                                           (__tmp112660
                                            (let ((__tmp112661
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self110212_
                                                      _L110298_))))
                                              (declare (not safe))
                                              (cons __tmp112661 '()))))
                                       (declare (not safe))
                                       (cons __tmp112662 __tmp112660))))
                                (declare (not safe))
                                (cons 'begin __tmp112659))))
                           (__tmp112656
                            (let ((__tmp112657 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp112657 _decls110314_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp112658
                        gxc#current-compile-decls
                        __tmp112656))))))
            (let* ((___match111295111296_
                    (lambda (_e110235110322_
                             _hd110234110325_
                             _tl110233110327_
                             _e110238110330_
                             _hd110237110333_
                             _tl110236110335_
                             _e110241110338_
                             _hd110240110341_
                             _tl110239110343_
                             ___splice111246111247_
                             _target110242110346_
                             _tl110244110348_)
                      (letrec ((_loop110245110351_
                                (lambda (_hd110243110354_ _param110249110356_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd110243110354_))
                                      (let ((_e110246110359_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd110243110354_))))
                                        (let ((_lp-tl110248110364_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110246110359_)))
                                              (_lp-hd110247110362_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110246110359_))))
                                          (let ((__tmp112664
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd110247110362_
                                                         _param110249110356_))))
                                            (declare (not safe))
                                            (_loop110245110351_
                                             _lp-tl110248110364_
                                             __tmp112664))))
                                      (let ((_param110250110367_
                                             (reverse _param110249110356_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110236110335_))
                                            (let ((_e110253110370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110236110335_))))
                                              (let ((_tl110251110375_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110253110370_)))
                                                    (_hd110252110373_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110253110370_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110251110375_))
                                                    (let ((_L110378_
                                                           _hd110252110373_)
                                                          (_L110379_
                                                           _param110250110367_)
                                                          (_L110380_
                                                           _hd110240110341_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L110380_))
                       (let ((__tmp112663
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L110380_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp112663)))
                  (___kont111244111245_ _L110378_ _L110379_ _L110380_)
                  (___kont111248111249_ _hd110252110373_ _hd110237110333_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110217110269_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110217110269_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop110245110351_ _target110242110346_ '())))))
                   (___match111269111270_
                    (lambda (_e110223110406_
                             _hd110222110409_
                             _tl110221110411_
                             _e110226110414_
                             _hd110225110417_
                             _tl110224110419_
                             _e110229110422_
                             _hd110228110425_
                             _tl110227110427_)
                      (let ((_L110430_ _hd110228110425_)
                            (_L110431_ _hd110225110417_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L110431_))
                            (___kont111242111243_ _L110430_ _L110431_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd110225110417_))
                                (let ((_e110241110338_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd110225110417_))))
                                  (let ((_tl110239110343_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e110241110338_)))
                                        (_hd110240110341_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e110241110338_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl110239110343_))
                                        (let ((___splice111246111247_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl110239110343_
                                                  '0))))
                                          (let ((_tl110244110348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice111246111247_
                                                    '1)))
                                                (_target110242110346_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice111246111247_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110244110348_))
                                                (___match111295111296_
                                                 _e110223110406_
                                                 _hd110222110409_
                                                 _tl110221110411_
                                                 _e110226110414_
                                                 _hd110225110417_
                                                 _tl110224110419_
                                                 _e110241110338_
                                                 _hd110240110341_
                                                 _tl110239110343_
                                                 ___splice111246111247_
                                                 _target110242110346_
                                                 _tl110244110348_)
                                                (___kont111248111249_
                                                 _hd110228110425_
                                                 _hd110225110417_))))
                                        (___kont111248111249_
                                         _hd110228110425_
                                         _hd110225110417_))))
                                (___kont111248111249_
                                 _hd110228110425_
                                 _hd110225110417_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx111240111241_))
                  (let ((_e110223110406_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx111240111241_))))
                    (let ((_tl110221110411_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110223110406_)))
                          (_hd110222110409_
                           (let ()
                             (declare (not safe))
                             (##car _e110223110406_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110221110411_))
                          (let ((_e110226110414_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110221110411_))))
                            (let ((_tl110224110419_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110226110414_)))
                                  (_hd110225110417_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110226110414_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl110224110419_))
                                  (let ((_e110229110422_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl110224110419_))))
                                    (let ((_tl110227110427_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110229110422_)))
                                          (_hd110228110425_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110229110422_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl110227110427_))
                                          (___match111269111270_
                                           _e110223110406_
                                           _hd110222110409_
                                           _tl110221110411_
                                           _e110226110414_
                                           _hd110225110417_
                                           _tl110224110419_
                                           _e110229110422_
                                           _hd110228110425_
                                           _tl110227110427_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110225110417_))
                                              (let ((_e110241110338_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110225110417_))))
                                                (let ((_tl110239110343_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110241110338_)))
                                                      (_hd110240110341_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110241110338_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl110239110343_))
                                                      (let ((___splice111246111247_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl110239110343_ '0))))
                (let ((_tl110244110348_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice111246111247_ '1)))
                      (_target110242110346_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice111246111247_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110244110348_))
                      (___match111295111296_
                       _e110223110406_
                       _hd110222110409_
                       _tl110221110411_
                       _e110226110414_
                       _hd110225110417_
                       _tl110224110419_
                       _e110241110338_
                       _hd110240110341_
                       _tl110239110343_
                       ___splice111246111247_
                       _target110242110346_
                       _tl110244110348_)
                      (let () (declare (not safe)) (_g110217110269_)))))
              (let () (declare (not safe)) (_g110217110269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110217110269_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd110225110417_))
                                      (let ((_e110241110338_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd110225110417_))))
                                        (let ((_tl110239110343_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110241110338_)))
                                              (_hd110240110341_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110241110338_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl110239110343_))
                                              (let ((___splice111246111247_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl110239110343_
                                                        '0))))
                                                (let ((_tl110244110348_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice111246111247_
                                                          '1)))
                                                      (_target110242110346_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice111246111247_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110244110348_))
                                                      (___match111295111296_
                                                       _e110223110406_
                                                       _hd110222110409_
                                                       _tl110221110411_
                                                       _e110226110414_
                                                       _hd110225110417_
                                                       _tl110224110419_
                                                       _e110241110338_
                                                       _hd110240110341_
                                                       _tl110239110343_
                                                       ___splice111246111247_
                                                       _target110242110346_
                                                       _tl110244110348_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g110217110269_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g110217110269_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110217110269_))))))
                          (let () (declare (not safe)) (_g110217110269_)))))
                  (let () (declare (not safe)) (_g110217110269_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self110171_ _stx110172_)
        (let* ((_g110174110184_
                (lambda (_g110175110181_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110175110181_))))
               (_g110173110209_
                (lambda (_g110175110187_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110175110187_))
                      (let ((_e110179110189_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110175110187_))))
                        (let ((_hd110178110192_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110179110189_)))
                              (_tl110177110194_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110179110189_))))
                          ((lambda (_L110197_)
                             (let ((_decls110207_
                                    (map gx#syntax->datum _L110197_)))
                               (gxc#current-compile-decls
                                (let ((__tmp112665
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp112665 _decls110207_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls110207_))))
                           _tl110177110194_)))
                      (let ()
                        (declare (not safe))
                        (_g110174110184_ _g110175110187_))))))
          (declare (not safe))
          (_g110173110209_ _stx110172_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self109917_ _stx109918_)
        (let* ((_g109920109937_
                (lambda (_g109921109934_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109921109934_))))
               (_g109919110168_
                (lambda (_g109921109940_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109921109940_))
                      (let ((_e109926109942_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109921109940_))))
                        (let ((_hd109925109945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109926109942_)))
                              (_tl109924109947_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109926109942_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109924109947_))
                              (let ((_e109929109950_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109924109947_))))
                                (let ((_hd109928109953_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109929109950_)))
                                      (_tl109927109955_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109929109950_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109927109955_))
                                      (let ((_e109932109958_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109927109955_))))
                                        (let ((_hd109931109961_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109932109958_)))
                                              (_tl109930109963_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109932109958_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109930109963_))
                                              ((lambda (_L109966_ _L109967_)
                                                 (let* ((___stx111348111349_
                                                         _L109967_)
                                                        (_g109984109998_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx111348111349_)))))
                                                   (let ((___kont111350111351_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self109917_
                                                               _L109966_))))
                                                         (___kont111352111353_
                                                          (lambda (_L110130_)
                                                            (let ((_eid110139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L110130_))))
                      (let ((_lambda-expr110140110142_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L109966_))))
                        (if _lambda-expr110140110142_
                            (let* ((_lambda-expr110145_
                                    _lambda-expr110140110142_)
                                   (__tmp112666
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp112666
                               _lambda-expr110145_
                               _eid110139_))
                            '#f))
                      (let ((__tmp112667
                             (let ((__tmp112668
                                    (let ((__tmp112669
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self109917_
                                              _L109966_))))
                                      (declare (not safe))
                                      (cons __tmp112669 '()))))
                               (declare (not safe))
                               (cons _eid110139_ __tmp112668))))
                        (declare (not safe))
                        (cons 'define __tmp112667)))))
                 (___kont111354111355_
                  (lambda ()
                    (let* ((_tmp110005_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body110114_
                            (let _lp110007_ ((_rest110009_ _L109967_)
                                             (_k110010_ '0)
                                             (_r110011_ '()))
                              (let* ((___stx111318111319_ _rest110009_)
                                     (_g110016110033_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx111318111319_)))))
                                (let ((___kont111320111321_
                                       (lambda (_L110101_)
                                         (let ((__tmp112670
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k110010_ '1))))
                                           (declare (not safe))
                                           (_lp110007_
                                            _L110101_
                                            __tmp112670
                                            _r110011_))))
                                      (___kont111322111323_
                                       (lambda (_L110074_ _L110075_)
                                         (let ((__tmp112677
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k110010_ '1)))
                                               (__tmp112671
                                                (let ((__tmp112672
                                                       (let ((__tmp112673
                                                              (let ((__tmp112676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L110075_)))
                            (__tmp112674
                             (let ((__tmp112675
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp110005_
                                       _k110010_
                                       _L110074_))))
                               (declare (not safe))
                               (cons __tmp112675 '()))))
                        (declare (not safe))
                        (cons __tmp112676 __tmp112674))))
                 (declare (not safe))
                 (cons 'define __tmp112673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112672
                                                        _r110011_))))
                                           (declare (not safe))
                                           (_lp110007_
                                            _L110074_
                                            __tmp112677
                                            __tmp112671))))
                                      (___kont111324111325_
                                       (lambda (_L110045_)
                                         (let ((__tmp112678
                                                (let ((__tmp112679
                                                       (let ((__tmp112680
                                                              (let ((__tmp112683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L110045_)))
                            (__tmp112681
                             (let ((__tmp112682
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp110005_
                                       _k110010_))))
                               (declare (not safe))
                               (cons __tmp112682 '()))))
                        (declare (not safe))
                        (cons __tmp112683 __tmp112681))))
                 (declare (not safe))
                 (cons 'define __tmp112680))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112679 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp112678
                                                   _r110011_))))
                                      (___kont111326111327_
                                       (lambda () (reverse _r110011_))))
                                  (let ((_g110014110061_
                                         (lambda ()
                                           (let ((_L110045_
                                                  ___stx111318111319_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L110045_))
                                                 (___kont111324111325_
                                                  _L110045_)
                                                 (___kont111326111327_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx111318111319_))
                                        (let ((_e110021110090_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx111318111319_))))
                                          (let ((_tl110019110095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110021110090_)))
                                                (_hd110020110093_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110021110090_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd110020110093_))
                                                (let ((_e110022110098_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110020110093_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e110022110098_
                                                                '#f))
                                                      (___kont111320111321_
                                                       _tl110019110095_)
                                                      (___kont111322111323_
                                                       _tl110019110095_
                                                       _hd110020110093_)))
                                                (___kont111322111323_
                                                 _tl110019110095_
                                                 _hd110020110093_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g110014110061_)))))))))
                      (let ((__tmp112684
                             (let ((__tmp112687
                                    (let ((__tmp112688
                                           (let ((__tmp112689
                                                  (let ((__tmp112690
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self109917_
                                                            _L109966_))))
                                                    (declare (not safe))
                                                    (cons __tmp112690 '()))))
                                             (declare (not safe))
                                             (cons _tmp110005_ __tmp112689))))
                                      (declare (not safe))
                                      (cons 'define __tmp112688)))
                                   (__tmp112685
                                    (let ((__tmp112686
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp110005_
                                              _L109967_
                                              _L109966_))))
                                      (declare (not safe))
                                      (cons __tmp112686 _body110114_))))
                               (declare (not safe))
                               (cons __tmp112687 __tmp112685))))
                        (declare (not safe))
                        (cons 'begin __tmp112684))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx111348111349_))
                                                         (let ((_e109988110152_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx111348111349_))))
                   (let ((_tl109986110157_
                          (let ()
                            (declare (not safe))
                            (##cdr _e109988110152_)))
                         (_hd109987110155_
                          (let ()
                            (declare (not safe))
                            (##car _e109988110152_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd109987110155_))
                         (let ((_e109989110160_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd109987110155_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e109989110160_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl109986110157_))
                                   (___kont111350111351_)
                                   (___kont111354111355_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl109986110157_))
                                   (___kont111352111353_ _hd109987110155_)
                                   (___kont111354111355_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109986110157_))
                             (___kont111352111353_ _hd109987110155_)
                             (___kont111354111355_)))))
                 (___kont111354111355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd109931109961_
                                               _hd109928109953_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109920109937_
                                                 _g109921109940_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109920109937_ _g109921109940_)))))
                              (let ()
                                (declare (not safe))
                                (_g109920109937_ _g109921109940_)))))
                      (let ()
                        (declare (not safe))
                        (_g109920109937_ _g109921109940_))))))
          (declare (not safe))
          (_g109919110168_ _stx109918_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals109893_ _hd109894_ _expr109895_)
        (let ((_$e109897_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr109895_))))
          (if _$e109897_
              ((lambda (_count109900_)
                 (let ((_len109902_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd109894_)))
                       (_cmp109903_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd109894_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len109902_ '0)
                           (_cmp109903_ _count109900_ _len109902_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr109895_
                          _hd109894_)))))
               _$e109897_)
              (let* ((_len109908_
                      (let () (declare (not safe)) (gx#stx-length _hd109894_)))
                     (_cmp109910_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd109894_))
                          '##fx=
                          '##fx>=))
                     (_errmsg109912_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd109894_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len109908_)
                       '" values"))
                     (_count109914_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp112714
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd109894_))))
                           (declare (not safe))
                           (not __tmp112714))
                         (fx= _len109908_ '0))
                    '#!void
                    (let ((__tmp112691
                           (let ((__tmp112710
                                  (let ((__tmp112711
                                         (let ((__tmp112712
                                                (let ((__tmp112713
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals109893_))))
                                                  (declare (not safe))
                                                  (cons __tmp112713 '()))))
                                           (declare (not safe))
                                           (cons _count109914_ __tmp112712))))
                                    (declare (not safe))
                                    (cons __tmp112711 '())))
                                 (__tmp112692
                                  (let ((__tmp112693
                                         (let ((__tmp112694
                                                (let ((__tmp112699
                                                       (let ((__tmp112700
                                                              (let ((__tmp112701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp112708
                                        (let ((__tmp112709
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len109908_ '()))))
                                          (declare (not safe))
                                          (cons _count109914_ __tmp112709))))
                                   (declare (not safe))
                                   (cons _cmp109910_ __tmp112708))
                                 (let ((__tmp112702
                                        (let ((__tmp112703
                                               (let ((__tmp112704
                                                      (let ((__tmp112705
                                                             (let ((__tmp112706
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112707
                                   (let ()
                                     (declare (not safe))
                                     (cons _len109908_ '()))))
                              (declare (not safe))
                              (cons _count109914_ __tmp112707))))
                       (declare (not safe))
                       (cons _cmp109910_ __tmp112706))))
                (declare (not safe))
                (cons __tmp112705 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp112704))))
                                          (declare (not safe))
                                          (cons '() __tmp112703))))
                                   (declare (not safe))
                                   (cons 'let __tmp112702)))))
                        (declare (not safe))
                        (cons __tmp112701 '()))))
                 (declare (not safe))
                 (cons 'not __tmp112700)))
              (__tmp112695
               (let ((__tmp112696
                      (let ((__tmp112697
                             (let ((__tmp112698
                                    (let ()
                                      (declare (not safe))
                                      (cons _count109914_ '()))))
                               (declare (not safe))
                               (cons _errmsg109912_ __tmp112698))))
                        (declare (not safe))
                        (cons 'error __tmp112697))))
                 (declare (not safe))
                 (cons __tmp112696 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112699
                                                        __tmp112695))))
                                           (declare (not safe))
                                           (cons 'if __tmp112694))))
                                    (declare (not safe))
                                    (cons __tmp112693 '()))))
                             (declare (not safe))
                             (cons __tmp112710 __tmp112692))))
                      (declare (not safe))
                      (cons 'let __tmp112691))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var109888_)
        (letrec ((_generate-inline109890_
                  (lambda ()
                    (let ((__tmp112715
                           (let ((__tmp112720
                                  (let ((__tmp112721
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109888_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp112721)))
                                 (__tmp112716
                                  (let ((__tmp112718
                                         (let ((__tmp112719
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var109888_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp112719)))
                                        (__tmp112717
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp112718 __tmp112717))))
                             (declare (not safe))
                             (cons __tmp112720 __tmp112716))))
                      (declare (not safe))
                      (cons 'if __tmp112715)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline109890_))
              (let ((__tmp112722
                     (let ((__tmp112723
                            (let ((__tmp112724
                                   (let ((__tmp112725
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline109890_))))
                                     (declare (not safe))
                                     (cons __tmp112725 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp112724))))
                       (declare (not safe))
                       (cons '() __tmp112723))))
                (declare (not safe))
                (cons 'let __tmp112722))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var109881_ _i109882_ _rest109883_)
        (letrec ((_generate-inline109885_
                  (lambda ()
                    (if (and (fx= _i109882_ '0)
                             (let ((__tmp112736
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest109883_))))
                               (declare (not safe))
                               (not __tmp112736)))
                        (let ((__tmp112728
                               (let ((__tmp112734
                                      (let ((__tmp112735
                                             (let ()
                                               (declare (not safe))
                                               (cons _var109881_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp112735)))
                                     (__tmp112729
                                      (let ((__tmp112731
                                             (let ((__tmp112732
                                                    (let ((__tmp112733
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var109881_
                                                            __tmp112733))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp112732)))
                                            (__tmp112730
                                             (let ()
                                               (declare (not safe))
                                               (cons _var109881_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112731 __tmp112730))))
                                 (declare (not safe))
                                 (cons __tmp112734 __tmp112729))))
                          (declare (not safe))
                          (cons 'if __tmp112728))
                        (let ((__tmp112726
                               (let ((__tmp112727
                                      (let ()
                                        (declare (not safe))
                                        (cons _i109882_ '()))))
                                 (declare (not safe))
                                 (cons _var109881_ __tmp112727))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp112726))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline109885_))
              (let ((__tmp112737
                     (let ((__tmp112738
                            (let ((__tmp112739
                                   (let ((__tmp112740
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline109885_))))
                                     (declare (not safe))
                                     (cons __tmp112740 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp112739))))
                       (declare (not safe))
                       (cons '() __tmp112738))))
                (declare (not safe))
                (cons 'let __tmp112737))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var109878_ _i109879_)
        (if (fx= _i109879_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp112788
                       (let ((__tmp112795
                              (let ((__tmp112796
                                     (let ()
                                       (declare (not safe))
                                       (cons _var109878_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp112796)))
                             (__tmp112789
                              (let ((__tmp112793
                                     (let ((__tmp112794
                                            (let ()
                                              (declare (not safe))
                                              (cons _var109878_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp112794)))
                                    (__tmp112790
                                     (let ((__tmp112791
                                            (let ((__tmp112792
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var109878_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp112792))))
                                       (declare (not safe))
                                       (cons __tmp112791 '()))))
                                (declare (not safe))
                                (cons __tmp112793 __tmp112790))))
                         (declare (not safe))
                         (cons __tmp112795 __tmp112789))))
                  (declare (not safe))
                  (cons 'if __tmp112788))
                (let ((__tmp112775
                       (let ((__tmp112776
                              (let ((__tmp112777
                                     (let ((__tmp112778
                                            (let ((__tmp112779
                                                   (let ((__tmp112786
                                                          (let ((__tmp112787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var109878_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp112787)))
                 (__tmp112780
                  (let ((__tmp112784
                         (let ((__tmp112785
                                (let ()
                                  (declare (not safe))
                                  (cons _var109878_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp112785)))
                        (__tmp112781
                         (let ((__tmp112782
                                (let ((__tmp112783
                                       (let ()
                                         (declare (not safe))
                                         (cons _var109878_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp112783))))
                           (declare (not safe))
                           (cons __tmp112782 '()))))
                    (declare (not safe))
                    (cons __tmp112784 __tmp112781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112786
                                                           __tmp112780))))
                                              (declare (not safe))
                                              (cons 'if __tmp112779))))
                                       (declare (not safe))
                                       (cons __tmp112778 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp112777))))
                         (declare (not safe))
                         (cons '() __tmp112776))))
                  (declare (not safe))
                  (cons 'let __tmp112775)))
            (if (fx= _i109879_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp112766
                           (let ((__tmp112773
                                  (let ((__tmp112774
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109878_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp112774)))
                                 (__tmp112767
                                  (let ((__tmp112769
                                         (let ((__tmp112770
                                                (let ((__tmp112771
                                                       (let ((__tmp112772
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var109878_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp112772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112771 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp112770)))
                                        (__tmp112768
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp112769 __tmp112768))))
                             (declare (not safe))
                             (cons __tmp112773 __tmp112767))))
                      (declare (not safe))
                      (cons 'if __tmp112766))
                    (let ((__tmp112753
                           (let ((__tmp112754
                                  (let ((__tmp112755
                                         (let ((__tmp112756
                                                (let ((__tmp112757
                                                       (let ((__tmp112764
                                                              (let ((__tmp112765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var109878_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp112765)))
                     (__tmp112758
                      (let ((__tmp112760
                             (let ((__tmp112761
                                    (let ((__tmp112762
                                           (let ((__tmp112763
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var109878_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp112763))))
                                      (declare (not safe))
                                      (cons __tmp112762 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp112761)))
                            (__tmp112759
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp112760 __tmp112759))))
                 (declare (not safe))
                 (cons __tmp112764 __tmp112758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp112757))))
                                           (declare (not safe))
                                           (cons __tmp112756 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp112755))))
                             (declare (not safe))
                             (cons '() __tmp112754))))
                      (declare (not safe))
                      (cons 'let __tmp112753)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp112749
                           (let ((__tmp112751
                                  (let ((__tmp112752
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109878_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp112752)))
                                 (__tmp112750
                                  (let ()
                                    (declare (not safe))
                                    (cons _i109879_ '()))))
                             (declare (not safe))
                             (cons __tmp112751 __tmp112750))))
                      (declare (not safe))
                      (cons '##list-tail __tmp112749))
                    (let ((__tmp112741
                           (let ((__tmp112742
                                  (let ((__tmp112743
                                         (let ((__tmp112744
                                                (let ((__tmp112745
                                                       (let ((__tmp112747
                                                              (let ((__tmp112748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var109878_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp112748)))
                     (__tmp112746
                      (let () (declare (not safe)) (cons _i109879_ '()))))
                 (declare (not safe))
                 (cons __tmp112747 __tmp112746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp112745))))
                                           (declare (not safe))
                                           (cons __tmp112744 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp112743))))
                             (declare (not safe))
                             (cons '() __tmp112742))))
                      (declare (not safe))
                      (cons 'let __tmp112741)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self109810_ _stx109811_)
        (let* ((_g109813109830_
                (lambda (_g109814109827_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109814109827_))))
               (_g109812109875_
                (lambda (_g109814109833_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109814109833_))
                      (let ((_e109819109835_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109814109833_))))
                        (let ((_hd109818109838_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109819109835_)))
                              (_tl109817109840_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109819109835_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109817109840_))
                              (let ((_e109822109843_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109817109840_))))
                                (let ((_hd109821109846_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109822109843_)))
                                      (_tl109820109848_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109822109843_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109820109848_))
                                      (let ((_e109825109851_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109820109848_))))
                                        (let ((_hd109824109854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109825109851_)))
                                              (_tl109823109856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109825109851_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109823109856_))
                                              ((lambda (_L109859_ _L109860_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self109810_
                                                    _L109860_
                                                    _L109859_)))
                                               _hd109824109854_
                                               _hd109821109846_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109813109830_
                                                 _g109814109833_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109813109830_ _g109814109833_)))))
                              (let ()
                                (declare (not safe))
                                (_g109813109830_ _g109814109833_)))))
                      (let ()
                        (declare (not safe))
                        (_g109813109830_ _g109814109833_))))))
          (declare (not safe))
          (_g109812109875_ _stx109811_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self109769_ _hd109770_ _body109771_)
        (let* ((_hd109773_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd109770_)))
               (_body109775_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self109769_ _body109771_)))
               (_body109807_
                (let* ((_body109776109784_ _body109775_)
                       (_else109778109792_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body109775_ '()))))
                       (_K109780109797_
                        (lambda (_exprs109795_) _exprs109795_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body109776109784_))
                      (let ((_hd109781109800_
                             (let ()
                               (declare (not safe))
                               (##car _body109776109784_)))
                            (_tl109782109802_
                             (let ()
                               (declare (not safe))
                               (##cdr _body109776109784_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd109781109800_ 'begin))
                            (let ((_exprs109805_ _tl109782109802_))
                              (declare (not safe))
                              (_K109780109797_ _exprs109805_))
                            (let ()
                              (declare (not safe))
                              (_else109778109792_))))
                      (let () (declare (not safe)) (_else109778109792_))))))
          (let ((__tmp112797
                 (let () (declare (not safe)) (cons _hd109773_ _body109807_))))
            (declare (not safe))
            (cons 'lambda __tmp112797)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd109767_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd109767_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self108309_ _stx108310_)
        (letrec ((_dispatch-case?108312_
                  (lambda (_hd108997_ _body108998_)
                    (let* ((_form109000_
                            (let ((__tmp112798
                                   (let ()
                                     (declare (not safe))
                                     (cons _body108998_ '()))))
                              (declare (not safe))
                              (cons _hd108997_ __tmp112798)))
                           (___stx111380111381_ _form109000_)
                           (_g109005109162_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111380111381_)))))
                      (let ((___kont111382111383_
                             (lambda (_L109687_ _L109688_ _L109689_) '#t))
                            (___kont111388111389_
                             (lambda (_L109475_
                                      _L109476_
                                      _L109477_
                                      _L109478_
                                      _L109479_
                                      _L109480_)
                               '#t))
                            (___kont111394111395_
                             (lambda (_L109270_ _L109271_ _L109272_ _L109273_)
                               '#t))
                            (___kont111396111397_ (lambda () '#f)))
                        (let* ((___match111521111522_
                                (lambda (_e109124109174_
                                         _hd109123109177_
                                         _tl109122109179_
                                         _e109127109182_
                                         _hd109126109185_
                                         _tl109125109187_
                                         _e109130109190_
                                         _hd109129109193_
                                         _tl109128109195_
                                         _e109133109198_
                                         _hd109132109201_
                                         _tl109131109203_
                                         _e109136109206_
                                         _hd109135109209_
                                         _tl109134109211_
                                         _e109139109214_
                                         _hd109138109217_
                                         _tl109137109219_
                                         _e109142109222_
                                         _hd109141109225_
                                         _tl109140109227_
                                         _e109145109230_
                                         _hd109144109233_
                                         _tl109143109235_
                                         _e109148109238_
                                         _hd109147109241_
                                         _tl109146109243_
                                         _e109151109246_
                                         _hd109150109249_
                                         _tl109149109251_
                                         _e109154109254_
                                         _hd109153109257_
                                         _tl109152109259_
                                         _e109157109262_
                                         _hd109156109265_
                                         _tl109155109267_)
                                  (let ((_L109270_ _hd109156109265_)
                                        (_L109271_ _hd109147109241_)
                                        (_L109272_ _hd109138109217_)
                                        (_L109273_ _hd109123109177_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L109273_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L109272_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L109273_
                                                _L109270_))
                                             (let ((__tmp112799
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L109271_
                                                       _L109273_))))
                                               (declare (not safe))
                                               (not __tmp112799)))
                                        (___kont111394111395_
                                         _L109270_
                                         _L109271_
                                         _L109272_
                                         _L109273_)
                                        (___kont111396111397_)))))
                               (___match111493111494_
                                (lambda (_e109124109174_
                                         _hd109123109177_
                                         _tl109122109179_
                                         _e109127109182_
                                         _hd109126109185_
                                         _tl109125109187_
                                         _e109130109190_
                                         _hd109129109193_
                                         _tl109128109195_
                                         _e109133109198_
                                         _hd109132109201_
                                         _tl109131109203_
                                         _e109136109206_
                                         _hd109135109209_
                                         _tl109134109211_
                                         _e109139109214_
                                         _hd109138109217_
                                         _tl109137109219_
                                         _e109142109222_
                                         _hd109141109225_
                                         _tl109140109227_
                                         _e109145109230_
                                         _hd109144109233_
                                         _tl109143109235_
                                         _e109148109238_
                                         _hd109147109241_
                                         _tl109146109243_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109140109227_))
                                      (let ((_e109151109246_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109140109227_))))
                                        (let ((_tl109149109251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109151109246_)))
                                              (_hd109150109249_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109151109246_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd109150109249_))
                                              (let ((_e109154109254_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd109150109249_))))
                                                (let ((_tl109152109259_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109154109254_)))
                                                      (_hd109153109257_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109154109254_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd109153109257_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd109153109257_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109152109259_))
                      (let ((_e109157109262_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109152109259_))))
                        (let ((_tl109155109267_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109157109262_)))
                              (_hd109156109265_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109157109262_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl109155109267_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl109149109251_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl109125109187_))
                                      (___match111521111522_
                                       _e109124109174_
                                       _hd109123109177_
                                       _tl109122109179_
                                       _e109127109182_
                                       _hd109126109185_
                                       _tl109125109187_
                                       _e109130109190_
                                       _hd109129109193_
                                       _tl109128109195_
                                       _e109133109198_
                                       _hd109132109201_
                                       _tl109131109203_
                                       _e109136109206_
                                       _hd109135109209_
                                       _tl109134109211_
                                       _e109139109214_
                                       _hd109138109217_
                                       _tl109137109219_
                                       _e109142109222_
                                       _hd109141109225_
                                       _tl109140109227_
                                       _e109145109230_
                                       _hd109144109233_
                                       _tl109143109235_
                                       _e109148109238_
                                       _hd109147109241_
                                       _tl109146109243_
                                       _e109151109246_
                                       _hd109150109249_
                                       _tl109149109251_
                                       _e109154109254_
                                       _hd109153109257_
                                       _tl109152109259_
                                       _e109157109262_
                                       _hd109156109265_
                                       _tl109155109267_)
                                      (___kont111396111397_))
                                  (___kont111396111397_))
                              (___kont111396111397_))))
                      (___kont111396111397_))
                  (___kont111396111397_))
              (___kont111396111397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont111396111397_))))
                                      (___kont111396111397_))))
                               (___match111423111424_
                                (lambda (_e109060109315_
                                         _hd109059109318_
                                         _tl109058109320_
                                         ___splice111390111391_
                                         _target109061109323_
                                         _tl109063109325_)
                                  (letrec ((_loop109064109328_
                                            (lambda (_hd109062109331_
                                                     _arg109068109333_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109062109331_))
                                                  (let ((_e109065109336_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109062109331_))))
                                                    (let ((_lp-tl109067109341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109065109336_)))
                                                          (_lp-hd109066109339_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109065109336_))))
                                                      (let ((__tmp112814
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109066109339_ _arg109068109333_))))
                (declare (not safe))
                (_loop109064109328_ _lp-tl109067109341_ __tmp112814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109069109344_
                                                         (reverse _arg109068109333_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109058109320_))
                                                        (let ((_e109072109347_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109058109320_))))
                  (let ((_tl109070109352_
                         (let () (declare (not safe)) (##cdr _e109072109347_)))
                        (_hd109071109350_
                         (let ()
                           (declare (not safe))
                           (##car _e109072109347_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109071109350_))
                        (let ((_e109075109355_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109071109350_))))
                          (let ((_tl109073109360_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109075109355_)))
                                (_hd109074109358_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109075109355_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109074109358_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109074109358_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109073109360_))
                                        (let ((_e109078109363_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109073109360_))))
                                          (let ((_tl109076109368_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109078109363_)))
                                                (_hd109077109366_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109078109363_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109077109366_))
                                                (let ((_e109081109371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109077109366_))))
                                                  (let ((_tl109079109376_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109081109371_)))
                                                        (_hd109080109374_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109081109371_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109080109374_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109080109374_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109079109376_))
                        (let ((_e109084109379_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109079109376_))))
                          (let ((_tl109082109384_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109084109379_)))
                                (_hd109083109382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109084109379_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109082109384_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl109076109368_))
                                    (let ((_e109087109387_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl109076109368_))))
                                      (let ((_tl109085109392_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e109087109387_)))
                                            (_hd109086109390_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e109087109387_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd109086109390_))
                                            (let ((_e109090109395_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd109086109390_))))
                                              (let ((_tl109088109400_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109090109395_)))
                                                    (_hd109089109398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109090109395_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd109089109398_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd109089109398_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl109088109400_))
                                                            (let ((_e109093109403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl109088109400_))))
                      (let ((_tl109091109408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109093109403_)))
                            (_hd109092109406_
                             (let ()
                               (declare (not safe))
                               (##car _e109093109403_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl109091109408_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109085109392_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl109085109392_))
                                          '1)
                                    (let ((___splice111392111393_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl109085109392_
                                              '1))))
                                      (let ((_tl109096109413_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111392111393_
                                                '1)))
                                            (_target109094109411_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111392111393_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl109096109413_))
                                            (let ((_e109105109416_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl109096109413_))))
                                              (let ((_tl109103109421_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109105109416_)))
                                                    (_hd109104109419_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109105109416_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd109104109419_))
                                                    (let ((_e109108109424_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd109104109419_))))
                                                      (let ((_tl109106109429_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e109108109424_)))
                    (_hd109107109427_
                     (let () (declare (not safe)) (##car _e109108109424_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd109107109427_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd109107109427_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl109106109429_))
                            (let ((_e109111109432_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl109106109429_))))
                              (let ((_tl109109109437_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e109111109432_)))
                                    (_hd109110109435_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e109111109432_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl109109109437_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl109103109421_))
                                        (letrec ((_loop109097109440_
                                                  (lambda (_hd109095109443_
                                                           _xarg109101109445_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd109095109443_))
                                                        (let ((_e109098109448_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd109095109443_))))
                  (let ((_lp-tl109100109453_
                         (let () (declare (not safe)) (##cdr _e109098109448_)))
                        (_lp-hd109099109451_
                         (let ()
                           (declare (not safe))
                           (##car _e109098109448_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd109099109451_))
                        (let ((_e109114109456_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd109099109451_))))
                          (let ((_tl109112109461_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109114109456_)))
                                (_hd109113109459_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109114109456_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109113109459_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd109113109459_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109112109461_))
                                        (let ((_e109117109464_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109112109461_))))
                                          (let ((_tl109115109469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109117109464_)))
                                                (_hd109116109467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109117109464_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109115109469_))
                                                (let ((__tmp112813
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd109116109467_
                                                               _xarg109101109445_))))
                                                  (declare (not safe))
                                                  (_loop109097109440_
                                                   _lp-tl109100109453_
                                                   __tmp112813))
                                                (___match111493111494_
                                                 _e109060109315_
                                                 _hd109059109318_
                                                 _tl109058109320_
                                                 _e109072109347_
                                                 _hd109071109350_
                                                 _tl109070109352_
                                                 _e109075109355_
                                                 _hd109074109358_
                                                 _tl109073109360_
                                                 _e109078109363_
                                                 _hd109077109366_
                                                 _tl109076109368_
                                                 _e109081109371_
                                                 _hd109080109374_
                                                 _tl109079109376_
                                                 _e109084109379_
                                                 _hd109083109382_
                                                 _tl109082109384_
                                                 _e109087109387_
                                                 _hd109086109390_
                                                 _tl109085109392_
                                                 _e109090109395_
                                                 _hd109089109398_
                                                 _tl109088109400_
                                                 _e109093109403_
                                                 _hd109092109406_
                                                 _tl109091109408_))))
                                        (___match111493111494_
                                         _e109060109315_
                                         _hd109059109318_
                                         _tl109058109320_
                                         _e109072109347_
                                         _hd109071109350_
                                         _tl109070109352_
                                         _e109075109355_
                                         _hd109074109358_
                                         _tl109073109360_
                                         _e109078109363_
                                         _hd109077109366_
                                         _tl109076109368_
                                         _e109081109371_
                                         _hd109080109374_
                                         _tl109079109376_
                                         _e109084109379_
                                         _hd109083109382_
                                         _tl109082109384_
                                         _e109087109387_
                                         _hd109086109390_
                                         _tl109085109392_
                                         _e109090109395_
                                         _hd109089109398_
                                         _tl109088109400_
                                         _e109093109403_
                                         _hd109092109406_
                                         _tl109091109408_))
                                    (___match111493111494_
                                     _e109060109315_
                                     _hd109059109318_
                                     _tl109058109320_
                                     _e109072109347_
                                     _hd109071109350_
                                     _tl109070109352_
                                     _e109075109355_
                                     _hd109074109358_
                                     _tl109073109360_
                                     _e109078109363_
                                     _hd109077109366_
                                     _tl109076109368_
                                     _e109081109371_
                                     _hd109080109374_
                                     _tl109079109376_
                                     _e109084109379_
                                     _hd109083109382_
                                     _tl109082109384_
                                     _e109087109387_
                                     _hd109086109390_
                                     _tl109085109392_
                                     _e109090109395_
                                     _hd109089109398_
                                     _tl109088109400_
                                     _e109093109403_
                                     _hd109092109406_
                                     _tl109091109408_))
                                (___match111493111494_
                                 _e109060109315_
                                 _hd109059109318_
                                 _tl109058109320_
                                 _e109072109347_
                                 _hd109071109350_
                                 _tl109070109352_
                                 _e109075109355_
                                 _hd109074109358_
                                 _tl109073109360_
                                 _e109078109363_
                                 _hd109077109366_
                                 _tl109076109368_
                                 _e109081109371_
                                 _hd109080109374_
                                 _tl109079109376_
                                 _e109084109379_
                                 _hd109083109382_
                                 _tl109082109384_
                                 _e109087109387_
                                 _hd109086109390_
                                 _tl109085109392_
                                 _e109090109395_
                                 _hd109089109398_
                                 _tl109088109400_
                                 _e109093109403_
                                 _hd109092109406_
                                 _tl109091109408_))))
                        (___match111493111494_
                         _e109060109315_
                         _hd109059109318_
                         _tl109058109320_
                         _e109072109347_
                         _hd109071109350_
                         _tl109070109352_
                         _e109075109355_
                         _hd109074109358_
                         _tl109073109360_
                         _e109078109363_
                         _hd109077109366_
                         _tl109076109368_
                         _e109081109371_
                         _hd109080109374_
                         _tl109079109376_
                         _e109084109379_
                         _hd109083109382_
                         _tl109082109384_
                         _e109087109387_
                         _hd109086109390_
                         _tl109085109392_
                         _e109090109395_
                         _hd109089109398_
                         _tl109088109400_
                         _e109093109403_
                         _hd109092109406_
                         _tl109091109408_))))
                (let ((_xarg109102109472_ (reverse _xarg109101109445_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl109070109352_))
                      (let ((_L109475_ _hd109110109435_)
                            (_L109476_ _xarg109102109472_)
                            (_L109477_ _hd109092109406_)
                            (_L109478_ _hd109083109382_)
                            (_L109479_ _tl109063109325_)
                            (_L109480_ _arg109069109344_))
                        (if (and (let ((__tmp112811
                                        (let ((__tmp112812
                                               (lambda (_g109523109526_
                                                        _g109524109528_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109523109526_
                                                         _g109524109528_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112812 '() _L109480_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp112811))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L109479_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L109478_ 'apply))
                                 (fx= (length (let ((__tmp112809
                                                     (lambda (_g109530109533_
                                                              _g109531109535_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109530109533_
                                                               _g109531109535_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112809
                                                        '()
                                                        _L109480_)))
                                      (length (let ((__tmp112810
                                                     (lambda (_g109537109540_
                                                              _g109538109542_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109537109540_
                                                               _g109538109542_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112810
                                                        '()
                                                        _L109476_))))
                                 (let ((__tmp112807
                                        (let ((__tmp112808
                                               (lambda (_g109544109547_
                                                        _g109545109549_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109544109547_
                                                         _g109545109549_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112808 '() _L109480_)))
                                       (__tmp112805
                                        (let ((__tmp112806
                                               (lambda (_g109551109554_
                                                        _g109552109556_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109551109554_
                                                         _g109552109556_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112806 '() _L109476_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp112807
                                            __tmp112805))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L109479_ _L109475_))
                                 (let ((__tmp112800
                                        (let ((__tmp112804
                                               (lambda (_g109558109560_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g109558109560_
                                                    _L109477_))))
                                              (__tmp112801
                                               (let ((__tmp112803
                                                      (lambda (_g109562109565_
                                                               _g109563109567_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g109562109565_
                                                                _g109563109567_))))
                                                     (__tmp112802
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L109479_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp112803
                                                         __tmp112802
                                                         _L109480_))))
                                          (declare (not safe))
                                          (find __tmp112804 __tmp112801))))
                                   (declare (not safe))
                                   (not __tmp112800)))
                            (___kont111388111389_
                             _L109475_
                             _L109476_
                             _L109477_
                             _L109478_
                             _L109479_
                             _L109480_)
                            (___match111493111494_
                             _e109060109315_
                             _hd109059109318_
                             _tl109058109320_
                             _e109072109347_
                             _hd109071109350_
                             _tl109070109352_
                             _e109075109355_
                             _hd109074109358_
                             _tl109073109360_
                             _e109078109363_
                             _hd109077109366_
                             _tl109076109368_
                             _e109081109371_
                             _hd109080109374_
                             _tl109079109376_
                             _e109084109379_
                             _hd109083109382_
                             _tl109082109384_
                             _e109087109387_
                             _hd109086109390_
                             _tl109085109392_
                             _e109090109395_
                             _hd109089109398_
                             _tl109088109400_
                             _e109093109403_
                             _hd109092109406_
                             _tl109091109408_)))
                      (___match111493111494_
                       _e109060109315_
                       _hd109059109318_
                       _tl109058109320_
                       _e109072109347_
                       _hd109071109350_
                       _tl109070109352_
                       _e109075109355_
                       _hd109074109358_
                       _tl109073109360_
                       _e109078109363_
                       _hd109077109366_
                       _tl109076109368_
                       _e109081109371_
                       _hd109080109374_
                       _tl109079109376_
                       _e109084109379_
                       _hd109083109382_
                       _tl109082109384_
                       _e109087109387_
                       _hd109086109390_
                       _tl109085109392_
                       _e109090109395_
                       _hd109089109398_
                       _tl109088109400_
                       _e109093109403_
                       _hd109092109406_
                       _tl109091109408_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop109097109440_
                                             _target109094109411_
                                             '())))
                                        (___match111493111494_
                                         _e109060109315_
                                         _hd109059109318_
                                         _tl109058109320_
                                         _e109072109347_
                                         _hd109071109350_
                                         _tl109070109352_
                                         _e109075109355_
                                         _hd109074109358_
                                         _tl109073109360_
                                         _e109078109363_
                                         _hd109077109366_
                                         _tl109076109368_
                                         _e109081109371_
                                         _hd109080109374_
                                         _tl109079109376_
                                         _e109084109379_
                                         _hd109083109382_
                                         _tl109082109384_
                                         _e109087109387_
                                         _hd109086109390_
                                         _tl109085109392_
                                         _e109090109395_
                                         _hd109089109398_
                                         _tl109088109400_
                                         _e109093109403_
                                         _hd109092109406_
                                         _tl109091109408_))
                                    (___match111493111494_
                                     _e109060109315_
                                     _hd109059109318_
                                     _tl109058109320_
                                     _e109072109347_
                                     _hd109071109350_
                                     _tl109070109352_
                                     _e109075109355_
                                     _hd109074109358_
                                     _tl109073109360_
                                     _e109078109363_
                                     _hd109077109366_
                                     _tl109076109368_
                                     _e109081109371_
                                     _hd109080109374_
                                     _tl109079109376_
                                     _e109084109379_
                                     _hd109083109382_
                                     _tl109082109384_
                                     _e109087109387_
                                     _hd109086109390_
                                     _tl109085109392_
                                     _e109090109395_
                                     _hd109089109398_
                                     _tl109088109400_
                                     _e109093109403_
                                     _hd109092109406_
                                     _tl109091109408_))))
                            (___match111493111494_
                             _e109060109315_
                             _hd109059109318_
                             _tl109058109320_
                             _e109072109347_
                             _hd109071109350_
                             _tl109070109352_
                             _e109075109355_
                             _hd109074109358_
                             _tl109073109360_
                             _e109078109363_
                             _hd109077109366_
                             _tl109076109368_
                             _e109081109371_
                             _hd109080109374_
                             _tl109079109376_
                             _e109084109379_
                             _hd109083109382_
                             _tl109082109384_
                             _e109087109387_
                             _hd109086109390_
                             _tl109085109392_
                             _e109090109395_
                             _hd109089109398_
                             _tl109088109400_
                             _e109093109403_
                             _hd109092109406_
                             _tl109091109408_))
                        (___match111493111494_
                         _e109060109315_
                         _hd109059109318_
                         _tl109058109320_
                         _e109072109347_
                         _hd109071109350_
                         _tl109070109352_
                         _e109075109355_
                         _hd109074109358_
                         _tl109073109360_
                         _e109078109363_
                         _hd109077109366_
                         _tl109076109368_
                         _e109081109371_
                         _hd109080109374_
                         _tl109079109376_
                         _e109084109379_
                         _hd109083109382_
                         _tl109082109384_
                         _e109087109387_
                         _hd109086109390_
                         _tl109085109392_
                         _e109090109395_
                         _hd109089109398_
                         _tl109088109400_
                         _e109093109403_
                         _hd109092109406_
                         _tl109091109408_))
                    (___match111493111494_
                     _e109060109315_
                     _hd109059109318_
                     _tl109058109320_
                     _e109072109347_
                     _hd109071109350_
                     _tl109070109352_
                     _e109075109355_
                     _hd109074109358_
                     _tl109073109360_
                     _e109078109363_
                     _hd109077109366_
                     _tl109076109368_
                     _e109081109371_
                     _hd109080109374_
                     _tl109079109376_
                     _e109084109379_
                     _hd109083109382_
                     _tl109082109384_
                     _e109087109387_
                     _hd109086109390_
                     _tl109085109392_
                     _e109090109395_
                     _hd109089109398_
                     _tl109088109400_
                     _e109093109403_
                     _hd109092109406_
                     _tl109091109408_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111493111494_
                                                     _e109060109315_
                                                     _hd109059109318_
                                                     _tl109058109320_
                                                     _e109072109347_
                                                     _hd109071109350_
                                                     _tl109070109352_
                                                     _e109075109355_
                                                     _hd109074109358_
                                                     _tl109073109360_
                                                     _e109078109363_
                                                     _hd109077109366_
                                                     _tl109076109368_
                                                     _e109081109371_
                                                     _hd109080109374_
                                                     _tl109079109376_
                                                     _e109084109379_
                                                     _hd109083109382_
                                                     _tl109082109384_
                                                     _e109087109387_
                                                     _hd109086109390_
                                                     _tl109085109392_
                                                     _e109090109395_
                                                     _hd109089109398_
                                                     _tl109088109400_
                                                     _e109093109403_
                                                     _hd109092109406_
                                                     _tl109091109408_))))
                                            (___match111493111494_
                                             _e109060109315_
                                             _hd109059109318_
                                             _tl109058109320_
                                             _e109072109347_
                                             _hd109071109350_
                                             _tl109070109352_
                                             _e109075109355_
                                             _hd109074109358_
                                             _tl109073109360_
                                             _e109078109363_
                                             _hd109077109366_
                                             _tl109076109368_
                                             _e109081109371_
                                             _hd109080109374_
                                             _tl109079109376_
                                             _e109084109379_
                                             _hd109083109382_
                                             _tl109082109384_
                                             _e109087109387_
                                             _hd109086109390_
                                             _tl109085109392_
                                             _e109090109395_
                                             _hd109089109398_
                                             _tl109088109400_
                                             _e109093109403_
                                             _hd109092109406_
                                             _tl109091109408_))))
                                    (___match111493111494_
                                     _e109060109315_
                                     _hd109059109318_
                                     _tl109058109320_
                                     _e109072109347_
                                     _hd109071109350_
                                     _tl109070109352_
                                     _e109075109355_
                                     _hd109074109358_
                                     _tl109073109360_
                                     _e109078109363_
                                     _hd109077109366_
                                     _tl109076109368_
                                     _e109081109371_
                                     _hd109080109374_
                                     _tl109079109376_
                                     _e109084109379_
                                     _hd109083109382_
                                     _tl109082109384_
                                     _e109087109387_
                                     _hd109086109390_
                                     _tl109085109392_
                                     _e109090109395_
                                     _hd109089109398_
                                     _tl109088109400_
                                     _e109093109403_
                                     _hd109092109406_
                                     _tl109091109408_))
                                (___match111493111494_
                                 _e109060109315_
                                 _hd109059109318_
                                 _tl109058109320_
                                 _e109072109347_
                                 _hd109071109350_
                                 _tl109070109352_
                                 _e109075109355_
                                 _hd109074109358_
                                 _tl109073109360_
                                 _e109078109363_
                                 _hd109077109366_
                                 _tl109076109368_
                                 _e109081109371_
                                 _hd109080109374_
                                 _tl109079109376_
                                 _e109084109379_
                                 _hd109083109382_
                                 _tl109082109384_
                                 _e109087109387_
                                 _hd109086109390_
                                 _tl109085109392_
                                 _e109090109395_
                                 _hd109089109398_
                                 _tl109088109400_
                                 _e109093109403_
                                 _hd109092109406_
                                 _tl109091109408_))
                            (___kont111396111397_))))
                    (___kont111396111397_))
                (___kont111396111397_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont111396111397_))))
                                            (___kont111396111397_))))
                                    (___kont111396111397_))
                                (___kont111396111397_))))
                        (___kont111396111397_))
                    (___kont111396111397_))
                (___kont111396111397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont111396111397_))))
                                        (___kont111396111397_))
                                    (___kont111396111397_))
                                (___kont111396111397_))))
                        (___kont111396111397_))))
                (___kont111396111397_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109064109328_
                                       _target109061109323_
                                       '())))))
                               (___match111411111412_
                                (lambda (_e109012109575_
                                         _hd109011109578_
                                         _tl109010109580_
                                         ___splice111384111385_
                                         _target109013109583_
                                         _tl109015109585_)
                                  (letrec ((_loop109016109588_
                                            (lambda (_hd109014109591_
                                                     _arg109020109593_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109014109591_))
                                                  (let ((_e109017109596_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109014109591_))))
                                                    (let ((_lp-tl109019109601_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109017109596_)))
                                                          (_lp-hd109018109599_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109017109596_))))
                                                      (let ((__tmp112828
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109018109599_ _arg109020109593_))))
                (declare (not safe))
                (_loop109016109588_ _lp-tl109019109601_ __tmp112828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109021109604_
                                                         (reverse _arg109020109593_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109010109580_))
                                                        (let ((_e109024109607_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109010109580_))))
                  (let ((_tl109022109612_
                         (let () (declare (not safe)) (##cdr _e109024109607_)))
                        (_hd109023109610_
                         (let ()
                           (declare (not safe))
                           (##car _e109024109607_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109023109610_))
                        (let ((_e109027109615_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109023109610_))))
                          (let ((_tl109025109620_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109027109615_)))
                                (_hd109026109618_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109027109615_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109026109618_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109026109618_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109025109620_))
                                        (let ((_e109030109623_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109025109620_))))
                                          (let ((_tl109028109628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109030109623_)))
                                                (_hd109029109626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109030109623_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109029109626_))
                                                (let ((_e109033109631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109029109626_))))
                                                  (let ((_tl109031109636_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109033109631_)))
                                                        (_hd109032109634_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109033109631_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109032109634_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109032109634_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109031109636_))
                        (let ((_e109036109639_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109031109636_))))
                          (let ((_tl109034109644_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109036109639_)))
                                (_hd109035109642_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109036109639_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109034109644_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl109028109628_))
                                    (let ((___splice111386111387_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl109028109628_
                                              '0))))
                                      (let ((_tl109039109649_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111386111387_
                                                '1)))
                                            (_target109037109647_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111386111387_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl109039109649_))
                                            (letrec ((_loop109040109652_
                                                      (lambda (_hd109038109655_
                                                               _xarg109044109657_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd109038109655_))
                                                            (let ((_e109041109660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd109038109655_))))
                      (let ((_lp-tl109043109665_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109041109660_)))
                            (_lp-hd109042109663_
                             (let ()
                               (declare (not safe))
                               (##car _e109041109660_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd109042109663_))
                            (let ((_e109048109668_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd109042109663_))))
                              (let ((_tl109046109673_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e109048109668_)))
                                    (_hd109047109671_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e109048109668_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd109047109671_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd109047109671_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl109046109673_))
                                            (let ((_e109051109676_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl109046109673_))))
                                              (let ((_tl109049109681_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109051109676_)))
                                                    (_hd109050109679_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109051109676_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl109049109681_))
                                                    (let ((__tmp112827
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd109050109679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg109044109657_))))
              (declare (not safe))
              (_loop109040109652_ _lp-tl109043109665_ __tmp112827))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111423111424_
                                                     _e109012109575_
                                                     _hd109011109578_
                                                     _tl109010109580_
                                                     ___splice111384111385_
                                                     _target109013109583_
                                                     _tl109015109585_))))
                                            (___match111423111424_
                                             _e109012109575_
                                             _hd109011109578_
                                             _tl109010109580_
                                             ___splice111384111385_
                                             _target109013109583_
                                             _tl109015109585_))
                                        (___match111423111424_
                                         _e109012109575_
                                         _hd109011109578_
                                         _tl109010109580_
                                         ___splice111384111385_
                                         _target109013109583_
                                         _tl109015109585_))
                                    (___match111423111424_
                                     _e109012109575_
                                     _hd109011109578_
                                     _tl109010109580_
                                     ___splice111384111385_
                                     _target109013109583_
                                     _tl109015109585_))))
                            (___match111423111424_
                             _e109012109575_
                             _hd109011109578_
                             _tl109010109580_
                             ___splice111384111385_
                             _target109013109583_
                             _tl109015109585_))))
                    (let ((_xarg109045109684_ (reverse _xarg109044109657_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl109022109612_))
                          (let ((_L109687_ _xarg109045109684_)
                                (_L109688_ _hd109035109642_)
                                (_L109689_ _arg109021109604_))
                            (if (and (let ((__tmp112825
                                            (let ((__tmp112826
                                                   (lambda (_g109717109720_
                                                            _g109718109722_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109717109720_
                                                             _g109718109722_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112826
                                                      '()
                                                      _L109689_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp112825))
                                     (fx= (length (let ((__tmp112823
                                                         (lambda (_g109724109727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g109725109729_)
                   (let ()
                     (declare (not safe))
                     (cons _g109724109727_ _g109725109729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112823
                                                            '()
                                                            _L109689_)))
                                          (length (let ((__tmp112824
                                                         (lambda (_g109731109734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g109732109736_)
                   (let ()
                     (declare (not safe))
                     (cons _g109731109734_ _g109732109736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112824
                                                            '()
                                                            _L109687_))))
                                     (let ((__tmp112821
                                            (let ((__tmp112822
                                                   (lambda (_g109738109741_
                                                            _g109739109743_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109738109741_
                                                             _g109739109743_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112822
                                                      '()
                                                      _L109689_)))
                                           (__tmp112819
                                            (let ((__tmp112820
                                                   (lambda (_g109745109748_
                                                            _g109746109750_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109745109748_
                                                             _g109746109750_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112820
                                                      '()
                                                      _L109687_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp112821
                                                __tmp112819))
                                     (let ((__tmp112815
                                            (let ((__tmp112818
                                                   (lambda (_g109752109754_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g109752109754_
                                                        _L109688_))))
                                                  (__tmp112816
                                                   (let ((__tmp112817
                                                          (lambda (_g109756109759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g109757109761_)
                    (let ()
                      (declare (not safe))
                      (cons _g109756109759_ _g109757109761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp112817
                                                             '()
                                                             _L109689_))))
                                              (declare (not safe))
                                              (find __tmp112818 __tmp112816))))
                                       (declare (not safe))
                                       (not __tmp112815)))
                                (___kont111382111383_
                                 _L109687_
                                 _L109688_
                                 _L109689_)
                                (___match111423111424_
                                 _e109012109575_
                                 _hd109011109578_
                                 _tl109010109580_
                                 ___splice111384111385_
                                 _target109013109583_
                                 _tl109015109585_)))
                          (___match111423111424_
                           _e109012109575_
                           _hd109011109578_
                           _tl109010109580_
                           ___splice111384111385_
                           _target109013109583_
                           _tl109015109585_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop109040109652_
                                                 _target109037109647_
                                                 '())))
                                            (___match111423111424_
                                             _e109012109575_
                                             _hd109011109578_
                                             _tl109010109580_
                                             ___splice111384111385_
                                             _target109013109583_
                                             _tl109015109585_))))
                                    (___match111423111424_
                                     _e109012109575_
                                     _hd109011109578_
                                     _tl109010109580_
                                     ___splice111384111385_
                                     _target109013109583_
                                     _tl109015109585_))
                                (___match111423111424_
                                 _e109012109575_
                                 _hd109011109578_
                                 _tl109010109580_
                                 ___splice111384111385_
                                 _target109013109583_
                                 _tl109015109585_))))
                        (___match111423111424_
                         _e109012109575_
                         _hd109011109578_
                         _tl109010109580_
                         ___splice111384111385_
                         _target109013109583_
                         _tl109015109585_))
                    (___match111423111424_
                     _e109012109575_
                     _hd109011109578_
                     _tl109010109580_
                     ___splice111384111385_
                     _target109013109583_
                     _tl109015109585_))
                (___match111423111424_
                 _e109012109575_
                 _hd109011109578_
                 _tl109010109580_
                 ___splice111384111385_
                 _target109013109583_
                 _tl109015109585_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match111423111424_
                                                 _e109012109575_
                                                 _hd109011109578_
                                                 _tl109010109580_
                                                 ___splice111384111385_
                                                 _target109013109583_
                                                 _tl109015109585_))))
                                        (___match111423111424_
                                         _e109012109575_
                                         _hd109011109578_
                                         _tl109010109580_
                                         ___splice111384111385_
                                         _target109013109583_
                                         _tl109015109585_))
                                    (___match111423111424_
                                     _e109012109575_
                                     _hd109011109578_
                                     _tl109010109580_
                                     ___splice111384111385_
                                     _target109013109583_
                                     _tl109015109585_))
                                (___match111423111424_
                                 _e109012109575_
                                 _hd109011109578_
                                 _tl109010109580_
                                 ___splice111384111385_
                                 _target109013109583_
                                 _tl109015109585_))))
                        (___match111423111424_
                         _e109012109575_
                         _hd109011109578_
                         _tl109010109580_
                         ___splice111384111385_
                         _target109013109583_
                         _tl109015109585_))))
                (___match111423111424_
                 _e109012109575_
                 _hd109011109578_
                 _tl109010109580_
                 ___splice111384111385_
                 _target109013109583_
                 _tl109015109585_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109016109588_
                                       _target109013109583_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111380111381_))
                              (let ((_e109012109575_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111380111381_))))
                                (let ((_tl109010109580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109012109575_)))
                                      (_hd109011109578_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109012109575_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd109011109578_))
                                      (let ((___splice111384111385_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd109011109578_
                                                '0))))
                                        (let ((_tl109015109585_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111384111385_
                                                  '1)))
                                              (_target109013109583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111384111385_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109015109585_))
                                              (___match111411111412_
                                               _e109012109575_
                                               _hd109011109578_
                                               _tl109010109580_
                                               ___splice111384111385_
                                               _target109013109583_
                                               _tl109015109585_)
                                              (___match111423111424_
                                               _e109012109575_
                                               _hd109011109578_
                                               _tl109010109580_
                                               ___splice111384111385_
                                               _target109013109583_
                                               _tl109015109585_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl109010109580_))
                                          (let ((_e109127109182_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl109010109580_))))
                                            (let ((_tl109125109187_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109127109182_)))
                                                  (_hd109126109185_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109127109182_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109126109185_))
                                                  (let ((_e109130109190_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109126109185_))))
                                                    (let ((_tl109128109195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109130109190_)))
                                                          (_hd109129109193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109130109190_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd109129109193_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd109129109193_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl109128109195_))
                          (let ((_e109133109198_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl109128109195_))))
                            (let ((_tl109131109203_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109133109198_)))
                                  (_hd109132109201_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109133109198_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd109132109201_))
                                  (let ((_e109136109206_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd109132109201_))))
                                    (let ((_tl109134109211_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109136109206_)))
                                          (_hd109135109209_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109136109206_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd109135109209_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd109135109209_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl109134109211_))
                                                  (let ((_e109139109214_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl109134109211_))))
                                                    (let ((_tl109137109219_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109139109214_)))
                                                          (_hd109138109217_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109139109214_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109137109219_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109131109203_))
                      (let ((_e109142109222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109131109203_))))
                        (let ((_tl109140109227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109142109222_)))
                              (_hd109141109225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109142109222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd109141109225_))
                              (let ((_e109145109230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd109141109225_))))
                                (let ((_tl109143109235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109145109230_)))
                                      (_hd109144109233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109145109230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd109144109233_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd109144109233_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl109143109235_))
                                              (let ((_e109148109238_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl109143109235_))))
                                                (let ((_tl109146109243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109148109238_)))
                                                      (_hd109147109241_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109148109238_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109146109243_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl109140109227_))
                                                          (let ((_e109151109246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl109140109227_))))
                    (let ((_tl109149109251_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109151109246_)))
                          (_hd109150109249_
                           (let ()
                             (declare (not safe))
                             (##car _e109151109246_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd109150109249_))
                          (let ((_e109154109254_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd109150109249_))))
                            (let ((_tl109152109259_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109154109254_)))
                                  (_hd109153109257_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109154109254_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd109153109257_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd109153109257_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl109152109259_))
                                          (let ((_e109157109262_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl109152109259_))))
                                            (let ((_tl109155109267_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109157109262_)))
                                                  (_hd109156109265_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109157109262_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl109155109267_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109149109251_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109125109187_))
                                                          (___match111521111522_
                                                           _e109012109575_
                                                           _hd109011109578_
                                                           _tl109010109580_
                                                           _e109127109182_
                                                           _hd109126109185_
                                                           _tl109125109187_
                                                           _e109130109190_
                                                           _hd109129109193_
                                                           _tl109128109195_
                                                           _e109133109198_
                                                           _hd109132109201_
                                                           _tl109131109203_
                                                           _e109136109206_
                                                           _hd109135109209_
                                                           _tl109134109211_
                                                           _e109139109214_
                                                           _hd109138109217_
                                                           _tl109137109219_
                                                           _e109142109222_
                                                           _hd109141109225_
                                                           _tl109140109227_
                                                           _e109145109230_
                                                           _hd109144109233_
                                                           _tl109143109235_
                                                           _e109148109238_
                                                           _hd109147109241_
                                                           _tl109146109243_
                                                           _e109151109246_
                                                           _hd109150109249_
                                                           _tl109149109251_
                                                           _e109154109254_
                                                           _hd109153109257_
                                                           _tl109152109259_
                                                           _e109157109262_
                                                           _hd109156109265_
                                                           _tl109155109267_)
                                                          (___kont111396111397_))
                                                      (___kont111396111397_))
                                                  (___kont111396111397_))))
                                          (___kont111396111397_))
                                      (___kont111396111397_))
                                  (___kont111396111397_))))
                          (___kont111396111397_))))
                  (___kont111396111397_))
              (___kont111396111397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont111396111397_))
                                          (___kont111396111397_))
                                      (___kont111396111397_))))
                              (___kont111396111397_))))
                      (___kont111396111397_))
                  (___kont111396111397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111396111397_))
                                              (___kont111396111397_))
                                          (___kont111396111397_))))
                                  (___kont111396111397_))))
                          (___kont111396111397_))
                      (___kont111396111397_))
                  (___kont111396111397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111396111397_))))
                                          (___kont111396111397_)))))
                              (___kont111396111397_)))))))
                 (_dispatch-case-e108313_
                  (lambda (_hd108461_ _body108462_)
                    (let* ((_form108464_
                            (let ((__tmp112829
                                   (let ()
                                     (declare (not safe))
                                     (cons _body108462_ '()))))
                              (declare (not safe))
                              (cons _hd108461_ __tmp112829)))
                           (___stx111524111525_ _form108464_)
                           (_g108468108592_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111524111525_)))))
                      (let ((___kont111526111527_
                             (lambda (_L108963_ _L108964_ _L108965_)
                               (let ((__tmp112830
                                      (let ((__tmp112832
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112831
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108964_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112832 __tmp112831))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self108309_ __tmp112830))))
                            (___kont111532111533_
                             (lambda (_L108811_ _L108812_ _L108813_ _L108814_)
                               (let ((__tmp112833
                                      (let ((__tmp112835
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112834
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108811_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112835 __tmp112834))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self108309_ __tmp112833))))
                            (___kont111536111537_
                             (lambda (_L108677_ _L108678_ _L108679_)
                               (let ((__tmp112836
                                      (let ((__tmp112838
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112837
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108677_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112838 __tmp112837))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self108309_
                                  __tmp112836)))))
                        (let* ((___match111633111634_
                                (lambda (_e108560108597_
                                         _hd108559108600_
                                         _tl108558108602_
                                         _e108563108605_
                                         _hd108562108608_
                                         _tl108561108610_
                                         _e108566108613_
                                         _hd108565108616_
                                         _tl108564108618_
                                         _e108569108621_
                                         _hd108568108624_
                                         _tl108567108626_
                                         _e108572108629_
                                         _hd108571108632_
                                         _tl108570108634_
                                         _e108575108637_
                                         _hd108574108640_
                                         _tl108573108642_
                                         _e108578108645_
                                         _hd108577108648_
                                         _tl108576108650_
                                         _e108581108653_
                                         _hd108580108656_
                                         _tl108579108658_
                                         _e108584108661_
                                         _hd108583108664_
                                         _tl108582108666_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108576108650_))
                                      (let ((_e108587108669_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108576108650_))))
                                        (let ((_tl108585108674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108587108669_)))
                                              (_hd108586108672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108587108669_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108585108674_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl108561108610_))
                                                  (___kont111536111537_
                                                   _hd108583108664_
                                                   _hd108574108640_
                                                   _hd108559108600_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108468108592_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g108468108592_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108468108592_)))))
                               (___match111563111564_
                                (lambda (_e108521108715_
                                         _hd108520108718_
                                         _tl108519108720_
                                         ___splice111534111535_
                                         _target108522108723_
                                         _tl108524108725_)
                                  (letrec ((_loop108525108728_
                                            (lambda (_hd108523108731_
                                                     _arg108529108733_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108523108731_))
                                                  (let ((_e108526108736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108523108731_))))
                                                    (let ((_lp-tl108528108741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108526108736_)))
                                                          (_lp-hd108527108739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108526108736_))))
                                                      (let ((__tmp112839
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108527108739_ _arg108529108733_))))
                (declare (not safe))
                (_loop108525108728_ _lp-tl108528108741_ __tmp112839))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108530108744_
                                                         (reverse _arg108529108733_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108519108720_))
                                                        (let ((_e108533108747_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108519108720_))))
                  (let ((_tl108531108752_
                         (let () (declare (not safe)) (##cdr _e108533108747_)))
                        (_hd108532108750_
                         (let ()
                           (declare (not safe))
                           (##car _e108533108747_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108532108750_))
                        (let ((_e108536108755_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108532108750_))))
                          (let ((_tl108534108760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108536108755_)))
                                (_hd108535108758_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108536108755_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108535108758_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108535108758_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108534108760_))
                                        (let ((_e108539108763_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108534108760_))))
                                          (let ((_tl108537108768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108539108763_)))
                                                (_hd108538108766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108539108763_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108538108766_))
                                                (let ((_e108542108771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108538108766_))))
                                                  (let ((_tl108540108776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108542108771_)))
                                                        (_hd108541108774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108542108771_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108541108774_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108541108774_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108540108776_))
                        (let ((_e108545108779_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108540108776_))))
                          (let ((_tl108543108784_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108545108779_)))
                                (_hd108544108782_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108545108779_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108543108784_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl108537108768_))
                                    (let ((_e108548108787_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl108537108768_))))
                                      (let ((_tl108546108792_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e108548108787_)))
                                            (_hd108547108790_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e108548108787_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd108547108790_))
                                            (let ((_e108551108795_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd108547108790_))))
                                              (let ((_tl108549108800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108551108795_)))
                                                    (_hd108550108798_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108551108795_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd108550108798_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd108550108798_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108549108800_))
                                                            (let ((_e108554108803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108549108800_))))
                      (let ((_tl108552108808_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108554108803_)))
                            (_hd108553108806_
                             (let ()
                               (declare (not safe))
                               (##car _e108554108803_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108552108808_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108531108752_))
                                (___kont111532111533_
                                 _hd108553108806_
                                 _hd108544108782_
                                 _tl108524108725_
                                 _arg108530108744_)
                                (___match111633111634_
                                 _e108521108715_
                                 _hd108520108718_
                                 _tl108519108720_
                                 _e108533108747_
                                 _hd108532108750_
                                 _tl108531108752_
                                 _e108536108755_
                                 _hd108535108758_
                                 _tl108534108760_
                                 _e108539108763_
                                 _hd108538108766_
                                 _tl108537108768_
                                 _e108542108771_
                                 _hd108541108774_
                                 _tl108540108776_
                                 _e108545108779_
                                 _hd108544108782_
                                 _tl108543108784_
                                 _e108548108787_
                                 _hd108547108790_
                                 _tl108546108792_
                                 _e108551108795_
                                 _hd108550108798_
                                 _tl108549108800_
                                 _e108554108803_
                                 _hd108553108806_
                                 _tl108552108808_))
                            (let () (declare (not safe)) (_g108468108592_)))))
                    (let () (declare (not safe)) (_g108468108592_)))
                (let () (declare (not safe)) (_g108468108592_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108468108592_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g108468108592_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g108468108592_)))
                                (let ()
                                  (declare (not safe))
                                  (_g108468108592_)))))
                        (let () (declare (not safe)) (_g108468108592_)))
                    (let () (declare (not safe)) (_g108468108592_)))
                (let () (declare (not safe)) (_g108468108592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108468108592_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108468108592_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g108468108592_)))
                                (let ()
                                  (declare (not safe))
                                  (_g108468108592_)))))
                        (let () (declare (not safe)) (_g108468108592_)))))
                (let () (declare (not safe)) (_g108468108592_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108525108728_
                                       _target108522108723_
                                       '())))))
                               (___match111551111552_
                                (lambda (_e108475108851_
                                         _hd108474108854_
                                         _tl108473108856_
                                         ___splice111528111529_
                                         _target108476108859_
                                         _tl108478108861_)
                                  (letrec ((_loop108479108864_
                                            (lambda (_hd108477108867_
                                                     _arg108483108869_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108477108867_))
                                                  (let ((_e108480108872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108477108867_))))
                                                    (let ((_lp-tl108482108877_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108480108872_)))
                                                          (_lp-hd108481108875_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108480108872_))))
                                                      (let ((__tmp112841
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108481108875_ _arg108483108869_))))
                (declare (not safe))
                (_loop108479108864_ _lp-tl108482108877_ __tmp112841))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108484108880_
                                                         (reverse _arg108483108869_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108473108856_))
                                                        (let ((_e108487108883_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108473108856_))))
                  (let ((_tl108485108888_
                         (let () (declare (not safe)) (##cdr _e108487108883_)))
                        (_hd108486108886_
                         (let ()
                           (declare (not safe))
                           (##car _e108487108883_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108486108886_))
                        (let ((_e108490108891_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108486108886_))))
                          (let ((_tl108488108896_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108490108891_)))
                                (_hd108489108894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108490108891_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108489108894_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108489108894_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108488108896_))
                                        (let ((_e108493108899_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108488108896_))))
                                          (let ((_tl108491108904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108493108899_)))
                                                (_hd108492108902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108493108899_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108492108902_))
                                                (let ((_e108496108907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108492108902_))))
                                                  (let ((_tl108494108912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108496108907_)))
                                                        (_hd108495108910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108496108907_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108495108910_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108495108910_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108494108912_))
                        (let ((_e108499108915_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108494108912_))))
                          (let ((_tl108497108920_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108499108915_)))
                                (_hd108498108918_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108499108915_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108497108920_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl108491108904_))
                                    (let ((___splice111530111531_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl108491108904_
                                              '0))))
                                      (let ((_tl108502108925_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111530111531_
                                                '1)))
                                            (_target108500108923_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111530111531_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl108502108925_))
                                            (letrec ((_loop108503108928_
                                                      (lambda (_hd108501108931_
                                                               _xarg108507108933_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd108501108931_))
                                                            (let ((_e108504108936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd108501108931_))))
                      (let ((_lp-tl108506108941_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108504108936_)))
                            (_lp-hd108505108939_
                             (let ()
                               (declare (not safe))
                               (##car _e108504108936_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd108505108939_))
                            (let ((_e108511108944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd108505108939_))))
                              (let ((_tl108509108949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108511108944_)))
                                    (_hd108510108947_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108511108944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108510108947_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd108510108947_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108509108949_))
                                            (let ((_e108514108952_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108509108949_))))
                                              (let ((_tl108512108957_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108514108952_)))
                                                    (_hd108513108955_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108514108952_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108512108957_))
                                                    (let ((__tmp112840
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd108513108955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg108507108933_))))
              (declare (not safe))
              (_loop108503108928_ _lp-tl108506108941_ __tmp112840))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111563111564_
                                                     _e108475108851_
                                                     _hd108474108854_
                                                     _tl108473108856_
                                                     ___splice111528111529_
                                                     _target108476108859_
                                                     _tl108478108861_))))
                                            (___match111563111564_
                                             _e108475108851_
                                             _hd108474108854_
                                             _tl108473108856_
                                             ___splice111528111529_
                                             _target108476108859_
                                             _tl108478108861_))
                                        (___match111563111564_
                                         _e108475108851_
                                         _hd108474108854_
                                         _tl108473108856_
                                         ___splice111528111529_
                                         _target108476108859_
                                         _tl108478108861_))
                                    (___match111563111564_
                                     _e108475108851_
                                     _hd108474108854_
                                     _tl108473108856_
                                     ___splice111528111529_
                                     _target108476108859_
                                     _tl108478108861_))))
                            (___match111563111564_
                             _e108475108851_
                             _hd108474108854_
                             _tl108473108856_
                             ___splice111528111529_
                             _target108476108859_
                             _tl108478108861_))))
                    (let ((_xarg108508108960_ (reverse _xarg108507108933_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108485108888_))
                          (___kont111526111527_
                           _xarg108508108960_
                           _hd108498108918_
                           _arg108484108880_)
                          (___match111563111564_
                           _e108475108851_
                           _hd108474108854_
                           _tl108473108856_
                           ___splice111528111529_
                           _target108476108859_
                           _tl108478108861_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop108503108928_
                                                 _target108500108923_
                                                 '())))
                                            (___match111563111564_
                                             _e108475108851_
                                             _hd108474108854_
                                             _tl108473108856_
                                             ___splice111528111529_
                                             _target108476108859_
                                             _tl108478108861_))))
                                    (___match111563111564_
                                     _e108475108851_
                                     _hd108474108854_
                                     _tl108473108856_
                                     ___splice111528111529_
                                     _target108476108859_
                                     _tl108478108861_))
                                (___match111563111564_
                                 _e108475108851_
                                 _hd108474108854_
                                 _tl108473108856_
                                 ___splice111528111529_
                                 _target108476108859_
                                 _tl108478108861_))))
                        (___match111563111564_
                         _e108475108851_
                         _hd108474108854_
                         _tl108473108856_
                         ___splice111528111529_
                         _target108476108859_
                         _tl108478108861_))
                    (___match111563111564_
                     _e108475108851_
                     _hd108474108854_
                     _tl108473108856_
                     ___splice111528111529_
                     _target108476108859_
                     _tl108478108861_))
                (___match111563111564_
                 _e108475108851_
                 _hd108474108854_
                 _tl108473108856_
                 ___splice111528111529_
                 _target108476108859_
                 _tl108478108861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match111563111564_
                                                 _e108475108851_
                                                 _hd108474108854_
                                                 _tl108473108856_
                                                 ___splice111528111529_
                                                 _target108476108859_
                                                 _tl108478108861_))))
                                        (___match111563111564_
                                         _e108475108851_
                                         _hd108474108854_
                                         _tl108473108856_
                                         ___splice111528111529_
                                         _target108476108859_
                                         _tl108478108861_))
                                    (___match111563111564_
                                     _e108475108851_
                                     _hd108474108854_
                                     _tl108473108856_
                                     ___splice111528111529_
                                     _target108476108859_
                                     _tl108478108861_))
                                (___match111563111564_
                                 _e108475108851_
                                 _hd108474108854_
                                 _tl108473108856_
                                 ___splice111528111529_
                                 _target108476108859_
                                 _tl108478108861_))))
                        (___match111563111564_
                         _e108475108851_
                         _hd108474108854_
                         _tl108473108856_
                         ___splice111528111529_
                         _target108476108859_
                         _tl108478108861_))))
                (___match111563111564_
                 _e108475108851_
                 _hd108474108854_
                 _tl108473108856_
                 ___splice111528111529_
                 _target108476108859_
                 _tl108478108861_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108479108864_
                                       _target108476108859_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111524111525_))
                              (let ((_e108475108851_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111524111525_))))
                                (let ((_tl108473108856_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108475108851_)))
                                      (_hd108474108854_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108475108851_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd108474108854_))
                                      (let ((___splice111528111529_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd108474108854_
                                                '0))))
                                        (let ((_tl108478108861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111528111529_
                                                  '1)))
                                              (_target108476108859_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111528111529_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108478108861_))
                                              (___match111551111552_
                                               _e108475108851_
                                               _hd108474108854_
                                               _tl108473108856_
                                               ___splice111528111529_
                                               _target108476108859_
                                               _tl108478108861_)
                                              (___match111563111564_
                                               _e108475108851_
                                               _hd108474108854_
                                               _tl108473108856_
                                               ___splice111528111529_
                                               _target108476108859_
                                               _tl108478108861_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl108473108856_))
                                          (let ((_e108563108605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl108473108856_))))
                                            (let ((_tl108561108610_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e108563108605_)))
                                                  (_hd108562108608_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e108563108605_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108562108608_))
                                                  (let ((_e108566108613_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108562108608_))))
                                                    (let ((_tl108564108618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108566108613_)))
                                                          (_hd108565108616_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108566108613_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd108565108616_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd108565108616_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108564108618_))
                          (let ((_e108569108621_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108564108618_))))
                            (let ((_tl108567108626_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108569108621_)))
                                  (_hd108568108624_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108569108621_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd108568108624_))
                                  (let ((_e108572108629_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd108568108624_))))
                                    (let ((_tl108570108634_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108572108629_)))
                                          (_hd108571108632_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108572108629_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd108571108632_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd108571108632_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl108570108634_))
                                                  (let ((_e108575108637_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl108570108634_))))
                                                    (let ((_tl108573108642_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108575108637_)))
                                                          (_hd108574108640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108575108637_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl108573108642_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl108567108626_))
                      (let ((_e108578108645_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl108567108626_))))
                        (let ((_tl108576108650_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108578108645_)))
                              (_hd108577108648_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108578108645_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd108577108648_))
                              (let ((_e108581108653_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd108577108648_))))
                                (let ((_tl108579108658_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108581108653_)))
                                      (_hd108580108656_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108581108653_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd108580108656_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd108580108656_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl108579108658_))
                                              (let ((_e108584108661_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl108579108658_))))
                                                (let ((_tl108582108666_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108584108661_)))
                                                      (_hd108583108664_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108584108661_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl108582108666_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl108576108650_))
                                                          (let ((_e108587108669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl108576108650_))))
                    (let ((_tl108585108674_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108587108669_)))
                          (_hd108586108672_
                           (let ()
                             (declare (not safe))
                             (##car _e108587108669_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108585108674_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl108561108610_))
                              (___kont111536111537_
                               _hd108583108664_
                               _hd108574108640_
                               _hd108474108854_)
                              (let () (declare (not safe)) (_g108468108592_)))
                          (let () (declare (not safe)) (_g108468108592_)))))
                  (let () (declare (not safe)) (_g108468108592_)))
              (let () (declare (not safe)) (_g108468108592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108468108592_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g108468108592_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g108468108592_)))))
                              (let ()
                                (declare (not safe))
                                (_g108468108592_)))))
                      (let () (declare (not safe)) (_g108468108592_)))
                  (let () (declare (not safe)) (_g108468108592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108468108592_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g108468108592_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g108468108592_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g108468108592_)))))
                          (let () (declare (not safe)) (_g108468108592_)))
                      (let () (declare (not safe)) (_g108468108592_)))
                  (let () (declare (not safe)) (_g108468108592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108468108592_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g108468108592_))))))
                              (let ()
                                (declare (not safe))
                                (_g108468108592_))))))))
                 (_generate1108314_
                  (lambda (_args108449_ _arglen108450_ _hd108451_ _body108452_)
                    (let* ((_len108454_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd108451_)))
                           (_condition108456_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd108451_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp112856
                                           (let ((__tmp112857
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len108454_ '()))))
                                             (declare (not safe))
                                             (cons _arglen108450_
                                                   __tmp112857))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp112856))
                                    (let ((__tmp112850
                                           (let ((__tmp112851
                                                  (let ((__tmp112852
                                                         (let ((__tmp112853
                                                                (let ((__tmp112854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112855
                                      (let ()
                                        (declare (not safe))
                                        (cons _len108454_ '()))))
                                 (declare (not safe))
                                 (cons _arglen108450_ __tmp112855))))
                          (declare (not safe))
                          (cons '##fx= __tmp112854))))
                   (declare (not safe))
                   (cons __tmp112853 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp112852))))
                                             (declare (not safe))
                                             (cons '() __tmp112851))))
                                      (declare (not safe))
                                      (cons 'let __tmp112850)))
                                (if (> _len108454_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp112848
                                               (let ((__tmp112849
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len108454_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen108450_
                                                       __tmp112849))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp112848))
                                        (let ((__tmp112842
                                               (let ((__tmp112843
                                                      (let ((__tmp112844
                                                             (let ((__tmp112845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112846
                                   (let ((__tmp112847
                                          (let ()
                                            (declare (not safe))
                                            (cons _len108454_ '()))))
                                     (declare (not safe))
                                     (cons _arglen108450_ __tmp112847))))
                              (declare (not safe))
                              (cons '##fx>= __tmp112846))))
                       (declare (not safe))
                       (cons __tmp112845 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp112844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp112843))))
                                          (declare (not safe))
                                          (cons 'let __tmp112842)))
                                    '#t)))
                           (_dispatch108458_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?108312_
                                   _hd108451_
                                   _body108452_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e108313_
                                   _hd108451_
                                   _body108452_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self108309_
                                   _hd108451_
                                   _body108452_)))))
                      (let ((__tmp112858
                             (let ((__tmp112859
                                    (let ((__tmp112860
                                           (let ((__tmp112861
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args108449_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch108458_
                                                   __tmp112861))))
                                      (declare (not safe))
                                      (cons 'apply __tmp112860))))
                               (declare (not safe))
                               (cons __tmp112859 '()))))
                        (declare (not safe))
                        (cons _condition108456_ __tmp112858))))))
          (let* ((_g108316108344_
                  (lambda (_g108317108341_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108317108341_))))
                 (_g108315108446_
                  (lambda (_g108317108347_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108317108347_))
                        (let ((_e108322108349_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108317108347_))))
                          (let ((_hd108321108352_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108322108349_)))
                                (_tl108320108354_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108322108349_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl108320108354_))
                                (let ((_g112862_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl108320108354_
                                          '0))))
                                  (begin
                                    (let ((_g112863_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g112862_)
                                                 (##vector-length _g112862_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g112863_ 2)))
                                          (error "Context expects 2 values"
                                                 _g112863_)))
                                    (let ((_target108323108357_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g112862_ 0)))
                                          (_tl108325108359_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g112862_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108325108359_))
                                          (letrec ((_loop108326108362_
                                                    (lambda (_hd108324108365_
                                                             _body108330108367_
                                                             _hd108331108369_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd108324108365_))
                                                          (let ((_e108327108372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd108324108365_))))
                    (let ((_lp-hd108328108375_
                           (let ()
                             (declare (not safe))
                             (##car _e108327108372_)))
                          (_lp-tl108329108377_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108327108372_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd108328108375_))
                          (let ((_e108336108380_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd108328108375_))))
                            (let ((_hd108335108383_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108336108380_)))
                                  (_tl108334108385_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108336108380_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl108334108385_))
                                  (let ((_e108339108388_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl108334108385_))))
                                    (let ((_hd108338108391_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108339108388_)))
                                          (_tl108337108393_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108339108388_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108337108393_))
                                          (let ((__tmp112892
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd108338108391_
                                                         _body108330108367_)))
                                                (__tmp112891
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd108335108383_
                                                         _hd108331108369_))))
                                            (declare (not safe))
                                            (_loop108326108362_
                                             _lp-tl108329108377_
                                             __tmp112892
                                             __tmp112891))
                                          (let ()
                                            (declare (not safe))
                                            (_g108316108344_
                                             _g108317108347_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g108316108344_ _g108317108347_)))))
                          (let ()
                            (declare (not safe))
                            (_g108316108344_ _g108317108347_)))))
                  (let ((_body108332108396_ (reverse _body108330108367_))
                        (_hd108333108398_ (reverse _hd108331108369_)))
                    ((lambda (_L108401_ _L108402_)
                       (let ((_args108421_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen108422_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name108423_
                              (let ((_$e108418_
                                     (let ((__tmp112864
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp112864 _stx108310_))))
                                (if _$e108418_
                                    _$e108418_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp112865
                                (let ((__tmp112866
                                       (let ((__tmp112867
                                              (let ((__tmp112868
                                                     (let ((__tmp112881
                                                            (let ((__tmp112882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112883
                                  (let ((__tmp112884
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp112890
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108421_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp112890))
                                             (let ((__tmp112885
                                                    (let ((__tmp112886
                                                           (let ((__tmp112887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112888
                                 (let ((__tmp112889
                                        (let ()
                                          (declare (not safe))
                                          (cons _args108421_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp112889))))
                            (declare (not safe))
                            (cons __tmp112888 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp112887))))
              (declare (not safe))
              (cons '() __tmp112886))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp112885)))))
                                    (declare (not safe))
                                    (cons __tmp112884 '()))))
                             (declare (not safe))
                             (cons _arglen108422_ __tmp112883))))
                      (declare (not safe))
                      (cons __tmp112882 '())))
                   (__tmp112869
                    (let ((__tmp112870
                           (let ((__tmp112871
                                  (let ((__tmp112875
                                         (let ((__tmp112876
                                                (let ((__tmp112877
                                                       (let ((__tmp112878
                                                              (let ((__tmp112879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp112880
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108421_ '()))))
                               (declare (not safe))
                               (cons _name108423_ __tmp112880))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp112879))))
                 (declare (not safe))
                 (cons __tmp112878 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp112877))))
                                           (declare (not safe))
                                           (cons __tmp112876 '())))
                                        (__tmp112872
                                         (map (lambda (_g108424108427_
                                                       _g108425108429_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1108314_
                                                   _args108421_
                                                   _arglen108422_
                                                   _g108424108427_
                                                   _g108425108429_)))
                                              (let ((__tmp112873
                                                     (lambda (_g108431108434_
                                                              _g108432108436_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108431108434_
                                                               _g108432108436_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112873
                                                        '()
                                                        _L108402_))
                                              (let ((__tmp112874
                                                     (lambda (_g108438108441_
                                                              _g108439108443_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108438108441_
                                                               _g108439108443_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112874
                                                        '()
                                                        _L108401_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp112875 __tmp112872))))
                             (declare (not safe))
                             (cons 'cond __tmp112871))))
                      (declare (not safe))
                      (cons __tmp112870 '()))))
               (declare (not safe))
               (cons __tmp112881 __tmp112869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp112868))))
                                         (declare (not safe))
                                         (cons __tmp112867 '()))))
                                  (declare (not safe))
                                  (cons _args108421_ __tmp112866))))
                           (declare (not safe))
                           (cons 'lambda __tmp112865))))
                     _body108332108396_
                     _hd108333108398_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop108326108362_
                                               _target108323108357_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g108316108344_
                                             _g108317108347_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g108316108344_ _g108317108347_)))))
                        (let ()
                          (declare (not safe))
                          (_g108316108344_ _g108317108347_))))))
            (declare (not safe))
            (_g108315108446_ _stx108310_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self107580_ _stx107581_ _compiled-body?107582_)
        (letrec ((_generate-simple107584_
                  (lambda (_hd108294_ _body108295_)
                    (let ((__tmp112893
                           (let ((__tmp112894
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self107580_
                                     'let
                                     _hd108294_
                                     _body108295_
                                     _compiled-body?107582_))))
                             (declare (not safe))
                             (_coalesce-let*107586_ __tmp112894))))
                      (declare (not safe))
                      (_coalesce-boolean107585_ __tmp112893))))
                 (_coalesce-boolean107585_
                  (lambda (_code108155_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code108156108182_ _code108155_)
                               (_else108158108190_ (lambda () _code108155_))
                               (_K108160108227_
                                (lambda (_expr2108193_
                                         _expr1108194_
                                         _id108195_)
                                  (let* ((_expr2108196108204_ _expr2108193_)
                                         (_else108198108212_
                                          (lambda ()
                                            (let ((__tmp112895
                                                   (let ((__tmp112896
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2108193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1108194_
                                                           __tmp112896))))
                                              (declare (not safe))
                                              (cons 'or __tmp112895))))
                                         (_K108200108217_
                                          (lambda (_exprs108215_)
                                            (let ((__tmp112897
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1108194_
                                                           _exprs108215_))))
                                              (declare (not safe))
                                              (cons 'or __tmp112897)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2108196108204_))
                                        (let ((_hd108201108220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2108196108204_)))
                                              (_tl108202108222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2108196108204_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd108201108220_ 'or))
                                              (let ((_exprs108225_
                                                     _tl108202108222_))
                                                (declare (not safe))
                                                (_K108200108217_
                                                 _exprs108225_))
                                              (let ()
                                                (declare (not safe))
                                                (_else108198108212_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else108198108212_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code108156108182_))
                              (let ((_hd108161108230_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code108156108182_)))
                                    (_tl108162108232_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code108156108182_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd108161108230_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl108162108232_))
                                        (let ((_hd108163108235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl108162108232_)))
                                              (_tl108164108237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl108162108232_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd108163108235_))
                                              (let ((_hd108175108240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd108163108235_)))
                                                    (_tl108176108242_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd108163108235_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd108175108240_))
                                                    (let ((_hd108177108245_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd108175108240_)))
                                                          (_tl108178108247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd108175108240_))))
                                                      (let ((_id108250_
                                                             _hd108177108245_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl108178108247_))
                                                            (let ((_hd108179108252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl108178108247_)))
                          (_tl108180108254_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl108178108247_))))
                      (let ((_expr1108257_ _hd108179108252_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl108180108254_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl108176108242_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl108164108237_))
                                    (let ((_hd108165108259_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl108164108237_)))
                                          (_tl108166108261_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl108164108237_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd108165108259_))
                                          (let ((_hd108167108264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd108165108259_)))
                                                (_tl108168108266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd108165108259_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd108167108264_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl108168108266_))
                                                    (let ((_hd108169108269_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl108168108266_)))
                                                          (_tl108170108271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl108168108266_))))
                                                      (if ((lambda (_g108273108275_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g108273108275_ _id108250_)))
                   _hd108169108269_)
                  (if (let () (declare (not safe)) (##pair? _tl108170108271_))
                      (let ((_hd108171108278_
                             (let ()
                               (declare (not safe))
                               (##car _tl108170108271_)))
                            (_tl108172108280_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl108170108271_))))
                        (if ((lambda (_g108282108284_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g108282108284_ _id108250_)))
                             _hd108171108278_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl108172108280_))
                                (let ((_hd108173108287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl108172108280_)))
                                      (_tl108174108289_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl108172108280_))))
                                  (let ((_expr2108292_ _hd108173108287_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108174108289_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl108166108261_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108160108227_
                                               _expr2108292_
                                               _expr1108257_
                                               _id108250_))
                                            (let ()
                                              (declare (not safe))
                                              (_else108158108190_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else108158108190_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else108158108190_)))
                            (let ()
                              (declare (not safe))
                              (_else108158108190_))))
                      (let () (declare (not safe)) (_else108158108190_)))
                  (let () (declare (not safe)) (_else108158108190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else108158108190_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108158108190_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108158108190_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else108158108190_)))
                                (let ()
                                  (declare (not safe))
                                  (_else108158108190_)))
                            (let ()
                              (declare (not safe))
                              (_else108158108190_)))))
                    (let () (declare (not safe)) (_else108158108190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else108158108190_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else108158108190_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else108158108190_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else108158108190_))))
                              (let ()
                                (declare (not safe))
                                (_else108158108190_))))
                        _code108155_)))
                 (_coalesce-let*107586_
                  (lambda (_code107888_)
                    (let* ((_code107889107953_ _code107888_)
                           (_else107893107961_ (lambda () _code107888_)))
                      (let ((_K107935108106_
                             (lambda (_body108102_ _expr108103_ _id108104_)
                               (let ((__tmp112898
                                      (let ((__tmp112899
                                             (let ((__tmp112900
                                                    (let ((__tmp112901
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr108103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id108104_ __tmp112901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112900 '()))))
                                        (declare (not safe))
                                        (cons __tmp112899 _body108102_))))
                                 (declare (not safe))
                                 (cons 'let __tmp112898))))
                            (_K107912108031_
                             (lambda (_body108025_
                                      _expr2108026_
                                      _id2108027_
                                      _expr1108028_
                                      _id1108029_)
                               (let ((__tmp112902
                                      (let ((__tmp112903
                                             (let ((__tmp112907
                                                    (let ((__tmp112908
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1108028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1108029_ __tmp112908)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp112904
                                                    (let ((__tmp112905
                                                           (let ((__tmp112906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2108026_ '()))))
                     (declare (not safe))
                     (cons _id2108027_ __tmp112906))))
              (declare (not safe))
              (cons __tmp112905 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112907
                                                     __tmp112904))))
                                        (declare (not safe))
                                        (cons __tmp112903 _body108025_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp112902))))
                            (_K107895107970_
                             (lambda (_body107965_
                                      _bind107966_
                                      _expr1107967_
                                      _id1107968_)
                               (let ((__tmp112909
                                      (let ((__tmp112910
                                             (let ((__tmp112911
                                                    (let ((__tmp112912
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1107967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1107968_ __tmp112912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112911
                                                     _bind107966_))))
                                        (declare (not safe))
                                        (cons __tmp112910 _body107965_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp112909)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code107889107953_))
                            (let ((_tl107937108111_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code107889107953_)))
                                  (_hd107936108109_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code107889107953_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107936108109_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107937108111_))
                                      (let ((_tl107939108116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107937108111_)))
                                            (_hd107938108114_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107937108111_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd107938108114_))
                                            (let ((_tl107947108121_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd107938108114_)))
                                                  (_hd107946108119_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd107938108114_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd107946108119_))
                                                  (let ((_tl107949108126_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd107946108119_)))
                                                        (_hd107948108124_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd107946108119_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl107949108126_))
                                                        (let ((_tl107951108133_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl107949108126_)))
                      (_hd107950108131_
                       (let () (declare (not safe)) (##car _tl107949108126_))))
                  (if (let () (declare (not safe)) (##null? _tl107951108133_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl107947108121_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl107939108116_))
                              (let ((_tl107941108140_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl107939108116_)))
                                    (_hd107940108138_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl107939108116_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107940108138_))
                                    (let ((_tl107943108145_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107940108138_)))
                                          (_hd107942108143_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107940108138_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107942108143_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl107943108145_))
                                              (let ((_tl107945108150_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl107943108145_)))
                                                    (_hd107944108148_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl107943108145_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd107944108148_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl107941108140_))
                                                        (let ((_id108129_
                                                               _hd107948108124_)
                                                              (_expr108136_
                                                               _hd107950108131_)
                                                              (_body108153_
                                                               _tl107945108150_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K107935108106_
                                                             _body108153_
                                                             _expr108136_
                                                             _id108129_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else107893107961_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd107944108148_))
                                                        (let ((_tl107924108080_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd107944108148_)))
                      (_hd107923108078_
                       (let () (declare (not safe)) (##car _hd107944108148_))))
                  (if (let () (declare (not safe)) (##pair? _hd107923108078_))
                      (let ((_tl107926108085_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd107923108078_)))
                            (_hd107925108083_
                             (let ()
                               (declare (not safe))
                               (##car _hd107923108078_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107926108085_))
                            (let ((_tl107928108092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107926108085_)))
                                  (_hd107927108090_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107926108085_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107928108092_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107924108080_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107941108140_))
                                          (let ((_id1108054_ _hd107948108124_)
                                                (_expr1108061_
                                                 _hd107950108131_)
                                                (_id2108088_ _hd107925108083_)
                                                (_expr2108095_
                                                 _hd107927108090_)
                                                (_body108097_
                                                 _tl107945108150_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107912108031_
                                               _body108097_
                                               _expr2108095_
                                               _id2108088_
                                               _expr1108061_
                                               _id1108054_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107893107961_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107893107961_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107893107961_))))
                            (let ()
                              (declare (not safe))
                              (_else107893107961_))))
                      (let () (declare (not safe)) (_else107893107961_))))
                (let () (declare (not safe)) (_else107893107961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else107893107961_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd107942108143_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl107943108145_))
                                                  (let ((_tl107905108014_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl107943108145_)))
                                                        (_hd107904108012_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl107943108145_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl107941108140_))
                                                        (let ((_id1107993_
                                                               _hd107948108124_)
                                                              (_expr1108000_
                                                               _hd107950108131_)
                                                              (_bind108017_
                                                               _hd107904108012_)
                                                              (_body108019_
                                                               _tl107905108014_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K107895107970_
                                                             _body108019_
                                                             _bind108017_
                                                             _expr1108000_
                                                             _id1107993_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else107893107961_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else107893107961_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else107893107961_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107893107961_))))
                              (let ()
                                (declare (not safe))
                                (_else107893107961_)))
                          (let () (declare (not safe)) (_else107893107961_)))
                      (let () (declare (not safe)) (_else107893107961_))))
                (let () (declare (not safe)) (_else107893107961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else107893107961_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107893107961_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else107893107961_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107893107961_))))
                            (let ()
                              (declare (not safe))
                              (_else107893107961_)))))))
                 (_generate-values107587_
                  (lambda (_hd107701_ _body107702_)
                    (let _lp107704_ ((_rest107706_ _hd107701_)
                                     (_bind107707_ '())
                                     (_check107708_ '())
                                     (_post107709_ '()))
                      (let* ((___stx111835111836_ _rest107706_)
                             (_g107712107723_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111835111836_)))))
                        (let ((___kont111837111838_
                               (lambda (_L107750_ _L107751_)
                                 (let* ((___stx111791111792_ _L107751_)
                                        (_g107766107791_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx111791111792_)))))
                                   (let ((___kont111793111794_
                                          (lambda (_L107864_ _L107865_)
                                            (let ((_eid107879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L107865_)))
                                                  (_expr107880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107580_
                                                      _L107864_))))
                                              (let ((__tmp112913
                                                     (let ((__tmp112914
                                                            (let ((__tmp112915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107880_ '()))))
                      (declare (not safe))
                      (cons _eid107879_ __tmp112915))))
               (declare (not safe))
               (cons __tmp112914 _bind107707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp107704_
                                                 _L107750_
                                                 __tmp112913
                                                 _check107708_
                                                 _post107709_)))))
                                         (___kont111795111796_
                                          (lambda (_L107812_ _L107813_)
                                            (let* ((_vals107826_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values107828_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals107826_
                                                       _L107813_
                                                       _L107812_)))
                                                   (_refs107830_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals107826_
                                                       _L107813_)))
                                                   (_expr107832_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self107580_
                                                       _L107812_))))
                                              (let ((__tmp112918
                                                     (let ((__tmp112919
                                                            (let ((__tmp112920
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107832_ '()))))
                      (declare (not safe))
                      (cons _vals107826_ __tmp112920))))
               (declare (not safe))
               (cons __tmp112919 _bind107707_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp112917
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values107828_
                                                             _check107708_)))
                                                    (__tmp112916
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs107830_
                                                             _post107709_))))
                                                (declare (not safe))
                                                (_lp107704_
                                                 _L107750_
                                                 __tmp112918
                                                 __tmp112917
                                                 __tmp112916))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx111791111792_))
                                         (let ((_e107772107840_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx111791111792_))))
                                           (let ((_tl107770107845_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107772107840_)))
                                                 (_hd107771107843_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107772107840_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd107771107843_))
                                                 (let ((_e107775107848_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd107771107843_))))
                                                   (let ((_tl107773107853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107775107848_)))
                                                         (_hd107774107851_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107775107848_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107773107853_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107770107845_))
                     (let ((_e107778107856_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107770107845_))))
                       (let ((_tl107776107861_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107778107856_)))
                             (_hd107777107859_
                              (let ()
                                (declare (not safe))
                                (##car _e107778107856_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107776107861_))
                             (___kont111793111794_
                              _hd107777107859_
                              _hd107774107851_)
                             (let () (declare (not safe)) (_g107766107791_)))))
                     (let () (declare (not safe)) (_g107766107791_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl107770107845_))
                     (let ((_e107786107804_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107770107845_))))
                       (let ((_tl107784107809_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107786107804_)))
                             (_hd107785107807_
                              (let ()
                                (declare (not safe))
                                (##car _e107786107804_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107784107809_))
                             (___kont111795111796_
                              _hd107785107807_
                              _hd107771107843_)
                             (let () (declare (not safe)) (_g107766107791_)))))
                     (let () (declare (not safe)) (_g107766107791_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107770107845_))
                                                     (let ((_e107786107804_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107770107845_))))
                                                       (let ((_tl107784107809_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107786107804_)))
                     (_hd107785107807_
                      (let () (declare (not safe)) (##car _e107786107804_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107784107809_))
                     (___kont111795111796_ _hd107785107807_ _hd107771107843_)
                     (let () (declare (not safe)) (_g107766107791_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g107766107791_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g107766107791_)))))))
                              (___kont111839111840_
                               (lambda ()
                                 (let* ((_body107730_
                                         (if _compiled-body?107582_
                                             _body107702_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self107580_
                                                _body107702_))))
                                        (_body107732_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post107588_
                                            _post107709_
                                            _body107730_)))
                                        (_body107734_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check107589_
                                            _check107708_
                                            _body107732_))))
                                   (let ((__tmp112921
                                          (let ((__tmp112923
                                                 (reverse _bind107707_))
                                                (__tmp112922
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body107734_ '()))))
                                            (declare (not safe))
                                            (cons __tmp112923 __tmp112922))))
                                     (declare (not safe))
                                     (cons 'let __tmp112921))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111835111836_))
                              (let ((_e107718107742_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111835111836_))))
                                (let ((_tl107716107747_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107718107742_)))
                                      (_hd107717107745_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107718107742_))))
                                  (___kont111837111838_
                                   _tl107716107747_
                                   _hd107717107745_)))
                              (___kont111839111840_)))))))
                 (_generate-values-post107588_
                  (lambda (_post107660_ _body107661_)
                    (let _lp107663_ ((_rest107665_ _post107660_)
                                     (_body107666_ _body107661_))
                      (let* ((_rest107667107675_ _rest107665_)
                             (_else107669107683_ (lambda () _body107666_))
                             (_K107671107689_
                              (lambda (_rest107686_ _bind107687_)
                                (let ((__tmp112924
                                       (let ((__tmp112925
                                              (let ((__tmp112926
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body107666_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind107687_
                                                      __tmp112926))))
                                         (declare (not safe))
                                         (cons 'let __tmp112925))))
                                  (declare (not safe))
                                  (_lp107663_ _rest107686_ __tmp112924)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107667107675_))
                            (let ((_hd107672107692_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107667107675_)))
                                  (_tl107673107694_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107667107675_))))
                              (let* ((_bind107697_ _hd107672107692_)
                                     (_rest107699_ _tl107673107694_))
                                (declare (not safe))
                                (_K107671107689_ _rest107699_ _bind107697_)))
                            (let ()
                              (declare (not safe))
                              (_else107669107683_)))))))
                 (_generate-values-check107589_
                  (lambda (_check107657_ _body107658_)
                    (let ((__tmp112927
                           (let ((__tmp112929
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107658_ '())))
                                 (__tmp112928 (reverse _check107657_)))
                             (declare (not safe))
                             (foldr1 cons __tmp112929 __tmp112928))))
                      (declare (not safe))
                      (cons 'begin __tmp112927)))))
          (let* ((_g107591107608_
                  (lambda (_g107592107605_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107592107605_))))
                 (_g107590107654_
                  (lambda (_g107592107611_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107592107611_))
                        (let ((_e107597107613_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107592107611_))))
                          (let ((_hd107596107616_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107597107613_)))
                                (_tl107595107618_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107597107613_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107595107618_))
                                (let ((_e107600107621_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107595107618_))))
                                  (let ((_hd107599107624_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107600107621_)))
                                        (_tl107598107626_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107600107621_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107598107626_))
                                        (let ((_e107603107629_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107598107626_))))
                                          (let ((_hd107602107632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107603107629_)))
                                                (_tl107601107634_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107603107629_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107601107634_))
                                                ((lambda (_L107637_ _L107638_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L107638_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple107584_
                                                          _L107638_
                                                          _L107637_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values107587_
                                                          _L107638_
                                                          _L107637_))))
                                                 _hd107602107632_
                                                 _hd107599107624_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107591107608_
                                                   _g107592107611_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107591107608_ _g107592107611_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107591107608_ _g107592107611_)))))
                        (let ()
                          (declare (not safe))
                          (_g107591107608_ _g107592107611_))))))
            (declare (not safe))
            (_g107590107654_ _stx107581_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self108300_ _stx108301_)
        (let ((_compiled-body?108303_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self108300_
           _stx108301_
           _compiled-body?108303_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g112931_
        (let ((_g112930_ (let () (declare (not safe)) (##length _g112931_))))
          (cond ((let () (declare (not safe)) (##fx= _g112930_ 2))
                 (apply (lambda (_self108300_ _stx108301_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self108300_
                             _stx108301_)))
                        _g112931_))
                ((let () (declare (not safe)) (##fx= _g112930_ 3))
                 (apply (lambda (_self108305_
                                 _stx108306_
                                 _compiled-body?108307_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self108305_
                             _stx108306_
                             _compiled-body?108307_)))
                        _g112931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g112931_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals107474_ _hd107475_)
        (let _lp107477_ ((_rest107479_ _hd107475_)
                         (_k107480_ '0)
                         (_r107481_ '()))
          (let* ((___stx111849111850_ _rest107479_)
                 (_g107486107503_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx111849111850_)))))
            (let ((___kont111851111852_
                   (lambda (_L107566_)
                     (let ((__tmp112932
                            (let () (declare (not safe)) (fx+ _k107480_ '1))))
                       (declare (not safe))
                       (_lp107477_ _L107566_ __tmp112932 _r107481_))))
                  (___kont111853111854_
                   (lambda (_L107539_ _L107540_)
                     (let ((__tmp112938
                            (let () (declare (not safe)) (fx+ _k107480_ '1)))
                           (__tmp112933
                            (let ((__tmp112934
                                   (let ((__tmp112937
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L107540_)))
                                         (__tmp112935
                                          (let ((__tmp112936
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals107474_
                                                    _k107480_
                                                    _L107539_))))
                                            (declare (not safe))
                                            (cons __tmp112936 '()))))
                                     (declare (not safe))
                                     (cons __tmp112937 __tmp112935))))
                              (declare (not safe))
                              (cons __tmp112934 _r107481_))))
                       (declare (not safe))
                       (_lp107477_ _L107539_ __tmp112938 __tmp112933))))
                  (___kont111855111856_
                   (lambda (_L107515_)
                     (let ((__tmp112939
                            (let ((__tmp112940
                                   (let ((__tmp112943
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L107515_)))
                                         (__tmp112941
                                          (let ((__tmp112942
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals107474_
                                                    _k107480_))))
                                            (declare (not safe))
                                            (cons __tmp112942 '()))))
                                     (declare (not safe))
                                     (cons __tmp112943 __tmp112941))))
                              (declare (not safe))
                              (cons __tmp112940 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp112939 _r107481_))))
                  (___kont111857111858_ (lambda () (reverse _r107481_))))
              (let ((_g107484107526_
                     (lambda ()
                       (let ((_L107515_ ___stx111849111850_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L107515_))
                             (___kont111855111856_ _L107515_)
                             (___kont111857111858_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx111849111850_))
                    (let ((_e107491107555_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx111849111850_))))
                      (let ((_tl107489107560_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107491107555_)))
                            (_hd107490107558_
                             (let ()
                               (declare (not safe))
                               (##car _e107491107555_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd107490107558_))
                            (let ((_e107492107563_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd107490107558_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e107492107563_ '#f))
                                  (___kont111851111852_ _tl107489107560_)
                                  (___kont111853111854_
                                   _tl107489107560_
                                   _hd107490107558_)))
                            (___kont111853111854_
                             _tl107489107560_
                             _hd107490107558_))))
                    (let () (declare (not safe)) (_g107484107526_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self107153_ _stx107154_ _compiled-body?107155_)
        (letrec ((_generate-simple107157_
                  (lambda (_hd107459_ _body107460_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self107153_
                       'letrec
                       _hd107459_
                       _body107460_
                       _compiled-body?107155_))))
                 (_generate-values107158_
                  (lambda (_hd107238_ _body107239_)
                    (let _lp107241_ ((_rest107243_ _hd107238_)
                                     (_bind107244_ '())
                                     (_check107245_ '())
                                     (_post107246_ '()))
                      (let* ((___stx111923111924_ _rest107243_)
                             (_g107249107260_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111923111924_)))))
                        (let ((___kont111925111926_
                               (lambda (_L107287_ _L107288_)
                                 (let* ((___stx111879111880_ _L107288_)
                                        (_g107303107328_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx111879111880_)))))
                                   (let ((___kont111881111882_
                                          (lambda (_L107435_ _L107436_)
                                            (let ((_eid107450_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L107436_)))
                                                  (_expr107451_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107153_
                                                      _L107435_))))
                                              (let ((__tmp112944
                                                     (let ((__tmp112945
                                                            (let ((__tmp112946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107451_ '()))))
                      (declare (not safe))
                      (cons _eid107450_ __tmp112946))))
               (declare (not safe))
               (cons __tmp112945 _bind107244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp107241_
                                                 _L107287_
                                                 __tmp112944
                                                 _check107245_
                                                 _post107246_)))))
                                         (___kont111883111884_
                                          (lambda (_L107349_ _L107350_)
                                            (let* ((_vals107363_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values107365_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals107363_
                                                       _L107350_
                                                       _L107349_)))
                                                   (_refs107367_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals107363_
                                                       _L107350_)))
                                                   (_expr107369_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self107153_
                                                       _L107349_))))
                                              (let ((__tmp112949
                                                     (let ((__tmp112952
                                                            (let ((__tmp112953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112954
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr107369_ '()))))
                             (declare (not safe))
                             (cons _vals107363_ __tmp112954))))
                      (declare (not safe))
                      (cons __tmp112953 _bind107244_)))
                   (__tmp112950
                    (map (lambda (_e107371107373_)
                           (let* ((_g107375107384_ _e107371107373_)
                                  (_E107377107388_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g107375107384_))))
                                  (_K107378107393_
                                   (lambda (_eid107391_)
                                     (let ((__tmp112951
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid107391_ __tmp112951)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g107375107384_))
                                 (let ((_hd107379107396_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g107375107384_)))
                                       (_tl107380107398_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g107375107384_))))
                                   (let ((_eid107401_ _hd107379107396_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl107380107398_))
                                         (let ((_tl107382107403_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl107380107398_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl107382107403_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K107378107393_ _eid107401_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E107377107388_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E107377107388_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E107377107388_)))))
                         _refs107367_)))
               (declare (not safe))
               (foldl1 cons __tmp112952 __tmp112950)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp112948
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values107365_
                                                             _check107245_)))
                                                    (__tmp112947
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs107367_
                                                               _post107246_))))
                                                (declare (not safe))
                                                (_lp107241_
                                                 _L107287_
                                                 __tmp112949
                                                 __tmp112948
                                                 __tmp112947))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx111879111880_))
                                         (let ((_e107309107411_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx111879111880_))))
                                           (let ((_tl107307107416_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107309107411_)))
                                                 (_hd107308107414_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107309107411_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd107308107414_))
                                                 (let ((_e107312107419_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd107308107414_))))
                                                   (let ((_tl107310107424_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107312107419_)))
                                                         (_hd107311107422_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107312107419_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107310107424_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107307107416_))
                     (let ((_e107315107427_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107307107416_))))
                       (let ((_tl107313107432_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107315107427_)))
                             (_hd107314107430_
                              (let ()
                                (declare (not safe))
                                (##car _e107315107427_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107313107432_))
                             (___kont111881111882_
                              _hd107314107430_
                              _hd107311107422_)
                             (let () (declare (not safe)) (_g107303107328_)))))
                     (let () (declare (not safe)) (_g107303107328_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl107307107416_))
                     (let ((_e107323107341_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107307107416_))))
                       (let ((_tl107321107346_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107323107341_)))
                             (_hd107322107344_
                              (let ()
                                (declare (not safe))
                                (##car _e107323107341_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107321107346_))
                             (___kont111883111884_
                              _hd107322107344_
                              _hd107308107414_)
                             (let () (declare (not safe)) (_g107303107328_)))))
                     (let () (declare (not safe)) (_g107303107328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107307107416_))
                                                     (let ((_e107323107341_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107307107416_))))
                                                       (let ((_tl107321107346_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107323107341_)))
                     (_hd107322107344_
                      (let () (declare (not safe)) (##car _e107323107341_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107321107346_))
                     (___kont111883111884_ _hd107322107344_ _hd107308107414_)
                     (let () (declare (not safe)) (_g107303107328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g107303107328_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g107303107328_)))))))
                              (___kont111927111928_
                               (lambda ()
                                 (let* ((_body107267_
                                         (if _compiled-body?107155_
                                             _body107239_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self107153_
                                                _body107239_))))
                                        (_body107269_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post107160_
                                            _post107246_
                                            _body107267_)))
                                        (_body107271_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check107159_
                                            _check107245_
                                            _body107269_))))
                                   (let ((__tmp112955
                                          (let ((__tmp112957
                                                 (reverse _bind107244_))
                                                (__tmp112956
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body107271_ '()))))
                                            (declare (not safe))
                                            (cons __tmp112957 __tmp112956))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp112955))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111923111924_))
                              (let ((_e107255107279_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111923111924_))))
                                (let ((_tl107253107284_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107255107279_)))
                                      (_hd107254107282_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107255107279_))))
                                  (___kont111925111926_
                                   _tl107253107284_
                                   _hd107254107282_)))
                              (___kont111927111928_)))))))
                 (_generate-values-check107159_
                  (lambda (_check107235_ _body107236_)
                    (let ((__tmp112958
                           (let ((__tmp112960
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107236_ '())))
                                 (__tmp112959 (reverse _check107235_)))
                             (declare (not safe))
                             (foldr1 cons __tmp112960 __tmp112959))))
                      (declare (not safe))
                      (cons 'begin __tmp112958))))
                 (_generate-values-post107160_
                  (lambda (_post107228_ _body107229_)
                    (let ((__tmp112961
                           (let ((__tmp112963
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107229_ '())))
                                 (__tmp112962
                                  (map (lambda (_g107230107232_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g107230107232_)))
                                       (reverse _post107228_))))
                             (declare (not safe))
                             (foldr1 cons __tmp112963 __tmp112962))))
                      (declare (not safe))
                      (cons 'begin __tmp112961)))))
          (let* ((_g107162107179_
                  (lambda (_g107163107176_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107163107176_))))
                 (_g107161107225_
                  (lambda (_g107163107182_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107163107182_))
                        (let ((_e107168107184_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107163107182_))))
                          (let ((_hd107167107187_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107168107184_)))
                                (_tl107166107189_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107168107184_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107166107189_))
                                (let ((_e107171107192_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107166107189_))))
                                  (let ((_hd107170107195_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107171107192_)))
                                        (_tl107169107197_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107171107192_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107169107197_))
                                        (let ((_e107174107200_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107169107197_))))
                                          (let ((_hd107173107203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107174107200_)))
                                                (_tl107172107205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107174107200_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107172107205_))
                                                ((lambda (_L107208_ _L107209_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L107209_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple107157_
                                                          _L107209_
                                                          _L107208_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values107158_
                                                          _L107209_
                                                          _L107208_))))
                                                 _hd107173107203_
                                                 _hd107170107195_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107162107179_
                                                   _g107163107182_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107162107179_ _g107163107182_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107162107179_ _g107163107182_)))))
                        (let ()
                          (declare (not safe))
                          (_g107162107179_ _g107163107182_))))))
            (declare (not safe))
            (_g107161107225_ _stx107154_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self107465_ _stx107466_)
        (let ((_compiled-body?107468_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self107465_
           _stx107466_
           _compiled-body?107468_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g112965_
        (let ((_g112964_ (let () (declare (not safe)) (##length _g112965_))))
          (cond ((let () (declare (not safe)) (##fx= _g112964_ 2))
                 (apply (lambda (_self107465_ _stx107466_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self107465_
                             _stx107466_)))
                        _g112965_))
                ((let () (declare (not safe)) (##fx= _g112964_ 3))
                 (apply (lambda (_self107470_
                                 _stx107471_
                                 _compiled-body?107472_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self107470_
                             _stx107471_
                             _compiled-body?107472_)))
                        _g112965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g112965_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self106734_ _stx106735_)
        (letrec ((_generate-values106737_
                  (lambda (_hd106980_ _body106981_)
                    (let _lp106983_ ((_rest106985_ _hd106980_)
                                     (_bind106986_ '()))
                      (let* ((_rest106987106995_ _rest106985_)
                             (_else106989107006_
                              (lambda ()
                                (let ((_bind107003_ (reverse _bind106986_))
                                      (_body107004_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106734_
                                          _body106981_))))
                                  (let ((__tmp112966
                                         (let ((__tmp112967
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body107004_ '()))))
                                           (declare (not safe))
                                           (cons _bind107003_ __tmp112967))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp112966)))))
                             (_K106991107140_
                              (lambda (_rest107009_ _hd-bind107010_)
                                (let* ((___stx111937111938_ _hd-bind107010_)
                                       (_g107013107038_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx111937111938_)))))
                                  (let ((___kont111939111940_
                                         (lambda (_L107119_ _L107120_)
                                           (let ((_eid107134_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L107120_)))
                                                 (_expr107135_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self106734_
                                                     _L107119_))))
                                             (let ((__tmp112968
                                                    (let ((__tmp112969
                                                           (let ((__tmp112970
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr107135_ '()))))
                     (declare (not safe))
                     (cons _eid107134_ __tmp112970))))
              (declare (not safe))
              (cons __tmp112969 _bind106986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp106983_
                                                _rest107009_
                                                __tmp112968)))))
                                        (___kont111941111942_
                                         (lambda (_L107059_ _L107060_)
                                           (let* ((_vals107079_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp107081_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values107083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp107081_
                                                      _L107060_
                                                      _L107059_)))
                                                  (_refs107085_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals107079_
                                                      _L107060_)))
                                                  (_expr107087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106734_
                                                      _L107059_))))
                                             (let ((__tmp112971
                                                    (let ((__tmp112972
                                                           (let ((__tmp112973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112974
                                 (let ((__tmp112975
                                        (let ((__tmp112976
                                               (let ((__tmp112979
                                                      (let ((__tmp112980
                                                             (let ((__tmp112981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr107087_ '()))))
                       (declare (not safe))
                       (cons _tmp107081_ __tmp112981))))
                (declare (not safe))
                (cons __tmp112980 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp112977
                                                      (let ((__tmp112978
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp107081_ '()))))
                (declare (not safe))
                (cons _check-values107083_ __tmp112978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp112979
                                                       __tmp112977))))
                                          (declare (not safe))
                                          (cons 'let __tmp112976))))
                                   (declare (not safe))
                                   (cons __tmp112975 '()))))
                            (declare (not safe))
                            (cons _vals107079_ __tmp112974))))
                     (declare (not safe))
                     (cons __tmp112973 _bind106986_))))
              (declare (not safe))
              (foldl1 cons __tmp112972 _refs107085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp106983_
                                                _rest107009_
                                                __tmp112971))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx111937111938_))
                                        (let ((_e107019107095_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx111937111938_))))
                                          (let ((_tl107017107100_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107019107095_)))
                                                (_hd107018107098_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107019107095_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107018107098_))
                                                (let ((_e107022107103_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107018107098_))))
                                                  (let ((_tl107020107108_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107022107103_)))
                                                        (_hd107021107106_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107022107103_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107020107108_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107017107100_))
                                                            (let ((_e107025107111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107017107100_))))
                      (let ((_tl107023107116_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107025107111_)))
                            (_hd107024107114_
                             (let ()
                               (declare (not safe))
                               (##car _e107025107111_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107023107116_))
                            (___kont111939111940_
                             _hd107024107114_
                             _hd107021107106_)
                            (let () (declare (not safe)) (_g107013107038_)))))
                    (let () (declare (not safe)) (_g107013107038_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl107017107100_))
                    (let ((_e107033107051_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107017107100_))))
                      (let ((_tl107031107056_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107033107051_)))
                            (_hd107032107054_
                             (let ()
                               (declare (not safe))
                               (##car _e107033107051_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107031107056_))
                            (___kont111941111942_
                             _hd107032107054_
                             _hd107018107098_)
                            (let () (declare (not safe)) (_g107013107038_)))))
                    (let () (declare (not safe)) (_g107013107038_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl107017107100_))
                                                    (let ((_e107033107051_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl107017107100_))))
                                                      (let ((_tl107031107056_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e107033107051_)))
                    (_hd107032107054_
                     (let () (declare (not safe)) (##car _e107033107051_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl107031107056_))
                    (___kont111941111942_ _hd107032107054_ _hd107018107098_)
                    (let () (declare (not safe)) (_g107013107038_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g107013107038_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107013107038_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106987106995_))
                            (let ((_hd106992107143_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106987106995_)))
                                  (_tl106993107145_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106987106995_))))
                              (let* ((_hd-bind107148_ _hd106992107143_)
                                     (_rest107150_ _tl106993107145_))
                                (declare (not safe))
                                (_K106991107140_
                                 _rest107150_
                                 _hd-bind107148_)))
                            (let ()
                              (declare (not safe))
                              (_else106989107006_)))))))
                 (_generate-letrec?106738_
                  (lambda (_hd106870_)
                    (let _lp106872_ ((_rest106874_ _hd106870_))
                      (let* ((_rest106875106883_ _rest106874_)
                             (_else106877106891_ (lambda () '#t))
                             (_K106879106968_
                              (lambda (_rest106894_ _hd-bind106895_)
                                (let* ((_g106897106914_
                                        (lambda (_g106898106911_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g106898106911_))))
                                       (_g106896106965_
                                        (lambda (_g106898106917_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g106898106917_))
                                              (let ((_e106903106919_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g106898106917_))))
                                                (let ((_hd106902106922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106903106919_)))
                                                      (_tl106901106924_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106903106919_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd106902106922_))
                                                      (let ((_e106906106927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd106902106922_))))
                (let ((_hd106905106930_
                       (let () (declare (not safe)) (##car _e106906106927_)))
                      (_tl106904106932_
                       (let () (declare (not safe)) (##cdr _e106906106927_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106904106932_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl106901106924_))
                          (let ((_e106909106935_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl106901106924_))))
                            (let ((_hd106908106938_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e106909106935_)))
                                  (_tl106907106940_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e106909106935_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl106907106940_))
                                  ((lambda (_L106943_ _L106944_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?106739_ _L106943_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp106872_ _rest106894_))
                                         '#f))
                                   _hd106908106938_
                                   _hd106905106930_)
                                  (let ()
                                    (declare (not safe))
                                    (_g106897106914_ _g106898106917_)))))
                          (let ()
                            (declare (not safe))
                            (_g106897106914_ _g106898106917_)))
                      (let ()
                        (declare (not safe))
                        (_g106897106914_ _g106898106917_)))))
              (let ()
                (declare (not safe))
                (_g106897106914_ _g106898106917_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106897106914_
                                                 _g106898106917_))))))
                                  (declare (not safe))
                                  (_g106896106965_ _hd-bind106895_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106875106883_))
                            (let ((_hd106880106971_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106875106883_)))
                                  (_tl106881106973_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106875106883_))))
                              (let* ((_hd-bind106976_ _hd106880106971_)
                                     (_rest106978_ _tl106881106973_))
                                (declare (not safe))
                                (_K106879106968_
                                 _rest106978_
                                 _hd-bind106976_)))
                            (let ()
                              (declare (not safe))
                              (_else106877106891_)))))))
                 (_is-lambda-expr?106739_
                  (lambda (_expr106807_)
                    (let* ((___stx111981111982_ _expr106807_)
                           (_g106810106824_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111981111982_)))))
                      (let ((___kont111983111984_
                             (lambda (_L106852_ _L106853_) '#t))
                            (___kont111985111986_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx111981111982_))
                            (let ((_e106816106836_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx111981111982_))))
                              (let ((_tl106814106841_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e106816106836_)))
                                    (_hd106815106839_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e106816106836_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd106815106839_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd106815106839_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl106814106841_))
                                            (let ((_e106819106844_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl106814106841_))))
                                              (let ((_tl106817106849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e106819106844_)))
                                                    (_hd106818106847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e106819106844_))))
                                                (___kont111983111984_
                                                 _tl106817106849_
                                                 _hd106818106847_)))
                                            (___kont111985111986_))
                                        (___kont111985111986_))
                                    (___kont111985111986_))))
                            (___kont111985111986_)))))))
          (let* ((_g106741106758_
                  (lambda (_g106742106755_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106742106755_))))
                 (_g106740106804_
                  (lambda (_g106742106761_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106742106761_))
                        (let ((_e106747106763_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106742106761_))))
                          (let ((_hd106746106766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106747106763_)))
                                (_tl106745106768_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106747106763_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106745106768_))
                                (let ((_e106750106771_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106745106768_))))
                                  (let ((_hd106749106774_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106750106771_)))
                                        (_tl106748106776_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106750106771_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106748106776_))
                                        (let ((_e106753106779_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106748106776_))))
                                          (let ((_hd106752106782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106753106779_)))
                                                (_tl106751106784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106753106779_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl106751106784_))
                                                ((lambda (_L106787_ _L106788_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L106788_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?106738_
                                                              _L106788_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self106734_
                                                              'letrec
                                                              _L106788_
                                                              _L106787_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self106734_
                                                              'letrec*
                                                              _L106788_
                                                              _L106787_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values106737_
                                                          _L106788_
                                                          _L106787_))))
                                                 _hd106752106782_
                                                 _hd106749106774_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106741106758_
                                                   _g106742106761_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106741106758_ _g106742106761_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106741106758_ _g106742106761_)))))
                        (let ()
                          (declare (not safe))
                          (_g106741106758_ _g106742106761_))))))
            (declare (not safe))
            (_g106740106804_ _stx106735_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd106671_)
        (let _lp106673_ ((_rest106675_ _hd106671_))
          (let* ((_rest106676106692_ _rest106675_)
                 (_else106679106700_ (lambda () '#f)))
            (let ((_K106682106713_
                   (lambda (_rest106711_)
                     (let () (declare (not safe)) (_lp106673_ _rest106711_))))
                  (_K106681106705_ (lambda () '#t)))
              (let ((_try-match106678106708_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest106676106692_))
                           (let () (declare (not safe)) (_K106681106705_))
                           (let ()
                             (declare (not safe))
                             (_else106679106700_))))))
                (if (let () (declare (not safe)) (##pair? _rest106676106692_))
                    (let ((_tl106684106718_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest106676106692_)))
                          (_hd106683106716_
                           (let ()
                             (declare (not safe))
                             (##car _rest106676106692_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd106683106716_))
                          (let ((_tl106686106723_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd106683106716_)))
                                (_hd106685106721_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd106683106716_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd106685106721_))
                                (let ((_tl106690106726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd106685106721_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl106690106726_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106686106723_))
                                          (let ((_tl106688106729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106686106723_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl106688106729_))
                                                (let ((_rest106732_
                                                       _tl106684106718_))
                                                  (declare (not safe))
                                                  (_lp106673_ _rest106732_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else106679106700_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else106679106700_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else106679106700_))))
                                (let ()
                                  (declare (not safe))
                                  (_else106679106700_))))
                          (let () (declare (not safe)) (_else106679106700_))))
                    (let ()
                      (declare (not safe))
                      (_try-match106678106708_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self106582_
               _form106583_
               _hd106584_
               _body106585_
               _compiled-body?106586_)
        (letrec ((_generate1106588_
                  (lambda (_bind106627_)
                    (let* ((_bind106628106639_ _bind106627_)
                           (_E106630106643_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind106628106639_))))
                           (_K106631106649_
                            (lambda (_expr106646_ _id106647_)
                              (let ((__tmp112984
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id106647_)))
                                    (__tmp112982
                                     (let ((__tmp112983
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106582_
                                               _expr106646_))))
                                       (declare (not safe))
                                       (cons __tmp112983 '()))))
                                (declare (not safe))
                                (cons __tmp112984 __tmp112982)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind106628106639_))
                          (let ((_hd106632106652_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind106628106639_)))
                                (_tl106633106654_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind106628106639_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd106632106652_))
                                (let ((_hd106636106657_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd106632106652_)))
                                      (_tl106637106659_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd106632106652_))))
                                  (let ((_id106662_ _hd106636106657_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl106637106659_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl106633106654_))
                                            (let ((_hd106634106664_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl106633106654_)))
                                                  (_tl106635106666_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl106633106654_))))
                                              (let ((_expr106669_
                                                     _hd106634106664_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl106635106666_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K106631106649_
                                                       _expr106669_
                                                       _id106662_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E106630106643_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E106630106643_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E106630106643_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E106630106643_))))
                          (let () (declare (not safe)) (_E106630106643_)))))))
          (let* ((_bind106590_ (map _generate1106588_ _hd106584_))
                 (_body106592_
                  (if _compiled-body?106586_
                      _body106585_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self106582_ _body106585_))))
                 (_body106624_
                  (let* ((_body106593106601_ _body106592_)
                         (_else106595106609_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body106592_ '()))))
                         (_K106597106614_
                          (lambda (_exprs106612_) _exprs106612_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body106593106601_))
                        (let ((_hd106598106617_
                               (let ()
                                 (declare (not safe))
                                 (##car _body106593106601_)))
                              (_tl106599106619_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body106593106601_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd106598106617_ 'begin))
                              (let ((_exprs106622_ _tl106599106619_))
                                (declare (not safe))
                                (_K106597106614_ _exprs106622_))
                              (let ()
                                (declare (not safe))
                                (_else106595106609_))))
                        (let () (declare (not safe)) (_else106595106609_))))))
            (let ((__tmp112985
                   (let ()
                     (declare (not safe))
                     (cons _bind106590_ _body106624_))))
              (declare (not safe))
              (cons _form106583_ __tmp112985))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self106489_ _stx106490_)
        (letrec ((_generate1106492_
                  (lambda (_datum106544_)
                    (if (or (let () (declare (not safe)) (null? _datum106544_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _datum106544_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum106544_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum106544_)))
                        _datum106544_
                        (if (uninterned-symbol? _datum106544_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum106544_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum106544_))
                                (let ((__tmp112990
                                       (let ((__tmp112991 (car _datum106544_)))
                                         (declare (not safe))
                                         (_generate1106492_ __tmp112991)))
                                      (__tmp112988
                                       (let ((__tmp112989 (cdr _datum106544_)))
                                         (declare (not safe))
                                         (_generate1106492_ __tmp112989))))
                                  (declare (not safe))
                                  (cons __tmp112990 __tmp112988))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum106544_))
                                    (let ((__tmp112986
                                           (let ((__tmp112987
                                                  (unbox _datum106544_)))
                                             (declare (not safe))
                                             (_generate1106492_ __tmp112987))))
                                      (declare (not safe))
                                      (box __tmp112986))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum106544_))
                                        (vector-map
                                         _generate1106492_
                                         _datum106544_)
                                        (if (or (s8vector? _datum106544_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum106544_))
                                                (s16vector? _datum106544_)
                                                (u16vector? _datum106544_)
                                                (s32vector? _datum106544_)
                                                (u32vector? _datum106544_)
                                                (s64vector? _datum106544_)
                                                (u64vector? _datum106544_)
                                                (f32vector? _datum106544_)
                                                (f64vector? _datum106544_))
                                            _datum106544_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx106490_)))))))))))
          (let* ((_g106494106507_
                  (lambda (_g106495106504_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106495106504_))))
                 (_g106493106541_
                  (lambda (_g106495106510_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106495106510_))
                        (let ((_e106499106512_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106495106510_))))
                          (let ((_hd106498106515_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106499106512_)))
                                (_tl106497106517_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106499106512_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106497106517_))
                                (let ((_e106502106520_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106497106517_))))
                                  (let ((_hd106501106523_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106502106520_)))
                                        (_tl106500106525_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106502106520_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl106500106525_))
                                        ((lambda (_L106528_)
                                           (let ((__tmp112992
                                                  (let ((__tmp112993
                                                         (let ((__tmp112994
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L106528_))))
                   (declare (not safe))
                   (_generate1106492_ __tmp112994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112993 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp112992)))
                                         _hd106501106523_)
                                        (let ()
                                          (declare (not safe))
                                          (_g106494106507_ _g106495106510_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106494106507_ _g106495106510_)))))
                        (let ()
                          (declare (not safe))
                          (_g106494106507_ _g106495106510_))))))
            (declare (not safe))
            (_g106493106541_ _stx106490_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self106002_ _stx106003_)
        (letrec ((_compile-call106005_
                  (lambda (_rator106229_ _rands106230_)
                    (let ((_rator106236_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106002_ _rator106229_)))
                          (_rands106237_
                           (map (lambda (_g106231106233_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106002_
                                     _g106231106233_)))
                                _rands106230_)))
                      (let* ((___stx112028112029_ _rator106236_)
                             (_g106240106292_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx112028112029_)))))
                        (let ((___kont112030112031_
                               (lambda (_L106416_
                                        _L106417_
                                        _L106418_
                                        _L106419_)
                                 (if (fx= (length _rands106237_)
                                          (length (let ((__tmp112999
                                                         (lambda (_g106455106458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g106456106460_)
                   (let ()
                     (declare (not safe))
                     (cons _g106455106458_ _g106456106460_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112999
                                                            '()
                                                            _L106418_))))
                                     (let* ((_id106463_ _L106419_)
                                            (_args106472_
                                             (let ((__tmp112995
                                                    (lambda (_g106464106467_
                                                             _g106465106469_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g106464106467_
                                                              _g106465106469_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp112995
                                                       '()
                                                       _L106418_)))
                                            (_body106481_
                                             (let ((__tmp112996
                                                    (lambda (_g106473106476_
                                                             _g106474106478_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g106473106476_
                                                              _g106474106478_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp112996
                                                       '()
                                                       _L106417_)))
                                            (_init106483_
                                             (map list
                                                  _args106472_
                                                  _rands106237_)))
                                       (let ((__tmp112997
                                              (let ((__tmp112998
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init106483_
                                                             _body106481_))))
                                                (declare (not safe))
                                                (cons _id106463_
                                                      __tmp112998))))
                                         (declare (not safe))
                                         (cons 'let __tmp112997)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx106003_)))))
                              (___kont112036112037_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator106236_ _rands106237_)))))
                          (let ((___match112095112096_
                                 (lambda (_e106248106304_
                                          _hd106247106307_
                                          _tl106246106309_
                                          _e106251106312_
                                          _hd106250106315_
                                          _tl106249106317_
                                          _e106254106320_
                                          _hd106253106323_
                                          _tl106252106325_
                                          _e106257106328_
                                          _hd106256106331_
                                          _tl106255106333_
                                          _e106260106336_
                                          _hd106259106339_
                                          _tl106258106341_
                                          _e106263106344_
                                          _hd106262106347_
                                          _tl106261106349_
                                          _e106266106352_
                                          _hd106265106355_
                                          _tl106264106357_
                                          ___splice112032112033_
                                          _target106267106360_
                                          _tl106269106362_)
                                   (letrec ((_loop106270106365_
                                             (lambda (_hd106268106368_
                                                      _arg106274106370_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd106268106368_))
                                                   (let ((_e106271106373_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd106268106368_))))
                                                     (let ((_lp-tl106273106378_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e106271106373_)))
                                                           (_lp-hd106272106376_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e106271106373_))))
                                                       (let ((__tmp113001
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd106272106376_ _arg106274106370_))))
                 (declare (not safe))
                 (_loop106270106365_ _lp-tl106273106378_ __tmp113001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg106275106381_
                                                          (reverse _arg106274106370_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl106264106357_))
                                                         (let ((___splice112034112035_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl106264106357_ '0))))
                   (let ((_tl106278106386_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice112034112035_ '1)))
                         (_target106276106384_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice112034112035_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106278106386_))
                         (letrec ((_loop106279106389_
                                   (lambda (_hd106277106392_
                                            _body106283106394_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd106277106392_))
                                         (let ((_e106280106397_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd106277106392_))))
                                           (let ((_lp-tl106282106402_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106280106397_)))
                                                 (_lp-hd106281106400_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106280106397_))))
                                             (let ((__tmp113000
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd106281106400_
                                                            _body106283106394_))))
                                               (declare (not safe))
                                               (_loop106279106389_
                                                _lp-tl106282106402_
                                                __tmp113000))))
                                         (let ((_body106284106405_
                                                (reverse _body106283106394_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl106258106341_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl106252106325_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl106249106317_))
                                                       (let ((_e106287106408_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl106249106317_))))
                 (let ((_tl106285106413_
                        (let () (declare (not safe)) (##cdr _e106287106408_)))
                       (_hd106286106411_
                        (let () (declare (not safe)) (##car _e106287106408_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl106285106413_))
                       (let ((_L106416_ _hd106286106411_)
                             (_L106417_ _body106284106405_)
                             (_L106418_ _arg106275106381_)
                             (_L106419_ _hd106256106331_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L106419_ _L106416_))
                             (___kont112030112031_
                              _L106416_
                              _L106417_
                              _L106418_
                              _L106419_)
                             (___kont112036112037_)))
                       (___kont112036112037_))))
               (___kont112036112037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont112036112037_))
                                               (___kont112036112037_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop106279106389_ _target106276106384_ '())))
                         (___kont112036112037_))))
                 (___kont112036112037_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop106270106365_
                                        _target106267106360_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx112028112029_))
                                (let ((_e106248106304_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx112028112029_))))
                                  (let ((_tl106246106309_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106248106304_)))
                                        (_hd106247106307_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106248106304_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd106247106307_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd106247106307_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl106246106309_))
                                                (let ((_e106251106312_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl106246106309_))))
                                                  (let ((_tl106249106317_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106251106312_)))
                                                        (_hd106250106315_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106251106312_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd106250106315_))
                                                        (let ((_e106254106320_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd106250106315_))))
                  (let ((_tl106252106325_
                         (let () (declare (not safe)) (##cdr _e106254106320_)))
                        (_hd106253106323_
                         (let ()
                           (declare (not safe))
                           (##car _e106254106320_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd106253106323_))
                        (let ((_e106257106328_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd106253106323_))))
                          (let ((_tl106255106333_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106257106328_)))
                                (_hd106256106331_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106257106328_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106255106333_))
                                (let ((_e106260106336_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106255106333_))))
                                  (let ((_tl106258106341_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106260106336_)))
                                        (_hd106259106339_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106260106336_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd106259106339_))
                                        (let ((_e106263106344_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd106259106339_))))
                                          (let ((_tl106261106349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106263106344_)))
                                                (_hd106262106347_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106263106344_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd106262106347_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd106262106347_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106261106349_))
                                                        (let ((_e106266106352_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106261106349_))))
                  (let ((_tl106264106357_
                         (let () (declare (not safe)) (##cdr _e106266106352_)))
                        (_hd106265106355_
                         (let ()
                           (declare (not safe))
                           (##car _e106266106352_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd106265106355_))
                        (let ((___splice112032112033_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd106265106355_
                                  '0))))
                          (let ((_tl106269106362_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice112032112033_ '1)))
                                (_target106267106360_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice112032112033_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl106269106362_))
                                (___match112095112096_
                                 _e106248106304_
                                 _hd106247106307_
                                 _tl106246106309_
                                 _e106251106312_
                                 _hd106250106315_
                                 _tl106249106317_
                                 _e106254106320_
                                 _hd106253106323_
                                 _tl106252106325_
                                 _e106257106328_
                                 _hd106256106331_
                                 _tl106255106333_
                                 _e106260106336_
                                 _hd106259106339_
                                 _tl106258106341_
                                 _e106263106344_
                                 _hd106262106347_
                                 _tl106261106349_
                                 _e106266106352_
                                 _hd106265106355_
                                 _tl106264106357_
                                 ___splice112032112033_
                                 _target106267106360_
                                 _tl106269106362_)
                                (___kont112036112037_))))
                        (___kont112036112037_))))
                (___kont112036112037_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont112036112037_))
                                                (___kont112036112037_))))
                                        (___kont112036112037_))))
                                (___kont112036112037_))))
                        (___kont112036112037_))))
                (___kont112036112037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont112036112037_))
                                            (___kont112036112037_))
                                        (___kont112036112037_))))
                                (___kont112036112037_)))))))))
          (let* ((_g106007106021_
                  (lambda (_g106008106018_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106008106018_))))
                 (_g106006106226_
                  (lambda (_g106008106024_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106008106024_))
                        (let ((_e106013106026_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106008106024_))))
                          (let ((_hd106012106029_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106013106026_)))
                                (_tl106011106031_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106013106026_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106011106031_))
                                (let ((_e106016106034_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106011106031_))))
                                  (let ((_hd106015106037_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106016106034_)))
                                        (_tl106014106039_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106016106034_))))
                                    ((lambda (_L106042_ _L106043_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call106005_
                                              _L106043_
                                              _L106042_))
                                           (let* ((___stx112144112145_
                                                   _L106043_)
                                                  (_g106058106070_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx112144112145_)))))
                                             (let ((___kont112146112147_
                                                    (lambda ()
                                                      (let ((_f106100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self106002_ _L106043_))))
                (if (let ((__tmp113016 (symbol->string _f106100_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp113016))
                    (let _lp106102_ ((_rest106105_ (reverse _L106042_))
                                     (_bind106107_ '())
                                     (_args106108_ '()))
                      (let* ((_rest106109106117_ _rest106105_)
                             (_else106111106125_
                              (lambda ()
                                (let ((__tmp113002
                                       (let ((__tmp113003
                                              (let ((__tmp113004
                                                     (let ((__tmp113005
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f106100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args106108_))))
               (declare (not safe))
               (cons __tmp113005 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp113004))))
                                         (declare (not safe))
                                         (cons _bind106107_ __tmp113003))))
                                  (declare (not safe))
                                  (cons 'let __tmp113002))))
                             (_K106113106211_
                              (lambda (_rest106128_ _e106129_)
                                (let* ((___stx112098112099_ _e106129_)
                                       (_g106134106152_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx112098112099_)))))
                                  (let ((___kont112100112101_
                                         (lambda ()
                                           (let ((__tmp113006
                                                  (let ((__tmp113007
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e106129_))))
                                                    (declare (not safe))
                                                    (cons __tmp113007
                                                          _args106108_))))
                                             (declare (not safe))
                                             (_lp106102_
                                              _rest106128_
                                              _bind106107_
                                              __tmp113006))))
                                        (___kont112102112103_
                                         (lambda ()
                                           (let ((__tmp113008
                                                  (let ((__tmp113009
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e106129_))))
                                                    (declare (not safe))
                                                    (cons __tmp113009
                                                          _args106108_))))
                                             (declare (not safe))
                                             (_lp106102_
                                              _rest106128_
                                              _bind106107_
                                              __tmp113008))))
                                        (___kont112104112105_
                                         (lambda ()
                                           (let ((_tmp106159_
                                                  (let ((__tmp113010
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp113010))))
                                             (let ((__tmp113012
                                                    (let ((__tmp113013
                                                           (let ((__tmp113014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp113015
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e106129_))))
                            (declare (not safe))
                            (cons __tmp113015 '()))))
                     (declare (not safe))
                     (cons _tmp106159_ __tmp113014))))
              (declare (not safe))
              (cons __tmp113013 _bind106107_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp113011
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp106159_
                                                            _args106108_))))
                                               (declare (not safe))
                                               (_lp106102_
                                                _rest106128_
                                                __tmp113012
                                                __tmp113011))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112098112099_))
                                        (let ((_e106138106190_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112098112099_))))
                                          (let ((_tl106136106195_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106138106190_)))
                                                (_hd106137106193_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106138106190_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd106137106193_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd106137106193_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106136106195_))
                                                        (let ((_e106141106198_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106136106195_))))
                  (let ((_tl106139106203_
                         (let () (declare (not safe)) (##cdr _e106141106198_)))
                        (_hd106140106201_
                         (let ()
                           (declare (not safe))
                           (##car _e106141106198_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl106139106203_))
                        (___kont112100112101_)
                        (___kont112104112105_))))
                (___kont112104112105_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd106137106193_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl106136106195_))
                                                            (let ((_e106147106175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106136106195_))))
                      (let ((_tl106145106180_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106147106175_)))
                            (_hd106146106178_
                             (let ()
                               (declare (not safe))
                               (##car _e106147106175_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106145106180_))
                            (___kont112102112103_)
                            (___kont112104112105_))))
                    (___kont112104112105_))
                (___kont112104112105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont112104112105_))))
                                        (___kont112104112105_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106109106117_))
                            (let ((_hd106114106214_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106109106117_)))
                                  (_tl106115106216_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106109106117_))))
                              (let* ((_e106219_ _hd106114106214_)
                                     (_rest106221_ _tl106115106216_))
                                (declare (not safe))
                                (_K106113106211_ _rest106221_ _e106219_)))
                            (let ()
                              (declare (not safe))
                              (_else106111106125_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call106005_ _L106043_ _L106042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont112148112149_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call106005_
                                                         _L106043_
                                                         _L106042_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx112144112145_))
                                                   (let ((_e106062106082_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx112144112145_))))
                                                     (let ((_tl106060106087_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e106062106082_)))
                                                           (_hd106061106085_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e106062106082_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd106061106085_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd106061106085_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl106060106087_))
                           (let ((_e106065106090_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl106060106087_))))
                             (let ((_tl106063106095_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e106065106090_)))
                                   (_hd106064106093_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e106065106090_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl106063106095_))
                                   (___kont112146112147_)
                                   (___kont112148112149_))))
                           (___kont112148112149_))
                       (___kont112148112149_))
                   (___kont112148112149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont112148112149_))))))
                                     _tl106014106039_
                                     _hd106015106037_)))
                                (let ()
                                  (declare (not safe))
                                  (_g106007106021_ _g106008106024_)))))
                        (let ()
                          (declare (not safe))
                          (_g106007106021_ _g106008106024_))))))
            (declare (not safe))
            (_g106006106226_ _stx106003_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self105789_ _stx105790_)
        (let* ((___stx112216112217_ _stx105790_)
               (_g105793105813_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112216112217_)))))
          (let ((___kont112218112219_
                 (lambda (_L105857_ _L105858_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self105789_ _stx105790_))
                       (let ((_f105876_
                              (let ((__tmp113017
                                     (let ((__tmp113019
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp113018
                                            (let ()
                                              (declare (not safe))
                                              (cons _L105858_ '()))))
                                       (declare (not safe))
                                       (cons __tmp113019 __tmp113018))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self105789_ __tmp113017))))
                         (let _lp105878_ ((_rest105881_ (reverse _L105857_))
                                          (_bind105883_ '())
                                          (_args105884_ '()))
                           (let* ((_rest105885105893_ _rest105881_)
                                  (_else105887105901_
                                   (lambda ()
                                     (let ((__tmp113020
                                            (let ((__tmp113021
                                                   (let ((__tmp113022
                                                          (let ((__tmp113023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f105876_ _args105884_))))
                    (declare (not safe))
                    (cons __tmp113023 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp113022))))
                                              (declare (not safe))
                                              (cons _bind105883_
                                                    __tmp113021))))
                                       (declare (not safe))
                                       (cons 'let __tmp113020))))
                                  (_K105889105987_
                                   (lambda (_rest105904_ _e105905_)
                                     (let* ((___stx112170112171_ _e105905_)
                                            (_g105910105928_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx112170112171_)))))
                                       (let ((___kont112172112173_
                                              (lambda ()
                                                (let ((__tmp113024
                                                       (let ((__tmp113025
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e105905_))))
                 (declare (not safe))
                 (cons __tmp113025 _args105884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp105878_
                                                   _rest105904_
                                                   _bind105883_
                                                   __tmp113024))))
                                             (___kont112174112175_
                                              (lambda ()
                                                (let ((__tmp113026
                                                       (let ((__tmp113027
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e105905_))))
                 (declare (not safe))
                 (cons __tmp113027 _args105884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp105878_
                                                   _rest105904_
                                                   _bind105883_
                                                   __tmp113026))))
                                             (___kont112176112177_
                                              (lambda ()
                                                (let ((_tmp105935_
                                                       (let ((__tmp113028
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp113028))))
                                                  (let ((__tmp113030
                                                         (let ((__tmp113031
                                                                (let ((__tmp113032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113033
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e105905_))))
                                 (declare (not safe))
                                 (cons __tmp113033 '()))))
                          (declare (not safe))
                          (cons _tmp105935_ __tmp113032))))
                   (declare (not safe))
                   (cons __tmp113031 _bind105883_)))
                (__tmp113029
                 (let ()
                   (declare (not safe))
                   (cons _tmp105935_ _args105884_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp105878_
                                                     _rest105904_
                                                     __tmp113030
                                                     __tmp113029))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx112170112171_))
                                             (let ((_e105914105966_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx112170112171_))))
                                               (let ((_tl105912105971_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105914105966_)))
                                                     (_hd105913105969_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105914105966_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105913105969_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd105913105969_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105912105971_))
                     (let ((_e105917105974_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105912105971_))))
                       (let ((_tl105915105979_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105917105974_)))
                             (_hd105916105977_
                              (let ()
                                (declare (not safe))
                                (##car _e105917105974_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105915105979_))
                             (___kont112172112173_)
                             (___kont112176112177_))))
                     (___kont112176112177_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd105913105969_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl105912105971_))
                         (let ((_e105923105951_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl105912105971_))))
                           (let ((_tl105921105956_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e105923105951_)))
                                 (_hd105922105954_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e105923105951_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl105921105956_))
                                 (___kont112174112175_)
                                 (___kont112176112177_))))
                         (___kont112176112177_))
                     (___kont112176112177_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112176112177_))))
                                             (___kont112176112177_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest105885105893_))
                                 (let ((_hd105890105990_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest105885105893_)))
                                       (_tl105891105992_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest105885105893_))))
                                   (let* ((_e105995_ _hd105890105990_)
                                          (_rest105997_ _tl105891105992_))
                                     (declare (not safe))
                                     (_K105889105987_ _rest105997_ _e105995_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else105887105901_)))))))))
                (___kont112220112221_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self105789_ _stx105790_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx112216112217_))
                (let ((_e105799105825_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx112216112217_))))
                  (let ((_tl105797105830_
                         (let () (declare (not safe)) (##cdr _e105799105825_)))
                        (_hd105798105828_
                         (let ()
                           (declare (not safe))
                           (##car _e105799105825_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl105797105830_))
                        (let ((_e105802105833_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl105797105830_))))
                          (let ((_tl105800105838_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105802105833_)))
                                (_hd105801105836_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105802105833_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd105801105836_))
                                (let ((_e105805105841_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd105801105836_))))
                                  (let ((_tl105803105846_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105805105841_)))
                                        (_hd105804105844_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105805105841_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd105804105844_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd105804105844_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl105803105846_))
                                                (let ((_e105808105849_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl105803105846_))))
                                                  (let ((_tl105806105854_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105808105849_)))
                                                        (_hd105807105852_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105808105849_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105806105854_))
                                                        (___kont112218112219_
                                                         _tl105800105838_
                                                         _hd105807105852_)
                                                        (___kont112220112221_))))
                                                (___kont112220112221_))
                                            (___kont112220112221_))
                                        (___kont112220112221_))))
                                (___kont112220112221_))))
                        (___kont112220112221_))))
                (___kont112220112221_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self105601_ _stx105602_)
        (letrec ((_simplify105604_
                  (lambda (_code105689_)
                    (let* ((_code105690105708_ _code105689_)
                           (_else105692105716_ (lambda () _code105689_))
                           (_K105694105752_
                            (lambda (_expr105719_ _test105720_)
                              (let* ((_expr105721105729_ _expr105719_)
                                     (_else105723105737_
                                      (lambda ()
                                        (let ((__tmp113034
                                               (let ((__tmp113035
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr105719_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test105720_
                                                       __tmp113035))))
                                          (declare (not safe))
                                          (cons 'and __tmp113034))))
                                     (_K105725105742_
                                      (lambda (_exprs105740_)
                                        (let ((__tmp113036
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test105720_
                                                       _exprs105740_))))
                                          (declare (not safe))
                                          (cons 'and __tmp113036)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr105721105729_))
                                    (let ((_hd105726105745_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr105721105729_)))
                                          (_tl105727105747_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr105721105729_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd105726105745_ 'and))
                                          (let ((_exprs105750_
                                                 _tl105727105747_))
                                            (declare (not safe))
                                            (_K105725105742_ _exprs105750_))
                                          (let ()
                                            (declare (not safe))
                                            (_else105723105737_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else105723105737_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code105690105708_))
                          (let ((_hd105695105755_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code105690105708_)))
                                (_tl105696105757_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code105690105708_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd105695105755_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl105696105757_))
                                    (let ((_hd105697105760_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl105696105757_)))
                                          (_tl105698105762_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl105696105757_))))
                                      (let ((_test105765_ _hd105697105760_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl105698105762_))
                                            (let ((_hd105699105767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl105698105762_)))
                                                  (_tl105700105769_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl105698105762_))))
                                              (let ((_expr105772_
                                                     _hd105699105767_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl105700105769_))
                                                    (let ((_hd105701105774_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl105700105769_)))
                                                          (_tl105702105776_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl105700105769_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd105701105774_))
                                                          (let ((_hd105703105779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd105701105774_)))
                        (_tl105704105781_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd105701105774_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd105703105779_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl105704105781_))
                            (let ((_hd105705105784_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl105704105781_)))
                                  (_tl105706105786_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl105704105781_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd105705105784_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl105706105786_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105702105776_))
                                          (let ()
                                            (declare (not safe))
                                            (_K105694105752_
                                             _expr105772_
                                             _test105765_))
                                          (let ()
                                            (declare (not safe))
                                            (_else105692105716_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else105692105716_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else105692105716_))))
                            (let () (declare (not safe)) (_else105692105716_)))
                        (let () (declare (not safe)) (_else105692105716_))))
                  (let () (declare (not safe)) (_else105692105716_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else105692105716_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else105692105716_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else105692105716_)))
                                (let ()
                                  (declare (not safe))
                                  (_else105692105716_))))
                          (let ()
                            (declare (not safe))
                            (_else105692105716_)))))))
          (let* ((_g105606105627_
                  (lambda (_g105607105624_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105607105624_))))
                 (_g105605105686_
                  (lambda (_g105607105630_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105607105630_))
                        (let ((_e105613105632_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105607105630_))))
                          (let ((_hd105612105635_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105613105632_)))
                                (_tl105611105637_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105613105632_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105611105637_))
                                (let ((_e105616105640_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105611105637_))))
                                  (let ((_hd105615105643_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105616105640_)))
                                        (_tl105614105645_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105616105640_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105614105645_))
                                        (let ((_e105619105648_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105614105645_))))
                                          (let ((_hd105618105651_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105619105648_)))
                                                (_tl105617105653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105619105648_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl105617105653_))
                                                (let ((_e105622105656_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl105617105653_))))
                                                  (let ((_hd105621105659_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105622105656_)))
                                                        (_tl105620105661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105622105656_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105620105661_))
                                                        ((lambda (_L105664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L105665_
                          _L105666_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp113044
                              (let ((__tmp113045
                                     (let ((__tmp113050
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105601_
                                               _L105666_)))
                                           (__tmp113046
                                            (let ((__tmp113049
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105601_
                                                      _L105665_)))
                                                  (__tmp113047
                                                   (let ((__tmp113048
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self105601_
                                                             _L105664_))))
                                                     (declare (not safe))
                                                     (cons __tmp113048 '()))))
                                              (declare (not safe))
                                              (cons __tmp113049 __tmp113047))))
                                       (declare (not safe))
                                       (cons __tmp113050 __tmp113046))))
                                (declare (not safe))
                                (cons 'if __tmp113045))))
                         (declare (not safe))
                         (_simplify105604_ __tmp113044))
                       (let ((__tmp113037
                              (let ((__tmp113042
                                     (let ((__tmp113043
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self105601_
                                                 _L105666_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp113043
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp113038
                                     (let ((__tmp113041
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105601_
                                               _L105665_)))
                                           (__tmp113039
                                            (let ((__tmp113040
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105601_
                                                      _L105664_))))
                                              (declare (not safe))
                                              (cons __tmp113040 '()))))
                                       (declare (not safe))
                                       (cons __tmp113041 __tmp113039))))
                                (declare (not safe))
                                (cons __tmp113042 __tmp113038))))
                         (declare (not safe))
                         (cons 'if __tmp113037))))
                 _hd105621105659_
                 _hd105618105651_
                 _hd105615105643_)
                (let ()
                  (declare (not safe))
                  (_g105606105627_ _g105607105630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105606105627_
                                                   _g105607105630_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105606105627_ _g105607105630_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105606105627_ _g105607105630_)))))
                        (let ()
                          (declare (not safe))
                          (_g105606105627_ _g105607105630_))))))
            (declare (not safe))
            (_g105605105686_ _stx105602_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self105549_ _stx105550_)
        (let* ((_g105552105565_
                (lambda (_g105553105562_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105553105562_))))
               (_g105551105598_
                (lambda (_g105553105568_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105553105568_))
                      (let ((_e105557105570_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105553105568_))))
                        (let ((_hd105556105573_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105557105570_)))
                              (_tl105555105575_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105557105570_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105555105575_))
                              (let ((_e105560105578_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105555105575_))))
                                (let ((_hd105559105581_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105560105578_)))
                                      (_tl105558105583_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105560105578_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl105558105583_))
                                      ((lambda (_L105586_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L105586_)))
                                       _hd105559105581_)
                                      (let ()
                                        (declare (not safe))
                                        (_g105552105565_ _g105553105568_)))))
                              (let ()
                                (declare (not safe))
                                (_g105552105565_ _g105553105568_)))))
                      (let ()
                        (declare (not safe))
                        (_g105552105565_ _g105553105568_))))))
          (declare (not safe))
          (_g105551105598_ _stx105550_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self105481_ _stx105482_)
        (let* ((_g105484105501_
                (lambda (_g105485105498_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105485105498_))))
               (_g105483105546_
                (lambda (_g105485105504_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105485105504_))
                      (let ((_e105490105506_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105485105504_))))
                        (let ((_hd105489105509_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105490105506_)))
                              (_tl105488105511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105490105506_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105488105511_))
                              (let ((_e105493105514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105488105511_))))
                                (let ((_hd105492105517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105493105514_)))
                                      (_tl105491105519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105493105514_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105491105519_))
                                      (let ((_e105496105522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105491105519_))))
                                        (let ((_hd105495105525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105496105522_)))
                                              (_tl105494105527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105496105522_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105494105527_))
                                              ((lambda (_L105530_ _L105531_)
                                                 (let ((__tmp113051
                                                        (let ((__tmp113054
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L105531_)))
                      (__tmp113052
                       (let ((__tmp113053
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105481_ _L105530_))))
                         (declare (not safe))
                         (cons __tmp113053 '()))))
                  (declare (not safe))
                  (cons __tmp113054 __tmp113052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp113051)))
                                               _hd105495105525_
                                               _hd105492105517_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105484105501_
                                                 _g105485105504_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105484105501_ _g105485105504_)))))
                              (let ()
                                (declare (not safe))
                                (_g105484105501_ _g105485105504_)))))
                      (let ()
                        (declare (not safe))
                        (_g105484105501_ _g105485105504_))))))
          (declare (not safe))
          (_g105483105546_ _stx105482_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self105292_ _stx105293_)
        (let* ((_g105295105312_
                (lambda (_g105296105309_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105296105309_))))
               (_g105294105478_
                (lambda (_g105296105315_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105296105315_))
                      (let ((_e105301105317_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105296105315_))))
                        (let ((_hd105300105320_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105301105317_)))
                              (_tl105299105322_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105301105317_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105299105322_))
                              (let ((_e105304105325_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105299105322_))))
                                (let ((_hd105303105328_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105304105325_)))
                                      (_tl105302105330_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105304105325_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105302105330_))
                                      (let ((_e105307105333_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105302105330_))))
                                        (let ((_hd105306105336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105307105333_)))
                                              (_tl105305105338_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105307105333_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105305105338_))
                                              ((lambda (_L105341_ _L105342_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp113070
                                                            (let ((__tmp113073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self105292_ _L105341_)))
                          (__tmp113071
                           (let ((__tmp113072
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self105292_
                                     _L105342_))))
                             (declare (not safe))
                             (cons __tmp113072 '()))))
                      (declare (not safe))
                      (cons __tmp113073 __tmp113071))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp113070))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp105357_ ((_rest105360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113069
                                      (let ()
                                        (declare (not safe))
                                        (cons _L105341_ '()))))
                                 (declare (not safe))
                                 (cons _L105342_ __tmp113069)))
                              (_bind105362_ '())
                              (_args105363_ '()))
               (let* ((_rest105364105372_ _rest105360_)
                      (_else105366105380_
                       (lambda ()
                         (let ((__tmp113055
                                (let ((__tmp113056
                                       (let ((__tmp113057
                                              (let ((__tmp113058
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args105363_))))
                                                (declare (not safe))
                                                (cons __tmp113058 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp113057))))
                                  (declare (not safe))
                                  (cons _bind105362_ __tmp113056))))
                           (declare (not safe))
                           (cons 'let __tmp113055))))
                      (_K105368105466_
                       (lambda (_rest105383_ _e105384_)
                         (let* ((___stx112254112255_ _e105384_)
                                (_g105389105407_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx112254112255_)))))
                           (let ((___kont112256112257_
                                  (lambda ()
                                    (let ((__tmp113059
                                           (let ((__tmp113060
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105384_))))
                                             (declare (not safe))
                                             (cons __tmp113060 _args105363_))))
                                      (declare (not safe))
                                      (_lp105357_
                                       _rest105383_
                                       _bind105362_
                                       __tmp113059))))
                                 (___kont112258112259_
                                  (lambda ()
                                    (let ((__tmp113061
                                           (let ((__tmp113062
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105384_))))
                                             (declare (not safe))
                                             (cons __tmp113062 _args105363_))))
                                      (declare (not safe))
                                      (_lp105357_
                                       _rest105383_
                                       _bind105362_
                                       __tmp113061))))
                                 (___kont112260112261_
                                  (lambda ()
                                    (let ((_tmp105414_
                                           (let ((__tmp113063 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp113063))))
                                      (let ((__tmp113065
                                             (let ((__tmp113066
                                                    (let ((__tmp113067
                                                           (let ((__tmp113068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105384_))))
                     (declare (not safe))
                     (cons __tmp113068 '()))))
              (declare (not safe))
              (cons _tmp105414_ __tmp113067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp113066
                                                     _bind105362_)))
                                            (__tmp113064
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp105414_
                                                     _args105363_))))
                                        (declare (not safe))
                                        (_lp105357_
                                         _rest105383_
                                         __tmp113065
                                         __tmp113064))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx112254112255_))
                                 (let ((_e105393105445_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx112254112255_))))
                                   (let ((_tl105391105450_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e105393105445_)))
                                         (_hd105392105448_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e105393105445_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd105392105448_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd105392105448_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl105391105450_))
                                                 (let ((_e105396105453_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl105391105450_))))
                                                   (let ((_tl105394105458_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105396105453_)))
                                                         (_hd105395105456_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105396105453_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105394105458_))
                                                         (___kont112256112257_)
                                                         (___kont112260112261_))))
                                                 (___kont112260112261_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd105392105448_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105391105450_))
                                                     (let ((_e105402105430_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105391105450_))))
                                                       (let ((_tl105400105435_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105402105430_)))
                     (_hd105401105433_
                      (let () (declare (not safe)) (##car _e105402105430_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105400105435_))
                     (___kont112258112259_)
                     (___kont112260112261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112260112261_))
                                                 (___kont112260112261_)))
                                         (___kont112260112261_))))
                                 (___kont112260112261_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest105364105372_))
                     (let ((_hd105369105469_
                            (let ()
                              (declare (not safe))
                              (##car _rest105364105372_)))
                           (_tl105370105471_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest105364105372_))))
                       (let* ((_e105474_ _hd105369105469_)
                              (_rest105476_ _tl105370105471_))
                         (declare (not safe))
                         (_K105368105466_ _rest105476_ _e105474_)))
                     (let () (declare (not safe)) (_else105366105380_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd105306105336_
                                               _hd105303105328_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105295105312_
                                                 _g105296105315_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105295105312_ _g105296105315_)))))
                              (let ()
                                (declare (not safe))
                                (_g105295105312_ _g105296105315_)))))
                      (let ()
                        (declare (not safe))
                        (_g105295105312_ _g105296105315_))))))
          (declare (not safe))
          (_g105294105478_ _stx105293_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self105103_ _stx105104_)
        (let* ((_g105106105123_
                (lambda (_g105107105120_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105107105120_))))
               (_g105105105289_
                (lambda (_g105107105126_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105107105126_))
                      (let ((_e105112105128_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105107105126_))))
                        (let ((_hd105111105131_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105112105128_)))
                              (_tl105110105133_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105112105128_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105110105133_))
                              (let ((_e105115105136_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105110105133_))))
                                (let ((_hd105114105139_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105115105136_)))
                                      (_tl105113105141_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105115105136_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105113105141_))
                                      (let ((_e105118105144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105113105141_))))
                                        (let ((_hd105117105147_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105118105144_)))
                                              (_tl105116105149_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105118105144_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105116105149_))
                                              ((lambda (_L105152_ _L105153_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp113089
                                                            (let ((__tmp113092
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self105103_ _L105152_)))
                          (__tmp113090
                           (let ((__tmp113091
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self105103_
                                     _L105153_))))
                             (declare (not safe))
                             (cons __tmp113091 '()))))
                      (declare (not safe))
                      (cons __tmp113092 __tmp113090))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp113089))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp105168_ ((_rest105171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113088
                                      (let ()
                                        (declare (not safe))
                                        (cons _L105152_ '()))))
                                 (declare (not safe))
                                 (cons _L105153_ __tmp113088)))
                              (_bind105173_ '())
                              (_args105174_ '()))
               (let* ((_rest105175105183_ _rest105171_)
                      (_else105177105191_
                       (lambda ()
                         (let ((__tmp113074
                                (let ((__tmp113075
                                       (let ((__tmp113076
                                              (let ((__tmp113077
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args105174_))))
                                                (declare (not safe))
                                                (cons __tmp113077 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp113076))))
                                  (declare (not safe))
                                  (cons _bind105173_ __tmp113075))))
                           (declare (not safe))
                           (cons 'let __tmp113074))))
                      (_K105179105277_
                       (lambda (_rest105194_ _e105195_)
                         (let* ((___stx112300112301_ _e105195_)
                                (_g105200105218_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx112300112301_)))))
                           (let ((___kont112302112303_
                                  (lambda ()
                                    (let ((__tmp113078
                                           (let ((__tmp113079
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105195_))))
                                             (declare (not safe))
                                             (cons __tmp113079 _args105174_))))
                                      (declare (not safe))
                                      (_lp105168_
                                       _rest105194_
                                       _bind105173_
                                       __tmp113078))))
                                 (___kont112304112305_
                                  (lambda ()
                                    (let ((__tmp113080
                                           (let ((__tmp113081
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105195_))))
                                             (declare (not safe))
                                             (cons __tmp113081 _args105174_))))
                                      (declare (not safe))
                                      (_lp105168_
                                       _rest105194_
                                       _bind105173_
                                       __tmp113080))))
                                 (___kont112306112307_
                                  (lambda ()
                                    (let ((_tmp105225_
                                           (let ((__tmp113082 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp113082))))
                                      (let ((__tmp113084
                                             (let ((__tmp113085
                                                    (let ((__tmp113086
                                                           (let ((__tmp113087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105195_))))
                     (declare (not safe))
                     (cons __tmp113087 '()))))
              (declare (not safe))
              (cons _tmp105225_ __tmp113086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp113085
                                                     _bind105173_)))
                                            (__tmp113083
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp105225_
                                                     _args105174_))))
                                        (declare (not safe))
                                        (_lp105168_
                                         _rest105194_
                                         __tmp113084
                                         __tmp113083))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx112300112301_))
                                 (let ((_e105204105256_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx112300112301_))))
                                   (let ((_tl105202105261_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e105204105256_)))
                                         (_hd105203105259_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e105204105256_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd105203105259_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd105203105259_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl105202105261_))
                                                 (let ((_e105207105264_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl105202105261_))))
                                                   (let ((_tl105205105269_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105207105264_)))
                                                         (_hd105206105267_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105207105264_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105205105269_))
                                                         (___kont112302112303_)
                                                         (___kont112306112307_))))
                                                 (___kont112306112307_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd105203105259_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105202105261_))
                                                     (let ((_e105213105241_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105202105261_))))
                                                       (let ((_tl105211105246_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105213105241_)))
                     (_hd105212105244_
                      (let () (declare (not safe)) (##car _e105213105241_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105211105246_))
                     (___kont112304112305_)
                     (___kont112306112307_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112306112307_))
                                                 (___kont112306112307_)))
                                         (___kont112306112307_))))
                                 (___kont112306112307_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest105175105183_))
                     (let ((_hd105180105280_
                            (let ()
                              (declare (not safe))
                              (##car _rest105175105183_)))
                           (_tl105181105282_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest105175105183_))))
                       (let* ((_e105285_ _hd105180105280_)
                              (_rest105287_ _tl105181105282_))
                         (declare (not safe))
                         (_K105179105277_ _rest105287_ _e105285_)))
                     (let () (declare (not safe)) (_else105177105191_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd105117105147_
                                               _hd105114105139_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105106105123_
                                                 _g105107105126_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105106105123_ _g105107105126_)))))
                              (let ()
                                (declare (not safe))
                                (_g105106105123_ _g105107105126_)))))
                      (let ()
                        (declare (not safe))
                        (_g105106105123_ _g105107105126_))))))
          (declare (not safe))
          (_g105105105289_ _stx105104_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self105019_ _stx105020_)
        (let* ((_g105022105043_
                (lambda (_g105023105040_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105023105040_))))
               (_g105021105100_
                (lambda (_g105023105046_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105023105046_))
                      (let ((_e105029105048_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105023105046_))))
                        (let ((_hd105028105051_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105029105048_)))
                              (_tl105027105053_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105029105048_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105027105053_))
                              (let ((_e105032105056_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105027105053_))))
                                (let ((_hd105031105059_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105032105056_)))
                                      (_tl105030105061_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105032105056_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105030105061_))
                                      (let ((_e105035105064_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105030105061_))))
                                        (let ((_hd105034105067_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105035105064_)))
                                              (_tl105033105069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105035105064_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105033105069_))
                                              (let ((_e105038105072_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105033105069_))))
                                                (let ((_hd105037105075_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105038105072_)))
                                                      (_tl105036105077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105038105072_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl105036105077_))
                                                      ((lambda (_L105080_
                                                                _L105081_
                                                                _L105082_)
                                                         (let ((__tmp113093
                                                                (let ((__tmp113099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self105019_ _L105080_)))
                              (__tmp113094
                               (let ((__tmp113098
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self105019_
                                         _L105081_)))
                                     (__tmp113095
                                      (let ((__tmp113097
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self105019_
                                                _L105082_)))
                                            (__tmp113096
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp113097 __tmp113096))))
                                 (declare (not safe))
                                 (cons __tmp113098 __tmp113095))))
                          (declare (not safe))
                          (cons __tmp113099 __tmp113094))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp113093)))
               _hd105037105075_
               _hd105034105067_
               _hd105031105059_)
              (let ()
                (declare (not safe))
                (_g105022105043_ _g105023105046_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105022105043_
                                                 _g105023105046_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105022105043_ _g105023105046_)))))
                              (let ()
                                (declare (not safe))
                                (_g105022105043_ _g105023105046_)))))
                      (let ()
                        (declare (not safe))
                        (_g105022105043_ _g105023105046_))))))
          (declare (not safe))
          (_g105021105100_ _stx105020_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self104919_ _stx104920_)
        (let* ((_g104922104947_
                (lambda (_g104923104944_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104923104944_))))
               (_g104921105016_
                (lambda (_g104923104950_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104923104950_))
                      (let ((_e104930104952_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104923104950_))))
                        (let ((_hd104929104955_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104930104952_)))
                              (_tl104928104957_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104930104952_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104928104957_))
                              (let ((_e104933104960_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104928104957_))))
                                (let ((_hd104932104963_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104933104960_)))
                                      (_tl104931104965_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104933104960_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104931104965_))
                                      (let ((_e104936104968_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104931104965_))))
                                        (let ((_hd104935104971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104936104968_)))
                                              (_tl104934104973_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104936104968_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104934104973_))
                                              (let ((_e104939104976_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104934104973_))))
                                                (let ((_hd104938104979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104939104976_)))
                                                      (_tl104937104981_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104939104976_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104937104981_))
                                                      (let ((_e104942104984_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104937104981_))))
                (let ((_hd104941104987_
                       (let () (declare (not safe)) (##car _e104942104984_)))
                      (_tl104940104989_
                       (let () (declare (not safe)) (##cdr _e104942104984_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104940104989_))
                      ((lambda (_L104992_ _L104993_ _L104994_ _L104995_)
                         (let ((__tmp113100
                                (let ((__tmp113108
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self104919_
                                          _L104993_)))
                                      (__tmp113101
                                       (let ((__tmp113107
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104919_
                                                 _L104992_)))
                                             (__tmp113102
                                              (let ((__tmp113106
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self104919_
                                                        _L104994_)))
                                                    (__tmp113103
                                                     (let ((__tmp113105
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self104919_
                                                               _L104995_)))
                                                           (__tmp113104
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp113105 __tmp113104))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113106
                                                      __tmp113103))))
                                         (declare (not safe))
                                         (cons __tmp113107 __tmp113102))))
                                  (declare (not safe))
                                  (cons __tmp113108 __tmp113101))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp113100)))
                       _hd104941104987_
                       _hd104938104979_
                       _hd104935104971_
                       _hd104932104963_)
                      (let ()
                        (declare (not safe))
                        (_g104922104947_ _g104923104950_)))))
              (let ()
                (declare (not safe))
                (_g104922104947_ _g104923104950_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104922104947_
                                                 _g104923104950_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104922104947_ _g104923104950_)))))
                              (let ()
                                (declare (not safe))
                                (_g104922104947_ _g104923104950_)))))
                      (let ()
                        (declare (not safe))
                        (_g104922104947_ _g104923104950_))))))
          (declare (not safe))
          (_g104921105016_ _stx104920_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self104835_ _stx104836_)
        (let* ((_g104838104859_
                (lambda (_g104839104856_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104839104856_))))
               (_g104837104916_
                (lambda (_g104839104862_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104839104862_))
                      (let ((_e104845104864_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104839104862_))))
                        (let ((_hd104844104867_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104845104864_)))
                              (_tl104843104869_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104845104864_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104843104869_))
                              (let ((_e104848104872_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104843104869_))))
                                (let ((_hd104847104875_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104848104872_)))
                                      (_tl104846104877_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104848104872_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104846104877_))
                                      (let ((_e104851104880_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104846104877_))))
                                        (let ((_hd104850104883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104851104880_)))
                                              (_tl104849104885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104851104880_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104849104885_))
                                              (let ((_e104854104888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104849104885_))))
                                                (let ((_hd104853104891_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104854104888_)))
                                                      (_tl104852104893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104854104888_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104852104893_))
                                                      ((lambda (_L104896_
                                                                _L104897_
                                                                _L104898_)
                                                         (let ((__tmp113109
                                                                (let ((__tmp113115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self104835_ _L104896_)))
                              (__tmp113110
                               (let ((__tmp113114
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self104835_
                                         _L104897_)))
                                     (__tmp113111
                                      (let ((__tmp113113
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self104835_
                                                _L104898_)))
                                            (__tmp113112
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp113113 __tmp113112))))
                                 (declare (not safe))
                                 (cons __tmp113114 __tmp113111))))
                          (declare (not safe))
                          (cons __tmp113115 __tmp113110))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp113109)))
               _hd104853104891_
               _hd104850104883_
               _hd104847104875_)
              (let ()
                (declare (not safe))
                (_g104838104859_ _g104839104862_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104838104859_
                                                 _g104839104862_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104838104859_ _g104839104862_)))))
                              (let ()
                                (declare (not safe))
                                (_g104838104859_ _g104839104862_)))))
                      (let ()
                        (declare (not safe))
                        (_g104838104859_ _g104839104862_))))))
          (declare (not safe))
          (_g104837104916_ _stx104836_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self104735_ _stx104736_)
        (let* ((_g104738104763_
                (lambda (_g104739104760_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104739104760_))))
               (_g104737104832_
                (lambda (_g104739104766_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104739104766_))
                      (let ((_e104746104768_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104739104766_))))
                        (let ((_hd104745104771_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104746104768_)))
                              (_tl104744104773_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104746104768_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104744104773_))
                              (let ((_e104749104776_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104744104773_))))
                                (let ((_hd104748104779_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104749104776_)))
                                      (_tl104747104781_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104749104776_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104747104781_))
                                      (let ((_e104752104784_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104747104781_))))
                                        (let ((_hd104751104787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104752104784_)))
                                              (_tl104750104789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104752104784_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104750104789_))
                                              (let ((_e104755104792_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104750104789_))))
                                                (let ((_hd104754104795_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104755104792_)))
                                                      (_tl104753104797_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104755104792_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104753104797_))
                                                      (let ((_e104758104800_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104753104797_))))
                (let ((_hd104757104803_
                       (let () (declare (not safe)) (##car _e104758104800_)))
                      (_tl104756104805_
                       (let () (declare (not safe)) (##cdr _e104758104800_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104756104805_))
                      ((lambda (_L104808_ _L104809_ _L104810_ _L104811_)
                         (let ((__tmp113116
                                (let ((__tmp113124
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self104735_
                                          _L104809_)))
                                      (__tmp113117
                                       (let ((__tmp113123
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104735_
                                                 _L104808_)))
                                             (__tmp113118
                                              (let ((__tmp113122
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self104735_
                                                        _L104810_)))
                                                    (__tmp113119
                                                     (let ((__tmp113121
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self104735_
                                                               _L104811_)))
                                                           (__tmp113120
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp113121 __tmp113120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113122
                                                      __tmp113119))))
                                         (declare (not safe))
                                         (cons __tmp113123 __tmp113118))))
                                  (declare (not safe))
                                  (cons __tmp113124 __tmp113117))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp113116)))
                       _hd104757104803_
                       _hd104754104795_
                       _hd104751104787_
                       _hd104748104779_)
                      (let ()
                        (declare (not safe))
                        (_g104738104763_ _g104739104766_)))))
              (let ()
                (declare (not safe))
                (_g104738104763_ _g104739104766_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104738104763_
                                                 _g104739104766_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104738104763_ _g104739104766_)))))
                              (let ()
                                (declare (not safe))
                                (_g104738104763_ _g104739104766_)))))
                      (let ()
                        (declare (not safe))
                        (_g104738104763_ _g104739104766_))))))
          (declare (not safe))
          (_g104737104832_ _stx104736_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self104530_ _stx104531_)
        (let* ((_g104533104554_
                (lambda (_g104534104551_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104534104551_))))
               (_g104532104732_
                (lambda (_g104534104557_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104534104557_))
                      (let ((_e104540104559_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104534104557_))))
                        (let ((_hd104539104562_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104540104559_)))
                              (_tl104538104564_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104540104559_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104538104564_))
                              (let ((_e104543104567_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104538104564_))))
                                (let ((_hd104542104570_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104543104567_)))
                                      (_tl104541104572_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104543104567_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104541104572_))
                                      (let ((_e104546104575_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104541104572_))))
                                        (let ((_hd104545104578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104546104575_)))
                                              (_tl104544104580_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104546104575_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104544104580_))
                                              (let ((_e104549104583_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104544104580_))))
                                                (let ((_hd104548104586_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104549104583_)))
                                                      (_tl104547104588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104549104583_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104547104588_))
                                                      ((lambda (_L104591_
                                                                _L104592_
                                                                _L104593_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp113143
                            (let ((__tmp113149
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self104530_
                                      _L104591_)))
                                  (__tmp113144
                                   (let ((__tmp113148
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self104530_
                                             _L104592_)))
                                         (__tmp113145
                                          (let ((__tmp113147
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self104530_
                                                    _L104593_)))
                                                (__tmp113146
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp113147 __tmp113146))))
                                     (declare (not safe))
                                     (cons __tmp113148 __tmp113145))))
                              (declare (not safe))
                              (cons __tmp113149 __tmp113144))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp113143))
                     (let _lp104611_ ((_rest104614_
                                       (let ((__tmp113141
                                              (let ((__tmp113142
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L104591_ '()))))
                                                (declare (not safe))
                                                (cons _L104592_ __tmp113142))))
                                         (declare (not safe))
                                         (cons _L104593_ __tmp113141)))
                                      (_bind104616_ '())
                                      (_args104617_ '()))
                       (let* ((_rest104618104626_ _rest104614_)
                              (_else104620104634_
                               (lambda ()
                                 (let ((__tmp113125
                                        (let ((__tmp113126
                                               (let ((__tmp113127
                                                      (let ((__tmp113128
                                                             (let ((__tmp113129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113130
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp113130 _args104617_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp113129))))
                (declare (not safe))
                (cons __tmp113128 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp113127))))
                                          (declare (not safe))
                                          (cons _bind104616_ __tmp113126))))
                                   (declare (not safe))
                                   (cons 'let __tmp113125))))
                              (_K104622104720_
                               (lambda (_rest104637_ _e104638_)
                                 (let* ((___stx112346112347_ _e104638_)
                                        (_g104643104661_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx112346112347_)))))
                                   (let ((___kont112348112349_
                                          (lambda ()
                                            (let ((__tmp113131
                                                   (let ((__tmp113132
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e104638_))))
                                                     (declare (not safe))
                                                     (cons __tmp113132
                                                           _args104617_))))
                                              (declare (not safe))
                                              (_lp104611_
                                               _rest104637_
                                               _bind104616_
                                               __tmp113131))))
                                         (___kont112350112351_
                                          (lambda ()
                                            (let ((__tmp113133
                                                   (let ((__tmp113134
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e104638_))))
                                                     (declare (not safe))
                                                     (cons __tmp113134
                                                           _args104617_))))
                                              (declare (not safe))
                                              (_lp104611_
                                               _rest104637_
                                               _bind104616_
                                               __tmp113133))))
                                         (___kont112352112353_
                                          (lambda ()
                                            (let ((_tmp104668_
                                                   (let ((__tmp113135
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp113135))))
                                              (let ((__tmp113137
                                                     (let ((__tmp113138
                                                            (let ((__tmp113139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113140
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e104638_))))
                             (declare (not safe))
                             (cons __tmp113140 '()))))
                      (declare (not safe))
                      (cons _tmp104668_ __tmp113139))))
               (declare (not safe))
               (cons __tmp113138 _bind104616_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp113136
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp104668_
                                                             _args104617_))))
                                                (declare (not safe))
                                                (_lp104611_
                                                 _rest104637_
                                                 __tmp113137
                                                 __tmp113136))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx112346112347_))
                                         (let ((_e104647104699_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx112346112347_))))
                                           (let ((_tl104645104704_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e104647104699_)))
                                                 (_hd104646104702_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e104647104699_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd104646104702_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd104646104702_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl104645104704_))
                                                         (let ((_e104650104707_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl104645104704_))))
                   (let ((_tl104648104712_
                          (let ()
                            (declare (not safe))
                            (##cdr _e104650104707_)))
                         (_hd104649104710_
                          (let ()
                            (declare (not safe))
                            (##car _e104650104707_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl104648104712_))
                         (___kont112348112349_)
                         (___kont112352112353_))))
                 (___kont112352112353_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd104646104702_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl104645104704_))
                     (let ((_e104656104684_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl104645104704_))))
                       (let ((_tl104654104689_
                              (let ()
                                (declare (not safe))
                                (##cdr _e104656104684_)))
                             (_hd104655104687_
                              (let ()
                                (declare (not safe))
                                (##car _e104656104684_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl104654104689_))
                             (___kont112350112351_)
                             (___kont112352112353_))))
                     (___kont112352112353_))
                 (___kont112352112353_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112352112353_))))
                                         (___kont112352112353_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest104618104626_))
                             (let ((_hd104623104723_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest104618104626_)))
                                   (_tl104624104725_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest104618104626_))))
                               (let* ((_e104728_ _hd104623104723_)
                                      (_rest104730_ _tl104624104725_))
                                 (declare (not safe))
                                 (_K104622104720_ _rest104730_ _e104728_)))
                             (let ()
                               (declare (not safe))
                               (_else104620104634_)))))))
               _hd104548104586_
               _hd104545104578_
               _hd104542104570_)
              (let ()
                (declare (not safe))
                (_g104533104554_ _g104534104557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104533104554_
                                                 _g104534104557_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104533104554_ _g104534104557_)))))
                              (let ()
                                (declare (not safe))
                                (_g104533104554_ _g104534104557_)))))
                      (let ()
                        (declare (not safe))
                        (_g104533104554_ _g104534104557_))))))
          (declare (not safe))
          (_g104532104732_ _stx104531_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self104309_ _stx104310_)
        (let* ((_g104312104337_
                (lambda (_g104313104334_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104313104334_))))
               (_g104311104527_
                (lambda (_g104313104340_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104313104340_))
                      (let ((_e104320104342_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104313104340_))))
                        (let ((_hd104319104345_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104320104342_)))
                              (_tl104318104347_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104320104342_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104318104347_))
                              (let ((_e104323104350_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104318104347_))))
                                (let ((_hd104322104353_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104323104350_)))
                                      (_tl104321104355_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104323104350_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104321104355_))
                                      (let ((_e104326104358_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104321104355_))))
                                        (let ((_hd104325104361_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104326104358_)))
                                              (_tl104324104363_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104326104358_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104324104363_))
                                              (let ((_e104329104366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104324104363_))))
                                                (let ((_hd104328104369_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104329104366_)))
                                                      (_tl104327104371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104329104366_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104327104371_))
                                                      (let ((_e104332104374_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104327104371_))))
                (let ((_hd104331104377_
                       (let () (declare (not safe)) (##car _e104332104374_)))
                      (_tl104330104379_
                       (let () (declare (not safe)) (##cdr _e104332104374_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104330104379_))
                      ((lambda (_L104382_ _L104383_ _L104384_ _L104385_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp113169
                                    (let ((__tmp113177
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self104309_
                                              _L104383_)))
                                          (__tmp113170
                                           (let ((__tmp113176
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self104309_
                                                     _L104382_)))
                                                 (__tmp113171
                                                  (let ((__tmp113175
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self104309_
                                                            _L104384_)))
                                                        (__tmp113172
                                                         (let ((__tmp113174
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self104309_ _L104385_)))
                       (__tmp113173
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp113174 __tmp113173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113175
                                                          __tmp113172))))
                                             (declare (not safe))
                                             (cons __tmp113176 __tmp113171))))
                                      (declare (not safe))
                                      (cons __tmp113177 __tmp113170))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp113169))
                             (let _lp104406_ ((_rest104409_
                                               (let ((__tmp113166
                                                      (let ((__tmp113167
                                                             (let ((__tmp113168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L104383_ '()))))
                       (declare (not safe))
                       (cons _L104382_ __tmp113168))))
                (declare (not safe))
                (cons _L104384_ __tmp113167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L104385_ __tmp113166)))
                                              (_bind104411_ '())
                                              (_args104412_ '()))
                               (let* ((_rest104413104421_ _rest104409_)
                                      (_else104415104429_
                                       (lambda ()
                                         (let ((__tmp113150
                                                (let ((__tmp113151
                                                       (let ((__tmp113152
                                                              (let ((__tmp113153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113154
                                    (let ((__tmp113155
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp113155 _args104412_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp113154))))
                        (declare (not safe))
                        (cons __tmp113153 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp113152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind104411_
                                                        __tmp113151))))
                                           (declare (not safe))
                                           (cons 'let __tmp113150))))
                                      (_K104417104515_
                                       (lambda (_rest104432_ _e104433_)
                                         (let* ((___stx112392112393_ _e104433_)
                                                (_g104438104456_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx112392112393_)))))
                                           (let ((___kont112394112395_
                                                  (lambda ()
                                                    (let ((__tmp113156
                                                           (let ((__tmp113157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e104433_))))
                     (declare (not safe))
                     (cons __tmp113157 _args104412_))))
              (declare (not safe))
              (_lp104406_ _rest104432_ _bind104411_ __tmp113156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112396112397_
                                                  (lambda ()
                                                    (let ((__tmp113158
                                                           (let ((__tmp113159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e104433_))))
                     (declare (not safe))
                     (cons __tmp113159 _args104412_))))
              (declare (not safe))
              (_lp104406_ _rest104432_ _bind104411_ __tmp113158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112398112399_
                                                  (lambda ()
                                                    (let ((_tmp104463_
                                                           (let ((__tmp113160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp113160))))
              (let ((__tmp113162
                     (let ((__tmp113163
                            (let ((__tmp113164
                                   (let ((__tmp113165
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e104433_))))
                                     (declare (not safe))
                                     (cons __tmp113165 '()))))
                              (declare (not safe))
                              (cons _tmp104463_ __tmp113164))))
                       (declare (not safe))
                       (cons __tmp113163 _bind104411_)))
                    (__tmp113161
                     (let ()
                       (declare (not safe))
                       (cons _tmp104463_ _args104412_))))
                (declare (not safe))
                (_lp104406_ _rest104432_ __tmp113162 __tmp113161))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx112392112393_))
                                                 (let ((_e104442104494_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx112392112393_))))
                                                   (let ((_tl104440104499_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e104442104494_)))
                                                         (_hd104441104497_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e104442104494_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd104441104497_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd104441104497_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl104440104499_))
                         (let ((_e104445104502_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl104440104499_))))
                           (let ((_tl104443104507_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e104445104502_)))
                                 (_hd104444104505_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e104445104502_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl104443104507_))
                                 (___kont112394112395_)
                                 (___kont112398112399_))))
                         (___kont112398112399_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd104441104497_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl104440104499_))
                             (let ((_e104451104479_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl104440104499_))))
                               (let ((_tl104449104484_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e104451104479_)))
                                     (_hd104450104482_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e104451104479_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl104449104484_))
                                     (___kont112396112397_)
                                     (___kont112398112399_))))
                             (___kont112398112399_))
                         (___kont112398112399_)))
                 (___kont112398112399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112398112399_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest104413104421_))
                                     (let ((_hd104418104518_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest104413104421_)))
                                           (_tl104419104520_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest104413104421_))))
                                       (let* ((_e104523_ _hd104418104518_)
                                              (_rest104525_ _tl104419104520_))
                                         (declare (not safe))
                                         (_K104417104515_
                                          _rest104525_
                                          _e104523_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else104415104429_)))))))
                       _hd104331104377_
                       _hd104328104369_
                       _hd104325104361_
                       _hd104322104353_)
                      (let ()
                        (declare (not safe))
                        (_g104312104337_ _g104313104340_)))))
              (let ()
                (declare (not safe))
                (_g104312104337_ _g104313104340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104312104337_
                                                 _g104313104340_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104312104337_ _g104313104340_)))))
                              (let ()
                                (declare (not safe))
                                (_g104312104337_ _g104313104340_)))))
                      (let ()
                        (declare (not safe))
                        (_g104312104337_ _g104313104340_))))))
          (declare (not safe))
          (_g104311104527_ _stx104310_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self104162_ _stx104163_)
        (letrec ((_import-set-template104165_
                  (lambda (_in104261_ _phi104262_)
                    (let ((_iphi104264_
                           (fx+ _phi104262_
                                (##direct-structure-ref
                                 _in104261_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports104265_
                           (##structure-ref
                            (##direct-structure-ref
                             _in104261_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp104267_ ((_rest104269_ _imports104265_)
                                       (_r104270_ '()))
                        (let* ((_rest104271104279_ _rest104269_)
                               (_else104273104287_ (lambda () _r104270_))
                               (_K104275104297_
                                (lambda (_rest104290_ _in104291_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in104291_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi104264_))
                                          (let ((__tmp113184
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in104291_
                                                         _r104270_))))
                                            (declare (not safe))
                                            (_lp104267_
                                             _rest104290_
                                             __tmp113184))
                                          (let ()
                                            (declare (not safe))
                                            (_lp104267_
                                             _rest104290_
                                             _r104270_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in104291_
                                             'gx#module-import::t))
                                          (let ((_iphi104293_
                                                 (fx+ _phi104262_
                                                      (##direct-structure-ref
                                                       _in104291_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi104293_))
                                                (let ((__tmp113182
                                                       (let ((__tmp113183
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in104291_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp113183
                                                               _r104270_))))
                                                  (declare (not safe))
                                                  (_lp104267_
                                                   _rest104290_
                                                   __tmp113182))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp104267_
                                                   _rest104290_
                                                   _r104270_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in104291_
                                                 'gx#import-set::t))
                                              (let ((_xphi104295_
                                                     (fx+ _iphi104264_
                                                          (##direct-structure-ref
                                                           _in104291_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi104295_))
                                                    (let ((__tmp113180
                                                           (let ((__tmp113181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in104291_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp113181 _r104270_))))
              (declare (not safe))
              (_lp104267_ _rest104290_ __tmp113180))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi104295_)
                                                        (let ((__tmp113178
                                                               (let ((__tmp113179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template104165_
                                 _in104291_
                                 _iphi104264_))))
                         (declare (not safe))
                         (foldl1 cons _r104270_ __tmp113179))))
                  (declare (not safe))
                  (_lp104267_ _rest104290_ __tmp113178))
                (let ()
                  (declare (not safe))
                  (_lp104267_ _rest104290_ _r104270_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp104267_
                                                 _rest104290_
                                                 _r104270_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104271104279_))
                              (let ((_hd104276104300_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104271104279_)))
                                    (_tl104277104302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104271104279_))))
                                (let* ((_in104305_ _hd104276104300_)
                                       (_rest104307_ _tl104277104302_))
                                  (declare (not safe))
                                  (_K104275104297_ _rest104307_ _in104305_)))
                              (let ()
                                (declare (not safe))
                                (_else104273104287_)))))))))
          (let* ((_g104167104177_
                  (lambda (_g104168104174_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104168104174_))))
                 (_g104166104258_
                  (lambda (_g104168104180_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104168104180_))
                        (let ((_e104172104182_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104168104180_))))
                          (let ((_hd104171104185_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104172104182_)))
                                (_tl104170104187_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104172104182_))))
                            ((lambda (_L104190_)
                               (let ((_ht104201_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp104203_ ((_rest104205_ _L104190_)
                                                  (_loads104206_ '()))
                                   (letrec ((_K104208_
                                             (lambda (_ctx104251_ _rest104252_)
                                               (let ((_id104254_
                                                      (##structure-ref
                                                       _ctx104251_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht104201_
                                                        _id104254_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp104203_
                                                        _rest104252_
                                                        _loads104206_))
                                                     (let ((_rt104256_
                                                            (string-append
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#module-id->path-string _id104254_))
                     '"__rt")))
               (let ()
                 (declare (not safe))
                 (hash-put! _ht104201_ _id104254_ _rt104256_))
               (let ((__tmp113185
                      (let ()
                        (declare (not safe))
                        (cons _rt104256_ _loads104206_))))
                 (declare (not safe))
                 (_lp104203_ _rest104252_ __tmp113185))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest104209104217_ _rest104205_)
                                            (_else104211104229_
                                             (lambda ()
                                               (let ((__tmp113186
                                                      (map (lambda (_g104224104226_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g104224104226_))
                   (reverse _loads104206_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp113186))))
                                            (_K104213104239_
                                             (lambda (_rest104232_ _in104233_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in104233_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K104208_
                                                      _in104233_
                                                      _rest104232_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in104233_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp113190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in104233_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp113190))
                   (let ((__tmp113189
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in104233_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K104208_ __tmp113189 _rest104232_))
                   (let ()
                     (declare (not safe))
                     (_lp104203_ _rest104232_ _loads104206_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in104233_
                      'gx#import-set::t))
                   (let ((_phi104235_
                          (##direct-structure-ref
                           _in104233_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi104235_))
                         (let ((__tmp113188
                                (##direct-structure-ref
                                 _in104233_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K104208_ __tmp113188 _rest104232_))
                         (if (fxpositive? _phi104235_)
                             (let* ((_deps104237_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template104165_
                                        _in104233_
                                        '0)))
                                    (__tmp113187
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest104232_
                                               _deps104237_))))
                               (declare (not safe))
                               (_lp104203_ __tmp113187 _loads104206_))
                             (let ()
                               (declare (not safe))
                               (_lp104203_ _rest104232_ _loads104206_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx104163_
                      _in104233_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest104209104217_))
                                           (let ((_hd104214104242_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest104209104217_)))
                                                 (_tl104215104244_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest104209104217_))))
                                             (let* ((_in104247_
                                                     _hd104214104242_)
                                                    (_rest104249_
                                                     _tl104215104244_))
                                               (declare (not safe))
                                               (_K104213104239_
                                                _rest104249_
                                                _in104247_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else104211104229_))))))))
                             _tl104170104187_)))
                        (let ()
                          (declare (not safe))
                          (_g104167104177_ _g104168104180_))))))
            (declare (not safe))
            (_g104166104258_ _stx104163_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self103977_ _stx103978_)
        (letrec ((_add-lift!103980_
                  (lambda (_expr104160_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp113191 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr104160_ __tmp113191)))))
                 (_generate-syntax-quote103981_
                  (lambda (_id104157_ _marks104158_)
                    (let ((__tmp113192
                           (let ((__tmp113193
                                  (let ((__tmp113197
                                         (let ((__tmp113198
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id104157_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp113198)))
                                        (__tmp113194
                                         (let ((__tmp113195
                                                (let ((__tmp113196
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks104158_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp113196))))
                                           (declare (not safe))
                                           (cons '#f __tmp113195))))
                                    (declare (not safe))
                                    (cons __tmp113197 __tmp113194))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp113193))))
                      (declare (not safe))
                      (cons '##structure __tmp113192))))
                 (_generate-simple103982_
                  (lambda (_stxq104152_)
                    (let ((_gid104154_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid104155_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq104152_))))
                      (let ((__tmp113199
                             (let ((__tmp113200
                                    (let ((__tmp113201
                                           (let ((__tmp113202
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote103981_
                                                     _qid104155_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp113202 '()))))
                                      (declare (not safe))
                                      (cons _gid104154_ __tmp113201))))
                               (declare (not safe))
                               (cons 'define __tmp113200))))
                        (declare (not safe))
                        (_add-lift!103980_ __tmp113199))
                      (let ((__tmp113203 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp113203 _stxq104152_ _gid104154_))
                      _gid104154_)))
                 (_generate-serialized103983_
                  (lambda (_stxq104142_ _marks104143_)
                    (let* ((_mark-refs104145_
                            (map _generate-mark103984_ _marks104143_))
                           (_gid104147_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid104149_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq104142_))))
                      (let ((__tmp113204
                             (let ((__tmp113205
                                    (let ((__tmp113206
                                           (let ((__tmp113207
                                                  (let ((__tmp113208
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs104145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote103981_
                                                     _qid104149_
                                                     __tmp113208))))
                                             (declare (not safe))
                                             (cons __tmp113207 '()))))
                                      (declare (not safe))
                                      (cons _gid104147_ __tmp113206))))
                               (declare (not safe))
                               (cons 'define __tmp113205))))
                        (declare (not safe))
                        (_add-lift!103980_ __tmp113204))
                      (let ((__tmp113209 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp113209 _stxq104142_ _gid104147_))
                      _gid104147_)))
                 (_generate-mark103984_
                  (lambda (_mark104128_)
                    (let ((_$e104130_
                           (let ((__tmp113210 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp113210 _mark104128_))))
                      (if _$e104130_
                          (values _$e104130_)
                          (let* ((_gid104133_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr104135_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark103985_ _mark104128_)))
                                 (_ctx104137_
                                  (let ((__tmp113211
                                         (##structure-ref
                                          _mark104128_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp113211)))
                                 (_ctx-ref104139_
                                  (if (let ((__tmp113216
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx104137_ __tmp113216))
                                      '(gx#current-expander-context)
                                      (let ((__tmp113212
                                             (let ((__tmp113213
                                                    (let ((__tmp113214
                                                           (let ((__tmp113215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref103986_ _ctx104137_))))
                     (declare (not safe))
                     (cons __tmp113215 '()))))
              (declare (not safe))
              (cons 'quote __tmp113214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp113213 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp113212)))))
                            (let ((__tmp113217 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp113217 _mark104128_ _gid104133_))
                            (let ((__tmp113218
                                   (let ((__tmp113219
                                          (let ((__tmp113220
                                                 (let ((__tmp113221
                                                        (let ((__tmp113222
                                                               (let ((__tmp113224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp113225
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr104135_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp113225)))
                             (__tmp113223
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref104139_ '()))))
                         (declare (not safe))
                         (cons __tmp113224 __tmp113223))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp113222))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp113221 '()))))
                                            (declare (not safe))
                                            (cons _gid104133_ __tmp113220))))
                                     (declare (not safe))
                                     (cons 'define __tmp113219))))
                              (declare (not safe))
                              (_add-lift!103980_ __tmp113218))
                            _gid104133_)))))
                 (_serialize-mark103985_
                  (lambda (_mark104075_)
                    (letrec ((_quote-e104077_
                              (lambda (_sym104126_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _sym104126_))
                                    _sym104126_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym104126_))))))
                      (let* ((_mark104078104087_ _mark104075_)
                             (_E104080104091_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark104078104087_))))
                             (_K104081104103_
                              (lambda (_trace104094_
                                       _phi104095_
                                       _ctx104096_
                                       _subst104097_)
                                (let* ((_subs104099_
                                        (if _subst104097_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst104097_))
                                            '()))
                                       (__tmp113226
                                        (map (lambda (_pair104101_)
                                               (let ((__tmp113229
                                                      (let ((__tmp113230
                                                             (car _pair104101_)))
                                                        (declare (not safe))
                                                        (_quote-e104077_
                                                         __tmp113230)))
                                                     (__tmp113227
                                                      (let ((__tmp113228
                                                             (cdr _pair104101_)))
                                                        (declare (not safe))
                                                        (_quote-e104077_
                                                         __tmp113228))))
                                                 (declare (not safe))
                                                 (cons __tmp113229
                                                       __tmp113227)))
                                             _subs104099_)))
                                  (declare (not safe))
                                  (cons _phi104095_ __tmp113226)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark104078104087_
                               'gx#expander-mark::t))
                            (let* ((_e104082104106_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark104078104087_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst104109_ _e104082104106_)
                                   (_e104083104111_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark104078104087_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx104114_ _e104083104111_)
                                   (_e104084104116_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark104078104087_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi104119_ _e104084104116_)
                                   (_e104085104121_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark104078104087_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace104124_ _e104085104121_))
                              (declare (not safe))
                              (_K104081104103_
                               _trace104124_
                               _phi104119_
                               _ctx104114_
                               _subst104109_))
                            (let ()
                              (declare (not safe))
                              (_E104080104091_)))))))
                 (_context-ref103986_
                  (lambda (_ctx104062_)
                    (if (let ((__tmp113238
                               (##structure-ref
                                _ctx104062_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp113238
                           'gx#module-context::t))
                        (let ((_ctx-ref104064_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested103988_ _ctx104062_)))
                              (_ctx-origin104065_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin103987_ _ctx104062_)))
                              (_origin104066_
                               (let ((__tmp113232
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin103987_ __tmp113232))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin104066_ _ctx-origin104065_))
                              (let ((_ref104068_
                                     (let ((__tmp113233
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested103988_
                                        __tmp113233))))
                                (let _lp104070_ ((_ref104072_
                                                  (cdr _ref104068_))
                                                 (_ctx-ref104073_
                                                  (cdr _ctx-ref104064_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref104072_))
                                           (let ((__tmp113237
                                                  (car _ref104072_))
                                                 (__tmp113236
                                                  (car _ctx-ref104073_)))
                                             (declare (not safe))
                                             (eq? __tmp113237 __tmp113236)))
                                      (let ((__tmp113235 (cdr _ref104072_))
                                            (__tmp113234
                                             (cdr _ctx-ref104073_)))
                                        (declare (not safe))
                                        (_lp104070_ __tmp113235 __tmp113234))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref104073_)))))
                              _ctx-ref104064_))
                        (let ((__tmp113231
                               (##structure-ref
                                _ctx104062_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp113231)))))
                 (_context-ref-origin103987_
                  (lambda (_ctx104054_)
                    (let _lp104056_ ((_ctx104058_ _ctx104054_))
                      (let ((_super104060_
                             (##structure-ref
                              _ctx104058_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super104060_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp104056_ _super104060_))
                            _ctx104058_)))))
                 (_context-ref-nested103988_
                  (lambda (_ctx104045_)
                    (let _lp104047_ ((_ctx104049_ _ctx104045_) (_r104050_ '()))
                      (let ((_super104052_
                             (##structure-ref
                              _ctx104049_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super104052_
                               'gx#module-context::t))
                            (let ((__tmp113241
                                   (let ((__tmp113242
                                          (car (##structure-ref
                                                _ctx104049_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp113242 _r104050_))))
                              (declare (not safe))
                              (_lp104047_ _super104052_ __tmp113241))
                            (let ((__tmp113239
                                   (let ((__tmp113240
                                          (##structure-ref
                                           _ctx104049_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp113240))))
                              (declare (not safe))
                              (cons __tmp113239 _r104050_))))))))
          (let* ((_g103990104003_
                  (lambda (_g103991104000_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103991104000_))))
                 (_g103989104042_
                  (lambda (_g103991104006_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103991104006_))
                        (let ((_e103995104008_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103991104006_))))
                          (let ((_hd103994104011_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103995104008_)))
                                (_tl103993104013_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103995104008_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl103993104013_))
                                (let ((_e103998104016_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl103993104013_))))
                                  (let ((_hd103997104019_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e103998104016_)))
                                        (_tl103996104021_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e103998104016_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl103996104021_))
                                        ((lambda (_L104024_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L104024_))
                                               (let ((_$e104037_
                                                      (let ((__tmp113243
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp113243
                                                         _L104024_))))
                                                 (if _$e104037_
                                                     (values _$e104037_)
                                                     (let ((_marks104040_
                                                            (##direct-structure-ref
                                                             _L104024_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks104040_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple103982_
                                                              _L104024_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized103983_
                                                              _L104024_
                                                              _marks104040_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L104024_))))
                                         _hd103997104019_)
                                        (let ()
                                          (declare (not safe))
                                          (_g103990104003_ _g103991104006_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g103990104003_ _g103991104006_)))))
                        (let ()
                          (declare (not safe))
                          (_g103990104003_ _g103991104006_))))))
            (declare (not safe))
            (_g103989104042_ _stx103978_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self103909_ _stx103910_)
        (let* ((_g103912103929_
                (lambda (_g103913103926_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103913103926_))))
               (_g103911103974_
                (lambda (_g103913103932_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103913103932_))
                      (let ((_e103918103934_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103913103932_))))
                        (let ((_hd103917103937_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103918103934_)))
                              (_tl103916103939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103918103934_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103916103939_))
                              (let ((_e103921103942_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103916103939_))))
                                (let ((_hd103920103945_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103921103942_)))
                                      (_tl103919103947_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103921103942_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103919103947_))
                                      (let ((_e103924103950_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103919103947_))))
                                        (let ((_hd103923103953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103924103950_)))
                                              (_tl103922103955_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103924103950_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103922103955_))
                                              ((lambda (_L103958_ _L103959_)
                                                 (let ((__tmp113244
                                                        (let ((__tmp113247
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L103959_)))
                      (__tmp113245
                       (let ((__tmp113246
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self103909_ _L103958_))))
                         (declare (not safe))
                         (cons __tmp113246 '()))))
                  (declare (not safe))
                  (cons __tmp113247 __tmp113245))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp113244)))
                                               _hd103923103953_
                                               _hd103920103945_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103912103929_
                                                 _g103913103932_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103912103929_ _g103913103932_)))))
                              (let ()
                                (declare (not safe))
                                (_g103912103929_ _g103913103932_)))))
                      (let ()
                        (declare (not safe))
                        (_g103912103929_ _g103913103932_))))))
          (declare (not safe))
          (_g103911103974_ _stx103910_))))
    (define gxc#generate-meta-begin%
      (lambda (_self103858_ _stx103859_)
        (let* ((_g103861103871_
                (lambda (_g103862103868_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103862103868_))))
               (_g103860103906_
                (lambda (_g103862103874_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103862103874_))
                      (let ((_e103866103876_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103862103874_))))
                        (let ((_hd103865103879_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103866103876_)))
                              (_tl103864103881_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103866103876_))))
                          ((lambda (_L103884_)
                             (let* ((_c-body103898_
                                     (map (lambda (_g103893103895_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self103858_
                                               _g103893103895_)))
                                          _L103884_))
                                    (_c-body103903_
                                     (filter (lambda (_$obj103900_)
                                               (let ((__tmp113248
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj103900_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp113248)))
                                             _c-body103898_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body103903_))))
                           _tl103864103881_)))
                      (let ()
                        (declare (not safe))
                        (_g103861103871_ _g103862103874_))))))
          (declare (not safe))
          (_g103860103906_ _stx103859_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self103766_ _stx103767_)
        (let* ((_g103769103779_
                (lambda (_g103770103776_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103770103776_))))
               (_g103768103855_
                (lambda (_g103770103782_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103770103782_))
                      (let ((_e103774103784_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103770103782_))))
                        (let ((_hd103773103787_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103774103784_)))
                              (_tl103772103789_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103774103784_))))
                          ((lambda (_L103792_)
                             (let* ((_phi103802_
                                     (let ((__tmp113249
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp113249 '1)))
                                    (_block103804_
                                     (let ((__tmp113250
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self103766_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp113250
                                        _phi103802_)))
                                    (_compiled103807_
                                     (let ((__tmp113251
                                            (lambda ()
                                              (let ((__tmp113253
                                                     (let ((__tmp113254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp113254
                                                             _L103792_)))
                                                    (__tmp113252
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self103766_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp113253
                                                 'state:
                                                 __tmp113252)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp113251
                                        gx#current-expander-phi
                                        _phi103802_))))
                               (let* ((_g103810103820_
                                       (lambda (_g103811103817_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g103811103817_))))
                                      (_g103809103852_
                                       (lambda (_g103811103823_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g103811103823_))
                                             (let ((_e103815103825_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g103811103823_))))
                                               (let ((_hd103814103828_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e103815103825_)))
                                                     (_tl103813103830_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e103815103825_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd103814103828_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd103814103828_))
                                                         ((lambda (_L103833_)
                                                            (let ((_c-body103850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj103847_)
                                     (let ((__tmp113255
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj103847_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp113255)))
                                   _L103833_)))
                      (if _block103804_
                          (let ((__tmp113256
                                 (let ((__tmp113257
                                        (let ((__tmp113258
                                               (let ((__tmp113262
                                                      (let ((__tmp113263
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp113263)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp113259
                                                      (let ((__tmp113260
                                                             (let ((__tmp113261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block103804_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp113261))))
                (declare (not safe))
                (cons __tmp113260 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp113262
                                                       __tmp113259))))
                                          (declare (not safe))
                                          (cons '%#call __tmp113258))))
                                   (declare (not safe))
                                   (cons __tmp113257 _c-body103850_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp113256))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body103850_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body103850_))))))
                  _tl103813103830_)
                 (let ()
                   (declare (not safe))
                   (_g103810103820_ _g103811103823_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g103810103820_
                                                        _g103811103823_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g103810103820_
                                                _g103811103823_))))))
                                 (declare (not safe))
                                 (_g103809103852_ _compiled103807_))))
                           _tl103772103789_)))
                      (let ()
                        (declare (not safe))
                        (_g103769103779_ _g103770103782_))))))
          (declare (not safe))
          (_g103768103855_ _stx103767_))))
    (define gxc#generate-meta-module%
      (lambda (_self103697_ _stx103698_)
        (let ((__tmp113264
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self103697_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp113264))
        (let* ((_g103700103714_
                (lambda (_g103701103711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103701103711_))))
               (_g103699103763_
                (lambda (_g103701103717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103701103717_))
                      (let ((_e103706103719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103701103717_))))
                        (let ((_hd103705103722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103706103719_)))
                              (_tl103704103724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103706103719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103704103724_))
                              (let ((_e103709103727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103704103724_))))
                                (let ((_hd103708103730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103709103727_)))
                                      (_tl103707103732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103709103727_))))
                                  ((lambda (_L103735_ _L103736_)
                                     (let ((_key103749_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L103736_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _key103749_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx103698_
                                              _L103736_
                                              _key103749_)))
                                       (let* ((_ctx103751_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L103736_)))
                                              (_code103754_
                                               (let ((__tmp113265
                                                      (lambda ()
                                                        (let ((__tmp113266
                                                               (##structure-ref
                                                                _ctx103751_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self103697_
                                                           __tmp113266)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp113265
                                                  gx#current-expander-context
                                                  _ctx103751_)))
                                              (_rt103756_
                                               (let ((__tmp113267
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp113267
                                                  _ctx103751_)))
                                              (_loader103758_
                                               (if _rt103756_
                                                   (let ((__tmp113268
                                                          (let ((__tmp113269
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113273
                                (let ((__tmp113274
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp113274)))
                               (__tmp113270
                                (let ((__tmp113271
                                       (let ((__tmp113272
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt103756_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp113272))))
                                  (declare (not safe))
                                  (cons __tmp113271 '()))))
                           (declare (not safe))
                           (cons __tmp113273 __tmp113270))))
                    (declare (not safe))
                    (cons '%#call __tmp113269))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113268 '()))
                                                   '()))
                                              (_modid103760_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L103736_))))
                                         (let ((__tmp113275
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self103697_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp113275))
                                         (let ((__tmp113276
                                                (let ((__tmp113277
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code103754_
                                                               _loader103758_))))
                                                  (declare (not safe))
                                                  (cons _modid103760_
                                                        __tmp113277))))
                                           (declare (not safe))
                                           (cons '%#module __tmp113276)))))
                                   _tl103707103732_
                                   _hd103708103730_)))
                              (let ()
                                (declare (not safe))
                                (_g103700103714_ _g103701103717_)))))
                      (let ()
                        (declare (not safe))
                        (_g103700103714_ _g103701103717_))))))
          (declare (not safe))
          (_g103699103763_ _stx103698_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx103687_ _context-chain103688_)
        (let _lp103690_ ((_ctx103692_ _ctx103687_) (_path103693_ '()))
          (let ((_super103695_
                 (##structure-ref _ctx103692_ '3 gx#phi-context::t '#f)))
            (if (memq _super103695_ _context-chain103688_)
                (let ((__tmp113282
                       (let ((__tmp113283
                              (car (##structure-ref
                                    _ctx103692_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp113283 _path103693_))))
                  (declare (not safe))
                  (cons '#f __tmp113282))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super103695_
                       'gx#module-context::t))
                    (let ((__tmp113280
                           (let ((__tmp113281
                                  (car (##structure-ref
                                        _ctx103692_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp113281 _path103693_))))
                      (declare (not safe))
                      (_lp103690_ _super103695_ __tmp113280))
                    (let ((__tmp113278
                           (let ((__tmp113279
                                  (##structure-ref
                                   _ctx103692_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp113279))))
                      (declare (not safe))
                      (cons __tmp113278 _path103693_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp103682_ ((_ctx103684_ (gx#current-expander-context))
                         (_r103685_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx103684_ 'gx#module-context::t))
              (let ((__tmp113285
                     (##structure-ref _ctx103684_ '3 gx#phi-context::t '#f))
                    (__tmp113284
                     (let ()
                       (declare (not safe))
                       (cons _ctx103684_ _r103685_))))
                (declare (not safe))
                (_lp103682_ __tmp113285 __tmp113284))
              _r103685_))))
    (define gxc#generate-meta-import%
      (lambda (_self103451_ _stx103452_)
        (letrec* ((_context-chain103454_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec103455_
                   (lambda (_in103618_)
                     (let* ((_in103619103631_ _in103618_)
                            (_E103621103635_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in103619103631_))))
                            (_K103622103645_
                             (lambda (_phi103638_
                                      _name103639_
                                      _src-name103640_
                                      _src-phi103641_
                                      _src-key103642_
                                      _src-ctx103643_)
                               (let ((__tmp113286
                                      (let ((__tmp113290
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name103639_)))
                                            (__tmp113287
                                             (let ((__tmp113288
                                                    (let ((__tmp113289
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name103640_))))
                                                      (declare (not safe))
                                                      (cons __tmp113289 '()))))
                                               (declare (not safe))
                                               (cons _src-phi103641_
                                                     __tmp113288))))
                                        (declare (not safe))
                                        (cons __tmp113290 __tmp113287))))
                                 (declare (not safe))
                                 (cons _phi103638_ __tmp113286)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in103619103631_
                              'gx#module-import::t))
                           (let ((_e103623103648_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in103619103631_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e103623103648_
                                    'gx#module-export::t))
                                 (let* ((_e103626103651_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103623103648_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx103654_ _e103626103651_)
                                        (_e103627103656_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103623103648_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key103659_ _e103627103656_)
                                        (_e103628103661_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103623103648_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi103664_ _e103628103661_)
                                        (_e103629103666_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103623103648_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name103669_ _e103629103666_)
                                        (_e103624103671_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in103619103631_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name103674_ _e103624103671_)
                                        (_e103625103676_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in103619103631_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi103679_ _e103625103676_))
                                   (declare (not safe))
                                   (_K103622103645_
                                    _phi103679_
                                    _name103674_
                                    _src-name103669_
                                    _src-phi103664_
                                    _src-key103659_
                                    _src-ctx103654_))
                                 (let ()
                                   (declare (not safe))
                                   (_E103621103635_))))
                           (let () (declare (not safe)) (_E103621103635_))))))
                  (_make-import-path103456_
                   (lambda (_ctx103616_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx103616_
                        _context-chain103454_))))
                  (_make-import-spec-in103457_
                   (lambda (_ctx103613_ _in103614_)
                     (let ((__tmp113291
                            (let ((__tmp113293
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path103456_ _ctx103613_)))
                                  (__tmp113292 (reverse _in103614_)))
                              (declare (not safe))
                              (cons __tmp113293 __tmp113292))))
                       (declare (not safe))
                       (cons 'spec: __tmp113291)))))
          (let ((__tmp113294
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self103451_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp113294))
          (let* ((_g103459103469_
                  (lambda (_g103460103466_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103460103466_))))
                 (_g103458103610_
                  (lambda (_g103460103472_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103460103472_))
                        (let ((_e103464103474_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103460103472_))))
                          (let ((_hd103463103477_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103464103474_)))
                                (_tl103462103479_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103464103474_))))
                            ((lambda (_L103482_)
                               (let _lp103493_ ((_rest103495_ _L103482_)
                                                (_current-src103496_ '#f)
                                                (_current-in103497_ '())
                                                (_r103498_ '()))
                                 (let* ((_rest103499103507_ _rest103495_)
                                        (_else103501103517_
                                         (lambda ()
                                           (let* ((_r103515_
                                                   (if _current-src103496_
                                                       (let ((__tmp113295
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in103457_
                         _current-src103496_
                         _current-in103497_))))
                 (declare (not safe))
                 (cons __tmp113295 _r103498_))
               _r103498_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp113296
                                                   (reverse _r103515_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp113296))))
                                        (_K103503103598_
                                         (lambda (_rest103520_ _in103521_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in103521_
                                                  'gx#module-import::t))
                                               (let* ((_in103522103529_
                                                       _in103521_)
                                                      (_E103524103533_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in103522103529_))))
              (_K103525103538_
               (lambda (_src-ctx103536_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src103496_ _src-ctx103536_))
                     (let ((__tmp113312
                            (let ((__tmp113313
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec103455_ _in103521_))))
                              (declare (not safe))
                              (cons __tmp113313 _current-in103497_))))
                       (declare (not safe))
                       (_lp103493_
                        _rest103520_
                        _current-src103496_
                        __tmp113312
                        _r103498_))
                     (if _current-src103496_
                         (let ((__tmp113310
                                (let ((__tmp113311
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec103455_
                                          _in103521_))))
                                  (declare (not safe))
                                  (cons __tmp113311 '())))
                               (__tmp113308
                                (let ((__tmp113309
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in103457_
                                          _current-src103496_
                                          _current-in103497_))))
                                  (declare (not safe))
                                  (cons __tmp113309 _r103498_))))
                           (declare (not safe))
                           (_lp103493_
                            _rest103520_
                            _src-ctx103536_
                            __tmp113310
                            __tmp113308))
                         (let ((__tmp113306
                                (let ((__tmp113307
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec103455_
                                          _in103521_))))
                                  (declare (not safe))
                                  (cons __tmp113307 '()))))
                           (declare (not safe))
                           (_lp103493_
                            _rest103520_
                            _src-ctx103536_
                            __tmp113306
                            _r103498_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in103522103529_
                                                        'gx#module-import::t))
                                                     (let ((_e103526103541_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in103522103529_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e103526103541_
                                                              'gx#module-export::t))
                                                           (let* ((_e103527103544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e103526103541_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx103547_ _e103527103544_))
                     (declare (not safe))
                     (_K103525103538_ _src-ctx103547_))
                   (let () (declare (not safe)) (_E103524103533_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E103524103533_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in103521_
                                                      'gx#import-set::t))
                                                   (let* ((_phi103549_
                                                           (##direct-structure-ref
                                                            _in103521_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src103551_
                                                           (##direct-structure-ref
                                                            _in103521_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in103591_
                                                           (let* ((_g103552103561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path103456_ _src103551_)))
                          (_E103555103565_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g103552103561_)))))
                     (let ((_K103557103581_
                            (lambda (_path103579_) _path103579_))
                           (_K103556103571_
                            (lambda (_path103569_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path103569_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g103552103561_))
                           (let ((_tl103559103586_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g103552103561_)))
                                 (_hd103558103584_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g103552103561_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl103559103586_))
                                 (let ((_path103589_ _hd103558103584_))
                                   (declare (not safe))
                                   (_K103557103581_ _path103589_))
                                 (let ((_path103574_ _g103552103561_))
                                   (declare (not safe))
                                   (_K103556103571_ _path103574_))))
                           (let ((_path103574_ _g103552103561_))
                             (declare (not safe))
                             (_K103556103571_ _path103574_))))))
                  (_r103593_
                   (if _current-src103496_
                       (let ((__tmp113301
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in103457_
                                 _current-src103496_
                                 _current-in103497_))))
                         (declare (not safe))
                         (cons __tmp113301 _r103498_))
                       _r103498_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp113302
                                                            (let ((__tmp113303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi103549_))
                               _src-in103591_
                               (let ((__tmp113304
                                      (let ((__tmp113305
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in103591_ '()))))
                                        (declare (not safe))
                                        (cons _phi103549_ __tmp113305))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp113304)))))
                      (declare (not safe))
                      (cons __tmp113303 _r103593_))))
               (declare (not safe))
               (_lp103493_ _rest103520_ '#f '() __tmp113302)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in103521_
                                                          'gx#module-context::t))
                                                       (let* ((_r103596_
                                                               (if _current-src103496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113297
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in103457_
                                     _current-src103496_
                                     _current-in103497_))))
                             (declare (not safe))
                             (cons __tmp113297 _r103498_))
                           _r103498_))
                      (__tmp113298
                       (let ((__tmp113299
                              (let ((__tmp113300
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path103456_ _in103521_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp113300))))
                         (declare (not safe))
                         (cons __tmp113299 _r103596_))))
                 (declare (not safe))
                 (_lp103493_ _rest103520_ '#f '() __tmp113298))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest103499103507_))
                                       (let ((_hd103504103601_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest103499103507_)))
                                             (_tl103505103603_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest103499103507_))))
                                         (let* ((_in103606_ _hd103504103601_)
                                                (_rest103608_
                                                 _tl103505103603_))
                                           (declare (not safe))
                                           (_K103503103598_
                                            _rest103608_
                                            _in103606_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else103501103517_))))))
                             _tl103462103479_)))
                        (let ()
                          (declare (not safe))
                          (_g103459103469_ _g103460103472_))))))
            (declare (not safe))
            (_g103458103610_ _stx103452_)))))
    (define gxc#generate-meta-export%
      (lambda (_self103261_ _stx103262_)
        (letrec* ((_context-chain103264_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path103265_
                   (lambda (_ctx103449_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx103449_
                        _context-chain103264_)))))
          (let* ((_g103267103277_
                  (lambda (_g103268103274_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103268103274_))))
                 (_g103266103446_
                  (lambda (_g103268103280_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103268103280_))
                        (let ((_e103272103282_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103268103280_))))
                          (let ((_hd103271103285_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103272103282_)))
                                (_tl103270103287_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103272103282_))))
                            ((lambda (_L103290_)
                               (let _lp103301_ ((_rest103303_ _L103290_)
                                                (_r103304_ '()))
                                 (let* ((_rest103305103313_ _rest103303_)
                                        (_else103307103321_
                                         (lambda ()
                                           (let ((__tmp113314
                                                  (reverse _r103304_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp113314))))
                                        (_K103309103434_
                                         (lambda (_rest103324_ _out103325_)
                                           (let* ((_out103326103339_
                                                   _out103325_)
                                                  (_E103329103343_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out103326103339_)))))
                                             (let ((_K103333103413_
                                                    (lambda (_name103409_
                                                             _phi103410_
                                                             _key103411_)
                                                      (let ((__tmp113315
                                                             (let ((__tmp113316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113317
                                   (let ((__tmp113318
                                          (let ((__tmp113321
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key103411_)))
                                                (__tmp113319
                                                 (let ((__tmp113320
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name103409_))))
                                                   (declare (not safe))
                                                   (cons __tmp113320 '()))))
                                            (declare (not safe))
                                            (cons __tmp113321 __tmp113319))))
                                     (declare (not safe))
                                     (cons _phi103410_ __tmp113318))))
                              (declare (not safe))
                              (cons 'spec: __tmp113317))))
                       (declare (not safe))
                       (cons __tmp113316 _r103304_))))
                (declare (not safe))
                (_lp103301_ _rest103324_ __tmp113315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K103330103393_
                                                    (lambda (_phi103347_
                                                             _src103348_)
                                                      (let* ((_out103388_
                                                              (if _src103348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp113322
                                 (let ((__tmp113323
                                        (let* ((_g103349103358_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path103265_
                                                   _src103348_)))
                                               (_E103352103362_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g103349103358_)))))
                                          (let ((_K103354103378_
                                                 (lambda (_path103376_)
                                                   _path103376_))
                                                (_K103353103368_
                                                 (lambda (_path103366_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path103366_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g103349103358_))
                                                (let ((_tl103356103383_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g103349103358_)))
                                                      (_hd103355103381_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g103349103358_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl103356103383_))
                                                      (let ((_path103386_
                                                             _hd103355103381_))
                                                        (declare (not safe))
                                                        (_K103354103378_
                                                         _path103386_))
                                                      (let ((_path103371_
                                                             _g103349103358_))
                                                        (declare (not safe))
                                                        (_K103353103368_
                                                         _path103371_))))
                                                (let ((_path103371_
                                                       _g103349103358_))
                                                  (declare (not safe))
                                                  (_K103353103368_
                                                   _path103371_)))))))
                                   (declare (not safe))
                                   (cons __tmp113323 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp113322))
                          '#t))
                     (_out103390_
                      (if (let () (declare (not safe)) (fxzero? _phi103347_))
                          _out103388_
                          (let ((__tmp113324
                                 (let ((__tmp113325
                                        (let ()
                                          (declare (not safe))
                                          (cons _out103388_ '()))))
                                   (declare (not safe))
                                   (cons _phi103347_ __tmp113325))))
                            (declare (not safe))
                            (cons 'phi: __tmp113324)))))
                (let ((__tmp113326
                       (let ()
                         (declare (not safe))
                         (cons _out103390_ _r103304_))))
                  (declare (not safe))
                  (_lp103301_ _rest103324_ __tmp113326))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match103328103406_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out103326103339_
                                                               'gx#export-set::t))
                                                            (let* ((_e103331103396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out103326103339_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e103332103401_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out103326103339_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src103399_ _e103331103396_)
                            (_phi103404_ _e103332103401_))
                        (let ()
                          (declare (not safe))
                          (_K103330103393_ _phi103404_ _src103399_))))
                    (let () (declare (not safe)) (_E103329103343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out103326103339_
                                                        'gx#module-export::t))
                                                     (let* ((_e103334103416_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out103326103339_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e103335103419_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103326103339_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e103336103424_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103326103339_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e103337103429_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103326103339_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key103422_ _e103335103419_)
                     (_phi103427_ _e103336103424_)
                     (_name103432_ _e103337103429_))
                 (let ()
                   (declare (not safe))
                   (_K103333103413_ _name103432_ _phi103427_ _key103422_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match103328103406_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest103305103313_))
                                       (let ((_hd103310103437_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest103305103313_)))
                                             (_tl103311103439_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest103305103313_))))
                                         (let* ((_out103442_ _hd103310103437_)
                                                (_rest103444_
                                                 _tl103311103439_))
                                           (declare (not safe))
                                           (_K103309103434_
                                            _rest103444_
                                            _out103442_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else103307103321_))))))
                             _tl103270103287_)))
                        (let ()
                          (declare (not safe))
                          (_g103267103277_ _g103268103280_))))))
            (declare (not safe))
            (_g103266103446_ _stx103262_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self103222_ _stx103223_)
        (let ((__tmp113327
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self103222_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp113327))
        (let* ((_g103225103235_
                (lambda (_g103226103232_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103226103232_))))
               (_g103224103258_
                (lambda (_g103226103238_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103226103238_))
                      (let ((_e103230103240_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103226103238_))))
                        (let ((_hd103229103243_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103230103240_)))
                              (_tl103228103245_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103230103240_))))
                          ((lambda (_L103248_)
                             (let ((__tmp113328
                                    (map gxc#generate-runtime-identifier
                                         _L103248_)))
                               (declare (not safe))
                               (cons '%#provide __tmp113328)))
                           _tl103228103245_)))
                      (let ()
                        (declare (not safe))
                        (_g103225103235_ _g103226103238_))))))
          (declare (not safe))
          (_g103224103258_ _stx103223_))))
    (define gxc#generate-meta-extern%
      (lambda (_self103093_ _stx103094_)
        (letrec ((_generate1103096_
                  (lambda (_id103217_ _eid103218_)
                    (let ((_eid103220_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid103218_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _eid103220_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx103094_
                             _eid103220_)))
                      (let ((__tmp113330
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id103217_)))
                            (__tmp113329
                             (let ()
                               (declare (not safe))
                               (cons _eid103220_ '()))))
                        (declare (not safe))
                        (cons __tmp113330 __tmp113329))))))
          (let* ((_g103098103126_
                  (lambda (_g103099103123_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103099103123_))))
                 (_g103097103214_
                  (lambda (_g103099103129_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103099103129_))
                        (let ((_e103104103131_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103099103129_))))
                          (let ((_hd103103103134_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103104103131_)))
                                (_tl103102103136_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103104103131_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl103102103136_))
                                (let ((_g113331_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl103102103136_
                                          '0))))
                                  (begin
                                    (let ((_g113332_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g113331_)
                                                 (##vector-length _g113331_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g113332_ 2)))
                                          (error "Context expects 2 values"
                                                 _g113332_)))
                                    (let ((_target103105103139_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g113331_ 0)))
                                          (_tl103107103141_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g113331_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl103107103141_))
                                          (letrec ((_loop103108103144_
                                                    (lambda (_hd103106103147_
                                                             _eid103112103149_
                                                             _id103113103151_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd103106103147_))
                                                          (let ((_e103109103154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd103106103147_))))
                    (let ((_lp-hd103110103157_
                           (let ()
                             (declare (not safe))
                             (##car _e103109103154_)))
                          (_lp-tl103111103159_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103109103154_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd103110103157_))
                          (let ((_e103118103162_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd103110103157_))))
                            (let ((_hd103117103165_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103118103162_)))
                                  (_tl103116103167_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103118103162_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl103116103167_))
                                  (let ((_e103121103170_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl103116103167_))))
                                    (let ((_hd103120103173_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103121103170_)))
                                          (_tl103119103175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103121103170_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl103119103175_))
                                          (let ((__tmp113337
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd103120103173_
                                                         _eid103112103149_)))
                                                (__tmp113336
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd103117103165_
                                                         _id103113103151_))))
                                            (declare (not safe))
                                            (_loop103108103144_
                                             _lp-tl103111103159_
                                             __tmp113337
                                             __tmp113336))
                                          (let ()
                                            (declare (not safe))
                                            (_g103098103126_
                                             _g103099103129_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g103098103126_ _g103099103129_)))))
                          (let ()
                            (declare (not safe))
                            (_g103098103126_ _g103099103129_)))))
                  (let ((_eid103114103178_ (reverse _eid103112103149_))
                        (_id103115103180_ (reverse _id103113103151_)))
                    ((lambda (_L103183_ _L103184_)
                       (let ((__tmp113333
                              (map _generate1103096_
                                   (let ((__tmp113334
                                          (lambda (_g103199103202_
                                                   _g103200103204_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g103199103202_
                                                    _g103200103204_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp113334 '() _L103184_))
                                   (let ((__tmp113335
                                          (lambda (_g103206103209_
                                                   _g103207103211_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g103206103209_
                                                    _g103207103211_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp113335 '() _L103183_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp113333)))
                     _eid103114103178_
                     _id103115103180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop103108103144_
                                               _target103105103139_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g103098103126_
                                             _g103099103129_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g103098103126_ _g103099103129_)))))
                        (let ()
                          (declare (not safe))
                          (_g103098103126_ _g103099103129_))))))
            (declare (not safe))
            (_g103097103214_ _stx103094_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self102883_ _stx102884_)
        (letrec ((_generate1102886_
                  (lambda (_id103088_)
                    (let ((_eid103090_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id103088_)))
                          (_ident103091_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id103088_))))
                      (let ((__tmp113338
                             (let ((__tmp113339
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid103090_ '()))))
                               (declare (not safe))
                               (cons _ident103091_ __tmp113339))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp113338)))))
                 (_generate*102887_
                  (lambda (_all103056_)
                    (let* ((_all103057103065_ _all103056_)
                           (_else103059103073_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all103056_))))
                           (_K103061103078_
                            (lambda (_one103076_) _one103076_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all103057103065_))
                          (let ((_hd103062103081_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all103057103065_)))
                                (_tl103063103083_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all103057103065_))))
                            (let ((_one103086_ _hd103062103081_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl103063103083_))
                                  (let ()
                                    (declare (not safe))
                                    (_K103061103078_ _one103086_))
                                  (let ()
                                    (declare (not safe))
                                    (_else103059103073_)))))
                          (let ()
                            (declare (not safe))
                            (_else103059103073_)))))))
          (let* ((_g102889102906_
                  (lambda (_g102890102903_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102890102903_))))
                 (_g102888103053_
                  (lambda (_g102890102909_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102890102909_))
                        (let ((_e102895102911_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102890102909_))))
                          (let ((_hd102894102914_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102895102911_)))
                                (_tl102893102916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102895102911_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102893102916_))
                                (let ((_e102898102919_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102893102916_))))
                                  (let ((_hd102897102922_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102898102919_)))
                                        (_tl102896102924_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102898102919_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102896102924_))
                                        (let ((_e102901102927_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102896102924_))))
                                          (let ((_hd102900102930_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102901102927_)))
                                                (_tl102899102932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102901102927_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102899102932_))
                                                ((lambda (_L102935_ _L102936_)
                                                   (let _lp102952_ ((_rest102954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L102936_)
                            (_r102955_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx112469112470_
                                                             _rest102954_)
                                                            (_g102960102977_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx112469112470_)))))
               (let ((___kont112471112472_
                      (lambda (_L103040_)
                        (let ()
                          (declare (not safe))
                          (_lp102952_ _L103040_ _r102955_))))
                     (___kont112473112474_
                      (lambda (_L103013_ _L103014_)
                        (let ((__tmp113340
                               (let ((__tmp113341
                                      (let ()
                                        (declare (not safe))
                                        (_generate1102886_ _L103014_))))
                                 (declare (not safe))
                                 (cons __tmp113341 _r102955_))))
                          (declare (not safe))
                          (_lp102952_ _L103013_ __tmp113340))))
                     (___kont112475112476_
                      (lambda (_L102989_)
                        (let ((__tmp113342
                               (let ((__tmp113343
                                      (let ((__tmp113344
                                             (let ()
                                               (declare (not safe))
                                               (_generate1102886_ _L102989_))))
                                        (declare (not safe))
                                        (cons __tmp113344 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp113343 _r102955_))))
                          (declare (not safe))
                          (_generate*102887_ __tmp113342))))
                     (___kont112477112478_
                      (lambda ()
                        (let ((__tmp113345 (reverse _r102955_)))
                          (declare (not safe))
                          (_generate*102887_ __tmp113345)))))
                 (let ((_g102958103000_
                        (lambda ()
                          (let ((_L102989_ ___stx112469112470_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L102989_))
                                (___kont112475112476_ _L102989_)
                                (___kont112477112478_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx112469112470_))
                       (let ((_e102965103029_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx112469112470_))))
                         (let ((_tl102963103034_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e102965103029_)))
                               (_hd102964103032_
                                (let ()
                                  (declare (not safe))
                                  (##car _e102965103029_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd102964103032_))
                               (let ((_e102966103037_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd102964103032_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e102966103037_ '#f))
                                     (___kont112471112472_ _tl102963103034_)
                                     (___kont112473112474_
                                      _tl102963103034_
                                      _hd102964103032_)))
                               (___kont112473112474_
                                _tl102963103034_
                                _hd102964103032_))))
                       (let () (declare (not safe)) (_g102958103000_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd102900102930_
                                                 _hd102897102922_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102889102906_
                                                   _g102890102909_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102889102906_ _g102890102909_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102889102906_ _g102890102909_)))))
                        (let ()
                          (declare (not safe))
                          (_g102889102906_ _g102890102909_))))))
            (declare (not safe))
            (_g102888103053_ _stx102884_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self102780_ _stx102781_)
        (let* ((_g102783102800_
                (lambda (_g102784102797_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102784102797_))))
               (_g102782102880_
                (lambda (_g102784102803_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102784102803_))
                      (let ((_e102789102805_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102784102803_))))
                        (let ((_hd102788102808_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102789102805_)))
                              (_tl102787102810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102789102805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102787102810_))
                              (let ((_e102792102813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102787102810_))))
                                (let ((_hd102791102816_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102792102813_)))
                                      (_tl102790102818_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102792102813_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102790102818_))
                                      (let ((_e102795102821_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102790102818_))))
                                        (let ((_hd102794102824_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102795102821_)))
                                              (_tl102793102826_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102795102821_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102793102826_))
                                              ((lambda (_L102829_ _L102830_)
                                                 (let* ((_eid102845_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L102830_)))
                                                        (_phi102847_
                                                         (let ((__tmp113346
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp113346
                                                                '1)))
                                                        (_block102849_
                                                         (let ((__tmp113347
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self102780_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp113347 _phi102847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g102852102859_
                                                           (lambda (_g102853102856_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g102853102856_))))
                  (_g102851102877_
                   (lambda (_g102853102862_)
                     ((lambda (_L102864_)
                        (let ()
                          (let ((__tmp113352
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self102780_ 'state)))
                                (__tmp113348
                                 (let ((__tmp113351
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp113349
                                        (let ((__tmp113350
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L102829_ '()))))
                                          (declare (not safe))
                                          (cons _L102864_ __tmp113350))))
                                   (declare (not safe))
                                   (cons __tmp113351 __tmp113349))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp113352
                             _phi102847_
                             __tmp113348))))
                      _g102853102862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g102851102877_
                                                      _eid102845_))
                                                   (if _block102849_
                                                       (let ((__tmp113356
                                                              (let ((__tmp113362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113363
                                    (let ((__tmp113364
                                           (let ((__tmp113365
                                                  (let ((__tmp113369
                                                         (let ((__tmp113370
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp113370)))
                (__tmp113366
                 (let ((__tmp113367
                        (let ((__tmp113368
                               (let ()
                                 (declare (not safe))
                                 (cons _block102849_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp113368))))
                   (declare (not safe))
                   (cons __tmp113367 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113369
                                                          __tmp113366))))
                                             (declare (not safe))
                                             (cons '%#call __tmp113365))))
                                      (declare (not safe))
                                      (cons __tmp113364 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp113363)))
                            (__tmp113357
                             (let ((__tmp113358
                                    (let ((__tmp113359
                                           (let ((__tmp113361
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L102830_)))
                                                 (__tmp113360
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid102845_ '()))))
                                             (declare (not safe))
                                             (cons __tmp113361 __tmp113360))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp113359))))
                               (declare (not safe))
                               (cons __tmp113358 '()))))
                        (declare (not safe))
                        (cons __tmp113362 __tmp113357))))
                 (declare (not safe))
                 (cons '%#begin __tmp113356))
               (let ((__tmp113353
                      (let ((__tmp113355
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L102830_)))
                            (__tmp113354
                             (let ()
                               (declare (not safe))
                               (cons _eid102845_ '()))))
                        (declare (not safe))
                        (cons __tmp113355 __tmp113354))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp113353)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd102794102824_
                                               _hd102791102816_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102783102800_
                                                 _g102784102803_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102783102800_ _g102784102803_)))))
                              (let ()
                                (declare (not safe))
                                (_g102783102800_ _g102784102803_)))))
                      (let ()
                        (declare (not safe))
                        (_g102783102800_ _g102784102803_))))))
          (declare (not safe))
          (_g102782102880_ _stx102781_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self102712_ _stx102713_)
        (let* ((_g102715102732_
                (lambda (_g102716102729_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102716102729_))))
               (_g102714102777_
                (lambda (_g102716102735_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102716102735_))
                      (let ((_e102721102737_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102716102735_))))
                        (let ((_hd102720102740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102721102737_)))
                              (_tl102719102742_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102721102737_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102719102742_))
                              (let ((_e102724102745_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102719102742_))))
                                (let ((_hd102723102748_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102724102745_)))
                                      (_tl102722102750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102724102745_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102722102750_))
                                      (let ((_e102727102753_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102722102750_))))
                                        (let ((_hd102726102756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102727102753_)))
                                              (_tl102725102758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102727102753_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102725102758_))
                                              ((lambda (_L102761_ _L102762_)
                                                 (let ((__tmp113371
                                                        (let ((__tmp113374
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L102762_)))
                      (__tmp113372
                       (let ((__tmp113373
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L102761_))))
                         (declare (not safe))
                         (cons __tmp113373 '()))))
                  (declare (not safe))
                  (cons __tmp113374 __tmp113372))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp113371)))
                                               _hd102726102756_
                                               _hd102723102748_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102715102732_
                                                 _g102716102735_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102715102732_ _g102716102735_)))))
                              (let ()
                                (declare (not safe))
                                (_g102715102732_ _g102716102735_)))))
                      (let ()
                        (declare (not safe))
                        (_g102715102732_ _g102716102735_))))))
          (declare (not safe))
          (_g102714102777_ _stx102713_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self102709_ _stx102710_)
        (let ((__tmp113376
               (let () (declare (not safe)) (slot-ref__0 _self102709_ 'state)))
              (__tmp113375 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp113376 __tmp113375 _stx102710_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self102709_ _stx102710_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self102706_ _stx102707_)
        (let ((__tmp113378
               (let () (declare (not safe)) (slot-ref__0 _self102706_ 'state)))
              (__tmp113377 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp113378 __tmp113377 _stx102707_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp113381 (list))
            (__tmp113379
             (let ((__tmp113380
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113380 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp113381
         '(src n open blocks)
         __tmp113379
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args102703_
        (apply make-instance gxc#meta-state::t _$args102703_)))
    (define gxc#meta-state-src
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'src)))
    (define gxc#meta-state-n
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'n)))
    (define gxc#meta-state-open
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state::t 'blocks)))
    (define gxc#meta-state-src-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'src)))
    (define gxc#meta-state-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'n)))
    (define gxc#meta-state-open-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state::t 'blocks)))
    (define gxc#meta-state:::init!
      (lambda (_self102700_ _ctx102701_)
        (if (let ((__tmp113390
                   (let ()
                     (declare (not safe))
                     (##structure-length _self102700_))))
              (declare (not safe))
              (##fx< '4 __tmp113390))
            (begin
              (let ((__tmp113384
                     (let ((__tmp113385
                            (##structure-ref
                             _ctx102701_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp113385)))
                    (__tmp113383
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102700_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102700_
                 __tmp113384
                 '1
                 __tmp113383
                 '#f))
              (let ((__tmp113386
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102700_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102700_
                 '1
                 '2
                 __tmp113386
                 '#f))
              (let ((__tmp113388
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113387
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102700_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102700_
                 __tmp113388
                 '3
                 __tmp113387
                 '#f))
              (let ((__tmp113389
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102700_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102700_
                 '()
                 '4
                 __tmp113389
                 '#f)))
            (let ((__tmp113382
                   (let ()
                     (declare (not safe))
                     (##vector-length _self102700_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self102700_
                     '4
                     __tmp113382)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp113393 (list))
            (__tmp113391
             (let ((__tmp113392
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113392 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp113393
         '(ctx phi n code)
         __tmp113391
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args102575_
        (apply make-instance gxc#meta-state-block::t _$args102575_)))
    (define gxc#meta-state-block-ctx
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-begin-phi!
      (lambda (_state102534_ _phi102535_)
        (let* ((_state102536102544_ _state102534_)
               (_E102538102548_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state102536102544_))))
               (_K102539102557_
                (lambda (_open102551_ _n102552_ _src102553_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open102551_ _phi102535_))
                      '#f
                      (let ((_block-ref102555_
                             (string-append
                              _src102553_
                              '"__"
                              (number->string _n102552_))))
                        (##structure-set!
                         _state102534_
                         (let () (declare (not safe)) (fx+ _n102552_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp113394
                               (let ((__tmp113395
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp113395
                                  _phi102535_
                                  _n102552_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open102551_ _phi102535_ __tmp113394))
                        _block-ref102555_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state102536102544_
                 'gxc#meta-state::t))
              (let* ((_e102540102560_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102536102544_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src102563_ _e102540102560_)
                     (_e102541102565_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102536102544_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n102568_ _e102541102565_)
                     (_e102542102570_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102536102544_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open102573_ _e102542102570_))
                (declare (not safe))
                (_K102539102557_ _open102573_ _n102568_ _src102563_))
              (let () (declare (not safe)) (_E102538102548_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state102528_ _phi102529_ _stx102530_)
        (let ((_block102532_
               (let ((__tmp113396
                      (##structure-ref
                       _state102528_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp113396 _phi102529_))))
          (##structure-set!
           _block102532_
           (let ((__tmp113397
                  (##structure-ref
                   _block102532_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx102530_ __tmp113397))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state102523_)
        (##structure-set!
         _state102523_
         (let ((__tmp113400
                (lambda (_g113401_ _block102525_ _r102526_)
                  (let ()
                    (declare (not safe))
                    (cons _block102525_ _r102526_))))
               (__tmp113399
                (##structure-ref _state102523_ '4 gxc#meta-state::t '#f))
               (__tmp113398
                (##structure-ref _state102523_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp113400 __tmp113399 __tmp113398))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state102523_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state102475_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state102475_))
        (let ((__tmp113403
               (lambda (_block102477_ _r102478_)
                 (let* ((_block102479102488_ _block102477_)
                        (_E102481102492_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block102479102488_))))
                        (_K102482102500_
                         (lambda (_code102495_
                                  _n102496_
                                  _phi102497_
                                  _ctx102498_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code102495_))
                               _r102478_
                               (let ((__tmp113404
                                      (let ((__tmp113405
                                             (let ((__tmp113406
                                                    (let ((__tmp113407
                                                           (let ((__tmp113408
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp113409 (reverse _code102495_)))
                            (declare (not safe))
                            (cons '%#begin __tmp113409))))
                     (declare (not safe))
                     (cons __tmp113408 '()))))
              (declare (not safe))
              (cons _n102496_ __tmp113407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi102497_
                                                     __tmp113406))))
                                        (declare (not safe))
                                        (cons _ctx102498_ __tmp113405))))
                                 (declare (not safe))
                                 (cons __tmp113404 _r102478_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block102479102488_
                          'gxc#meta-state-block::t))
                       (let* ((_e102483102503_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102479102488_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx102506_ _e102483102503_)
                              (_e102484102508_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102479102488_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi102511_ _e102484102508_)
                              (_e102485102513_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102479102488_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n102516_ _e102485102513_)
                              (_e102486102518_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102479102488_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code102521_ _e102486102518_))
                         (declare (not safe))
                         (_K102482102500_
                          _code102521_
                          _n102516_
                          _phi102511_
                          _ctx102506_))
                       (let () (declare (not safe)) (_E102481102492_))))))
              (__tmp113402
               (##structure-ref _state102475_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp113403 '() __tmp113402))))
    (define gxc#collect-expression-refs
      (lambda (_stx102471_)
        (let ((_ht102473_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx102471_ 'table: _ht102473_))
          _ht102473_)))
    (define gxc#collect-refs-ref%
      (lambda (_self102414_ _stx102415_)
        (let* ((_g102417102430_
                (lambda (_g102418102427_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102418102427_))))
               (_g102416102468_
                (lambda (_g102418102433_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102418102433_))
                      (let ((_e102422102435_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102418102433_))))
                        (let ((_hd102421102438_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102422102435_)))
                              (_tl102420102440_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102422102435_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102420102440_))
                              (let ((_e102425102443_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102420102440_))))
                                (let ((_hd102424102446_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102425102443_)))
                                      (_tl102423102448_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102425102443_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102423102448_))
                                      ((lambda (_L102451_)
                                         (let* ((_bind102463_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L102451_)))
                                                (_eid102465_
                                                 (if _bind102463_
                                                     (##structure-ref
                                                      _bind102463_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L102451_)))))
                                           (let ((__tmp113410
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self102414_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp113410
                                              _eid102465_
                                              _eid102465_))))
                                       _hd102424102446_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102417102430_ _g102418102433_)))))
                              (let ()
                                (declare (not safe))
                                (_g102417102430_ _g102418102433_)))))
                      (let ()
                        (declare (not safe))
                        (_g102417102430_ _g102418102433_))))))
          (declare (not safe))
          (_g102416102468_ _stx102415_))))
    (define gxc#collect-refs-setq%
      (lambda (_self102341_ _stx102342_)
        (let* ((_g102344102361_
                (lambda (_g102345102358_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102345102358_))))
               (_g102343102411_
                (lambda (_g102345102364_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102345102364_))
                      (let ((_e102350102366_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102345102364_))))
                        (let ((_hd102349102369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102350102366_)))
                              (_tl102348102371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102350102366_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102348102371_))
                              (let ((_e102353102374_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102348102371_))))
                                (let ((_hd102352102377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102353102374_)))
                                      (_tl102351102379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102353102374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102351102379_))
                                      (let ((_e102356102382_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102351102379_))))
                                        (let ((_hd102355102385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102356102382_)))
                                              (_tl102354102387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102356102382_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102354102387_))
                                              ((lambda (_L102390_ _L102391_)
                                                 (let* ((_bind102406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L102391_)))
                                                        (_eid102408_
                                                         (if _bind102406_
                                                             (##structure-ref
                                                              _bind102406_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L102391_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp113411
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self102341_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp113411
                                                      _eid102408_
                                                      _eid102408_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self102341_
                                                      _L102390_))))
                                               _hd102355102385_
                                               _hd102352102377_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102344102361_
                                                 _g102345102364_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102344102361_ _g102345102364_)))))
                              (let ()
                                (declare (not safe))
                                (_g102344102361_ _g102345102364_)))))
                      (let ()
                        (declare (not safe))
                        (_g102344102361_ _g102345102364_))))))
          (declare (not safe))
          (_g102343102411_ _stx102342_))))
    (define gxc#find-runtime-begin%
      (lambda (_self102298_ _stx102299_)
        (let* ((_g102301102311_
                (lambda (_g102302102308_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102302102308_))))
               (_g102300102338_
                (lambda (_g102302102314_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102302102314_))
                      (let ((_e102306102316_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102302102314_))))
                        (let ((_hd102305102319_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102306102316_)))
                              (_tl102304102321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102306102316_))))
                          ((lambda (_L102324_)
                             (let ((__tmp113412
                                    (lambda (_g102333102335_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self102298_
                                         _g102333102335_)))))
                               (declare (not safe))
                               (ormap1 __tmp113412 _L102324_)))
                           _tl102304102321_)))
                      (let ()
                        (declare (not safe))
                        (_g102301102311_ _g102302102314_))))))
          (declare (not safe))
          (_g102300102338_ _stx102299_))))
    (define gxc#find-last-begin%
      (lambda (_self102259_ _stx102260_)
        (let* ((_g102262102272_
                (lambda (_g102263102269_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102263102269_))))
               (_g102261102295_
                (lambda (_g102263102275_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102263102275_))
                      (let ((_e102267102277_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102263102275_))))
                        (let ((_hd102266102280_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102267102277_)))
                              (_tl102265102282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102267102277_))))
                          ((lambda (_L102285_)
                             (let ((__tmp113413 (last _L102285_)))
                               (declare (not safe))
                               (gxc#compile-e__1 _self102259_ __tmp113413)))
                           _tl102265102282_)))
                      (let ()
                        (declare (not safe))
                        (_g102262102272_ _g102263102275_))))))
          (declare (not safe))
          (_g102261102295_ _stx102260_))))
    (define gxc#find-body-let-values%
      (lambda (_self102204_ _stx102205_)
        (let* ((_g102207102221_
                (lambda (_g102208102218_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102208102218_))))
               (_g102206102256_
                (lambda (_g102208102224_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102208102224_))
                      (let ((_e102213102226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102208102224_))))
                        (let ((_hd102212102229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102213102226_)))
                              (_tl102211102231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102213102226_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102211102231_))
                              (let ((_e102216102234_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102211102231_))))
                                (let ((_hd102215102237_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102216102234_)))
                                      (_tl102214102239_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102216102234_))))
                                  ((lambda (_L102242_ _L102243_)
                                     (let ((__tmp113414 (last _L102242_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102204_
                                        __tmp113414)))
                                   _tl102214102239_
                                   _hd102215102237_)))
                              (let ()
                                (declare (not safe))
                                (_g102207102221_ _g102208102224_)))))
                      (let ()
                        (declare (not safe))
                        (_g102207102221_ _g102208102224_))))))
          (declare (not safe))
          (_g102206102256_ _stx102205_))))
    (define gxc#count-values-single% (lambda (_self102201_ _stx102202_) '1))
    (define gxc#count-values-begin%
      (lambda (_self102118_ _stx102119_)
        (let* ((_g102121102140_
                (lambda (_g102122102137_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102122102137_))))
               (_g102120102198_
                (lambda (_g102122102143_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102122102143_))
                      (let ((_e102126102145_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102122102143_))))
                        (let ((_hd102125102148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102126102145_)))
                              (_tl102124102150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102126102145_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl102124102150_))
                              (let ((_g113415_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl102124102150_
                                        '0))))
                                (begin
                                  (let ((_g113416_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g113415_)
                                               (##vector-length _g113415_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g113416_ 2)))
                                        (error "Context expects 2 values"
                                               _g113416_)))
                                  (let ((_target102127102153_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113415_ 0)))
                                        (_tl102129102155_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g113415_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102129102155_))
                                        (letrec ((_loop102130102158_
                                                  (lambda (_hd102128102161_
                                                           _expr102134102163_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd102128102161_))
                                                        (let ((_e102131102166_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd102128102161_))))
                  (let ((_lp-hd102132102169_
                         (let () (declare (not safe)) (##car _e102131102166_)))
                        (_lp-tl102133102171_
                         (let ()
                           (declare (not safe))
                           (##cdr _e102131102166_))))
                    (let ((__tmp113419
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd102132102169_ _expr102134102163_))))
                      (declare (not safe))
                      (_loop102130102158_ _lp-tl102133102171_ __tmp113419))))
                (let ((_expr102135102174_ (reverse _expr102134102163_)))
                  ((lambda (_L102177_)
                     (let ((__tmp113417
                            (last (let ((__tmp113418
                                         (lambda (_g102190102193_
                                                  _g102191102195_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g102190102193_
                                                   _g102191102195_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp113418 '() _L102177_)))))
                       (declare (not safe))
                       (gxc#compile-e__1 _self102118_ __tmp113417)))
                   _expr102135102174_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop102130102158_
                                             _target102127102153_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_g102121102140_
                                           _g102122102143_))))))
                              (let ()
                                (declare (not safe))
                                (_g102121102140_ _g102122102143_)))))
                      (let ()
                        (declare (not safe))
                        (_g102121102140_ _g102122102143_))))))
          (declare (not safe))
          (_g102120102198_ _stx102119_))))
    (define gxc#count-values-let-values%
      (lambda (_self102063_ _stx102064_)
        (let* ((_g102066102080_
                (lambda (_g102067102077_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102067102077_))))
               (_g102065102115_
                (lambda (_g102067102083_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102067102083_))
                      (let ((_e102072102085_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102067102083_))))
                        (let ((_hd102071102088_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102072102085_)))
                              (_tl102070102090_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102072102085_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102070102090_))
                              (let ((_e102075102093_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102070102090_))))
                                (let ((_hd102074102096_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102075102093_)))
                                      (_tl102073102098_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102075102093_))))
                                  ((lambda (_L102101_ _L102102_)
                                     (let ((__tmp113420 (last _L102101_)))
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102063_
                                        __tmp113420)))
                                   _tl102073102098_
                                   _hd102074102096_)))
                              (let ()
                                (declare (not safe))
                                (_g102066102080_ _g102067102083_)))))
                      (let ()
                        (declare (not safe))
                        (_g102066102080_ _g102067102083_))))))
          (declare (not safe))
          (_g102065102115_ _stx102064_))))
    (define gxc#count-values-call%
      (lambda (_self101929_ _stx101930_)
        (let* ((___stx112499112500_ _stx101930_)
               (_g101933101962_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112499112500_)))))
          (let ((___kont112501112502_
                 (lambda (_L102030_ _L102031_)
                   (length (let ((__tmp113421
                                  (lambda (_g102052102055_ _g102053102057_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g102052102055_
                                            _g102053102057_)))))
                             (declare (not safe))
                             (foldr1 __tmp113421 '() _L102030_)))))
                (___kont112505112506_ (lambda () '#f)))
            (let ((___match112544112545_
                   (lambda (_e101939101974_
                            _hd101938101977_
                            _tl101937101979_
                            _e101942101982_
                            _hd101941101985_
                            _tl101940101987_
                            _e101945101990_
                            _hd101944101993_
                            _tl101943101995_
                            _e101948101998_
                            _hd101947102001_
                            _tl101946102003_
                            ___splice112503112504_
                            _target101949102006_
                            _tl101951102008_)
                     (letrec ((_loop101952102011_
                               (lambda (_hd101950102014_ _rand101956102016_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd101950102014_))
                                     (let ((_e101953102019_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd101950102014_))))
                                       (let ((_lp-tl101955102024_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e101953102019_)))
                                             (_lp-hd101954102022_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e101953102019_))))
                                         (let ((__tmp113422
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd101954102022_
                                                        _rand101956102016_))))
                                           (declare (not safe))
                                           (_loop101952102011_
                                            _lp-tl101955102024_
                                            __tmp113422))))
                                     (let ((_rand101957102027_
                                            (reverse _rand101956102016_)))
                                       (let ((_L102030_ _rand101957102027_)
                                             (_L102031_ _hd101947102001_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L102031_
                                                'values))
                                             (___kont112501112502_
                                              _L102030_
                                              _L102031_)
                                             (___kont112505112506_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop101952102011_ _target101949102006_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112499112500_))
                  (let ((_e101939101974_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112499112500_))))
                    (let ((_tl101937101979_
                           (let ()
                             (declare (not safe))
                             (##cdr _e101939101974_)))
                          (_hd101938101977_
                           (let ()
                             (declare (not safe))
                             (##car _e101939101974_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl101937101979_))
                          (let ((_e101942101982_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl101937101979_))))
                            (let ((_tl101940101987_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e101942101982_)))
                                  (_hd101941101985_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e101942101982_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd101941101985_))
                                  (let ((_e101945101990_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd101941101985_))))
                                    (let ((_tl101943101995_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101945101990_)))
                                          (_hd101944101993_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101945101990_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd101944101993_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd101944101993_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl101943101995_))
                                                  (let ((_e101948101998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl101943101995_))))
                                                    (let ((_tl101946102003_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e101948101998_)))
                                                          (_hd101947102001_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e101948101998_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl101946102003_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl101940101987_))
                      (let ((___splice112503112504_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl101940101987_ '0))))
                        (let ((_tl101951102008_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice112503112504_ '1)))
                              (_target101949102006_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice112503112504_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl101951102008_))
                              (___match112544112545_
                               _e101939101974_
                               _hd101938101977_
                               _tl101937101979_
                               _e101942101982_
                               _hd101941101985_
                               _tl101940101987_
                               _e101945101990_
                               _hd101944101993_
                               _tl101943101995_
                               _e101948101998_
                               _hd101947102001_
                               _tl101946102003_
                               ___splice112503112504_
                               _target101949102006_
                               _tl101951102008_)
                              (___kont112505112506_))))
                      (___kont112505112506_))
                  (___kont112505112506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112505112506_))
                                              (___kont112505112506_))
                                          (___kont112505112506_))))
                                  (___kont112505112506_))))
                          (___kont112505112506_))))
                  (___kont112505112506_)))))))
    (define gxc#count-values-if%
      (lambda (_self101832_ _stx101833_)
        (let* ((_g101835101856_
                (lambda (_g101836101853_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101836101853_))))
               (_g101834101926_
                (lambda (_g101836101859_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101836101859_))
                      (let ((_e101842101861_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101836101859_))))
                        (let ((_hd101841101864_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101842101861_)))
                              (_tl101840101866_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101842101861_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101840101866_))
                              (let ((_e101845101869_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101840101866_))))
                                (let ((_hd101844101872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101845101869_)))
                                      (_tl101843101874_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101845101869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101843101874_))
                                      (let ((_e101848101877_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101843101874_))))
                                        (let ((_hd101847101880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101848101877_)))
                                              (_tl101846101882_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101848101877_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl101846101882_))
                                              (let ((_e101851101885_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl101846101882_))))
                                                (let ((_hd101850101888_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e101851101885_)))
                                                      (_tl101849101890_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e101851101885_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl101849101890_))
                                                      ((lambda (_L101893_
                                                                _L101894_
                                                                _L101895_)
                                                         (let ((_c1101912101914_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self101832_ _L101894_))))
                   (if _c1101912101914_
                       (let* ((_c1101917_ _c1101912101914_)
                              (_c2101918101920_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self101832_ _L101893_))))
                         (if _c2101918101920_
                             (let ((_c2101923_ _c2101918101920_))
                               (if (fx= _c1101917_ _c2101923_) _c1101917_ '#f))
                             '#f))
                       '#f)))
               _hd101850101888_
               _hd101847101880_
               _hd101844101872_)
              (let ()
                (declare (not safe))
                (_g101835101856_ _g101836101859_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g101835101856_
                                                 _g101836101859_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101835101856_ _g101836101859_)))))
                              (let ()
                                (declare (not safe))
                                (_g101835101856_ _g101836101859_)))))
                      (let ()
                        (declare (not safe))
                        (_g101835101856_ _g101836101859_))))))
          (declare (not safe))
          (_g101834101926_ _stx101833_))))))
