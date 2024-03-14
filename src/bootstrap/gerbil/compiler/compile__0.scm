(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710440200)
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
        (letrec ((_hash-e111140_
                  (lambda (_id111142_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id111142_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e111140_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp112498 (list gxc#::void::t))
            (__tmp112496
             (let ((__tmp112497
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112497 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp112498
         '()
         __tmp112496
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args111136_
        (apply make-instance gxc#::collect-bindings::t _$args111136_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp112499
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
        (make-promise __tmp112499)))
    (define gxc#apply-collect-bindings
      (lambda (_stx111128_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self111131_
                (let ((__obj112472
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj112472))
               (__tmp112500
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111131_ _stx111128_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112500
           gxc#current-compile-method
           _self111131_))))
    (define gxc#::lift-modules::t
      (let ((__tmp112503 (list gxc#::void::t))
            (__tmp112501
             (let ((__tmp112502
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112502 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp112503
         '(modules)
         __tmp112501
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args111125_
        (apply make-instance gxc#::lift-modules::t _$args111125_)))
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
      (let ((__tmp112504
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
        (make-promise __tmp112504)))
    (define gxc#apply-lift-modules__%
      (lambda (_g112505_ _modules111096111099_ _stx111101_)
        (let ((_modules111104_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules111096111099_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules111096111099_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self111106_
                  (let ((__obj112474
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112474
                       _modules111104_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj112474))
                 (__tmp112506
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self111106_ _stx111101_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112506
             gxc#current-compile-method
             _self111106_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys111095111113_ . _args111115_)
        (apply gxc#apply-lift-modules__%
               _keys111095111113_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys111095111113_
                  'modules:
                  absent-value))
               _args111115_)))
    (define gxc#apply-lift-modules
      (lambda _args111097111121_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args111097111121_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp112509 (list))
            (__tmp112507
             (let ((__tmp112508
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112508 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp112509
         '()
         __tmp112507
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args111091_
        (apply make-instance gxc#::find-runtime-code::t _$args111091_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp112510
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
        (make-promise __tmp112510)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx111083_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self111086_
                (let ((__obj112476
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj112476))
               (__tmp112511
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111086_ _stx111083_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112511
           gxc#current-compile-method
           _self111086_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp112514 (list gxc#::false::t))
            (__tmp112512
             (let ((__tmp112513
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112513 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp112514
         '()
         __tmp112512
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args111080_
        (apply make-instance gxc#::find-lambda-expression::t _$args111080_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp112515
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
                 (seal-class! gxc#::find-lambda-expression::t)))))
        (declare (not safe))
        (make-promise __tmp112515)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx111072_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self111075_
                (let ((__obj112478
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj112478))
               (__tmp112516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111075_ _stx111072_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112516
           gxc#current-compile-method
           _self111075_))))
    (define gxc#::count-values::t
      (let ((__tmp112519 (list gxc#::false-expression::t))
            (__tmp112517
             (let ((__tmp112518
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112518 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp112519
         '()
         __tmp112517
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args111069_
        (apply make-instance gxc#::count-values::t _$args111069_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp112520
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
                 (seal-class! gxc#::count-values::t)))))
        (declare (not safe))
        (make-promise __tmp112520)))
    (define gxc#apply-count-values
      (lambda (_stx111061_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self111064_
                (let ((__obj112480
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj112480))
               (__tmp112521
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111064_ _stx111061_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112521
           gxc#current-compile-method
           _self111064_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp112522 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp112522
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args111058_
        (apply make-instance gxc#::generate-runtime-empty::t _$args111058_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp112523
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
        (make-promise __tmp112523)))
    (define gxc#::collect-loader-deps::t
      (let ((__tmp112526 (list gxc#::void::t))
            (__tmp112524
             (let ((__tmp112525
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112525 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-loader-deps::t
         '::collect-loader-deps
         __tmp112526
         '(deps)
         __tmp112524
         '#f)))
    (define gxc#::collect-loader-deps?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-loader-deps::t)))
    (define gxc#make-::collect-loader-deps
      (lambda _$args111054_
        (apply make-instance gxc#::collect-loader-deps::t _$args111054_)))
    (define gxc#::collect-loader-deps-deps
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gxc#::collect-loader-deps::t 'deps)))
    (define gxc#::collect-loader-deps-deps-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gxc#::collect-loader-deps::t 'deps)))
    (define gxc#&::collect-loader-deps-deps
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor
         gxc#::collect-loader-deps::t
         'deps)))
    (define gxc#&::collect-loader-deps-deps-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator
         gxc#::collect-loader-deps::t
         'deps)))
    (define gxc#::collect-loader-deps-bind-methods!
      (let ((__tmp112527
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-loader-deps::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-loader-deps::t
                  '%#import
                  gxc#collect-loader-deps-import%))
               (let ()
                 (declare (not safe))
                 (seal-class! gxc#::collect-loader-deps::t)))))
        (declare (not safe))
        (make-promise __tmp112527)))
    (define gxc#apply-collect-loader-deps__%
      (lambda (_g112528_ _deps111025111028_ _stx111030_)
        (let ((_deps111033_
               (if (let ()
                     (declare (not safe))
                     (eq? _deps111025111028_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'deps:))
                   _deps111025111028_)))
          (force gxc#::collect-loader-deps-bind-methods!)
          (let* ((_self111035_
                  (let ((__obj112483
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-loader-deps::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112483
                       _deps111033_
                       '1
                       gxc#::collect-loader-deps::t
                       '#f))
                    __obj112483))
                 (__tmp112529
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self111035_ _stx111030_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112529
             gxc#current-compile-method
             _self111035_)))))
    (define gxc#apply-collect-loader-deps__@
      (lambda (_keys111024111042_ . _args111044_)
        (apply gxc#apply-collect-loader-deps__%
               _keys111024111042_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys111024111042_ 'deps: absent-value))
               _args111044_)))
    (define gxc#apply-collect-loader-deps
      (lambda _args111026111050_
        (apply keyword-dispatch
               '#(deps:)
               gxc#apply-collect-loader-deps__@
               _args111026111050_)))
    (define gxc#::generate-runtime::t
      (let ((__tmp112530 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp112530
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args111020_
        (apply make-instance gxc#::generate-runtime::t _$args111020_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp112531
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
        (make-promise __tmp112531)))
    (define gxc#apply-generate-runtime
      (lambda (_stx111012_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self111015_
                (let ((__obj112485
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj112485))
               (__tmp112532
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111015_ _stx111012_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112532
           gxc#current-compile-method
           _self111015_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp112535 (list gxc#::generate-runtime::t))
            (__tmp112533
             (let ((__tmp112534
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112534 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp112535
         '()
         __tmp112533
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args111009_
        (apply make-instance gxc#::generate-runtime-phi::t _$args111009_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp112536
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
        (make-promise __tmp112536)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx111001_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self111004_
                (let ((__obj112487
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj112487))
               (__tmp112537
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111004_ _stx111001_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112537
           gxc#current-compile-method
           _self111004_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp112538 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp112538
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args110998_
        (apply make-instance gxc#::collect-expression-refs::t _$args110998_)))
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
      (let ((__tmp112539
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
        (make-promise __tmp112539)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_g112540_ _table110969110972_ _stx110974_)
        (let ((_table110977_
               (if (let ()
                     (declare (not safe))
                     (eq? _table110969110972_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table110969110972_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self110979_
                  (let ((__obj112489
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112489
                       _table110977_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj112489))
                 (__tmp112541
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self110979_ _stx110974_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112541
             gxc#current-compile-method
             _self110979_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys110968110986_ . _args110988_)
        (apply gxc#apply-collect-expression-refs__%
               _keys110968110986_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys110968110986_ 'table: absent-value))
               _args110988_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args110970110994_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args110970110994_)))
    (define gxc#::generate-meta::t
      (let ((__tmp112544 (list gxc#::void-expression::t))
            (__tmp112542
             (let ((__tmp112543
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112543 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp112544
         '(state)
         __tmp112542
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args110964_
        (apply make-instance gxc#::generate-meta::t _$args110964_)))
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
      (let ((__tmp112545
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
        (make-promise __tmp112545)))
    (define gxc#apply-generate-meta__%
      (lambda (_g112546_ _state110935110938_ _stx110940_)
        (let ((_state110943_
               (if (let ()
                     (declare (not safe))
                     (eq? _state110935110938_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state110935110938_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self110945_
                  (let ((__obj112491
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112491
                       _state110943_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj112491))
                 (__tmp112547
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self110945_ _stx110940_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112547
             gxc#current-compile-method
             _self110945_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys110934110952_ . _args110954_)
        (apply gxc#apply-generate-meta__%
               _keys110934110952_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys110934110952_ 'state: absent-value))
               _args110954_)))
    (define gxc#apply-generate-meta
      (lambda _args110936110960_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args110936110960_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp112550 (list))
            (__tmp112548
             (let ((__tmp112549
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112549 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp112550
         '(state)
         __tmp112548
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args110930_
        (apply make-instance gxc#::generate-meta-phi::t _$args110930_)))
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
      (let ((__tmp112551
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
        (make-promise __tmp112551)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_g112552_ _state110901110904_ _stx110906_)
        (let ((_state110909_
               (if (let ()
                     (declare (not safe))
                     (eq? _state110901110904_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state110901110904_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self110911_
                  (let ((__obj112493
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112493
                       _state110909_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj112493))
                 (__tmp112553
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self110911_ _stx110906_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112553
             gxc#current-compile-method
             _self110911_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys110900110918_ . _args110920_)
        (apply gxc#apply-generate-meta-phi__%
               _keys110900110918_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys110900110918_ 'state: absent-value))
               _args110920_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args110902110926_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args110902110926_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self110829_ _stx110830_)
        (let* ((_g110832110849_
                (lambda (_g110833110846_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110833110846_))))
               (_g110831110896_
                (lambda (_g110833110852_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110833110852_))
                      (let ((_e110838110854_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110833110852_))))
                        (let ((_hd110837110857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110838110854_)))
                              (_tl110836110859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110838110854_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110836110859_))
                              (let ((_e110841110862_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110836110859_))))
                                (let ((_hd110840110865_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110841110862_)))
                                      (_tl110839110867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110841110862_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110839110867_))
                                      (let ((_e110844110870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110839110867_))))
                                        (let ((_hd110843110873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110844110870_)))
                                              (_tl110842110875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110844110870_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110842110875_))
                                              ((lambda (_L110878_ _L110879_)
                                                 (let ((__tmp112554
                                                        (lambda (_bind110894_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind110894_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind110894_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp112554
                                                    _L110879_)))
                                               _hd110843110873_
                                               _hd110840110865_)
                                              (let ()
                                                (declare (not safe))
                                                (_g110832110849_
                                                 _g110833110852_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110832110849_ _g110833110852_)))))
                              (let ()
                                (declare (not safe))
                                (_g110832110849_ _g110833110852_)))))
                      (let ()
                        (declare (not safe))
                        (_g110832110849_ _g110833110852_))))))
          (declare (not safe))
          (_g110831110896_ _stx110830_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self110761_ _stx110762_)
        (let* ((_g110764110781_
                (lambda (_g110765110778_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110765110778_))))
               (_g110763110826_
                (lambda (_g110765110784_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110765110784_))
                      (let ((_e110770110786_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110765110784_))))
                        (let ((_hd110769110789_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110770110786_)))
                              (_tl110768110791_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110770110786_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110768110791_))
                              (let ((_e110773110794_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110768110791_))))
                                (let ((_hd110772110797_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110773110794_)))
                                      (_tl110771110799_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110773110794_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110771110799_))
                                      (let ((_e110776110802_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110771110799_))))
                                        (let ((_hd110775110805_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110776110802_)))
                                              (_tl110774110807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110776110802_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110774110807_))
                                              ((lambda (_L110810_ _L110811_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L110811_
                                                    '#t)))
                                               _hd110775110805_
                                               _hd110772110797_)
                                              (let ()
                                                (declare (not safe))
                                                (_g110764110781_
                                                 _g110765110784_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110764110781_ _g110765110784_)))))
                              (let ()
                                (declare (not safe))
                                (_g110764110781_ _g110765110784_)))))
                      (let ()
                        (declare (not safe))
                        (_g110764110781_ _g110765110784_))))))
          (declare (not safe))
          (_g110763110826_ _stx110762_))))
    (define gxc#lift-modules-module%
      (lambda (_self110703_ _stx110704_)
        (let* ((_g110706110720_
                (lambda (_g110707110717_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110707110717_))))
               (_g110705110758_
                (lambda (_g110707110723_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110707110723_))
                      (let ((_e110712110725_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110707110723_))))
                        (let ((_hd110711110728_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110712110725_)))
                              (_tl110710110730_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110712110725_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110710110730_))
                              (let ((_e110715110733_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110710110730_))))
                                (let ((_hd110714110736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110715110733_)))
                                      (_tl110713110738_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110715110733_))))
                                  ((lambda (_L110741_ _L110742_)
                                     (let ((_ctx110755_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L110742_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self110703_ 'modules))
                                        (let ((__tmp112555
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self110703_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx110755_ __tmp112555)))
                                       (let ((__tmp112556
                                              (lambda ()
                                                (let ((__tmp112557
                                                       (##structure-ref
                                                        _ctx110755_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self110703_
                                                   __tmp112557)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp112556
                                          gx#current-expander-context
                                          _ctx110755_))))
                                   _tl110713110738_
                                   _hd110714110736_)))
                              (let ()
                                (declare (not safe))
                                (_g110706110720_ _g110707110723_)))))
                      (let ()
                        (declare (not safe))
                        (_g110706110720_ _g110707110723_))))))
          (declare (not safe))
          (_g110705110758_ _stx110704_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls110659110661_ (gxc#current-compile-decls)))
          (if _decls110659110661_
              (let ((_decls110664_ _decls110659110661_))
                (let _lp110666_ ((_rest110668_ _decls110664_))
                  (let* ((_rest110669110677_ _rest110668_)
                         (_else110671110685_ (lambda () '#f))
                         (_K110673110691_
                          (lambda (_decls110688_ _decl110689_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl110689_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl110689_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp110666_ _decls110688_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest110669110677_))
                        (let ((_hd110674110694_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest110669110677_)))
                              (_tl110675110696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest110669110677_))))
                          (let* ((_decl110699_ _hd110674110694_)
                                 (_decls110701_ _tl110675110696_))
                            (declare (not safe))
                            (_K110673110691_ _decls110701_ _decl110699_)))
                        (let () (declare (not safe)) (_else110671110685_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id110653_ _syntax?110654_)
        (let ((_eid110656_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id110653_))
                '1
                gx#binding::t
                '#f))
              (_ht110657_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _eid110656_))
              '#!void
              (let ((__tmp112558
                     (let ((__tmp112559
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid110656_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp112559 _syntax?110654_))))
                (declare (not safe))
                (hash-put! _ht110657_ _eid110656_ __tmp112558))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1110646_ _id2110647_)
        (letrec ((_symbol-e110649_
                  (lambda (_id110651_)
                    (if (let () (declare (not safe)) (symbol? _id110651_))
                        _id110651_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id110651_))))))
          (let ((__tmp112561
                 (let () (declare (not safe)) (_symbol-e110649_ _id1110646_)))
                (__tmp112560
                 (let () (declare (not safe)) (_symbol-e110649_ _id2110647_))))
            (declare (not safe))
            (eq? __tmp112561 __tmp112560)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id110624_)
        (let ((_$e110626_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id110624_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id110624_))
                   '#f)))
          (if _$e110626_
              ((lambda (_bind110629_)
                 (let ((_eid110631_
                        (##structure-ref _bind110629_ '1 gx#binding::t '#f))
                       (_ht110632_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _eid110631_))
                       _eid110631_
                       (let ((_$e110634_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht110632_ _eid110631_))))
                         (if _$e110634_
                             (values _$e110634_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind110629_
                                    'gx#local-binding::t))
                                 (let ((_gid110637_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid110631_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht110632_
                                      _eid110631_
                                      _gid110637_))
                                   _gid110637_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind110629_
                                        'gx#module-binding::t))
                                     (let ((_gid110644_
                                            (let ((_$e110639_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind110629_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e110639_
                                                  ((lambda (_ns110642_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns110642_
                                                        '"#"
                                                        _eid110631_)))
                                                   _$e110639_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid110631_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht110632_
                                          _eid110631_
                                          _gid110644_))
                                       _gid110644_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id110624_
                                        _eid110631_
                                        _bind110629_)))))))))
               _$e110626_)
              (if (let ((__tmp112562
                         (let () (declare (not safe)) (gx#stx-e _id110624_))))
                    (declare (not safe))
                    (interned-symbol? __tmp112562))
                  (let () (declare (not safe)) (gx#stx-e _id110624_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id110624_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id110622_)
        (if (let () (declare (not safe)) (gx#identifier? _id110622_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id110622_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym110602_ _quote?110603_)
        (let* ((_ht110605_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e110607_
                (let ()
                  (declare (not safe))
                  (hash-get _ht110605_ _sym110602_))))
          (if _$e110607_
              (values _$e110607_)
              (let ((_g110610_
                     (if _quote?110603_
                         (let ((__tmp112563 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym110602_
                            '"__"
                            __tmp112563))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym110602_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht110605_ _sym110602_ _g110610_))
                _g110610_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym110615_)
        (let ((_quote?110617_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym110615_
           _quote?110617_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g112565_
        (let ((_g112564_ (let () (declare (not safe)) (##length _g112565_))))
          (cond ((let () (declare (not safe)) (##fx= _g112564_ 1))
                 (apply (lambda (_sym110615_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym110615_)))
                        _g112565_))
                ((let () (declare (not safe)) (##fx= _g112564_ 2))
                 (apply (lambda (_sym110619_ _quote?110620_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym110619_
                             _quote?110620_)))
                        _g112565_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g112565_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id110599_)
        (let ((__tmp112566
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id110599_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp112566))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key110559_)
        (if (let () (declare (not safe)) (interned-symbol? _key110559_))
            _key110559_
            (if (uninterned-symbol? _key110559_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key110559_))
                (let* ((_key110560110567_ _key110559_)
                       (_E110562110571_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key110560110567_))))
                       (_K110563110587_
                        (lambda (_mark110574_ _eid110575_)
                          (let ((_$e110577_
                                 (##structure-ref
                                  _mark110574_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e110577_
                                ((lambda (_ht110580_)
                                   (let ((_$e110582_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht110580_
                                             _eid110575_))))
                                     (if _$e110582_
                                         ((lambda (_id110585_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _id110585_))
                                                _id110585_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id110585_))))
                                          _$e110582_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid110575_)))))
                                 _$e110577_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid110575_)))))))
                  (if (let () (declare (not safe)) (##pair? _key110560110567_))
                      (let ((_hd110564110590_
                             (let ()
                               (declare (not safe))
                               (##car _key110560110567_)))
                            (_tl110565110592_
                             (let ()
                               (declare (not safe))
                               (##cdr _key110560110567_))))
                        (let* ((_eid110595_ _hd110564110590_)
                               (_mark110597_ _tl110565110592_))
                          (declare (not safe))
                          (_K110563110587_ _mark110597_ _eid110595_)))
                      (let () (declare (not safe)) (_E110562110571_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top110546_)
        (if _top110546_
            (let ((_ns110548_
                   (##structure-ref
                    (let ((__tmp112568 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp112568))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi110549_ (gx#current-expander-phi)))
              (if _ns110548_
                  (if (fxpositive? _phi110549_)
                      (let ((__tmp112574 (number->string _phi110549_))
                            (__tmp112573 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns110548_
                         '"["
                         __tmp112574
                         '"]#_"
                         __tmp112573
                         '"_"))
                      (let ((__tmp112572 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns110548_ '"#_" __tmp112572 '"_")))
                  (if (fxpositive? _phi110549_)
                      (let ((__tmp112571 (number->string _phi110549_))
                            (__tmp112570 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp112571
                         '"]#_"
                         __tmp112570
                         '"_"))
                      (let ((__tmp112569 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp112569 '"_")))))
            (let ((__tmp112567 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp112567 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top110555_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top110555_))))
    (define gxc#generate-runtime-temporary
      (lambda _g112576_
        (let ((_g112575_ (let () (declare (not safe)) (##length _g112576_))))
          (cond ((let () (declare (not safe)) (##fx= _g112575_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g112576_))
                ((let () (declare (not safe)) (##fx= _g112575_ 1))
                 (apply (lambda (_top110557_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top110557_)))
                        _g112576_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g112576_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self110542_ _stx110543_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self110389_ _stx110390_)
        (letrec ((_simplify110392_
                  (lambda (_body110440_)
                    (let _lp110442_ ((_rest110444_ _body110440_)
                                     (_r110445_ '()))
                      (let* ((_rest110446110454_ _rest110444_)
                             (_else110448110462_
                              (lambda () (reverse _r110445_)))
                             (_K110450110530_
                              (lambda (_rest110465_ _hd110466_)
                                (let* ((_hd110467110483_ _hd110466_)
                                       (_else110471110491_
                                        (lambda ()
                                          (let ((__tmp112577
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd110466_
                                                         _r110445_))))
                                            (declare (not safe))
                                            (_lp110442_
                                             _rest110465_
                                             __tmp112577)))))
                                  (let ((_K110479110520_
                                         (lambda (_exprs110518_)
                                           (let ((__tmp112578
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest110465_
                                                            _exprs110518_))))
                                             (declare (not safe))
                                             (_lp110442_
                                              __tmp112578
                                              _r110445_))))
                                        (_K110474110504_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest110465_))
                                               (let ((__tmp112579
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd110466_
                                                              _r110445_))))
                                                 (declare (not safe))
                                                 (_lp110442_
                                                  _rest110465_
                                                  __tmp112579))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110442_
                                                  _rest110465_
                                                  _r110445_)))))
                                        (_K110473110496_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest110465_))
                                               (let ((__tmp112580
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd110466_
                                                              _r110445_))))
                                                 (declare (not safe))
                                                 (_lp110442_
                                                  _rest110465_
                                                  __tmp112580))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110442_
                                                  _rest110465_
                                                  _r110445_))))))
                                    (let ((_try-match110470110499_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd110467110483_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K110473110496_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else110471110491_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd110467110483_))
                                          (let ((_tl110481110525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd110467110483_)))
                                                (_hd110480110523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd110467110483_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd110480110523_
                                                         'begin))
                                                (let ((_exprs110528_
                                                       _tl110481110525_))
                                                  (declare (not safe))
                                                  (_K110479110520_
                                                   _exprs110528_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd110480110523_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl110481110525_))
                                                        (let ((_tl110478110512_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl110481110525_))))
                  (if (let () (declare (not safe)) (##null? _tl110478110512_))
                      (let () (declare (not safe)) (_K110474110504_))
                      (let () (declare (not safe)) (_try-match110470110499_))))
                (let () (declare (not safe)) (_try-match110470110499_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match110470110499_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match110470110499_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110446110454_))
                            (let ((_hd110451110533_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110446110454_)))
                                  (_tl110452110535_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110446110454_))))
                              (let* ((_hd110538_ _hd110451110533_)
                                     (_rest110540_ _tl110452110535_))
                                (declare (not safe))
                                (_K110450110530_ _rest110540_ _hd110538_)))
                            (let ()
                              (declare (not safe))
                              (_else110448110462_))))))))
          (let* ((_g110394110404_
                  (lambda (_g110395110401_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g110395110401_))))
                 (_g110393110437_
                  (lambda (_g110395110407_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g110395110407_))
                        (let ((_e110399110409_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g110395110407_))))
                          (let ((_hd110398110412_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110399110409_)))
                                (_tl110397110414_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110399110409_))))
                            ((lambda (_L110417_)
                               (let* ((_body110432_
                                       (map (lambda (_g110427110429_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self110389_
                                                 _g110427110429_)))
                                            _L110417_))
                                      (_body110434_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify110392_ _body110432_))))
                                 (if (fx= (length _body110434_) '1)
                                     (car _body110434_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body110434_)))))
                             _tl110397110414_)))
                        (let ()
                          (declare (not safe))
                          (_g110394110404_ _g110395110407_))))))
            (declare (not safe))
            (_g110393110437_ _stx110390_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self110350_ _stx110351_)
        (let* ((_g110353110363_
                (lambda (_g110354110360_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110354110360_))))
               (_g110352110386_
                (lambda (_g110354110366_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110354110366_))
                      (let ((_e110358110368_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110354110366_))))
                        (let ((_hd110357110371_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110358110368_)))
                              (_tl110356110373_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110358110368_))))
                          ((lambda (_L110376_)
                             (let ((__tmp112581
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L110376_))))
                               (declare (not safe))
                               (cons 'begin __tmp112581)))
                           _tl110356110373_)))
                      (let ()
                        (declare (not safe))
                        (_g110353110363_ _g110354110366_))))))
          (declare (not safe))
          (_g110352110386_ _stx110351_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self110114_ _stx110115_)
        (let* ((___stx111165111166_ _stx110115_)
               (_g110119110171_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx111165111166_)))))
          (let ((___kont111167111168_
                 (lambda (_L110332_ _L110333_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self110114_ _L110332_))))
                (___kont111169111170_
                 (lambda (_L110280_ _L110281_ _L110282_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self110114_ _L110280_))))
                (___kont111173111174_
                 (lambda (_L110200_ _L110201_)
                   (let ((_decls110216_ (map gx#syntax->datum _L110201_)))
                     (let ((__tmp112584
                            (lambda ()
                              (let ((__tmp112585
                                     (let ((__tmp112588
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls110216_)))
                                           (__tmp112586
                                            (let ((__tmp112587
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self110114_
                                                      _L110200_))))
                                              (declare (not safe))
                                              (cons __tmp112587 '()))))
                                       (declare (not safe))
                                       (cons __tmp112588 __tmp112586))))
                                (declare (not safe))
                                (cons 'begin __tmp112585))))
                           (__tmp112582
                            (let ((__tmp112583 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp112583 _decls110216_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp112584
                        gxc#current-compile-decls
                        __tmp112582))))))
            (let* ((___match111220111221_
                    (lambda (_e110137110224_
                             _hd110136110227_
                             _tl110135110229_
                             _e110140110232_
                             _hd110139110235_
                             _tl110138110237_
                             _e110143110240_
                             _hd110142110243_
                             _tl110141110245_
                             ___splice111171111172_
                             _target110144110248_
                             _tl110146110250_)
                      (letrec ((_loop110147110253_
                                (lambda (_hd110145110256_ _param110151110258_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd110145110256_))
                                      (let ((_e110148110261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd110145110256_))))
                                        (let ((_lp-tl110150110266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110148110261_)))
                                              (_lp-hd110149110264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110148110261_))))
                                          (let ((__tmp112590
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd110149110264_
                                                         _param110151110258_))))
                                            (declare (not safe))
                                            (_loop110147110253_
                                             _lp-tl110150110266_
                                             __tmp112590))))
                                      (let ((_param110152110269_
                                             (reverse _param110151110258_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110138110237_))
                                            (let ((_e110155110272_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110138110237_))))
                                              (let ((_tl110153110277_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110155110272_)))
                                                    (_hd110154110275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110155110272_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110153110277_))
                                                    (let ((_L110280_
                                                           _hd110154110275_)
                                                          (_L110281_
                                                           _param110152110269_)
                                                          (_L110282_
                                                           _hd110142110243_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L110282_))
                       (let ((__tmp112589
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L110282_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp112589)))
                  (___kont111169111170_ _L110280_ _L110281_ _L110282_)
                  (___kont111173111174_ _hd110154110275_ _hd110139110235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110119110171_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110119110171_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop110147110253_ _target110144110248_ '())))))
                   (___match111194111195_
                    (lambda (_e110125110308_
                             _hd110124110311_
                             _tl110123110313_
                             _e110128110316_
                             _hd110127110319_
                             _tl110126110321_
                             _e110131110324_
                             _hd110130110327_
                             _tl110129110329_)
                      (let ((_L110332_ _hd110130110327_)
                            (_L110333_ _hd110127110319_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L110333_))
                            (___kont111167111168_ _L110332_ _L110333_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd110127110319_))
                                (let ((_e110143110240_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd110127110319_))))
                                  (let ((_tl110141110245_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e110143110240_)))
                                        (_hd110142110243_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e110143110240_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl110141110245_))
                                        (let ((___splice111171111172_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl110141110245_
                                                  '0))))
                                          (let ((_tl110146110250_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice111171111172_
                                                    '1)))
                                                (_target110144110248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice111171111172_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110146110250_))
                                                (___match111220111221_
                                                 _e110125110308_
                                                 _hd110124110311_
                                                 _tl110123110313_
                                                 _e110128110316_
                                                 _hd110127110319_
                                                 _tl110126110321_
                                                 _e110143110240_
                                                 _hd110142110243_
                                                 _tl110141110245_
                                                 ___splice111171111172_
                                                 _target110144110248_
                                                 _tl110146110250_)
                                                (___kont111173111174_
                                                 _hd110130110327_
                                                 _hd110127110319_))))
                                        (___kont111173111174_
                                         _hd110130110327_
                                         _hd110127110319_))))
                                (___kont111173111174_
                                 _hd110130110327_
                                 _hd110127110319_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx111165111166_))
                  (let ((_e110125110308_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx111165111166_))))
                    (let ((_tl110123110313_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110125110308_)))
                          (_hd110124110311_
                           (let ()
                             (declare (not safe))
                             (##car _e110125110308_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110123110313_))
                          (let ((_e110128110316_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110123110313_))))
                            (let ((_tl110126110321_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110128110316_)))
                                  (_hd110127110319_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110128110316_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl110126110321_))
                                  (let ((_e110131110324_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl110126110321_))))
                                    (let ((_tl110129110329_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110131110324_)))
                                          (_hd110130110327_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110131110324_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl110129110329_))
                                          (___match111194111195_
                                           _e110125110308_
                                           _hd110124110311_
                                           _tl110123110313_
                                           _e110128110316_
                                           _hd110127110319_
                                           _tl110126110321_
                                           _e110131110324_
                                           _hd110130110327_
                                           _tl110129110329_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110127110319_))
                                              (let ((_e110143110240_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110127110319_))))
                                                (let ((_tl110141110245_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110143110240_)))
                                                      (_hd110142110243_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110143110240_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl110141110245_))
                                                      (let ((___splice111171111172_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl110141110245_ '0))))
                (let ((_tl110146110250_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice111171111172_ '1)))
                      (_target110144110248_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice111171111172_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110146110250_))
                      (___match111220111221_
                       _e110125110308_
                       _hd110124110311_
                       _tl110123110313_
                       _e110128110316_
                       _hd110127110319_
                       _tl110126110321_
                       _e110143110240_
                       _hd110142110243_
                       _tl110141110245_
                       ___splice111171111172_
                       _target110144110248_
                       _tl110146110250_)
                      (let () (declare (not safe)) (_g110119110171_)))))
              (let () (declare (not safe)) (_g110119110171_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110119110171_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd110127110319_))
                                      (let ((_e110143110240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd110127110319_))))
                                        (let ((_tl110141110245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110143110240_)))
                                              (_hd110142110243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110143110240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl110141110245_))
                                              (let ((___splice111171111172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl110141110245_
                                                        '0))))
                                                (let ((_tl110146110250_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice111171111172_
                                                          '1)))
                                                      (_target110144110248_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice111171111172_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110146110250_))
                                                      (___match111220111221_
                                                       _e110125110308_
                                                       _hd110124110311_
                                                       _tl110123110313_
                                                       _e110128110316_
                                                       _hd110127110319_
                                                       _tl110126110321_
                                                       _e110143110240_
                                                       _hd110142110243_
                                                       _tl110141110245_
                                                       ___splice111171111172_
                                                       _target110144110248_
                                                       _tl110146110250_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g110119110171_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g110119110171_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110119110171_))))))
                          (let () (declare (not safe)) (_g110119110171_)))))
                  (let () (declare (not safe)) (_g110119110171_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self110073_ _stx110074_)
        (let* ((_g110076110086_
                (lambda (_g110077110083_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110077110083_))))
               (_g110075110111_
                (lambda (_g110077110089_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110077110089_))
                      (let ((_e110081110091_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110077110089_))))
                        (let ((_hd110080110094_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110081110091_)))
                              (_tl110079110096_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110081110091_))))
                          ((lambda (_L110099_)
                             (let ((_decls110109_
                                    (map gx#syntax->datum _L110099_)))
                               (gxc#current-compile-decls
                                (let ((__tmp112591
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp112591 _decls110109_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls110109_))))
                           _tl110079110096_)))
                      (let ()
                        (declare (not safe))
                        (_g110076110086_ _g110077110089_))))))
          (declare (not safe))
          (_g110075110111_ _stx110074_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self109819_ _stx109820_)
        (let* ((_g109822109839_
                (lambda (_g109823109836_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109823109836_))))
               (_g109821110070_
                (lambda (_g109823109842_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109823109842_))
                      (let ((_e109828109844_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109823109842_))))
                        (let ((_hd109827109847_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109828109844_)))
                              (_tl109826109849_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109828109844_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109826109849_))
                              (let ((_e109831109852_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109826109849_))))
                                (let ((_hd109830109855_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109831109852_)))
                                      (_tl109829109857_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109831109852_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109829109857_))
                                      (let ((_e109834109860_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109829109857_))))
                                        (let ((_hd109833109863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109834109860_)))
                                              (_tl109832109865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109834109860_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109832109865_))
                                              ((lambda (_L109868_ _L109869_)
                                                 (let* ((___stx111273111274_
                                                         _L109869_)
                                                        (_g109886109900_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx111273111274_)))))
                                                   (let ((___kont111275111276_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self109819_
                                                               _L109868_))))
                                                         (___kont111277111278_
                                                          (lambda (_L110032_)
                                                            (let ((_eid110041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L110032_))))
                      (let ((_lambda-expr110042110044_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L109868_))))
                        (if _lambda-expr110042110044_
                            (let* ((_lambda-expr110047_
                                    _lambda-expr110042110044_)
                                   (__tmp112592
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp112592
                               _lambda-expr110047_
                               _eid110041_))
                            '#f))
                      (let ((__tmp112593
                             (let ((__tmp112594
                                    (let ((__tmp112595
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self109819_
                                              _L109868_))))
                                      (declare (not safe))
                                      (cons __tmp112595 '()))))
                               (declare (not safe))
                               (cons _eid110041_ __tmp112594))))
                        (declare (not safe))
                        (cons 'define __tmp112593)))))
                 (___kont111279111280_
                  (lambda ()
                    (let* ((_tmp109907_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body110016_
                            (let _lp109909_ ((_rest109911_ _L109869_)
                                             (_k109912_ '0)
                                             (_r109913_ '()))
                              (let* ((___stx111243111244_ _rest109911_)
                                     (_g109918109935_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx111243111244_)))))
                                (let ((___kont111245111246_
                                       (lambda (_L110003_)
                                         (let ((__tmp112596
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k109912_ '1))))
                                           (declare (not safe))
                                           (_lp109909_
                                            _L110003_
                                            __tmp112596
                                            _r109913_))))
                                      (___kont111247111248_
                                       (lambda (_L109976_ _L109977_)
                                         (let ((__tmp112603
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k109912_ '1)))
                                               (__tmp112597
                                                (let ((__tmp112598
                                                       (let ((__tmp112599
                                                              (let ((__tmp112602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L109977_)))
                            (__tmp112600
                             (let ((__tmp112601
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp109907_
                                       _k109912_
                                       _L109976_))))
                               (declare (not safe))
                               (cons __tmp112601 '()))))
                        (declare (not safe))
                        (cons __tmp112602 __tmp112600))))
                 (declare (not safe))
                 (cons 'define __tmp112599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112598
                                                        _r109913_))))
                                           (declare (not safe))
                                           (_lp109909_
                                            _L109976_
                                            __tmp112603
                                            __tmp112597))))
                                      (___kont111249111250_
                                       (lambda (_L109947_)
                                         (let ((__tmp112604
                                                (let ((__tmp112605
                                                       (let ((__tmp112606
                                                              (let ((__tmp112609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L109947_)))
                            (__tmp112607
                             (let ((__tmp112608
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp109907_
                                       _k109912_))))
                               (declare (not safe))
                               (cons __tmp112608 '()))))
                        (declare (not safe))
                        (cons __tmp112609 __tmp112607))))
                 (declare (not safe))
                 (cons 'define __tmp112606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112605 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp112604
                                                   _r109913_))))
                                      (___kont111251111252_
                                       (lambda () (reverse _r109913_))))
                                  (let ((_g109916109963_
                                         (lambda ()
                                           (let ((_L109947_
                                                  ___stx111243111244_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L109947_))
                                                 (___kont111249111250_
                                                  _L109947_)
                                                 (___kont111251111252_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx111243111244_))
                                        (let ((_e109923109992_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx111243111244_))))
                                          (let ((_tl109921109997_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109923109992_)))
                                                (_hd109922109995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109923109992_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd109922109995_))
                                                (let ((_e109924110000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109922109995_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e109924110000_
                                                                '#f))
                                                      (___kont111245111246_
                                                       _tl109921109997_)
                                                      (___kont111247111248_
                                                       _tl109921109997_
                                                       _hd109922109995_)))
                                                (___kont111247111248_
                                                 _tl109921109997_
                                                 _hd109922109995_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109916109963_)))))))))
                      (let ((__tmp112610
                             (let ((__tmp112613
                                    (let ((__tmp112614
                                           (let ((__tmp112615
                                                  (let ((__tmp112616
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self109819_
                                                            _L109868_))))
                                                    (declare (not safe))
                                                    (cons __tmp112616 '()))))
                                             (declare (not safe))
                                             (cons _tmp109907_ __tmp112615))))
                                      (declare (not safe))
                                      (cons 'define __tmp112614)))
                                   (__tmp112611
                                    (let ((__tmp112612
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp109907_
                                              _L109869_
                                              _L109868_))))
                                      (declare (not safe))
                                      (cons __tmp112612 _body110016_))))
                               (declare (not safe))
                               (cons __tmp112613 __tmp112611))))
                        (declare (not safe))
                        (cons 'begin __tmp112610))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx111273111274_))
                                                         (let ((_e109890110054_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx111273111274_))))
                   (let ((_tl109888110059_
                          (let ()
                            (declare (not safe))
                            (##cdr _e109890110054_)))
                         (_hd109889110057_
                          (let ()
                            (declare (not safe))
                            (##car _e109890110054_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd109889110057_))
                         (let ((_e109891110062_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd109889110057_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e109891110062_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl109888110059_))
                                   (___kont111275111276_)
                                   (___kont111279111280_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl109888110059_))
                                   (___kont111277111278_ _hd109889110057_)
                                   (___kont111279111280_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109888110059_))
                             (___kont111277111278_ _hd109889110057_)
                             (___kont111279111280_)))))
                 (___kont111279111280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd109833109863_
                                               _hd109830109855_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109822109839_
                                                 _g109823109842_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109822109839_ _g109823109842_)))))
                              (let ()
                                (declare (not safe))
                                (_g109822109839_ _g109823109842_)))))
                      (let ()
                        (declare (not safe))
                        (_g109822109839_ _g109823109842_))))))
          (declare (not safe))
          (_g109821110070_ _stx109820_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals109795_ _hd109796_ _expr109797_)
        (let ((_$e109799_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr109797_))))
          (if _$e109799_
              ((lambda (_count109802_)
                 (let ((_len109804_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd109796_)))
                       (_cmp109805_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd109796_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len109804_ '0)
                           (_cmp109805_ _count109802_ _len109804_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr109797_
                          _hd109796_)))))
               _$e109799_)
              (let* ((_len109810_
                      (let () (declare (not safe)) (gx#stx-length _hd109796_)))
                     (_cmp109812_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd109796_))
                          '##fx=
                          '##fx>=))
                     (_errmsg109814_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd109796_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len109810_)
                       '" values"))
                     (_count109816_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp112640
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd109796_))))
                           (declare (not safe))
                           (not __tmp112640))
                         (fx= _len109810_ '0))
                    '#!void
                    (let ((__tmp112617
                           (let ((__tmp112636
                                  (let ((__tmp112637
                                         (let ((__tmp112638
                                                (let ((__tmp112639
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals109795_))))
                                                  (declare (not safe))
                                                  (cons __tmp112639 '()))))
                                           (declare (not safe))
                                           (cons _count109816_ __tmp112638))))
                                    (declare (not safe))
                                    (cons __tmp112637 '())))
                                 (__tmp112618
                                  (let ((__tmp112619
                                         (let ((__tmp112620
                                                (let ((__tmp112625
                                                       (let ((__tmp112626
                                                              (let ((__tmp112627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp112634
                                        (let ((__tmp112635
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len109810_ '()))))
                                          (declare (not safe))
                                          (cons _count109816_ __tmp112635))))
                                   (declare (not safe))
                                   (cons _cmp109812_ __tmp112634))
                                 (let ((__tmp112628
                                        (let ((__tmp112629
                                               (let ((__tmp112630
                                                      (let ((__tmp112631
                                                             (let ((__tmp112632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112633
                                   (let ()
                                     (declare (not safe))
                                     (cons _len109810_ '()))))
                              (declare (not safe))
                              (cons _count109816_ __tmp112633))))
                       (declare (not safe))
                       (cons _cmp109812_ __tmp112632))))
                (declare (not safe))
                (cons __tmp112631 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp112630))))
                                          (declare (not safe))
                                          (cons '() __tmp112629))))
                                   (declare (not safe))
                                   (cons 'let __tmp112628)))))
                        (declare (not safe))
                        (cons __tmp112627 '()))))
                 (declare (not safe))
                 (cons 'not __tmp112626)))
              (__tmp112621
               (let ((__tmp112622
                      (let ((__tmp112623
                             (let ((__tmp112624
                                    (let ()
                                      (declare (not safe))
                                      (cons _count109816_ '()))))
                               (declare (not safe))
                               (cons _errmsg109814_ __tmp112624))))
                        (declare (not safe))
                        (cons 'error __tmp112623))))
                 (declare (not safe))
                 (cons __tmp112622 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112625
                                                        __tmp112621))))
                                           (declare (not safe))
                                           (cons 'if __tmp112620))))
                                    (declare (not safe))
                                    (cons __tmp112619 '()))))
                             (declare (not safe))
                             (cons __tmp112636 __tmp112618))))
                      (declare (not safe))
                      (cons 'let __tmp112617))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var109790_)
        (letrec ((_generate-inline109792_
                  (lambda ()
                    (let ((__tmp112641
                           (let ((__tmp112646
                                  (let ((__tmp112647
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109790_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp112647)))
                                 (__tmp112642
                                  (let ((__tmp112644
                                         (let ((__tmp112645
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var109790_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp112645)))
                                        (__tmp112643
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp112644 __tmp112643))))
                             (declare (not safe))
                             (cons __tmp112646 __tmp112642))))
                      (declare (not safe))
                      (cons 'if __tmp112641)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline109792_))
              (let ((__tmp112648
                     (let ((__tmp112649
                            (let ((__tmp112650
                                   (let ((__tmp112651
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline109792_))))
                                     (declare (not safe))
                                     (cons __tmp112651 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp112650))))
                       (declare (not safe))
                       (cons '() __tmp112649))))
                (declare (not safe))
                (cons 'let __tmp112648))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var109783_ _i109784_ _rest109785_)
        (letrec ((_generate-inline109787_
                  (lambda ()
                    (if (and (fx= _i109784_ '0)
                             (let ((__tmp112662
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest109785_))))
                               (declare (not safe))
                               (not __tmp112662)))
                        (let ((__tmp112654
                               (let ((__tmp112660
                                      (let ((__tmp112661
                                             (let ()
                                               (declare (not safe))
                                               (cons _var109783_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp112661)))
                                     (__tmp112655
                                      (let ((__tmp112657
                                             (let ((__tmp112658
                                                    (let ((__tmp112659
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var109783_
                                                            __tmp112659))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp112658)))
                                            (__tmp112656
                                             (let ()
                                               (declare (not safe))
                                               (cons _var109783_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112657 __tmp112656))))
                                 (declare (not safe))
                                 (cons __tmp112660 __tmp112655))))
                          (declare (not safe))
                          (cons 'if __tmp112654))
                        (let ((__tmp112652
                               (let ((__tmp112653
                                      (let ()
                                        (declare (not safe))
                                        (cons _i109784_ '()))))
                                 (declare (not safe))
                                 (cons _var109783_ __tmp112653))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp112652))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline109787_))
              (let ((__tmp112663
                     (let ((__tmp112664
                            (let ((__tmp112665
                                   (let ((__tmp112666
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline109787_))))
                                     (declare (not safe))
                                     (cons __tmp112666 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp112665))))
                       (declare (not safe))
                       (cons '() __tmp112664))))
                (declare (not safe))
                (cons 'let __tmp112663))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var109780_ _i109781_)
        (if (fx= _i109781_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp112714
                       (let ((__tmp112721
                              (let ((__tmp112722
                                     (let ()
                                       (declare (not safe))
                                       (cons _var109780_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp112722)))
                             (__tmp112715
                              (let ((__tmp112719
                                     (let ((__tmp112720
                                            (let ()
                                              (declare (not safe))
                                              (cons _var109780_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp112720)))
                                    (__tmp112716
                                     (let ((__tmp112717
                                            (let ((__tmp112718
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var109780_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp112718))))
                                       (declare (not safe))
                                       (cons __tmp112717 '()))))
                                (declare (not safe))
                                (cons __tmp112719 __tmp112716))))
                         (declare (not safe))
                         (cons __tmp112721 __tmp112715))))
                  (declare (not safe))
                  (cons 'if __tmp112714))
                (let ((__tmp112701
                       (let ((__tmp112702
                              (let ((__tmp112703
                                     (let ((__tmp112704
                                            (let ((__tmp112705
                                                   (let ((__tmp112712
                                                          (let ((__tmp112713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var109780_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp112713)))
                 (__tmp112706
                  (let ((__tmp112710
                         (let ((__tmp112711
                                (let ()
                                  (declare (not safe))
                                  (cons _var109780_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp112711)))
                        (__tmp112707
                         (let ((__tmp112708
                                (let ((__tmp112709
                                       (let ()
                                         (declare (not safe))
                                         (cons _var109780_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp112709))))
                           (declare (not safe))
                           (cons __tmp112708 '()))))
                    (declare (not safe))
                    (cons __tmp112710 __tmp112707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112712
                                                           __tmp112706))))
                                              (declare (not safe))
                                              (cons 'if __tmp112705))))
                                       (declare (not safe))
                                       (cons __tmp112704 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp112703))))
                         (declare (not safe))
                         (cons '() __tmp112702))))
                  (declare (not safe))
                  (cons 'let __tmp112701)))
            (if (fx= _i109781_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp112692
                           (let ((__tmp112699
                                  (let ((__tmp112700
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109780_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp112700)))
                                 (__tmp112693
                                  (let ((__tmp112695
                                         (let ((__tmp112696
                                                (let ((__tmp112697
                                                       (let ((__tmp112698
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var109780_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp112698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112697 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp112696)))
                                        (__tmp112694
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp112695 __tmp112694))))
                             (declare (not safe))
                             (cons __tmp112699 __tmp112693))))
                      (declare (not safe))
                      (cons 'if __tmp112692))
                    (let ((__tmp112679
                           (let ((__tmp112680
                                  (let ((__tmp112681
                                         (let ((__tmp112682
                                                (let ((__tmp112683
                                                       (let ((__tmp112690
                                                              (let ((__tmp112691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var109780_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp112691)))
                     (__tmp112684
                      (let ((__tmp112686
                             (let ((__tmp112687
                                    (let ((__tmp112688
                                           (let ((__tmp112689
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var109780_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp112689))))
                                      (declare (not safe))
                                      (cons __tmp112688 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp112687)))
                            (__tmp112685
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp112686 __tmp112685))))
                 (declare (not safe))
                 (cons __tmp112690 __tmp112684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp112683))))
                                           (declare (not safe))
                                           (cons __tmp112682 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp112681))))
                             (declare (not safe))
                             (cons '() __tmp112680))))
                      (declare (not safe))
                      (cons 'let __tmp112679)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp112675
                           (let ((__tmp112677
                                  (let ((__tmp112678
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109780_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp112678)))
                                 (__tmp112676
                                  (let ()
                                    (declare (not safe))
                                    (cons _i109781_ '()))))
                             (declare (not safe))
                             (cons __tmp112677 __tmp112676))))
                      (declare (not safe))
                      (cons '##list-tail __tmp112675))
                    (let ((__tmp112667
                           (let ((__tmp112668
                                  (let ((__tmp112669
                                         (let ((__tmp112670
                                                (let ((__tmp112671
                                                       (let ((__tmp112673
                                                              (let ((__tmp112674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var109780_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp112674)))
                     (__tmp112672
                      (let () (declare (not safe)) (cons _i109781_ '()))))
                 (declare (not safe))
                 (cons __tmp112673 __tmp112672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp112671))))
                                           (declare (not safe))
                                           (cons __tmp112670 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp112669))))
                             (declare (not safe))
                             (cons '() __tmp112668))))
                      (declare (not safe))
                      (cons 'let __tmp112667)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self109712_ _stx109713_)
        (let* ((_g109715109732_
                (lambda (_g109716109729_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109716109729_))))
               (_g109714109777_
                (lambda (_g109716109735_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109716109735_))
                      (let ((_e109721109737_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109716109735_))))
                        (let ((_hd109720109740_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109721109737_)))
                              (_tl109719109742_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109721109737_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109719109742_))
                              (let ((_e109724109745_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109719109742_))))
                                (let ((_hd109723109748_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109724109745_)))
                                      (_tl109722109750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109724109745_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109722109750_))
                                      (let ((_e109727109753_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109722109750_))))
                                        (let ((_hd109726109756_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109727109753_)))
                                              (_tl109725109758_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109727109753_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109725109758_))
                                              ((lambda (_L109761_ _L109762_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self109712_
                                                    _L109762_
                                                    _L109761_)))
                                               _hd109726109756_
                                               _hd109723109748_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109715109732_
                                                 _g109716109735_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109715109732_ _g109716109735_)))))
                              (let ()
                                (declare (not safe))
                                (_g109715109732_ _g109716109735_)))))
                      (let ()
                        (declare (not safe))
                        (_g109715109732_ _g109716109735_))))))
          (declare (not safe))
          (_g109714109777_ _stx109713_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self109671_ _hd109672_ _body109673_)
        (let* ((_hd109675_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd109672_)))
               (_body109677_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self109671_ _body109673_)))
               (_body109709_
                (let* ((_body109678109686_ _body109677_)
                       (_else109680109694_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body109677_ '()))))
                       (_K109682109699_
                        (lambda (_exprs109697_) _exprs109697_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body109678109686_))
                      (let ((_hd109683109702_
                             (let ()
                               (declare (not safe))
                               (##car _body109678109686_)))
                            (_tl109684109704_
                             (let ()
                               (declare (not safe))
                               (##cdr _body109678109686_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd109683109702_ 'begin))
                            (let ((_exprs109707_ _tl109684109704_))
                              (declare (not safe))
                              (_K109682109699_ _exprs109707_))
                            (let ()
                              (declare (not safe))
                              (_else109680109694_))))
                      (let () (declare (not safe)) (_else109680109694_))))))
          (let ((__tmp112723
                 (let () (declare (not safe)) (cons _hd109675_ _body109709_))))
            (declare (not safe))
            (cons 'lambda __tmp112723)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd109669_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd109669_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self108211_ _stx108212_)
        (letrec ((_dispatch-case?108214_
                  (lambda (_hd108899_ _body108900_)
                    (let* ((_form108902_
                            (let ((__tmp112724
                                   (let ()
                                     (declare (not safe))
                                     (cons _body108900_ '()))))
                              (declare (not safe))
                              (cons _hd108899_ __tmp112724)))
                           (___stx111305111306_ _form108902_)
                           (_g108907109064_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111305111306_)))))
                      (let ((___kont111307111308_
                             (lambda (_L109589_ _L109590_ _L109591_) '#t))
                            (___kont111313111314_
                             (lambda (_L109377_
                                      _L109378_
                                      _L109379_
                                      _L109380_
                                      _L109381_
                                      _L109382_)
                               '#t))
                            (___kont111319111320_
                             (lambda (_L109172_ _L109173_ _L109174_ _L109175_)
                               '#t))
                            (___kont111321111322_ (lambda () '#f)))
                        (let* ((___match111446111447_
                                (lambda (_e109026109076_
                                         _hd109025109079_
                                         _tl109024109081_
                                         _e109029109084_
                                         _hd109028109087_
                                         _tl109027109089_
                                         _e109032109092_
                                         _hd109031109095_
                                         _tl109030109097_
                                         _e109035109100_
                                         _hd109034109103_
                                         _tl109033109105_
                                         _e109038109108_
                                         _hd109037109111_
                                         _tl109036109113_
                                         _e109041109116_
                                         _hd109040109119_
                                         _tl109039109121_
                                         _e109044109124_
                                         _hd109043109127_
                                         _tl109042109129_
                                         _e109047109132_
                                         _hd109046109135_
                                         _tl109045109137_
                                         _e109050109140_
                                         _hd109049109143_
                                         _tl109048109145_
                                         _e109053109148_
                                         _hd109052109151_
                                         _tl109051109153_
                                         _e109056109156_
                                         _hd109055109159_
                                         _tl109054109161_
                                         _e109059109164_
                                         _hd109058109167_
                                         _tl109057109169_)
                                  (let ((_L109172_ _hd109058109167_)
                                        (_L109173_ _hd109049109143_)
                                        (_L109174_ _hd109040109119_)
                                        (_L109175_ _hd109025109079_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L109175_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L109174_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L109175_
                                                _L109172_))
                                             (let ((__tmp112725
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L109173_
                                                       _L109175_))))
                                               (declare (not safe))
                                               (not __tmp112725)))
                                        (___kont111319111320_
                                         _L109172_
                                         _L109173_
                                         _L109174_
                                         _L109175_)
                                        (___kont111321111322_)))))
                               (___match111418111419_
                                (lambda (_e109026109076_
                                         _hd109025109079_
                                         _tl109024109081_
                                         _e109029109084_
                                         _hd109028109087_
                                         _tl109027109089_
                                         _e109032109092_
                                         _hd109031109095_
                                         _tl109030109097_
                                         _e109035109100_
                                         _hd109034109103_
                                         _tl109033109105_
                                         _e109038109108_
                                         _hd109037109111_
                                         _tl109036109113_
                                         _e109041109116_
                                         _hd109040109119_
                                         _tl109039109121_
                                         _e109044109124_
                                         _hd109043109127_
                                         _tl109042109129_
                                         _e109047109132_
                                         _hd109046109135_
                                         _tl109045109137_
                                         _e109050109140_
                                         _hd109049109143_
                                         _tl109048109145_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109042109129_))
                                      (let ((_e109053109148_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109042109129_))))
                                        (let ((_tl109051109153_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109053109148_)))
                                              (_hd109052109151_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109053109148_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd109052109151_))
                                              (let ((_e109056109156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd109052109151_))))
                                                (let ((_tl109054109161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109056109156_)))
                                                      (_hd109055109159_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109056109156_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd109055109159_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd109055109159_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109054109161_))
                      (let ((_e109059109164_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109054109161_))))
                        (let ((_tl109057109169_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109059109164_)))
                              (_hd109058109167_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109059109164_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl109057109169_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl109051109153_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl109027109089_))
                                      (___match111446111447_
                                       _e109026109076_
                                       _hd109025109079_
                                       _tl109024109081_
                                       _e109029109084_
                                       _hd109028109087_
                                       _tl109027109089_
                                       _e109032109092_
                                       _hd109031109095_
                                       _tl109030109097_
                                       _e109035109100_
                                       _hd109034109103_
                                       _tl109033109105_
                                       _e109038109108_
                                       _hd109037109111_
                                       _tl109036109113_
                                       _e109041109116_
                                       _hd109040109119_
                                       _tl109039109121_
                                       _e109044109124_
                                       _hd109043109127_
                                       _tl109042109129_
                                       _e109047109132_
                                       _hd109046109135_
                                       _tl109045109137_
                                       _e109050109140_
                                       _hd109049109143_
                                       _tl109048109145_
                                       _e109053109148_
                                       _hd109052109151_
                                       _tl109051109153_
                                       _e109056109156_
                                       _hd109055109159_
                                       _tl109054109161_
                                       _e109059109164_
                                       _hd109058109167_
                                       _tl109057109169_)
                                      (___kont111321111322_))
                                  (___kont111321111322_))
                              (___kont111321111322_))))
                      (___kont111321111322_))
                  (___kont111321111322_))
              (___kont111321111322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont111321111322_))))
                                      (___kont111321111322_))))
                               (___match111348111349_
                                (lambda (_e108962109217_
                                         _hd108961109220_
                                         _tl108960109222_
                                         ___splice111315111316_
                                         _target108963109225_
                                         _tl108965109227_)
                                  (letrec ((_loop108966109230_
                                            (lambda (_hd108964109233_
                                                     _arg108970109235_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108964109233_))
                                                  (let ((_e108967109238_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108964109233_))))
                                                    (let ((_lp-tl108969109243_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108967109238_)))
                                                          (_lp-hd108968109241_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108967109238_))))
                                                      (let ((__tmp112740
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108968109241_ _arg108970109235_))))
                (declare (not safe))
                (_loop108966109230_ _lp-tl108969109243_ __tmp112740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108971109246_
                                                         (reverse _arg108970109235_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108960109222_))
                                                        (let ((_e108974109249_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108960109222_))))
                  (let ((_tl108972109254_
                         (let () (declare (not safe)) (##cdr _e108974109249_)))
                        (_hd108973109252_
                         (let ()
                           (declare (not safe))
                           (##car _e108974109249_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108973109252_))
                        (let ((_e108977109257_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108973109252_))))
                          (let ((_tl108975109262_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108977109257_)))
                                (_hd108976109260_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108977109257_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108976109260_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108976109260_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108975109262_))
                                        (let ((_e108980109265_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108975109262_))))
                                          (let ((_tl108978109270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108980109265_)))
                                                (_hd108979109268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108980109265_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108979109268_))
                                                (let ((_e108983109273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108979109268_))))
                                                  (let ((_tl108981109278_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108983109273_)))
                                                        (_hd108982109276_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108983109273_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108982109276_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108982109276_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108981109278_))
                        (let ((_e108986109281_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108981109278_))))
                          (let ((_tl108984109286_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108986109281_)))
                                (_hd108985109284_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108986109281_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108984109286_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl108978109270_))
                                    (let ((_e108989109289_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl108978109270_))))
                                      (let ((_tl108987109294_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e108989109289_)))
                                            (_hd108988109292_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e108989109289_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd108988109292_))
                                            (let ((_e108992109297_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd108988109292_))))
                                              (let ((_tl108990109302_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108992109297_)))
                                                    (_hd108991109300_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108992109297_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd108991109300_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd108991109300_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108990109302_))
                                                            (let ((_e108995109305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108990109302_))))
                      (let ((_tl108993109310_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108995109305_)))
                            (_hd108994109308_
                             (let ()
                               (declare (not safe))
                               (##car _e108995109305_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108993109310_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl108987109294_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl108987109294_))
                                          '1)
                                    (let ((___splice111317111318_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl108987109294_
                                              '1))))
                                      (let ((_tl108998109315_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111317111318_
                                                '1)))
                                            (_target108996109313_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111317111318_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108998109315_))
                                            (let ((_e109007109318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108998109315_))))
                                              (let ((_tl109005109323_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109007109318_)))
                                                    (_hd109006109321_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109007109318_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd109006109321_))
                                                    (let ((_e109010109326_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd109006109321_))))
                                                      (let ((_tl109008109331_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e109010109326_)))
                    (_hd109009109329_
                     (let () (declare (not safe)) (##car _e109010109326_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd109009109329_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd109009109329_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl109008109331_))
                            (let ((_e109013109334_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl109008109331_))))
                              (let ((_tl109011109339_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e109013109334_)))
                                    (_hd109012109337_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e109013109334_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl109011109339_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl109005109323_))
                                        (letrec ((_loop108999109342_
                                                  (lambda (_hd108997109345_
                                                           _xarg109003109347_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd108997109345_))
                                                        (let ((_e109000109350_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd108997109345_))))
                  (let ((_lp-tl109002109355_
                         (let () (declare (not safe)) (##cdr _e109000109350_)))
                        (_lp-hd109001109353_
                         (let ()
                           (declare (not safe))
                           (##car _e109000109350_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd109001109353_))
                        (let ((_e109016109358_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd109001109353_))))
                          (let ((_tl109014109363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109016109358_)))
                                (_hd109015109361_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109016109358_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109015109361_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd109015109361_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109014109363_))
                                        (let ((_e109019109366_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109014109363_))))
                                          (let ((_tl109017109371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109019109366_)))
                                                (_hd109018109369_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109019109366_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109017109371_))
                                                (let ((__tmp112739
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd109018109369_
                                                               _xarg109003109347_))))
                                                  (declare (not safe))
                                                  (_loop108999109342_
                                                   _lp-tl109002109355_
                                                   __tmp112739))
                                                (___match111418111419_
                                                 _e108962109217_
                                                 _hd108961109220_
                                                 _tl108960109222_
                                                 _e108974109249_
                                                 _hd108973109252_
                                                 _tl108972109254_
                                                 _e108977109257_
                                                 _hd108976109260_
                                                 _tl108975109262_
                                                 _e108980109265_
                                                 _hd108979109268_
                                                 _tl108978109270_
                                                 _e108983109273_
                                                 _hd108982109276_
                                                 _tl108981109278_
                                                 _e108986109281_
                                                 _hd108985109284_
                                                 _tl108984109286_
                                                 _e108989109289_
                                                 _hd108988109292_
                                                 _tl108987109294_
                                                 _e108992109297_
                                                 _hd108991109300_
                                                 _tl108990109302_
                                                 _e108995109305_
                                                 _hd108994109308_
                                                 _tl108993109310_))))
                                        (___match111418111419_
                                         _e108962109217_
                                         _hd108961109220_
                                         _tl108960109222_
                                         _e108974109249_
                                         _hd108973109252_
                                         _tl108972109254_
                                         _e108977109257_
                                         _hd108976109260_
                                         _tl108975109262_
                                         _e108980109265_
                                         _hd108979109268_
                                         _tl108978109270_
                                         _e108983109273_
                                         _hd108982109276_
                                         _tl108981109278_
                                         _e108986109281_
                                         _hd108985109284_
                                         _tl108984109286_
                                         _e108989109289_
                                         _hd108988109292_
                                         _tl108987109294_
                                         _e108992109297_
                                         _hd108991109300_
                                         _tl108990109302_
                                         _e108995109305_
                                         _hd108994109308_
                                         _tl108993109310_))
                                    (___match111418111419_
                                     _e108962109217_
                                     _hd108961109220_
                                     _tl108960109222_
                                     _e108974109249_
                                     _hd108973109252_
                                     _tl108972109254_
                                     _e108977109257_
                                     _hd108976109260_
                                     _tl108975109262_
                                     _e108980109265_
                                     _hd108979109268_
                                     _tl108978109270_
                                     _e108983109273_
                                     _hd108982109276_
                                     _tl108981109278_
                                     _e108986109281_
                                     _hd108985109284_
                                     _tl108984109286_
                                     _e108989109289_
                                     _hd108988109292_
                                     _tl108987109294_
                                     _e108992109297_
                                     _hd108991109300_
                                     _tl108990109302_
                                     _e108995109305_
                                     _hd108994109308_
                                     _tl108993109310_))
                                (___match111418111419_
                                 _e108962109217_
                                 _hd108961109220_
                                 _tl108960109222_
                                 _e108974109249_
                                 _hd108973109252_
                                 _tl108972109254_
                                 _e108977109257_
                                 _hd108976109260_
                                 _tl108975109262_
                                 _e108980109265_
                                 _hd108979109268_
                                 _tl108978109270_
                                 _e108983109273_
                                 _hd108982109276_
                                 _tl108981109278_
                                 _e108986109281_
                                 _hd108985109284_
                                 _tl108984109286_
                                 _e108989109289_
                                 _hd108988109292_
                                 _tl108987109294_
                                 _e108992109297_
                                 _hd108991109300_
                                 _tl108990109302_
                                 _e108995109305_
                                 _hd108994109308_
                                 _tl108993109310_))))
                        (___match111418111419_
                         _e108962109217_
                         _hd108961109220_
                         _tl108960109222_
                         _e108974109249_
                         _hd108973109252_
                         _tl108972109254_
                         _e108977109257_
                         _hd108976109260_
                         _tl108975109262_
                         _e108980109265_
                         _hd108979109268_
                         _tl108978109270_
                         _e108983109273_
                         _hd108982109276_
                         _tl108981109278_
                         _e108986109281_
                         _hd108985109284_
                         _tl108984109286_
                         _e108989109289_
                         _hd108988109292_
                         _tl108987109294_
                         _e108992109297_
                         _hd108991109300_
                         _tl108990109302_
                         _e108995109305_
                         _hd108994109308_
                         _tl108993109310_))))
                (let ((_xarg109004109374_ (reverse _xarg109003109347_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108972109254_))
                      (let ((_L109377_ _hd109012109337_)
                            (_L109378_ _xarg109004109374_)
                            (_L109379_ _hd108994109308_)
                            (_L109380_ _hd108985109284_)
                            (_L109381_ _tl108965109227_)
                            (_L109382_ _arg108971109246_))
                        (if (and (let ((__tmp112737
                                        (let ((__tmp112738
                                               (lambda (_g109425109428_
                                                        _g109426109430_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109425109428_
                                                         _g109426109430_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112738 '() _L109382_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp112737))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L109381_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L109380_ 'apply))
                                 (fx= (length (let ((__tmp112735
                                                     (lambda (_g109432109435_
                                                              _g109433109437_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109432109435_
                                                               _g109433109437_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112735
                                                        '()
                                                        _L109382_)))
                                      (length (let ((__tmp112736
                                                     (lambda (_g109439109442_
                                                              _g109440109444_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109439109442_
                                                               _g109440109444_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112736
                                                        '()
                                                        _L109378_))))
                                 (let ((__tmp112733
                                        (let ((__tmp112734
                                               (lambda (_g109446109449_
                                                        _g109447109451_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109446109449_
                                                         _g109447109451_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112734 '() _L109382_)))
                                       (__tmp112731
                                        (let ((__tmp112732
                                               (lambda (_g109453109456_
                                                        _g109454109458_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109453109456_
                                                         _g109454109458_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112732 '() _L109378_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp112733
                                            __tmp112731))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L109381_ _L109377_))
                                 (let ((__tmp112726
                                        (let ((__tmp112730
                                               (lambda (_g109460109462_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g109460109462_
                                                    _L109379_))))
                                              (__tmp112727
                                               (let ((__tmp112729
                                                      (lambda (_g109464109467_
                                                               _g109465109469_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g109464109467_
                                                                _g109465109469_))))
                                                     (__tmp112728
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L109381_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp112729
                                                         __tmp112728
                                                         _L109382_))))
                                          (declare (not safe))
                                          (find __tmp112730 __tmp112727))))
                                   (declare (not safe))
                                   (not __tmp112726)))
                            (___kont111313111314_
                             _L109377_
                             _L109378_
                             _L109379_
                             _L109380_
                             _L109381_
                             _L109382_)
                            (___match111418111419_
                             _e108962109217_
                             _hd108961109220_
                             _tl108960109222_
                             _e108974109249_
                             _hd108973109252_
                             _tl108972109254_
                             _e108977109257_
                             _hd108976109260_
                             _tl108975109262_
                             _e108980109265_
                             _hd108979109268_
                             _tl108978109270_
                             _e108983109273_
                             _hd108982109276_
                             _tl108981109278_
                             _e108986109281_
                             _hd108985109284_
                             _tl108984109286_
                             _e108989109289_
                             _hd108988109292_
                             _tl108987109294_
                             _e108992109297_
                             _hd108991109300_
                             _tl108990109302_
                             _e108995109305_
                             _hd108994109308_
                             _tl108993109310_)))
                      (___match111418111419_
                       _e108962109217_
                       _hd108961109220_
                       _tl108960109222_
                       _e108974109249_
                       _hd108973109252_
                       _tl108972109254_
                       _e108977109257_
                       _hd108976109260_
                       _tl108975109262_
                       _e108980109265_
                       _hd108979109268_
                       _tl108978109270_
                       _e108983109273_
                       _hd108982109276_
                       _tl108981109278_
                       _e108986109281_
                       _hd108985109284_
                       _tl108984109286_
                       _e108989109289_
                       _hd108988109292_
                       _tl108987109294_
                       _e108992109297_
                       _hd108991109300_
                       _tl108990109302_
                       _e108995109305_
                       _hd108994109308_
                       _tl108993109310_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop108999109342_
                                             _target108996109313_
                                             '())))
                                        (___match111418111419_
                                         _e108962109217_
                                         _hd108961109220_
                                         _tl108960109222_
                                         _e108974109249_
                                         _hd108973109252_
                                         _tl108972109254_
                                         _e108977109257_
                                         _hd108976109260_
                                         _tl108975109262_
                                         _e108980109265_
                                         _hd108979109268_
                                         _tl108978109270_
                                         _e108983109273_
                                         _hd108982109276_
                                         _tl108981109278_
                                         _e108986109281_
                                         _hd108985109284_
                                         _tl108984109286_
                                         _e108989109289_
                                         _hd108988109292_
                                         _tl108987109294_
                                         _e108992109297_
                                         _hd108991109300_
                                         _tl108990109302_
                                         _e108995109305_
                                         _hd108994109308_
                                         _tl108993109310_))
                                    (___match111418111419_
                                     _e108962109217_
                                     _hd108961109220_
                                     _tl108960109222_
                                     _e108974109249_
                                     _hd108973109252_
                                     _tl108972109254_
                                     _e108977109257_
                                     _hd108976109260_
                                     _tl108975109262_
                                     _e108980109265_
                                     _hd108979109268_
                                     _tl108978109270_
                                     _e108983109273_
                                     _hd108982109276_
                                     _tl108981109278_
                                     _e108986109281_
                                     _hd108985109284_
                                     _tl108984109286_
                                     _e108989109289_
                                     _hd108988109292_
                                     _tl108987109294_
                                     _e108992109297_
                                     _hd108991109300_
                                     _tl108990109302_
                                     _e108995109305_
                                     _hd108994109308_
                                     _tl108993109310_))))
                            (___match111418111419_
                             _e108962109217_
                             _hd108961109220_
                             _tl108960109222_
                             _e108974109249_
                             _hd108973109252_
                             _tl108972109254_
                             _e108977109257_
                             _hd108976109260_
                             _tl108975109262_
                             _e108980109265_
                             _hd108979109268_
                             _tl108978109270_
                             _e108983109273_
                             _hd108982109276_
                             _tl108981109278_
                             _e108986109281_
                             _hd108985109284_
                             _tl108984109286_
                             _e108989109289_
                             _hd108988109292_
                             _tl108987109294_
                             _e108992109297_
                             _hd108991109300_
                             _tl108990109302_
                             _e108995109305_
                             _hd108994109308_
                             _tl108993109310_))
                        (___match111418111419_
                         _e108962109217_
                         _hd108961109220_
                         _tl108960109222_
                         _e108974109249_
                         _hd108973109252_
                         _tl108972109254_
                         _e108977109257_
                         _hd108976109260_
                         _tl108975109262_
                         _e108980109265_
                         _hd108979109268_
                         _tl108978109270_
                         _e108983109273_
                         _hd108982109276_
                         _tl108981109278_
                         _e108986109281_
                         _hd108985109284_
                         _tl108984109286_
                         _e108989109289_
                         _hd108988109292_
                         _tl108987109294_
                         _e108992109297_
                         _hd108991109300_
                         _tl108990109302_
                         _e108995109305_
                         _hd108994109308_
                         _tl108993109310_))
                    (___match111418111419_
                     _e108962109217_
                     _hd108961109220_
                     _tl108960109222_
                     _e108974109249_
                     _hd108973109252_
                     _tl108972109254_
                     _e108977109257_
                     _hd108976109260_
                     _tl108975109262_
                     _e108980109265_
                     _hd108979109268_
                     _tl108978109270_
                     _e108983109273_
                     _hd108982109276_
                     _tl108981109278_
                     _e108986109281_
                     _hd108985109284_
                     _tl108984109286_
                     _e108989109289_
                     _hd108988109292_
                     _tl108987109294_
                     _e108992109297_
                     _hd108991109300_
                     _tl108990109302_
                     _e108995109305_
                     _hd108994109308_
                     _tl108993109310_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111418111419_
                                                     _e108962109217_
                                                     _hd108961109220_
                                                     _tl108960109222_
                                                     _e108974109249_
                                                     _hd108973109252_
                                                     _tl108972109254_
                                                     _e108977109257_
                                                     _hd108976109260_
                                                     _tl108975109262_
                                                     _e108980109265_
                                                     _hd108979109268_
                                                     _tl108978109270_
                                                     _e108983109273_
                                                     _hd108982109276_
                                                     _tl108981109278_
                                                     _e108986109281_
                                                     _hd108985109284_
                                                     _tl108984109286_
                                                     _e108989109289_
                                                     _hd108988109292_
                                                     _tl108987109294_
                                                     _e108992109297_
                                                     _hd108991109300_
                                                     _tl108990109302_
                                                     _e108995109305_
                                                     _hd108994109308_
                                                     _tl108993109310_))))
                                            (___match111418111419_
                                             _e108962109217_
                                             _hd108961109220_
                                             _tl108960109222_
                                             _e108974109249_
                                             _hd108973109252_
                                             _tl108972109254_
                                             _e108977109257_
                                             _hd108976109260_
                                             _tl108975109262_
                                             _e108980109265_
                                             _hd108979109268_
                                             _tl108978109270_
                                             _e108983109273_
                                             _hd108982109276_
                                             _tl108981109278_
                                             _e108986109281_
                                             _hd108985109284_
                                             _tl108984109286_
                                             _e108989109289_
                                             _hd108988109292_
                                             _tl108987109294_
                                             _e108992109297_
                                             _hd108991109300_
                                             _tl108990109302_
                                             _e108995109305_
                                             _hd108994109308_
                                             _tl108993109310_))))
                                    (___match111418111419_
                                     _e108962109217_
                                     _hd108961109220_
                                     _tl108960109222_
                                     _e108974109249_
                                     _hd108973109252_
                                     _tl108972109254_
                                     _e108977109257_
                                     _hd108976109260_
                                     _tl108975109262_
                                     _e108980109265_
                                     _hd108979109268_
                                     _tl108978109270_
                                     _e108983109273_
                                     _hd108982109276_
                                     _tl108981109278_
                                     _e108986109281_
                                     _hd108985109284_
                                     _tl108984109286_
                                     _e108989109289_
                                     _hd108988109292_
                                     _tl108987109294_
                                     _e108992109297_
                                     _hd108991109300_
                                     _tl108990109302_
                                     _e108995109305_
                                     _hd108994109308_
                                     _tl108993109310_))
                                (___match111418111419_
                                 _e108962109217_
                                 _hd108961109220_
                                 _tl108960109222_
                                 _e108974109249_
                                 _hd108973109252_
                                 _tl108972109254_
                                 _e108977109257_
                                 _hd108976109260_
                                 _tl108975109262_
                                 _e108980109265_
                                 _hd108979109268_
                                 _tl108978109270_
                                 _e108983109273_
                                 _hd108982109276_
                                 _tl108981109278_
                                 _e108986109281_
                                 _hd108985109284_
                                 _tl108984109286_
                                 _e108989109289_
                                 _hd108988109292_
                                 _tl108987109294_
                                 _e108992109297_
                                 _hd108991109300_
                                 _tl108990109302_
                                 _e108995109305_
                                 _hd108994109308_
                                 _tl108993109310_))
                            (___kont111321111322_))))
                    (___kont111321111322_))
                (___kont111321111322_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont111321111322_))))
                                            (___kont111321111322_))))
                                    (___kont111321111322_))
                                (___kont111321111322_))))
                        (___kont111321111322_))
                    (___kont111321111322_))
                (___kont111321111322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont111321111322_))))
                                        (___kont111321111322_))
                                    (___kont111321111322_))
                                (___kont111321111322_))))
                        (___kont111321111322_))))
                (___kont111321111322_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108966109230_
                                       _target108963109225_
                                       '())))))
                               (___match111336111337_
                                (lambda (_e108914109477_
                                         _hd108913109480_
                                         _tl108912109482_
                                         ___splice111309111310_
                                         _target108915109485_
                                         _tl108917109487_)
                                  (letrec ((_loop108918109490_
                                            (lambda (_hd108916109493_
                                                     _arg108922109495_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108916109493_))
                                                  (let ((_e108919109498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108916109493_))))
                                                    (let ((_lp-tl108921109503_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108919109498_)))
                                                          (_lp-hd108920109501_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108919109498_))))
                                                      (let ((__tmp112754
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108920109501_ _arg108922109495_))))
                (declare (not safe))
                (_loop108918109490_ _lp-tl108921109503_ __tmp112754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108923109506_
                                                         (reverse _arg108922109495_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108912109482_))
                                                        (let ((_e108926109509_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108912109482_))))
                  (let ((_tl108924109514_
                         (let () (declare (not safe)) (##cdr _e108926109509_)))
                        (_hd108925109512_
                         (let ()
                           (declare (not safe))
                           (##car _e108926109509_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108925109512_))
                        (let ((_e108929109517_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108925109512_))))
                          (let ((_tl108927109522_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108929109517_)))
                                (_hd108928109520_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108929109517_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108928109520_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108928109520_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108927109522_))
                                        (let ((_e108932109525_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108927109522_))))
                                          (let ((_tl108930109530_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108932109525_)))
                                                (_hd108931109528_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108932109525_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108931109528_))
                                                (let ((_e108935109533_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108931109528_))))
                                                  (let ((_tl108933109538_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108935109533_)))
                                                        (_hd108934109536_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108935109533_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108934109536_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108934109536_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108933109538_))
                        (let ((_e108938109541_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108933109538_))))
                          (let ((_tl108936109546_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108938109541_)))
                                (_hd108937109544_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108938109541_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108936109546_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl108930109530_))
                                    (let ((___splice111311111312_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl108930109530_
                                              '0))))
                                      (let ((_tl108941109551_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111311111312_
                                                '1)))
                                            (_target108939109549_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111311111312_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl108941109551_))
                                            (letrec ((_loop108942109554_
                                                      (lambda (_hd108940109557_
                                                               _xarg108946109559_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd108940109557_))
                                                            (let ((_e108943109562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd108940109557_))))
                      (let ((_lp-tl108945109567_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108943109562_)))
                            (_lp-hd108944109565_
                             (let ()
                               (declare (not safe))
                               (##car _e108943109562_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd108944109565_))
                            (let ((_e108950109570_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd108944109565_))))
                              (let ((_tl108948109575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108950109570_)))
                                    (_hd108949109573_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108950109570_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108949109573_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd108949109573_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108948109575_))
                                            (let ((_e108953109578_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108948109575_))))
                                              (let ((_tl108951109583_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108953109578_)))
                                                    (_hd108952109581_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108953109578_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108951109583_))
                                                    (let ((__tmp112753
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd108952109581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg108946109559_))))
              (declare (not safe))
              (_loop108942109554_ _lp-tl108945109567_ __tmp112753))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111348111349_
                                                     _e108914109477_
                                                     _hd108913109480_
                                                     _tl108912109482_
                                                     ___splice111309111310_
                                                     _target108915109485_
                                                     _tl108917109487_))))
                                            (___match111348111349_
                                             _e108914109477_
                                             _hd108913109480_
                                             _tl108912109482_
                                             ___splice111309111310_
                                             _target108915109485_
                                             _tl108917109487_))
                                        (___match111348111349_
                                         _e108914109477_
                                         _hd108913109480_
                                         _tl108912109482_
                                         ___splice111309111310_
                                         _target108915109485_
                                         _tl108917109487_))
                                    (___match111348111349_
                                     _e108914109477_
                                     _hd108913109480_
                                     _tl108912109482_
                                     ___splice111309111310_
                                     _target108915109485_
                                     _tl108917109487_))))
                            (___match111348111349_
                             _e108914109477_
                             _hd108913109480_
                             _tl108912109482_
                             ___splice111309111310_
                             _target108915109485_
                             _tl108917109487_))))
                    (let ((_xarg108947109586_ (reverse _xarg108946109559_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108924109514_))
                          (let ((_L109589_ _xarg108947109586_)
                                (_L109590_ _hd108937109544_)
                                (_L109591_ _arg108923109506_))
                            (if (and (let ((__tmp112751
                                            (let ((__tmp112752
                                                   (lambda (_g109619109622_
                                                            _g109620109624_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109619109622_
                                                             _g109620109624_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112752
                                                      '()
                                                      _L109591_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp112751))
                                     (fx= (length (let ((__tmp112749
                                                         (lambda (_g109626109629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g109627109631_)
                   (let ()
                     (declare (not safe))
                     (cons _g109626109629_ _g109627109631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112749
                                                            '()
                                                            _L109591_)))
                                          (length (let ((__tmp112750
                                                         (lambda (_g109633109636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g109634109638_)
                   (let ()
                     (declare (not safe))
                     (cons _g109633109636_ _g109634109638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112750
                                                            '()
                                                            _L109589_))))
                                     (let ((__tmp112747
                                            (let ((__tmp112748
                                                   (lambda (_g109640109643_
                                                            _g109641109645_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109640109643_
                                                             _g109641109645_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112748
                                                      '()
                                                      _L109591_)))
                                           (__tmp112745
                                            (let ((__tmp112746
                                                   (lambda (_g109647109650_
                                                            _g109648109652_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109647109650_
                                                             _g109648109652_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112746
                                                      '()
                                                      _L109589_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp112747
                                                __tmp112745))
                                     (let ((__tmp112741
                                            (let ((__tmp112744
                                                   (lambda (_g109654109656_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g109654109656_
                                                        _L109590_))))
                                                  (__tmp112742
                                                   (let ((__tmp112743
                                                          (lambda (_g109658109661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g109659109663_)
                    (let ()
                      (declare (not safe))
                      (cons _g109658109661_ _g109659109663_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp112743
                                                             '()
                                                             _L109591_))))
                                              (declare (not safe))
                                              (find __tmp112744 __tmp112742))))
                                       (declare (not safe))
                                       (not __tmp112741)))
                                (___kont111307111308_
                                 _L109589_
                                 _L109590_
                                 _L109591_)
                                (___match111348111349_
                                 _e108914109477_
                                 _hd108913109480_
                                 _tl108912109482_
                                 ___splice111309111310_
                                 _target108915109485_
                                 _tl108917109487_)))
                          (___match111348111349_
                           _e108914109477_
                           _hd108913109480_
                           _tl108912109482_
                           ___splice111309111310_
                           _target108915109485_
                           _tl108917109487_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop108942109554_
                                                 _target108939109549_
                                                 '())))
                                            (___match111348111349_
                                             _e108914109477_
                                             _hd108913109480_
                                             _tl108912109482_
                                             ___splice111309111310_
                                             _target108915109485_
                                             _tl108917109487_))))
                                    (___match111348111349_
                                     _e108914109477_
                                     _hd108913109480_
                                     _tl108912109482_
                                     ___splice111309111310_
                                     _target108915109485_
                                     _tl108917109487_))
                                (___match111348111349_
                                 _e108914109477_
                                 _hd108913109480_
                                 _tl108912109482_
                                 ___splice111309111310_
                                 _target108915109485_
                                 _tl108917109487_))))
                        (___match111348111349_
                         _e108914109477_
                         _hd108913109480_
                         _tl108912109482_
                         ___splice111309111310_
                         _target108915109485_
                         _tl108917109487_))
                    (___match111348111349_
                     _e108914109477_
                     _hd108913109480_
                     _tl108912109482_
                     ___splice111309111310_
                     _target108915109485_
                     _tl108917109487_))
                (___match111348111349_
                 _e108914109477_
                 _hd108913109480_
                 _tl108912109482_
                 ___splice111309111310_
                 _target108915109485_
                 _tl108917109487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match111348111349_
                                                 _e108914109477_
                                                 _hd108913109480_
                                                 _tl108912109482_
                                                 ___splice111309111310_
                                                 _target108915109485_
                                                 _tl108917109487_))))
                                        (___match111348111349_
                                         _e108914109477_
                                         _hd108913109480_
                                         _tl108912109482_
                                         ___splice111309111310_
                                         _target108915109485_
                                         _tl108917109487_))
                                    (___match111348111349_
                                     _e108914109477_
                                     _hd108913109480_
                                     _tl108912109482_
                                     ___splice111309111310_
                                     _target108915109485_
                                     _tl108917109487_))
                                (___match111348111349_
                                 _e108914109477_
                                 _hd108913109480_
                                 _tl108912109482_
                                 ___splice111309111310_
                                 _target108915109485_
                                 _tl108917109487_))))
                        (___match111348111349_
                         _e108914109477_
                         _hd108913109480_
                         _tl108912109482_
                         ___splice111309111310_
                         _target108915109485_
                         _tl108917109487_))))
                (___match111348111349_
                 _e108914109477_
                 _hd108913109480_
                 _tl108912109482_
                 ___splice111309111310_
                 _target108915109485_
                 _tl108917109487_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108918109490_
                                       _target108915109485_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111305111306_))
                              (let ((_e108914109477_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111305111306_))))
                                (let ((_tl108912109482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108914109477_)))
                                      (_hd108913109480_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108914109477_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd108913109480_))
                                      (let ((___splice111309111310_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd108913109480_
                                                '0))))
                                        (let ((_tl108917109487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111309111310_
                                                  '1)))
                                              (_target108915109485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111309111310_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108917109487_))
                                              (___match111336111337_
                                               _e108914109477_
                                               _hd108913109480_
                                               _tl108912109482_
                                               ___splice111309111310_
                                               _target108915109485_
                                               _tl108917109487_)
                                              (___match111348111349_
                                               _e108914109477_
                                               _hd108913109480_
                                               _tl108912109482_
                                               ___splice111309111310_
                                               _target108915109485_
                                               _tl108917109487_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl108912109482_))
                                          (let ((_e109029109084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl108912109482_))))
                                            (let ((_tl109027109089_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109029109084_)))
                                                  (_hd109028109087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109029109084_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109028109087_))
                                                  (let ((_e109032109092_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109028109087_))))
                                                    (let ((_tl109030109097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109032109092_)))
                                                          (_hd109031109095_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109032109092_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd109031109095_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd109031109095_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl109030109097_))
                          (let ((_e109035109100_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl109030109097_))))
                            (let ((_tl109033109105_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109035109100_)))
                                  (_hd109034109103_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109035109100_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd109034109103_))
                                  (let ((_e109038109108_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd109034109103_))))
                                    (let ((_tl109036109113_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109038109108_)))
                                          (_hd109037109111_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109038109108_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd109037109111_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd109037109111_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl109036109113_))
                                                  (let ((_e109041109116_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl109036109113_))))
                                                    (let ((_tl109039109121_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109041109116_)))
                                                          (_hd109040109119_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109041109116_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109039109121_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109033109105_))
                      (let ((_e109044109124_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109033109105_))))
                        (let ((_tl109042109129_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109044109124_)))
                              (_hd109043109127_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109044109124_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd109043109127_))
                              (let ((_e109047109132_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd109043109127_))))
                                (let ((_tl109045109137_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109047109132_)))
                                      (_hd109046109135_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109047109132_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd109046109135_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd109046109135_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl109045109137_))
                                              (let ((_e109050109140_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl109045109137_))))
                                                (let ((_tl109048109145_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109050109140_)))
                                                      (_hd109049109143_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109050109140_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109048109145_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl109042109129_))
                                                          (let ((_e109053109148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl109042109129_))))
                    (let ((_tl109051109153_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109053109148_)))
                          (_hd109052109151_
                           (let ()
                             (declare (not safe))
                             (##car _e109053109148_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd109052109151_))
                          (let ((_e109056109156_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd109052109151_))))
                            (let ((_tl109054109161_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109056109156_)))
                                  (_hd109055109159_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109056109156_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd109055109159_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd109055109159_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl109054109161_))
                                          (let ((_e109059109164_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl109054109161_))))
                                            (let ((_tl109057109169_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109059109164_)))
                                                  (_hd109058109167_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109059109164_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl109057109169_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109051109153_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109027109089_))
                                                          (___match111446111447_
                                                           _e108914109477_
                                                           _hd108913109480_
                                                           _tl108912109482_
                                                           _e109029109084_
                                                           _hd109028109087_
                                                           _tl109027109089_
                                                           _e109032109092_
                                                           _hd109031109095_
                                                           _tl109030109097_
                                                           _e109035109100_
                                                           _hd109034109103_
                                                           _tl109033109105_
                                                           _e109038109108_
                                                           _hd109037109111_
                                                           _tl109036109113_
                                                           _e109041109116_
                                                           _hd109040109119_
                                                           _tl109039109121_
                                                           _e109044109124_
                                                           _hd109043109127_
                                                           _tl109042109129_
                                                           _e109047109132_
                                                           _hd109046109135_
                                                           _tl109045109137_
                                                           _e109050109140_
                                                           _hd109049109143_
                                                           _tl109048109145_
                                                           _e109053109148_
                                                           _hd109052109151_
                                                           _tl109051109153_
                                                           _e109056109156_
                                                           _hd109055109159_
                                                           _tl109054109161_
                                                           _e109059109164_
                                                           _hd109058109167_
                                                           _tl109057109169_)
                                                          (___kont111321111322_))
                                                      (___kont111321111322_))
                                                  (___kont111321111322_))))
                                          (___kont111321111322_))
                                      (___kont111321111322_))
                                  (___kont111321111322_))))
                          (___kont111321111322_))))
                  (___kont111321111322_))
              (___kont111321111322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont111321111322_))
                                          (___kont111321111322_))
                                      (___kont111321111322_))))
                              (___kont111321111322_))))
                      (___kont111321111322_))
                  (___kont111321111322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111321111322_))
                                              (___kont111321111322_))
                                          (___kont111321111322_))))
                                  (___kont111321111322_))))
                          (___kont111321111322_))
                      (___kont111321111322_))
                  (___kont111321111322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111321111322_))))
                                          (___kont111321111322_)))))
                              (___kont111321111322_)))))))
                 (_dispatch-case-e108215_
                  (lambda (_hd108363_ _body108364_)
                    (let* ((_form108366_
                            (let ((__tmp112755
                                   (let ()
                                     (declare (not safe))
                                     (cons _body108364_ '()))))
                              (declare (not safe))
                              (cons _hd108363_ __tmp112755)))
                           (___stx111449111450_ _form108366_)
                           (_g108370108494_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111449111450_)))))
                      (let ((___kont111451111452_
                             (lambda (_L108865_ _L108866_ _L108867_)
                               (let ((__tmp112756
                                      (let ((__tmp112758
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112757
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108866_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112758 __tmp112757))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self108211_ __tmp112756))))
                            (___kont111457111458_
                             (lambda (_L108713_ _L108714_ _L108715_ _L108716_)
                               (let ((__tmp112759
                                      (let ((__tmp112761
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112760
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108713_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112761 __tmp112760))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self108211_ __tmp112759))))
                            (___kont111461111462_
                             (lambda (_L108579_ _L108580_ _L108581_)
                               (let ((__tmp112762
                                      (let ((__tmp112764
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112763
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108579_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112764 __tmp112763))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self108211_
                                  __tmp112762)))))
                        (let* ((___match111558111559_
                                (lambda (_e108462108499_
                                         _hd108461108502_
                                         _tl108460108504_
                                         _e108465108507_
                                         _hd108464108510_
                                         _tl108463108512_
                                         _e108468108515_
                                         _hd108467108518_
                                         _tl108466108520_
                                         _e108471108523_
                                         _hd108470108526_
                                         _tl108469108528_
                                         _e108474108531_
                                         _hd108473108534_
                                         _tl108472108536_
                                         _e108477108539_
                                         _hd108476108542_
                                         _tl108475108544_
                                         _e108480108547_
                                         _hd108479108550_
                                         _tl108478108552_
                                         _e108483108555_
                                         _hd108482108558_
                                         _tl108481108560_
                                         _e108486108563_
                                         _hd108485108566_
                                         _tl108484108568_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108478108552_))
                                      (let ((_e108489108571_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108478108552_))))
                                        (let ((_tl108487108576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108489108571_)))
                                              (_hd108488108574_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108489108571_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108487108576_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl108463108512_))
                                                  (___kont111461111462_
                                                   _hd108485108566_
                                                   _hd108476108542_
                                                   _hd108461108502_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108370108494_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g108370108494_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108370108494_)))))
                               (___match111488111489_
                                (lambda (_e108423108617_
                                         _hd108422108620_
                                         _tl108421108622_
                                         ___splice111459111460_
                                         _target108424108625_
                                         _tl108426108627_)
                                  (letrec ((_loop108427108630_
                                            (lambda (_hd108425108633_
                                                     _arg108431108635_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108425108633_))
                                                  (let ((_e108428108638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108425108633_))))
                                                    (let ((_lp-tl108430108643_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108428108638_)))
                                                          (_lp-hd108429108641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108428108638_))))
                                                      (let ((__tmp112765
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108429108641_ _arg108431108635_))))
                (declare (not safe))
                (_loop108427108630_ _lp-tl108430108643_ __tmp112765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108432108646_
                                                         (reverse _arg108431108635_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108421108622_))
                                                        (let ((_e108435108649_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108421108622_))))
                  (let ((_tl108433108654_
                         (let () (declare (not safe)) (##cdr _e108435108649_)))
                        (_hd108434108652_
                         (let ()
                           (declare (not safe))
                           (##car _e108435108649_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108434108652_))
                        (let ((_e108438108657_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108434108652_))))
                          (let ((_tl108436108662_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108438108657_)))
                                (_hd108437108660_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108438108657_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108437108660_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108437108660_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108436108662_))
                                        (let ((_e108441108665_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108436108662_))))
                                          (let ((_tl108439108670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108441108665_)))
                                                (_hd108440108668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108441108665_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108440108668_))
                                                (let ((_e108444108673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108440108668_))))
                                                  (let ((_tl108442108678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108444108673_)))
                                                        (_hd108443108676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108444108673_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108443108676_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108443108676_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108442108678_))
                        (let ((_e108447108681_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108442108678_))))
                          (let ((_tl108445108686_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108447108681_)))
                                (_hd108446108684_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108447108681_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108445108686_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl108439108670_))
                                    (let ((_e108450108689_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl108439108670_))))
                                      (let ((_tl108448108694_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e108450108689_)))
                                            (_hd108449108692_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e108450108689_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd108449108692_))
                                            (let ((_e108453108697_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd108449108692_))))
                                              (let ((_tl108451108702_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108453108697_)))
                                                    (_hd108452108700_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108453108697_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd108452108700_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd108452108700_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108451108702_))
                                                            (let ((_e108456108705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108451108702_))))
                      (let ((_tl108454108710_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108456108705_)))
                            (_hd108455108708_
                             (let ()
                               (declare (not safe))
                               (##car _e108456108705_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108454108710_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108433108654_))
                                (___kont111457111458_
                                 _hd108455108708_
                                 _hd108446108684_
                                 _tl108426108627_
                                 _arg108432108646_)
                                (___match111558111559_
                                 _e108423108617_
                                 _hd108422108620_
                                 _tl108421108622_
                                 _e108435108649_
                                 _hd108434108652_
                                 _tl108433108654_
                                 _e108438108657_
                                 _hd108437108660_
                                 _tl108436108662_
                                 _e108441108665_
                                 _hd108440108668_
                                 _tl108439108670_
                                 _e108444108673_
                                 _hd108443108676_
                                 _tl108442108678_
                                 _e108447108681_
                                 _hd108446108684_
                                 _tl108445108686_
                                 _e108450108689_
                                 _hd108449108692_
                                 _tl108448108694_
                                 _e108453108697_
                                 _hd108452108700_
                                 _tl108451108702_
                                 _e108456108705_
                                 _hd108455108708_
                                 _tl108454108710_))
                            (let () (declare (not safe)) (_g108370108494_)))))
                    (let () (declare (not safe)) (_g108370108494_)))
                (let () (declare (not safe)) (_g108370108494_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108370108494_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g108370108494_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g108370108494_)))
                                (let ()
                                  (declare (not safe))
                                  (_g108370108494_)))))
                        (let () (declare (not safe)) (_g108370108494_)))
                    (let () (declare (not safe)) (_g108370108494_)))
                (let () (declare (not safe)) (_g108370108494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108370108494_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108370108494_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g108370108494_)))
                                (let ()
                                  (declare (not safe))
                                  (_g108370108494_)))))
                        (let () (declare (not safe)) (_g108370108494_)))))
                (let () (declare (not safe)) (_g108370108494_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108427108630_
                                       _target108424108625_
                                       '())))))
                               (___match111476111477_
                                (lambda (_e108377108753_
                                         _hd108376108756_
                                         _tl108375108758_
                                         ___splice111453111454_
                                         _target108378108761_
                                         _tl108380108763_)
                                  (letrec ((_loop108381108766_
                                            (lambda (_hd108379108769_
                                                     _arg108385108771_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108379108769_))
                                                  (let ((_e108382108774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108379108769_))))
                                                    (let ((_lp-tl108384108779_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108382108774_)))
                                                          (_lp-hd108383108777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108382108774_))))
                                                      (let ((__tmp112767
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108383108777_ _arg108385108771_))))
                (declare (not safe))
                (_loop108381108766_ _lp-tl108384108779_ __tmp112767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108386108782_
                                                         (reverse _arg108385108771_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108375108758_))
                                                        (let ((_e108389108785_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108375108758_))))
                  (let ((_tl108387108790_
                         (let () (declare (not safe)) (##cdr _e108389108785_)))
                        (_hd108388108788_
                         (let ()
                           (declare (not safe))
                           (##car _e108389108785_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108388108788_))
                        (let ((_e108392108793_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108388108788_))))
                          (let ((_tl108390108798_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108392108793_)))
                                (_hd108391108796_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108392108793_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108391108796_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108391108796_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108390108798_))
                                        (let ((_e108395108801_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108390108798_))))
                                          (let ((_tl108393108806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108395108801_)))
                                                (_hd108394108804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108395108801_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108394108804_))
                                                (let ((_e108398108809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108394108804_))))
                                                  (let ((_tl108396108814_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108398108809_)))
                                                        (_hd108397108812_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108398108809_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108397108812_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108397108812_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108396108814_))
                        (let ((_e108401108817_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108396108814_))))
                          (let ((_tl108399108822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108401108817_)))
                                (_hd108400108820_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108401108817_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108399108822_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl108393108806_))
                                    (let ((___splice111455111456_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl108393108806_
                                              '0))))
                                      (let ((_tl108404108827_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111455111456_
                                                '1)))
                                            (_target108402108825_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111455111456_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl108404108827_))
                                            (letrec ((_loop108405108830_
                                                      (lambda (_hd108403108833_
                                                               _xarg108409108835_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd108403108833_))
                                                            (let ((_e108406108838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd108403108833_))))
                      (let ((_lp-tl108408108843_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108406108838_)))
                            (_lp-hd108407108841_
                             (let ()
                               (declare (not safe))
                               (##car _e108406108838_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd108407108841_))
                            (let ((_e108413108846_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd108407108841_))))
                              (let ((_tl108411108851_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108413108846_)))
                                    (_hd108412108849_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108413108846_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108412108849_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd108412108849_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108411108851_))
                                            (let ((_e108416108854_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108411108851_))))
                                              (let ((_tl108414108859_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108416108854_)))
                                                    (_hd108415108857_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108416108854_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108414108859_))
                                                    (let ((__tmp112766
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd108415108857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg108409108835_))))
              (declare (not safe))
              (_loop108405108830_ _lp-tl108408108843_ __tmp112766))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111488111489_
                                                     _e108377108753_
                                                     _hd108376108756_
                                                     _tl108375108758_
                                                     ___splice111453111454_
                                                     _target108378108761_
                                                     _tl108380108763_))))
                                            (___match111488111489_
                                             _e108377108753_
                                             _hd108376108756_
                                             _tl108375108758_
                                             ___splice111453111454_
                                             _target108378108761_
                                             _tl108380108763_))
                                        (___match111488111489_
                                         _e108377108753_
                                         _hd108376108756_
                                         _tl108375108758_
                                         ___splice111453111454_
                                         _target108378108761_
                                         _tl108380108763_))
                                    (___match111488111489_
                                     _e108377108753_
                                     _hd108376108756_
                                     _tl108375108758_
                                     ___splice111453111454_
                                     _target108378108761_
                                     _tl108380108763_))))
                            (___match111488111489_
                             _e108377108753_
                             _hd108376108756_
                             _tl108375108758_
                             ___splice111453111454_
                             _target108378108761_
                             _tl108380108763_))))
                    (let ((_xarg108410108862_ (reverse _xarg108409108835_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108387108790_))
                          (___kont111451111452_
                           _xarg108410108862_
                           _hd108400108820_
                           _arg108386108782_)
                          (___match111488111489_
                           _e108377108753_
                           _hd108376108756_
                           _tl108375108758_
                           ___splice111453111454_
                           _target108378108761_
                           _tl108380108763_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop108405108830_
                                                 _target108402108825_
                                                 '())))
                                            (___match111488111489_
                                             _e108377108753_
                                             _hd108376108756_
                                             _tl108375108758_
                                             ___splice111453111454_
                                             _target108378108761_
                                             _tl108380108763_))))
                                    (___match111488111489_
                                     _e108377108753_
                                     _hd108376108756_
                                     _tl108375108758_
                                     ___splice111453111454_
                                     _target108378108761_
                                     _tl108380108763_))
                                (___match111488111489_
                                 _e108377108753_
                                 _hd108376108756_
                                 _tl108375108758_
                                 ___splice111453111454_
                                 _target108378108761_
                                 _tl108380108763_))))
                        (___match111488111489_
                         _e108377108753_
                         _hd108376108756_
                         _tl108375108758_
                         ___splice111453111454_
                         _target108378108761_
                         _tl108380108763_))
                    (___match111488111489_
                     _e108377108753_
                     _hd108376108756_
                     _tl108375108758_
                     ___splice111453111454_
                     _target108378108761_
                     _tl108380108763_))
                (___match111488111489_
                 _e108377108753_
                 _hd108376108756_
                 _tl108375108758_
                 ___splice111453111454_
                 _target108378108761_
                 _tl108380108763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match111488111489_
                                                 _e108377108753_
                                                 _hd108376108756_
                                                 _tl108375108758_
                                                 ___splice111453111454_
                                                 _target108378108761_
                                                 _tl108380108763_))))
                                        (___match111488111489_
                                         _e108377108753_
                                         _hd108376108756_
                                         _tl108375108758_
                                         ___splice111453111454_
                                         _target108378108761_
                                         _tl108380108763_))
                                    (___match111488111489_
                                     _e108377108753_
                                     _hd108376108756_
                                     _tl108375108758_
                                     ___splice111453111454_
                                     _target108378108761_
                                     _tl108380108763_))
                                (___match111488111489_
                                 _e108377108753_
                                 _hd108376108756_
                                 _tl108375108758_
                                 ___splice111453111454_
                                 _target108378108761_
                                 _tl108380108763_))))
                        (___match111488111489_
                         _e108377108753_
                         _hd108376108756_
                         _tl108375108758_
                         ___splice111453111454_
                         _target108378108761_
                         _tl108380108763_))))
                (___match111488111489_
                 _e108377108753_
                 _hd108376108756_
                 _tl108375108758_
                 ___splice111453111454_
                 _target108378108761_
                 _tl108380108763_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108381108766_
                                       _target108378108761_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111449111450_))
                              (let ((_e108377108753_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111449111450_))))
                                (let ((_tl108375108758_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108377108753_)))
                                      (_hd108376108756_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108377108753_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd108376108756_))
                                      (let ((___splice111453111454_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd108376108756_
                                                '0))))
                                        (let ((_tl108380108763_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111453111454_
                                                  '1)))
                                              (_target108378108761_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111453111454_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108380108763_))
                                              (___match111476111477_
                                               _e108377108753_
                                               _hd108376108756_
                                               _tl108375108758_
                                               ___splice111453111454_
                                               _target108378108761_
                                               _tl108380108763_)
                                              (___match111488111489_
                                               _e108377108753_
                                               _hd108376108756_
                                               _tl108375108758_
                                               ___splice111453111454_
                                               _target108378108761_
                                               _tl108380108763_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl108375108758_))
                                          (let ((_e108465108507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl108375108758_))))
                                            (let ((_tl108463108512_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e108465108507_)))
                                                  (_hd108464108510_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e108465108507_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108464108510_))
                                                  (let ((_e108468108515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108464108510_))))
                                                    (let ((_tl108466108520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108468108515_)))
                                                          (_hd108467108518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108468108515_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd108467108518_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd108467108518_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108466108520_))
                          (let ((_e108471108523_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108466108520_))))
                            (let ((_tl108469108528_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108471108523_)))
                                  (_hd108470108526_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108471108523_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd108470108526_))
                                  (let ((_e108474108531_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd108470108526_))))
                                    (let ((_tl108472108536_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108474108531_)))
                                          (_hd108473108534_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108474108531_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd108473108534_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd108473108534_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl108472108536_))
                                                  (let ((_e108477108539_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl108472108536_))))
                                                    (let ((_tl108475108544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108477108539_)))
                                                          (_hd108476108542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108477108539_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl108475108544_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl108469108528_))
                      (let ((_e108480108547_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl108469108528_))))
                        (let ((_tl108478108552_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108480108547_)))
                              (_hd108479108550_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108480108547_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd108479108550_))
                              (let ((_e108483108555_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd108479108550_))))
                                (let ((_tl108481108560_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108483108555_)))
                                      (_hd108482108558_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108483108555_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd108482108558_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd108482108558_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl108481108560_))
                                              (let ((_e108486108563_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl108481108560_))))
                                                (let ((_tl108484108568_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108486108563_)))
                                                      (_hd108485108566_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108486108563_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl108484108568_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl108478108552_))
                                                          (let ((_e108489108571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl108478108552_))))
                    (let ((_tl108487108576_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108489108571_)))
                          (_hd108488108574_
                           (let ()
                             (declare (not safe))
                             (##car _e108489108571_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108487108576_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl108463108512_))
                              (___kont111461111462_
                               _hd108485108566_
                               _hd108476108542_
                               _hd108376108756_)
                              (let () (declare (not safe)) (_g108370108494_)))
                          (let () (declare (not safe)) (_g108370108494_)))))
                  (let () (declare (not safe)) (_g108370108494_)))
              (let () (declare (not safe)) (_g108370108494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108370108494_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g108370108494_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g108370108494_)))))
                              (let ()
                                (declare (not safe))
                                (_g108370108494_)))))
                      (let () (declare (not safe)) (_g108370108494_)))
                  (let () (declare (not safe)) (_g108370108494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108370108494_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g108370108494_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g108370108494_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g108370108494_)))))
                          (let () (declare (not safe)) (_g108370108494_)))
                      (let () (declare (not safe)) (_g108370108494_)))
                  (let () (declare (not safe)) (_g108370108494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108370108494_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g108370108494_))))))
                              (let ()
                                (declare (not safe))
                                (_g108370108494_))))))))
                 (_generate1108216_
                  (lambda (_args108351_ _arglen108352_ _hd108353_ _body108354_)
                    (let* ((_len108356_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd108353_)))
                           (_condition108358_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd108353_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp112782
                                           (let ((__tmp112783
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len108356_ '()))))
                                             (declare (not safe))
                                             (cons _arglen108352_
                                                   __tmp112783))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp112782))
                                    (let ((__tmp112776
                                           (let ((__tmp112777
                                                  (let ((__tmp112778
                                                         (let ((__tmp112779
                                                                (let ((__tmp112780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112781
                                      (let ()
                                        (declare (not safe))
                                        (cons _len108356_ '()))))
                                 (declare (not safe))
                                 (cons _arglen108352_ __tmp112781))))
                          (declare (not safe))
                          (cons '##fx= __tmp112780))))
                   (declare (not safe))
                   (cons __tmp112779 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp112778))))
                                             (declare (not safe))
                                             (cons '() __tmp112777))))
                                      (declare (not safe))
                                      (cons 'let __tmp112776)))
                                (if (> _len108356_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp112774
                                               (let ((__tmp112775
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len108356_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen108352_
                                                       __tmp112775))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp112774))
                                        (let ((__tmp112768
                                               (let ((__tmp112769
                                                      (let ((__tmp112770
                                                             (let ((__tmp112771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112772
                                   (let ((__tmp112773
                                          (let ()
                                            (declare (not safe))
                                            (cons _len108356_ '()))))
                                     (declare (not safe))
                                     (cons _arglen108352_ __tmp112773))))
                              (declare (not safe))
                              (cons '##fx>= __tmp112772))))
                       (declare (not safe))
                       (cons __tmp112771 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp112770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp112769))))
                                          (declare (not safe))
                                          (cons 'let __tmp112768)))
                                    '#t)))
                           (_dispatch108360_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?108214_
                                   _hd108353_
                                   _body108354_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e108215_
                                   _hd108353_
                                   _body108354_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self108211_
                                   _hd108353_
                                   _body108354_)))))
                      (let ((__tmp112784
                             (let ((__tmp112785
                                    (let ((__tmp112786
                                           (let ((__tmp112787
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args108351_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch108360_
                                                   __tmp112787))))
                                      (declare (not safe))
                                      (cons 'apply __tmp112786))))
                               (declare (not safe))
                               (cons __tmp112785 '()))))
                        (declare (not safe))
                        (cons _condition108358_ __tmp112784))))))
          (let* ((_g108218108246_
                  (lambda (_g108219108243_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108219108243_))))
                 (_g108217108348_
                  (lambda (_g108219108249_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108219108249_))
                        (let ((_e108224108251_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108219108249_))))
                          (let ((_hd108223108254_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108224108251_)))
                                (_tl108222108256_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108224108251_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl108222108256_))
                                (let ((_g112788_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl108222108256_
                                          '0))))
                                  (begin
                                    (let ((_g112789_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g112788_)
                                                 (##vector-length _g112788_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g112789_ 2)))
                                          (error "Context expects 2 values"
                                                 _g112789_)))
                                    (let ((_target108225108259_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g112788_ 0)))
                                          (_tl108227108261_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g112788_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108227108261_))
                                          (letrec ((_loop108228108264_
                                                    (lambda (_hd108226108267_
                                                             _body108232108269_
                                                             _hd108233108271_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd108226108267_))
                                                          (let ((_e108229108274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd108226108267_))))
                    (let ((_lp-hd108230108277_
                           (let ()
                             (declare (not safe))
                             (##car _e108229108274_)))
                          (_lp-tl108231108279_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108229108274_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd108230108277_))
                          (let ((_e108238108282_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd108230108277_))))
                            (let ((_hd108237108285_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108238108282_)))
                                  (_tl108236108287_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108238108282_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl108236108287_))
                                  (let ((_e108241108290_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl108236108287_))))
                                    (let ((_hd108240108293_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108241108290_)))
                                          (_tl108239108295_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108241108290_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108239108295_))
                                          (let ((__tmp112818
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd108240108293_
                                                         _body108232108269_)))
                                                (__tmp112817
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd108237108285_
                                                         _hd108233108271_))))
                                            (declare (not safe))
                                            (_loop108228108264_
                                             _lp-tl108231108279_
                                             __tmp112818
                                             __tmp112817))
                                          (let ()
                                            (declare (not safe))
                                            (_g108218108246_
                                             _g108219108249_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g108218108246_ _g108219108249_)))))
                          (let ()
                            (declare (not safe))
                            (_g108218108246_ _g108219108249_)))))
                  (let ((_body108234108298_ (reverse _body108232108269_))
                        (_hd108235108300_ (reverse _hd108233108271_)))
                    ((lambda (_L108303_ _L108304_)
                       (let ((_args108323_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen108324_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name108325_
                              (let ((_$e108320_
                                     (let ((__tmp112790
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp112790 _stx108212_))))
                                (if _$e108320_
                                    _$e108320_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp112791
                                (let ((__tmp112792
                                       (let ((__tmp112793
                                              (let ((__tmp112794
                                                     (let ((__tmp112807
                                                            (let ((__tmp112808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112809
                                  (let ((__tmp112810
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp112816
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108323_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp112816))
                                             (let ((__tmp112811
                                                    (let ((__tmp112812
                                                           (let ((__tmp112813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112814
                                 (let ((__tmp112815
                                        (let ()
                                          (declare (not safe))
                                          (cons _args108323_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp112815))))
                            (declare (not safe))
                            (cons __tmp112814 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp112813))))
              (declare (not safe))
              (cons '() __tmp112812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp112811)))))
                                    (declare (not safe))
                                    (cons __tmp112810 '()))))
                             (declare (not safe))
                             (cons _arglen108324_ __tmp112809))))
                      (declare (not safe))
                      (cons __tmp112808 '())))
                   (__tmp112795
                    (let ((__tmp112796
                           (let ((__tmp112797
                                  (let ((__tmp112801
                                         (let ((__tmp112802
                                                (let ((__tmp112803
                                                       (let ((__tmp112804
                                                              (let ((__tmp112805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp112806
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108323_ '()))))
                               (declare (not safe))
                               (cons _name108325_ __tmp112806))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp112805))))
                 (declare (not safe))
                 (cons __tmp112804 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp112803))))
                                           (declare (not safe))
                                           (cons __tmp112802 '())))
                                        (__tmp112798
                                         (map (lambda (_g108326108329_
                                                       _g108327108331_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1108216_
                                                   _args108323_
                                                   _arglen108324_
                                                   _g108326108329_
                                                   _g108327108331_)))
                                              (let ((__tmp112799
                                                     (lambda (_g108333108336_
                                                              _g108334108338_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108333108336_
                                                               _g108334108338_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112799
                                                        '()
                                                        _L108304_))
                                              (let ((__tmp112800
                                                     (lambda (_g108340108343_
                                                              _g108341108345_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108340108343_
                                                               _g108341108345_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112800
                                                        '()
                                                        _L108303_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp112801 __tmp112798))))
                             (declare (not safe))
                             (cons 'cond __tmp112797))))
                      (declare (not safe))
                      (cons __tmp112796 '()))))
               (declare (not safe))
               (cons __tmp112807 __tmp112795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp112794))))
                                         (declare (not safe))
                                         (cons __tmp112793 '()))))
                                  (declare (not safe))
                                  (cons _args108323_ __tmp112792))))
                           (declare (not safe))
                           (cons 'lambda __tmp112791))))
                     _body108234108298_
                     _hd108235108300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop108228108264_
                                               _target108225108259_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g108218108246_
                                             _g108219108249_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g108218108246_ _g108219108249_)))))
                        (let ()
                          (declare (not safe))
                          (_g108218108246_ _g108219108249_))))))
            (declare (not safe))
            (_g108217108348_ _stx108212_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self107482_ _stx107483_ _compiled-body?107484_)
        (letrec ((_generate-simple107486_
                  (lambda (_hd108196_ _body108197_)
                    (let ((__tmp112819
                           (let ((__tmp112820
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self107482_
                                     'let
                                     _hd108196_
                                     _body108197_
                                     _compiled-body?107484_))))
                             (declare (not safe))
                             (_coalesce-let*107488_ __tmp112820))))
                      (declare (not safe))
                      (_coalesce-boolean107487_ __tmp112819))))
                 (_coalesce-boolean107487_
                  (lambda (_code108057_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code108058108084_ _code108057_)
                               (_else108060108092_ (lambda () _code108057_))
                               (_K108062108129_
                                (lambda (_expr2108095_
                                         _expr1108096_
                                         _id108097_)
                                  (let* ((_expr2108098108106_ _expr2108095_)
                                         (_else108100108114_
                                          (lambda ()
                                            (let ((__tmp112821
                                                   (let ((__tmp112822
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2108095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1108096_
                                                           __tmp112822))))
                                              (declare (not safe))
                                              (cons 'or __tmp112821))))
                                         (_K108102108119_
                                          (lambda (_exprs108117_)
                                            (let ((__tmp112823
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1108096_
                                                           _exprs108117_))))
                                              (declare (not safe))
                                              (cons 'or __tmp112823)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2108098108106_))
                                        (let ((_hd108103108122_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2108098108106_)))
                                              (_tl108104108124_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2108098108106_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd108103108122_ 'or))
                                              (let ((_exprs108127_
                                                     _tl108104108124_))
                                                (declare (not safe))
                                                (_K108102108119_
                                                 _exprs108127_))
                                              (let ()
                                                (declare (not safe))
                                                (_else108100108114_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else108100108114_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code108058108084_))
                              (let ((_hd108063108132_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code108058108084_)))
                                    (_tl108064108134_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code108058108084_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd108063108132_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl108064108134_))
                                        (let ((_hd108065108137_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl108064108134_)))
                                              (_tl108066108139_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl108064108134_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd108065108137_))
                                              (let ((_hd108077108142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd108065108137_)))
                                                    (_tl108078108144_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd108065108137_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd108077108142_))
                                                    (let ((_hd108079108147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd108077108142_)))
                                                          (_tl108080108149_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd108077108142_))))
                                                      (let ((_id108152_
                                                             _hd108079108147_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl108080108149_))
                                                            (let ((_hd108081108154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl108080108149_)))
                          (_tl108082108156_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl108080108149_))))
                      (let ((_expr1108159_ _hd108081108154_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl108082108156_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl108078108144_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl108066108139_))
                                    (let ((_hd108067108161_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl108066108139_)))
                                          (_tl108068108163_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl108066108139_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd108067108161_))
                                          (let ((_hd108069108166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd108067108161_)))
                                                (_tl108070108168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd108067108161_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd108069108166_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl108070108168_))
                                                    (let ((_hd108071108171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl108070108168_)))
                                                          (_tl108072108173_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl108070108168_))))
                                                      (if ((lambda (_g108175108177_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g108175108177_ _id108152_)))
                   _hd108071108171_)
                  (if (let () (declare (not safe)) (##pair? _tl108072108173_))
                      (let ((_hd108073108180_
                             (let ()
                               (declare (not safe))
                               (##car _tl108072108173_)))
                            (_tl108074108182_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl108072108173_))))
                        (if ((lambda (_g108184108186_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g108184108186_ _id108152_)))
                             _hd108073108180_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl108074108182_))
                                (let ((_hd108075108189_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl108074108182_)))
                                      (_tl108076108191_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl108074108182_))))
                                  (let ((_expr2108194_ _hd108075108189_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108076108191_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl108068108163_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108062108129_
                                               _expr2108194_
                                               _expr1108159_
                                               _id108152_))
                                            (let ()
                                              (declare (not safe))
                                              (_else108060108092_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else108060108092_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else108060108092_)))
                            (let ()
                              (declare (not safe))
                              (_else108060108092_))))
                      (let () (declare (not safe)) (_else108060108092_)))
                  (let () (declare (not safe)) (_else108060108092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else108060108092_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108060108092_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108060108092_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else108060108092_)))
                                (let ()
                                  (declare (not safe))
                                  (_else108060108092_)))
                            (let ()
                              (declare (not safe))
                              (_else108060108092_)))))
                    (let () (declare (not safe)) (_else108060108092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else108060108092_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else108060108092_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else108060108092_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else108060108092_))))
                              (let ()
                                (declare (not safe))
                                (_else108060108092_))))
                        _code108057_)))
                 (_coalesce-let*107488_
                  (lambda (_code107790_)
                    (let* ((_code107791107855_ _code107790_)
                           (_else107795107863_ (lambda () _code107790_)))
                      (let ((_K107837108008_
                             (lambda (_body108004_ _expr108005_ _id108006_)
                               (let ((__tmp112824
                                      (let ((__tmp112825
                                             (let ((__tmp112826
                                                    (let ((__tmp112827
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr108005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id108006_ __tmp112827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112826 '()))))
                                        (declare (not safe))
                                        (cons __tmp112825 _body108004_))))
                                 (declare (not safe))
                                 (cons 'let __tmp112824))))
                            (_K107814107933_
                             (lambda (_body107927_
                                      _expr2107928_
                                      _id2107929_
                                      _expr1107930_
                                      _id1107931_)
                               (let ((__tmp112828
                                      (let ((__tmp112829
                                             (let ((__tmp112833
                                                    (let ((__tmp112834
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1107930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1107931_ __tmp112834)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp112830
                                                    (let ((__tmp112831
                                                           (let ((__tmp112832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2107928_ '()))))
                     (declare (not safe))
                     (cons _id2107929_ __tmp112832))))
              (declare (not safe))
              (cons __tmp112831 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112833
                                                     __tmp112830))))
                                        (declare (not safe))
                                        (cons __tmp112829 _body107927_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp112828))))
                            (_K107797107872_
                             (lambda (_body107867_
                                      _bind107868_
                                      _expr1107869_
                                      _id1107870_)
                               (let ((__tmp112835
                                      (let ((__tmp112836
                                             (let ((__tmp112837
                                                    (let ((__tmp112838
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1107869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1107870_ __tmp112838))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112837
                                                     _bind107868_))))
                                        (declare (not safe))
                                        (cons __tmp112836 _body107867_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp112835)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code107791107855_))
                            (let ((_tl107839108013_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code107791107855_)))
                                  (_hd107838108011_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code107791107855_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107838108011_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107839108013_))
                                      (let ((_tl107841108018_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107839108013_)))
                                            (_hd107840108016_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107839108013_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd107840108016_))
                                            (let ((_tl107849108023_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd107840108016_)))
                                                  (_hd107848108021_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd107840108016_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd107848108021_))
                                                  (let ((_tl107851108028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd107848108021_)))
                                                        (_hd107850108026_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd107848108021_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl107851108028_))
                                                        (let ((_tl107853108035_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl107851108028_)))
                      (_hd107852108033_
                       (let () (declare (not safe)) (##car _tl107851108028_))))
                  (if (let () (declare (not safe)) (##null? _tl107853108035_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl107849108023_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl107841108018_))
                              (let ((_tl107843108042_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl107841108018_)))
                                    (_hd107842108040_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl107841108018_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107842108040_))
                                    (let ((_tl107845108047_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107842108040_)))
                                          (_hd107844108045_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107842108040_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107844108045_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl107845108047_))
                                              (let ((_tl107847108052_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl107845108047_)))
                                                    (_hd107846108050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl107845108047_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd107846108050_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl107843108042_))
                                                        (let ((_id108031_
                                                               _hd107850108026_)
                                                              (_expr108038_
                                                               _hd107852108033_)
                                                              (_body108055_
                                                               _tl107847108052_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K107837108008_
                                                             _body108055_
                                                             _expr108038_
                                                             _id108031_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else107795107863_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd107846108050_))
                                                        (let ((_tl107826107982_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd107846108050_)))
                      (_hd107825107980_
                       (let () (declare (not safe)) (##car _hd107846108050_))))
                  (if (let () (declare (not safe)) (##pair? _hd107825107980_))
                      (let ((_tl107828107987_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd107825107980_)))
                            (_hd107827107985_
                             (let ()
                               (declare (not safe))
                               (##car _hd107825107980_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107828107987_))
                            (let ((_tl107830107994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107828107987_)))
                                  (_hd107829107992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107828107987_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107830107994_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107826107982_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107843108042_))
                                          (let ((_id1107956_ _hd107850108026_)
                                                (_expr1107963_
                                                 _hd107852108033_)
                                                (_id2107990_ _hd107827107985_)
                                                (_expr2107997_
                                                 _hd107829107992_)
                                                (_body107999_
                                                 _tl107847108052_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107814107933_
                                               _body107999_
                                               _expr2107997_
                                               _id2107990_
                                               _expr1107963_
                                               _id1107956_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107795107863_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107795107863_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107795107863_))))
                            (let ()
                              (declare (not safe))
                              (_else107795107863_))))
                      (let () (declare (not safe)) (_else107795107863_))))
                (let () (declare (not safe)) (_else107795107863_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else107795107863_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd107844108045_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl107845108047_))
                                                  (let ((_tl107807107916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl107845108047_)))
                                                        (_hd107806107914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl107845108047_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl107843108042_))
                                                        (let ((_id1107895_
                                                               _hd107850108026_)
                                                              (_expr1107902_
                                                               _hd107852108033_)
                                                              (_bind107919_
                                                               _hd107806107914_)
                                                              (_body107921_
                                                               _tl107807107916_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K107797107872_
                                                             _body107921_
                                                             _bind107919_
                                                             _expr1107902_
                                                             _id1107895_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else107795107863_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else107795107863_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else107795107863_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107795107863_))))
                              (let ()
                                (declare (not safe))
                                (_else107795107863_)))
                          (let () (declare (not safe)) (_else107795107863_)))
                      (let () (declare (not safe)) (_else107795107863_))))
                (let () (declare (not safe)) (_else107795107863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else107795107863_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107795107863_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else107795107863_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107795107863_))))
                            (let ()
                              (declare (not safe))
                              (_else107795107863_)))))))
                 (_generate-values107489_
                  (lambda (_hd107603_ _body107604_)
                    (let _lp107606_ ((_rest107608_ _hd107603_)
                                     (_bind107609_ '())
                                     (_check107610_ '())
                                     (_post107611_ '()))
                      (let* ((___stx111760111761_ _rest107608_)
                             (_g107614107625_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111760111761_)))))
                        (let ((___kont111762111763_
                               (lambda (_L107652_ _L107653_)
                                 (let* ((___stx111716111717_ _L107653_)
                                        (_g107668107693_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx111716111717_)))))
                                   (let ((___kont111718111719_
                                          (lambda (_L107766_ _L107767_)
                                            (let ((_eid107781_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L107767_)))
                                                  (_expr107782_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107482_
                                                      _L107766_))))
                                              (let ((__tmp112839
                                                     (let ((__tmp112840
                                                            (let ((__tmp112841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107782_ '()))))
                      (declare (not safe))
                      (cons _eid107781_ __tmp112841))))
               (declare (not safe))
               (cons __tmp112840 _bind107609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp107606_
                                                 _L107652_
                                                 __tmp112839
                                                 _check107610_
                                                 _post107611_)))))
                                         (___kont111720111721_
                                          (lambda (_L107714_ _L107715_)
                                            (let* ((_vals107728_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values107730_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals107728_
                                                       _L107715_
                                                       _L107714_)))
                                                   (_refs107732_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals107728_
                                                       _L107715_)))
                                                   (_expr107734_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self107482_
                                                       _L107714_))))
                                              (let ((__tmp112844
                                                     (let ((__tmp112845
                                                            (let ((__tmp112846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107734_ '()))))
                      (declare (not safe))
                      (cons _vals107728_ __tmp112846))))
               (declare (not safe))
               (cons __tmp112845 _bind107609_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp112843
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values107730_
                                                             _check107610_)))
                                                    (__tmp112842
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs107732_
                                                             _post107611_))))
                                                (declare (not safe))
                                                (_lp107606_
                                                 _L107652_
                                                 __tmp112844
                                                 __tmp112843
                                                 __tmp112842))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx111716111717_))
                                         (let ((_e107674107742_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx111716111717_))))
                                           (let ((_tl107672107747_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107674107742_)))
                                                 (_hd107673107745_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107674107742_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd107673107745_))
                                                 (let ((_e107677107750_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd107673107745_))))
                                                   (let ((_tl107675107755_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107677107750_)))
                                                         (_hd107676107753_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107677107750_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107675107755_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107672107747_))
                     (let ((_e107680107758_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107672107747_))))
                       (let ((_tl107678107763_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107680107758_)))
                             (_hd107679107761_
                              (let ()
                                (declare (not safe))
                                (##car _e107680107758_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107678107763_))
                             (___kont111718111719_
                              _hd107679107761_
                              _hd107676107753_)
                             (let () (declare (not safe)) (_g107668107693_)))))
                     (let () (declare (not safe)) (_g107668107693_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl107672107747_))
                     (let ((_e107688107706_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107672107747_))))
                       (let ((_tl107686107711_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107688107706_)))
                             (_hd107687107709_
                              (let ()
                                (declare (not safe))
                                (##car _e107688107706_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107686107711_))
                             (___kont111720111721_
                              _hd107687107709_
                              _hd107673107745_)
                             (let () (declare (not safe)) (_g107668107693_)))))
                     (let () (declare (not safe)) (_g107668107693_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107672107747_))
                                                     (let ((_e107688107706_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107672107747_))))
                                                       (let ((_tl107686107711_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107688107706_)))
                     (_hd107687107709_
                      (let () (declare (not safe)) (##car _e107688107706_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107686107711_))
                     (___kont111720111721_ _hd107687107709_ _hd107673107745_)
                     (let () (declare (not safe)) (_g107668107693_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g107668107693_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g107668107693_)))))))
                              (___kont111764111765_
                               (lambda ()
                                 (let* ((_body107632_
                                         (if _compiled-body?107484_
                                             _body107604_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self107482_
                                                _body107604_))))
                                        (_body107634_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post107490_
                                            _post107611_
                                            _body107632_)))
                                        (_body107636_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check107491_
                                            _check107610_
                                            _body107634_))))
                                   (let ((__tmp112847
                                          (let ((__tmp112849
                                                 (reverse _bind107609_))
                                                (__tmp112848
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body107636_ '()))))
                                            (declare (not safe))
                                            (cons __tmp112849 __tmp112848))))
                                     (declare (not safe))
                                     (cons 'let __tmp112847))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111760111761_))
                              (let ((_e107620107644_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111760111761_))))
                                (let ((_tl107618107649_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107620107644_)))
                                      (_hd107619107647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107620107644_))))
                                  (___kont111762111763_
                                   _tl107618107649_
                                   _hd107619107647_)))
                              (___kont111764111765_)))))))
                 (_generate-values-post107490_
                  (lambda (_post107562_ _body107563_)
                    (let _lp107565_ ((_rest107567_ _post107562_)
                                     (_body107568_ _body107563_))
                      (let* ((_rest107569107577_ _rest107567_)
                             (_else107571107585_ (lambda () _body107568_))
                             (_K107573107591_
                              (lambda (_rest107588_ _bind107589_)
                                (let ((__tmp112850
                                       (let ((__tmp112851
                                              (let ((__tmp112852
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body107568_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind107589_
                                                      __tmp112852))))
                                         (declare (not safe))
                                         (cons 'let __tmp112851))))
                                  (declare (not safe))
                                  (_lp107565_ _rest107588_ __tmp112850)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107569107577_))
                            (let ((_hd107574107594_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107569107577_)))
                                  (_tl107575107596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107569107577_))))
                              (let* ((_bind107599_ _hd107574107594_)
                                     (_rest107601_ _tl107575107596_))
                                (declare (not safe))
                                (_K107573107591_ _rest107601_ _bind107599_)))
                            (let ()
                              (declare (not safe))
                              (_else107571107585_)))))))
                 (_generate-values-check107491_
                  (lambda (_check107559_ _body107560_)
                    (let ((__tmp112853
                           (let ((__tmp112855
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107560_ '())))
                                 (__tmp112854 (reverse _check107559_)))
                             (declare (not safe))
                             (foldr1 cons __tmp112855 __tmp112854))))
                      (declare (not safe))
                      (cons 'begin __tmp112853)))))
          (let* ((_g107493107510_
                  (lambda (_g107494107507_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107494107507_))))
                 (_g107492107556_
                  (lambda (_g107494107513_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107494107513_))
                        (let ((_e107499107515_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107494107513_))))
                          (let ((_hd107498107518_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107499107515_)))
                                (_tl107497107520_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107499107515_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107497107520_))
                                (let ((_e107502107523_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107497107520_))))
                                  (let ((_hd107501107526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107502107523_)))
                                        (_tl107500107528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107502107523_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107500107528_))
                                        (let ((_e107505107531_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107500107528_))))
                                          (let ((_hd107504107534_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107505107531_)))
                                                (_tl107503107536_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107505107531_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107503107536_))
                                                ((lambda (_L107539_ _L107540_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L107540_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple107486_
                                                          _L107540_
                                                          _L107539_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values107489_
                                                          _L107540_
                                                          _L107539_))))
                                                 _hd107504107534_
                                                 _hd107501107526_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107493107510_
                                                   _g107494107513_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107493107510_ _g107494107513_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107493107510_ _g107494107513_)))))
                        (let ()
                          (declare (not safe))
                          (_g107493107510_ _g107494107513_))))))
            (declare (not safe))
            (_g107492107556_ _stx107483_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self108202_ _stx108203_)
        (let ((_compiled-body?108205_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self108202_
           _stx108203_
           _compiled-body?108205_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g112857_
        (let ((_g112856_ (let () (declare (not safe)) (##length _g112857_))))
          (cond ((let () (declare (not safe)) (##fx= _g112856_ 2))
                 (apply (lambda (_self108202_ _stx108203_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self108202_
                             _stx108203_)))
                        _g112857_))
                ((let () (declare (not safe)) (##fx= _g112856_ 3))
                 (apply (lambda (_self108207_
                                 _stx108208_
                                 _compiled-body?108209_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self108207_
                             _stx108208_
                             _compiled-body?108209_)))
                        _g112857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g112857_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals107376_ _hd107377_)
        (let _lp107379_ ((_rest107381_ _hd107377_)
                         (_k107382_ '0)
                         (_r107383_ '()))
          (let* ((___stx111774111775_ _rest107381_)
                 (_g107388107405_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx111774111775_)))))
            (let ((___kont111776111777_
                   (lambda (_L107468_)
                     (let ((__tmp112858
                            (let () (declare (not safe)) (fx+ _k107382_ '1))))
                       (declare (not safe))
                       (_lp107379_ _L107468_ __tmp112858 _r107383_))))
                  (___kont111778111779_
                   (lambda (_L107441_ _L107442_)
                     (let ((__tmp112864
                            (let () (declare (not safe)) (fx+ _k107382_ '1)))
                           (__tmp112859
                            (let ((__tmp112860
                                   (let ((__tmp112863
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L107442_)))
                                         (__tmp112861
                                          (let ((__tmp112862
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals107376_
                                                    _k107382_
                                                    _L107441_))))
                                            (declare (not safe))
                                            (cons __tmp112862 '()))))
                                     (declare (not safe))
                                     (cons __tmp112863 __tmp112861))))
                              (declare (not safe))
                              (cons __tmp112860 _r107383_))))
                       (declare (not safe))
                       (_lp107379_ _L107441_ __tmp112864 __tmp112859))))
                  (___kont111780111781_
                   (lambda (_L107417_)
                     (let ((__tmp112865
                            (let ((__tmp112866
                                   (let ((__tmp112869
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L107417_)))
                                         (__tmp112867
                                          (let ((__tmp112868
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals107376_
                                                    _k107382_))))
                                            (declare (not safe))
                                            (cons __tmp112868 '()))))
                                     (declare (not safe))
                                     (cons __tmp112869 __tmp112867))))
                              (declare (not safe))
                              (cons __tmp112866 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp112865 _r107383_))))
                  (___kont111782111783_ (lambda () (reverse _r107383_))))
              (let ((_g107386107428_
                     (lambda ()
                       (let ((_L107417_ ___stx111774111775_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L107417_))
                             (___kont111780111781_ _L107417_)
                             (___kont111782111783_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx111774111775_))
                    (let ((_e107393107457_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx111774111775_))))
                      (let ((_tl107391107462_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107393107457_)))
                            (_hd107392107460_
                             (let ()
                               (declare (not safe))
                               (##car _e107393107457_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd107392107460_))
                            (let ((_e107394107465_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd107392107460_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e107394107465_ '#f))
                                  (___kont111776111777_ _tl107391107462_)
                                  (___kont111778111779_
                                   _tl107391107462_
                                   _hd107392107460_)))
                            (___kont111778111779_
                             _tl107391107462_
                             _hd107392107460_))))
                    (let () (declare (not safe)) (_g107386107428_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self107055_ _stx107056_ _compiled-body?107057_)
        (letrec ((_generate-simple107059_
                  (lambda (_hd107361_ _body107362_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self107055_
                       'letrec
                       _hd107361_
                       _body107362_
                       _compiled-body?107057_))))
                 (_generate-values107060_
                  (lambda (_hd107140_ _body107141_)
                    (let _lp107143_ ((_rest107145_ _hd107140_)
                                     (_bind107146_ '())
                                     (_check107147_ '())
                                     (_post107148_ '()))
                      (let* ((___stx111848111849_ _rest107145_)
                             (_g107151107162_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111848111849_)))))
                        (let ((___kont111850111851_
                               (lambda (_L107189_ _L107190_)
                                 (let* ((___stx111804111805_ _L107190_)
                                        (_g107205107230_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx111804111805_)))))
                                   (let ((___kont111806111807_
                                          (lambda (_L107337_ _L107338_)
                                            (let ((_eid107352_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L107338_)))
                                                  (_expr107353_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107055_
                                                      _L107337_))))
                                              (let ((__tmp112870
                                                     (let ((__tmp112871
                                                            (let ((__tmp112872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107353_ '()))))
                      (declare (not safe))
                      (cons _eid107352_ __tmp112872))))
               (declare (not safe))
               (cons __tmp112871 _bind107146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp107143_
                                                 _L107189_
                                                 __tmp112870
                                                 _check107147_
                                                 _post107148_)))))
                                         (___kont111808111809_
                                          (lambda (_L107251_ _L107252_)
                                            (let* ((_vals107265_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values107267_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals107265_
                                                       _L107252_
                                                       _L107251_)))
                                                   (_refs107269_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals107265_
                                                       _L107252_)))
                                                   (_expr107271_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self107055_
                                                       _L107251_))))
                                              (let ((__tmp112875
                                                     (let ((__tmp112878
                                                            (let ((__tmp112879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112880
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr107271_ '()))))
                             (declare (not safe))
                             (cons _vals107265_ __tmp112880))))
                      (declare (not safe))
                      (cons __tmp112879 _bind107146_)))
                   (__tmp112876
                    (map (lambda (_e107273107275_)
                           (let* ((_g107277107286_ _e107273107275_)
                                  (_E107279107290_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g107277107286_))))
                                  (_K107280107295_
                                   (lambda (_eid107293_)
                                     (let ((__tmp112877
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid107293_ __tmp112877)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g107277107286_))
                                 (let ((_hd107281107298_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g107277107286_)))
                                       (_tl107282107300_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g107277107286_))))
                                   (let ((_eid107303_ _hd107281107298_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl107282107300_))
                                         (let ((_tl107284107305_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl107282107300_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl107284107305_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K107280107295_ _eid107303_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E107279107290_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E107279107290_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E107279107290_)))))
                         _refs107269_)))
               (declare (not safe))
               (foldl1 cons __tmp112878 __tmp112876)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp112874
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values107267_
                                                             _check107147_)))
                                                    (__tmp112873
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs107269_
                                                               _post107148_))))
                                                (declare (not safe))
                                                (_lp107143_
                                                 _L107189_
                                                 __tmp112875
                                                 __tmp112874
                                                 __tmp112873))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx111804111805_))
                                         (let ((_e107211107313_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx111804111805_))))
                                           (let ((_tl107209107318_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107211107313_)))
                                                 (_hd107210107316_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107211107313_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd107210107316_))
                                                 (let ((_e107214107321_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd107210107316_))))
                                                   (let ((_tl107212107326_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107214107321_)))
                                                         (_hd107213107324_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107214107321_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107212107326_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107209107318_))
                     (let ((_e107217107329_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107209107318_))))
                       (let ((_tl107215107334_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107217107329_)))
                             (_hd107216107332_
                              (let ()
                                (declare (not safe))
                                (##car _e107217107329_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107215107334_))
                             (___kont111806111807_
                              _hd107216107332_
                              _hd107213107324_)
                             (let () (declare (not safe)) (_g107205107230_)))))
                     (let () (declare (not safe)) (_g107205107230_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl107209107318_))
                     (let ((_e107225107243_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107209107318_))))
                       (let ((_tl107223107248_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107225107243_)))
                             (_hd107224107246_
                              (let ()
                                (declare (not safe))
                                (##car _e107225107243_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107223107248_))
                             (___kont111808111809_
                              _hd107224107246_
                              _hd107210107316_)
                             (let () (declare (not safe)) (_g107205107230_)))))
                     (let () (declare (not safe)) (_g107205107230_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107209107318_))
                                                     (let ((_e107225107243_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107209107318_))))
                                                       (let ((_tl107223107248_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107225107243_)))
                     (_hd107224107246_
                      (let () (declare (not safe)) (##car _e107225107243_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107223107248_))
                     (___kont111808111809_ _hd107224107246_ _hd107210107316_)
                     (let () (declare (not safe)) (_g107205107230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g107205107230_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g107205107230_)))))))
                              (___kont111852111853_
                               (lambda ()
                                 (let* ((_body107169_
                                         (if _compiled-body?107057_
                                             _body107141_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self107055_
                                                _body107141_))))
                                        (_body107171_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post107062_
                                            _post107148_
                                            _body107169_)))
                                        (_body107173_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check107061_
                                            _check107147_
                                            _body107171_))))
                                   (let ((__tmp112881
                                          (let ((__tmp112883
                                                 (reverse _bind107146_))
                                                (__tmp112882
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body107173_ '()))))
                                            (declare (not safe))
                                            (cons __tmp112883 __tmp112882))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp112881))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111848111849_))
                              (let ((_e107157107181_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111848111849_))))
                                (let ((_tl107155107186_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107157107181_)))
                                      (_hd107156107184_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107157107181_))))
                                  (___kont111850111851_
                                   _tl107155107186_
                                   _hd107156107184_)))
                              (___kont111852111853_)))))))
                 (_generate-values-check107061_
                  (lambda (_check107137_ _body107138_)
                    (let ((__tmp112884
                           (let ((__tmp112886
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107138_ '())))
                                 (__tmp112885 (reverse _check107137_)))
                             (declare (not safe))
                             (foldr1 cons __tmp112886 __tmp112885))))
                      (declare (not safe))
                      (cons 'begin __tmp112884))))
                 (_generate-values-post107062_
                  (lambda (_post107130_ _body107131_)
                    (let ((__tmp112887
                           (let ((__tmp112889
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107131_ '())))
                                 (__tmp112888
                                  (map (lambda (_g107132107134_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g107132107134_)))
                                       (reverse _post107130_))))
                             (declare (not safe))
                             (foldr1 cons __tmp112889 __tmp112888))))
                      (declare (not safe))
                      (cons 'begin __tmp112887)))))
          (let* ((_g107064107081_
                  (lambda (_g107065107078_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107065107078_))))
                 (_g107063107127_
                  (lambda (_g107065107084_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107065107084_))
                        (let ((_e107070107086_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107065107084_))))
                          (let ((_hd107069107089_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107070107086_)))
                                (_tl107068107091_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107070107086_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107068107091_))
                                (let ((_e107073107094_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107068107091_))))
                                  (let ((_hd107072107097_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107073107094_)))
                                        (_tl107071107099_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107073107094_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107071107099_))
                                        (let ((_e107076107102_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107071107099_))))
                                          (let ((_hd107075107105_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107076107102_)))
                                                (_tl107074107107_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107076107102_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107074107107_))
                                                ((lambda (_L107110_ _L107111_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L107111_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple107059_
                                                          _L107111_
                                                          _L107110_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values107060_
                                                          _L107111_
                                                          _L107110_))))
                                                 _hd107075107105_
                                                 _hd107072107097_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107064107081_
                                                   _g107065107084_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107064107081_ _g107065107084_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107064107081_ _g107065107084_)))))
                        (let ()
                          (declare (not safe))
                          (_g107064107081_ _g107065107084_))))))
            (declare (not safe))
            (_g107063107127_ _stx107056_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self107367_ _stx107368_)
        (let ((_compiled-body?107370_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self107367_
           _stx107368_
           _compiled-body?107370_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g112891_
        (let ((_g112890_ (let () (declare (not safe)) (##length _g112891_))))
          (cond ((let () (declare (not safe)) (##fx= _g112890_ 2))
                 (apply (lambda (_self107367_ _stx107368_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self107367_
                             _stx107368_)))
                        _g112891_))
                ((let () (declare (not safe)) (##fx= _g112890_ 3))
                 (apply (lambda (_self107372_
                                 _stx107373_
                                 _compiled-body?107374_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self107372_
                             _stx107373_
                             _compiled-body?107374_)))
                        _g112891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g112891_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self106636_ _stx106637_)
        (letrec ((_generate-values106639_
                  (lambda (_hd106882_ _body106883_)
                    (let _lp106885_ ((_rest106887_ _hd106882_)
                                     (_bind106888_ '()))
                      (let* ((_rest106889106897_ _rest106887_)
                             (_else106891106908_
                              (lambda ()
                                (let ((_bind106905_ (reverse _bind106888_))
                                      (_body106906_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106636_
                                          _body106883_))))
                                  (let ((__tmp112892
                                         (let ((__tmp112893
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body106906_ '()))))
                                           (declare (not safe))
                                           (cons _bind106905_ __tmp112893))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp112892)))))
                             (_K106893107042_
                              (lambda (_rest106911_ _hd-bind106912_)
                                (let* ((___stx111862111863_ _hd-bind106912_)
                                       (_g106915106940_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx111862111863_)))))
                                  (let ((___kont111864111865_
                                         (lambda (_L107021_ _L107022_)
                                           (let ((_eid107036_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L107022_)))
                                                 (_expr107037_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self106636_
                                                     _L107021_))))
                                             (let ((__tmp112894
                                                    (let ((__tmp112895
                                                           (let ((__tmp112896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr107037_ '()))))
                     (declare (not safe))
                     (cons _eid107036_ __tmp112896))))
              (declare (not safe))
              (cons __tmp112895 _bind106888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp106885_
                                                _rest106911_
                                                __tmp112894)))))
                                        (___kont111866111867_
                                         (lambda (_L106961_ _L106962_)
                                           (let* ((_vals106981_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp106983_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values106985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp106983_
                                                      _L106962_
                                                      _L106961_)))
                                                  (_refs106987_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals106981_
                                                      _L106962_)))
                                                  (_expr106989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106636_
                                                      _L106961_))))
                                             (let ((__tmp112897
                                                    (let ((__tmp112898
                                                           (let ((__tmp112899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112900
                                 (let ((__tmp112901
                                        (let ((__tmp112902
                                               (let ((__tmp112905
                                                      (let ((__tmp112906
                                                             (let ((__tmp112907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr106989_ '()))))
                       (declare (not safe))
                       (cons _tmp106983_ __tmp112907))))
                (declare (not safe))
                (cons __tmp112906 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp112903
                                                      (let ((__tmp112904
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp106983_ '()))))
                (declare (not safe))
                (cons _check-values106985_ __tmp112904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp112905
                                                       __tmp112903))))
                                          (declare (not safe))
                                          (cons 'let __tmp112902))))
                                   (declare (not safe))
                                   (cons __tmp112901 '()))))
                            (declare (not safe))
                            (cons _vals106981_ __tmp112900))))
                     (declare (not safe))
                     (cons __tmp112899 _bind106888_))))
              (declare (not safe))
              (foldl1 cons __tmp112898 _refs106987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp106885_
                                                _rest106911_
                                                __tmp112897))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx111862111863_))
                                        (let ((_e106921106997_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx111862111863_))))
                                          (let ((_tl106919107002_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106921106997_)))
                                                (_hd106920107000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106921106997_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd106920107000_))
                                                (let ((_e106924107005_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd106920107000_))))
                                                  (let ((_tl106922107010_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106924107005_)))
                                                        (_hd106923107008_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106924107005_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl106922107010_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl106919107002_))
                                                            (let ((_e106927107013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106919107002_))))
                      (let ((_tl106925107018_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106927107013_)))
                            (_hd106926107016_
                             (let ()
                               (declare (not safe))
                               (##car _e106927107013_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106925107018_))
                            (___kont111864111865_
                             _hd106926107016_
                             _hd106923107008_)
                            (let () (declare (not safe)) (_g106915106940_)))))
                    (let () (declare (not safe)) (_g106915106940_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl106919107002_))
                    (let ((_e106935106953_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106919107002_))))
                      (let ((_tl106933106958_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106935106953_)))
                            (_hd106934106956_
                             (let ()
                               (declare (not safe))
                               (##car _e106935106953_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106933106958_))
                            (___kont111866111867_
                             _hd106934106956_
                             _hd106920107000_)
                            (let () (declare (not safe)) (_g106915106940_)))))
                    (let () (declare (not safe)) (_g106915106940_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl106919107002_))
                                                    (let ((_e106935106953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl106919107002_))))
                                                      (let ((_tl106933106958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e106935106953_)))
                    (_hd106934106956_
                     (let () (declare (not safe)) (##car _e106935106953_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl106933106958_))
                    (___kont111866111867_ _hd106934106956_ _hd106920107000_)
                    (let () (declare (not safe)) (_g106915106940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g106915106940_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106915106940_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106889106897_))
                            (let ((_hd106894107045_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106889106897_)))
                                  (_tl106895107047_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106889106897_))))
                              (let* ((_hd-bind107050_ _hd106894107045_)
                                     (_rest107052_ _tl106895107047_))
                                (declare (not safe))
                                (_K106893107042_
                                 _rest107052_
                                 _hd-bind107050_)))
                            (let ()
                              (declare (not safe))
                              (_else106891106908_)))))))
                 (_generate-letrec?106640_
                  (lambda (_hd106772_)
                    (let _lp106774_ ((_rest106776_ _hd106772_))
                      (let* ((_rest106777106785_ _rest106776_)
                             (_else106779106793_ (lambda () '#t))
                             (_K106781106870_
                              (lambda (_rest106796_ _hd-bind106797_)
                                (let* ((_g106799106816_
                                        (lambda (_g106800106813_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g106800106813_))))
                                       (_g106798106867_
                                        (lambda (_g106800106819_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g106800106819_))
                                              (let ((_e106805106821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g106800106819_))))
                                                (let ((_hd106804106824_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106805106821_)))
                                                      (_tl106803106826_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106805106821_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd106804106824_))
                                                      (let ((_e106808106829_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd106804106824_))))
                (let ((_hd106807106832_
                       (let () (declare (not safe)) (##car _e106808106829_)))
                      (_tl106806106834_
                       (let () (declare (not safe)) (##cdr _e106808106829_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106806106834_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl106803106826_))
                          (let ((_e106811106837_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl106803106826_))))
                            (let ((_hd106810106840_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e106811106837_)))
                                  (_tl106809106842_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e106811106837_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl106809106842_))
                                  ((lambda (_L106845_ _L106846_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?106641_ _L106845_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp106774_ _rest106796_))
                                         '#f))
                                   _hd106810106840_
                                   _hd106807106832_)
                                  (let ()
                                    (declare (not safe))
                                    (_g106799106816_ _g106800106819_)))))
                          (let ()
                            (declare (not safe))
                            (_g106799106816_ _g106800106819_)))
                      (let ()
                        (declare (not safe))
                        (_g106799106816_ _g106800106819_)))))
              (let ()
                (declare (not safe))
                (_g106799106816_ _g106800106819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106799106816_
                                                 _g106800106819_))))))
                                  (declare (not safe))
                                  (_g106798106867_ _hd-bind106797_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106777106785_))
                            (let ((_hd106782106873_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106777106785_)))
                                  (_tl106783106875_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106777106785_))))
                              (let* ((_hd-bind106878_ _hd106782106873_)
                                     (_rest106880_ _tl106783106875_))
                                (declare (not safe))
                                (_K106781106870_
                                 _rest106880_
                                 _hd-bind106878_)))
                            (let ()
                              (declare (not safe))
                              (_else106779106793_)))))))
                 (_is-lambda-expr?106641_
                  (lambda (_expr106709_)
                    (let* ((___stx111906111907_ _expr106709_)
                           (_g106712106726_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111906111907_)))))
                      (let ((___kont111908111909_
                             (lambda (_L106754_ _L106755_) '#t))
                            (___kont111910111911_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx111906111907_))
                            (let ((_e106718106738_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx111906111907_))))
                              (let ((_tl106716106743_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e106718106738_)))
                                    (_hd106717106741_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e106718106738_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd106717106741_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd106717106741_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl106716106743_))
                                            (let ((_e106721106746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl106716106743_))))
                                              (let ((_tl106719106751_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e106721106746_)))
                                                    (_hd106720106749_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e106721106746_))))
                                                (___kont111908111909_
                                                 _tl106719106751_
                                                 _hd106720106749_)))
                                            (___kont111910111911_))
                                        (___kont111910111911_))
                                    (___kont111910111911_))))
                            (___kont111910111911_)))))))
          (let* ((_g106643106660_
                  (lambda (_g106644106657_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106644106657_))))
                 (_g106642106706_
                  (lambda (_g106644106663_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106644106663_))
                        (let ((_e106649106665_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106644106663_))))
                          (let ((_hd106648106668_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106649106665_)))
                                (_tl106647106670_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106649106665_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106647106670_))
                                (let ((_e106652106673_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106647106670_))))
                                  (let ((_hd106651106676_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106652106673_)))
                                        (_tl106650106678_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106652106673_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106650106678_))
                                        (let ((_e106655106681_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106650106678_))))
                                          (let ((_hd106654106684_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106655106681_)))
                                                (_tl106653106686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106655106681_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl106653106686_))
                                                ((lambda (_L106689_ _L106690_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L106690_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?106640_
                                                              _L106690_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self106636_
                                                              'letrec
                                                              _L106690_
                                                              _L106689_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self106636_
                                                              'letrec*
                                                              _L106690_
                                                              _L106689_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values106639_
                                                          _L106690_
                                                          _L106689_))))
                                                 _hd106654106684_
                                                 _hd106651106676_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106643106660_
                                                   _g106644106663_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106643106660_ _g106644106663_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106643106660_ _g106644106663_)))))
                        (let ()
                          (declare (not safe))
                          (_g106643106660_ _g106644106663_))))))
            (declare (not safe))
            (_g106642106706_ _stx106637_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd106573_)
        (let _lp106575_ ((_rest106577_ _hd106573_))
          (let* ((_rest106578106594_ _rest106577_)
                 (_else106581106602_ (lambda () '#f)))
            (let ((_K106584106615_
                   (lambda (_rest106613_)
                     (let () (declare (not safe)) (_lp106575_ _rest106613_))))
                  (_K106583106607_ (lambda () '#t)))
              (let ((_try-match106580106610_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest106578106594_))
                           (let () (declare (not safe)) (_K106583106607_))
                           (let ()
                             (declare (not safe))
                             (_else106581106602_))))))
                (if (let () (declare (not safe)) (##pair? _rest106578106594_))
                    (let ((_tl106586106620_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest106578106594_)))
                          (_hd106585106618_
                           (let ()
                             (declare (not safe))
                             (##car _rest106578106594_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd106585106618_))
                          (let ((_tl106588106625_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd106585106618_)))
                                (_hd106587106623_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd106585106618_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd106587106623_))
                                (let ((_tl106592106628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd106587106623_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl106592106628_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106588106625_))
                                          (let ((_tl106590106631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106588106625_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl106590106631_))
                                                (let ((_rest106634_
                                                       _tl106586106620_))
                                                  (declare (not safe))
                                                  (_lp106575_ _rest106634_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else106581106602_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else106581106602_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else106581106602_))))
                                (let ()
                                  (declare (not safe))
                                  (_else106581106602_))))
                          (let () (declare (not safe)) (_else106581106602_))))
                    (let ()
                      (declare (not safe))
                      (_try-match106580106610_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self106484_
               _form106485_
               _hd106486_
               _body106487_
               _compiled-body?106488_)
        (letrec ((_generate1106490_
                  (lambda (_bind106529_)
                    (let* ((_bind106530106541_ _bind106529_)
                           (_E106532106545_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind106530106541_))))
                           (_K106533106551_
                            (lambda (_expr106548_ _id106549_)
                              (let ((__tmp112910
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id106549_)))
                                    (__tmp112908
                                     (let ((__tmp112909
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106484_
                                               _expr106548_))))
                                       (declare (not safe))
                                       (cons __tmp112909 '()))))
                                (declare (not safe))
                                (cons __tmp112910 __tmp112908)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind106530106541_))
                          (let ((_hd106534106554_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind106530106541_)))
                                (_tl106535106556_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind106530106541_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd106534106554_))
                                (let ((_hd106538106559_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd106534106554_)))
                                      (_tl106539106561_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd106534106554_))))
                                  (let ((_id106564_ _hd106538106559_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl106539106561_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl106535106556_))
                                            (let ((_hd106536106566_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl106535106556_)))
                                                  (_tl106537106568_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl106535106556_))))
                                              (let ((_expr106571_
                                                     _hd106536106566_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl106537106568_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K106533106551_
                                                       _expr106571_
                                                       _id106564_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E106532106545_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E106532106545_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E106532106545_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E106532106545_))))
                          (let () (declare (not safe)) (_E106532106545_)))))))
          (let* ((_bind106492_ (map _generate1106490_ _hd106486_))
                 (_body106494_
                  (if _compiled-body?106488_
                      _body106487_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self106484_ _body106487_))))
                 (_body106526_
                  (let* ((_body106495106503_ _body106494_)
                         (_else106497106511_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body106494_ '()))))
                         (_K106499106516_
                          (lambda (_exprs106514_) _exprs106514_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body106495106503_))
                        (let ((_hd106500106519_
                               (let ()
                                 (declare (not safe))
                                 (##car _body106495106503_)))
                              (_tl106501106521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body106495106503_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd106500106519_ 'begin))
                              (let ((_exprs106524_ _tl106501106521_))
                                (declare (not safe))
                                (_K106499106516_ _exprs106524_))
                              (let ()
                                (declare (not safe))
                                (_else106497106511_))))
                        (let () (declare (not safe)) (_else106497106511_))))))
            (let ((__tmp112911
                   (let ()
                     (declare (not safe))
                     (cons _bind106492_ _body106526_))))
              (declare (not safe))
              (cons _form106485_ __tmp112911))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self106391_ _stx106392_)
        (letrec ((_generate1106394_
                  (lambda (_datum106446_)
                    (if (or (let () (declare (not safe)) (null? _datum106446_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _datum106446_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum106446_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum106446_)))
                        _datum106446_
                        (if (uninterned-symbol? _datum106446_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum106446_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum106446_))
                                (let ((__tmp112916
                                       (let ((__tmp112917 (car _datum106446_)))
                                         (declare (not safe))
                                         (_generate1106394_ __tmp112917)))
                                      (__tmp112914
                                       (let ((__tmp112915 (cdr _datum106446_)))
                                         (declare (not safe))
                                         (_generate1106394_ __tmp112915))))
                                  (declare (not safe))
                                  (cons __tmp112916 __tmp112914))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum106446_))
                                    (let ((__tmp112912
                                           (let ((__tmp112913
                                                  (unbox _datum106446_)))
                                             (declare (not safe))
                                             (_generate1106394_ __tmp112913))))
                                      (declare (not safe))
                                      (box __tmp112912))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum106446_))
                                        (vector-map
                                         _generate1106394_
                                         _datum106446_)
                                        (if (or (s8vector? _datum106446_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum106446_))
                                                (s16vector? _datum106446_)
                                                (u16vector? _datum106446_)
                                                (s32vector? _datum106446_)
                                                (u32vector? _datum106446_)
                                                (s64vector? _datum106446_)
                                                (u64vector? _datum106446_)
                                                (f32vector? _datum106446_)
                                                (f64vector? _datum106446_))
                                            _datum106446_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx106392_)))))))))))
          (let* ((_g106396106409_
                  (lambda (_g106397106406_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106397106406_))))
                 (_g106395106443_
                  (lambda (_g106397106412_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106397106412_))
                        (let ((_e106401106414_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106397106412_))))
                          (let ((_hd106400106417_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106401106414_)))
                                (_tl106399106419_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106401106414_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106399106419_))
                                (let ((_e106404106422_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106399106419_))))
                                  (let ((_hd106403106425_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106404106422_)))
                                        (_tl106402106427_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106404106422_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl106402106427_))
                                        ((lambda (_L106430_)
                                           (let ((__tmp112918
                                                  (let ((__tmp112919
                                                         (let ((__tmp112920
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L106430_))))
                   (declare (not safe))
                   (_generate1106394_ __tmp112920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112919 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp112918)))
                                         _hd106403106425_)
                                        (let ()
                                          (declare (not safe))
                                          (_g106396106409_ _g106397106412_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106396106409_ _g106397106412_)))))
                        (let ()
                          (declare (not safe))
                          (_g106396106409_ _g106397106412_))))))
            (declare (not safe))
            (_g106395106443_ _stx106392_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self105904_ _stx105905_)
        (letrec ((_compile-call105907_
                  (lambda (_rator106131_ _rands106132_)
                    (let ((_rator106138_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self105904_ _rator106131_)))
                          (_rands106139_
                           (map (lambda (_g106133106135_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self105904_
                                     _g106133106135_)))
                                _rands106132_)))
                      (let* ((___stx111953111954_ _rator106138_)
                             (_g106142106194_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111953111954_)))))
                        (let ((___kont111955111956_
                               (lambda (_L106318_
                                        _L106319_
                                        _L106320_
                                        _L106321_)
                                 (if (fx= (length _rands106139_)
                                          (length (let ((__tmp112925
                                                         (lambda (_g106357106360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g106358106362_)
                   (let ()
                     (declare (not safe))
                     (cons _g106357106360_ _g106358106362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112925
                                                            '()
                                                            _L106320_))))
                                     (let* ((_id106365_ _L106321_)
                                            (_args106374_
                                             (let ((__tmp112921
                                                    (lambda (_g106366106369_
                                                             _g106367106371_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g106366106369_
                                                              _g106367106371_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp112921
                                                       '()
                                                       _L106320_)))
                                            (_body106383_
                                             (let ((__tmp112922
                                                    (lambda (_g106375106378_
                                                             _g106376106380_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g106375106378_
                                                              _g106376106380_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp112922
                                                       '()
                                                       _L106319_)))
                                            (_init106385_
                                             (map list
                                                  _args106374_
                                                  _rands106139_)))
                                       (let ((__tmp112923
                                              (let ((__tmp112924
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init106385_
                                                             _body106383_))))
                                                (declare (not safe))
                                                (cons _id106365_
                                                      __tmp112924))))
                                         (declare (not safe))
                                         (cons 'let __tmp112923)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx105905_)))))
                              (___kont111961111962_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator106138_ _rands106139_)))))
                          (let ((___match112020112021_
                                 (lambda (_e106150106206_
                                          _hd106149106209_
                                          _tl106148106211_
                                          _e106153106214_
                                          _hd106152106217_
                                          _tl106151106219_
                                          _e106156106222_
                                          _hd106155106225_
                                          _tl106154106227_
                                          _e106159106230_
                                          _hd106158106233_
                                          _tl106157106235_
                                          _e106162106238_
                                          _hd106161106241_
                                          _tl106160106243_
                                          _e106165106246_
                                          _hd106164106249_
                                          _tl106163106251_
                                          _e106168106254_
                                          _hd106167106257_
                                          _tl106166106259_
                                          ___splice111957111958_
                                          _target106169106262_
                                          _tl106171106264_)
                                   (letrec ((_loop106172106267_
                                             (lambda (_hd106170106270_
                                                      _arg106176106272_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd106170106270_))
                                                   (let ((_e106173106275_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd106170106270_))))
                                                     (let ((_lp-tl106175106280_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e106173106275_)))
                                                           (_lp-hd106174106278_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e106173106275_))))
                                                       (let ((__tmp112927
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd106174106278_ _arg106176106272_))))
                 (declare (not safe))
                 (_loop106172106267_ _lp-tl106175106280_ __tmp112927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg106177106283_
                                                          (reverse _arg106176106272_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl106166106259_))
                                                         (let ((___splice111959111960_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl106166106259_ '0))))
                   (let ((_tl106180106288_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice111959111960_ '1)))
                         (_target106178106286_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice111959111960_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106180106288_))
                         (letrec ((_loop106181106291_
                                   (lambda (_hd106179106294_
                                            _body106185106296_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd106179106294_))
                                         (let ((_e106182106299_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd106179106294_))))
                                           (let ((_lp-tl106184106304_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106182106299_)))
                                                 (_lp-hd106183106302_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106182106299_))))
                                             (let ((__tmp112926
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd106183106302_
                                                            _body106185106296_))))
                                               (declare (not safe))
                                               (_loop106181106291_
                                                _lp-tl106184106304_
                                                __tmp112926))))
                                         (let ((_body106186106307_
                                                (reverse _body106185106296_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl106160106243_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl106154106227_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl106151106219_))
                                                       (let ((_e106189106310_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl106151106219_))))
                 (let ((_tl106187106315_
                        (let () (declare (not safe)) (##cdr _e106189106310_)))
                       (_hd106188106313_
                        (let () (declare (not safe)) (##car _e106189106310_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl106187106315_))
                       (let ((_L106318_ _hd106188106313_)
                             (_L106319_ _body106186106307_)
                             (_L106320_ _arg106177106283_)
                             (_L106321_ _hd106158106233_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L106321_ _L106318_))
                             (___kont111955111956_
                              _L106318_
                              _L106319_
                              _L106320_
                              _L106321_)
                             (___kont111961111962_)))
                       (___kont111961111962_))))
               (___kont111961111962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont111961111962_))
                                               (___kont111961111962_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop106181106291_ _target106178106286_ '())))
                         (___kont111961111962_))))
                 (___kont111961111962_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop106172106267_
                                        _target106169106262_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx111953111954_))
                                (let ((_e106150106206_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx111953111954_))))
                                  (let ((_tl106148106211_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106150106206_)))
                                        (_hd106149106209_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106150106206_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd106149106209_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd106149106209_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl106148106211_))
                                                (let ((_e106153106214_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl106148106211_))))
                                                  (let ((_tl106151106219_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106153106214_)))
                                                        (_hd106152106217_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106153106214_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd106152106217_))
                                                        (let ((_e106156106222_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd106152106217_))))
                  (let ((_tl106154106227_
                         (let () (declare (not safe)) (##cdr _e106156106222_)))
                        (_hd106155106225_
                         (let ()
                           (declare (not safe))
                           (##car _e106156106222_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd106155106225_))
                        (let ((_e106159106230_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd106155106225_))))
                          (let ((_tl106157106235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106159106230_)))
                                (_hd106158106233_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106159106230_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106157106235_))
                                (let ((_e106162106238_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106157106235_))))
                                  (let ((_tl106160106243_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106162106238_)))
                                        (_hd106161106241_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106162106238_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd106161106241_))
                                        (let ((_e106165106246_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd106161106241_))))
                                          (let ((_tl106163106251_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106165106246_)))
                                                (_hd106164106249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106165106246_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd106164106249_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd106164106249_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106163106251_))
                                                        (let ((_e106168106254_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106163106251_))))
                  (let ((_tl106166106259_
                         (let () (declare (not safe)) (##cdr _e106168106254_)))
                        (_hd106167106257_
                         (let ()
                           (declare (not safe))
                           (##car _e106168106254_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd106167106257_))
                        (let ((___splice111957111958_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd106167106257_
                                  '0))))
                          (let ((_tl106171106264_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice111957111958_ '1)))
                                (_target106169106262_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice111957111958_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl106171106264_))
                                (___match112020112021_
                                 _e106150106206_
                                 _hd106149106209_
                                 _tl106148106211_
                                 _e106153106214_
                                 _hd106152106217_
                                 _tl106151106219_
                                 _e106156106222_
                                 _hd106155106225_
                                 _tl106154106227_
                                 _e106159106230_
                                 _hd106158106233_
                                 _tl106157106235_
                                 _e106162106238_
                                 _hd106161106241_
                                 _tl106160106243_
                                 _e106165106246_
                                 _hd106164106249_
                                 _tl106163106251_
                                 _e106168106254_
                                 _hd106167106257_
                                 _tl106166106259_
                                 ___splice111957111958_
                                 _target106169106262_
                                 _tl106171106264_)
                                (___kont111961111962_))))
                        (___kont111961111962_))))
                (___kont111961111962_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont111961111962_))
                                                (___kont111961111962_))))
                                        (___kont111961111962_))))
                                (___kont111961111962_))))
                        (___kont111961111962_))))
                (___kont111961111962_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont111961111962_))
                                            (___kont111961111962_))
                                        (___kont111961111962_))))
                                (___kont111961111962_)))))))))
          (let* ((_g105909105923_
                  (lambda (_g105910105920_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105910105920_))))
                 (_g105908106128_
                  (lambda (_g105910105926_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105910105926_))
                        (let ((_e105915105928_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105910105926_))))
                          (let ((_hd105914105931_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105915105928_)))
                                (_tl105913105933_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105915105928_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105913105933_))
                                (let ((_e105918105936_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105913105933_))))
                                  (let ((_hd105917105939_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105918105936_)))
                                        (_tl105916105941_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105918105936_))))
                                    ((lambda (_L105944_ _L105945_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call105907_
                                              _L105945_
                                              _L105944_))
                                           (let* ((___stx112069112070_
                                                   _L105945_)
                                                  (_g105960105972_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx112069112070_)))))
                                             (let ((___kont112071112072_
                                                    (lambda ()
                                                      (let ((_f106002_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self105904_ _L105945_))))
                (if (let ((__tmp112942 (symbol->string _f106002_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp112942))
                    (let _lp106004_ ((_rest106007_ (reverse _L105944_))
                                     (_bind106009_ '())
                                     (_args106010_ '()))
                      (let* ((_rest106011106019_ _rest106007_)
                             (_else106013106027_
                              (lambda ()
                                (let ((__tmp112928
                                       (let ((__tmp112929
                                              (let ((__tmp112930
                                                     (let ((__tmp112931
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f106002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args106010_))))
               (declare (not safe))
               (cons __tmp112931 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp112930))))
                                         (declare (not safe))
                                         (cons _bind106009_ __tmp112929))))
                                  (declare (not safe))
                                  (cons 'let __tmp112928))))
                             (_K106015106113_
                              (lambda (_rest106030_ _e106031_)
                                (let* ((___stx112023112024_ _e106031_)
                                       (_g106036106054_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx112023112024_)))))
                                  (let ((___kont112025112026_
                                         (lambda ()
                                           (let ((__tmp112932
                                                  (let ((__tmp112933
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e106031_))))
                                                    (declare (not safe))
                                                    (cons __tmp112933
                                                          _args106010_))))
                                             (declare (not safe))
                                             (_lp106004_
                                              _rest106030_
                                              _bind106009_
                                              __tmp112932))))
                                        (___kont112027112028_
                                         (lambda ()
                                           (let ((__tmp112934
                                                  (let ((__tmp112935
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e106031_))))
                                                    (declare (not safe))
                                                    (cons __tmp112935
                                                          _args106010_))))
                                             (declare (not safe))
                                             (_lp106004_
                                              _rest106030_
                                              _bind106009_
                                              __tmp112934))))
                                        (___kont112029112030_
                                         (lambda ()
                                           (let ((_tmp106061_
                                                  (let ((__tmp112936
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp112936))))
                                             (let ((__tmp112938
                                                    (let ((__tmp112939
                                                           (let ((__tmp112940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112941
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e106031_))))
                            (declare (not safe))
                            (cons __tmp112941 '()))))
                     (declare (not safe))
                     (cons _tmp106061_ __tmp112940))))
              (declare (not safe))
              (cons __tmp112939 _bind106009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp112937
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp106061_
                                                            _args106010_))))
                                               (declare (not safe))
                                               (_lp106004_
                                                _rest106030_
                                                __tmp112938
                                                __tmp112937))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112023112024_))
                                        (let ((_e106040106092_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112023112024_))))
                                          (let ((_tl106038106097_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106040106092_)))
                                                (_hd106039106095_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106040106092_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd106039106095_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd106039106095_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106038106097_))
                                                        (let ((_e106043106100_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106038106097_))))
                  (let ((_tl106041106105_
                         (let () (declare (not safe)) (##cdr _e106043106100_)))
                        (_hd106042106103_
                         (let ()
                           (declare (not safe))
                           (##car _e106043106100_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl106041106105_))
                        (___kont112025112026_)
                        (___kont112029112030_))))
                (___kont112029112030_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd106039106095_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl106038106097_))
                                                            (let ((_e106049106077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106038106097_))))
                      (let ((_tl106047106082_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106049106077_)))
                            (_hd106048106080_
                             (let ()
                               (declare (not safe))
                               (##car _e106049106077_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106047106082_))
                            (___kont112027112028_)
                            (___kont112029112030_))))
                    (___kont112029112030_))
                (___kont112029112030_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont112029112030_))))
                                        (___kont112029112030_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106011106019_))
                            (let ((_hd106016106116_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106011106019_)))
                                  (_tl106017106118_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106011106019_))))
                              (let* ((_e106121_ _hd106016106116_)
                                     (_rest106123_ _tl106017106118_))
                                (declare (not safe))
                                (_K106015106113_ _rest106123_ _e106121_)))
                            (let ()
                              (declare (not safe))
                              (_else106013106027_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call105907_ _L105945_ _L105944_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont112073112074_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call105907_
                                                         _L105945_
                                                         _L105944_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx112069112070_))
                                                   (let ((_e105964105984_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx112069112070_))))
                                                     (let ((_tl105962105989_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e105964105984_)))
                                                           (_hd105963105987_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e105964105984_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd105963105987_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd105963105987_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl105962105989_))
                           (let ((_e105967105992_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl105962105989_))))
                             (let ((_tl105965105997_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e105967105992_)))
                                   (_hd105966105995_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e105967105992_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl105965105997_))
                                   (___kont112071112072_)
                                   (___kont112073112074_))))
                           (___kont112073112074_))
                       (___kont112073112074_))
                   (___kont112073112074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont112073112074_))))))
                                     _tl105916105941_
                                     _hd105917105939_)))
                                (let ()
                                  (declare (not safe))
                                  (_g105909105923_ _g105910105926_)))))
                        (let ()
                          (declare (not safe))
                          (_g105909105923_ _g105910105926_))))))
            (declare (not safe))
            (_g105908106128_ _stx105905_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self105691_ _stx105692_)
        (let* ((___stx112141112142_ _stx105692_)
               (_g105695105715_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112141112142_)))))
          (let ((___kont112143112144_
                 (lambda (_L105759_ _L105760_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self105691_ _stx105692_))
                       (let ((_f105778_
                              (let ((__tmp112943
                                     (let ((__tmp112945
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp112944
                                            (let ()
                                              (declare (not safe))
                                              (cons _L105760_ '()))))
                                       (declare (not safe))
                                       (cons __tmp112945 __tmp112944))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self105691_ __tmp112943))))
                         (let _lp105780_ ((_rest105783_ (reverse _L105759_))
                                          (_bind105785_ '())
                                          (_args105786_ '()))
                           (let* ((_rest105787105795_ _rest105783_)
                                  (_else105789105803_
                                   (lambda ()
                                     (let ((__tmp112946
                                            (let ((__tmp112947
                                                   (let ((__tmp112948
                                                          (let ((__tmp112949
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f105778_ _args105786_))))
                    (declare (not safe))
                    (cons __tmp112949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp112948))))
                                              (declare (not safe))
                                              (cons _bind105785_
                                                    __tmp112947))))
                                       (declare (not safe))
                                       (cons 'let __tmp112946))))
                                  (_K105791105889_
                                   (lambda (_rest105806_ _e105807_)
                                     (let* ((___stx112095112096_ _e105807_)
                                            (_g105812105830_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx112095112096_)))))
                                       (let ((___kont112097112098_
                                              (lambda ()
                                                (let ((__tmp112950
                                                       (let ((__tmp112951
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e105807_))))
                 (declare (not safe))
                 (cons __tmp112951 _args105786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp105780_
                                                   _rest105806_
                                                   _bind105785_
                                                   __tmp112950))))
                                             (___kont112099112100_
                                              (lambda ()
                                                (let ((__tmp112952
                                                       (let ((__tmp112953
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e105807_))))
                 (declare (not safe))
                 (cons __tmp112953 _args105786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp105780_
                                                   _rest105806_
                                                   _bind105785_
                                                   __tmp112952))))
                                             (___kont112101112102_
                                              (lambda ()
                                                (let ((_tmp105837_
                                                       (let ((__tmp112954
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp112954))))
                                                  (let ((__tmp112956
                                                         (let ((__tmp112957
                                                                (let ((__tmp112958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112959
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e105807_))))
                                 (declare (not safe))
                                 (cons __tmp112959 '()))))
                          (declare (not safe))
                          (cons _tmp105837_ __tmp112958))))
                   (declare (not safe))
                   (cons __tmp112957 _bind105785_)))
                (__tmp112955
                 (let ()
                   (declare (not safe))
                   (cons _tmp105837_ _args105786_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp105780_
                                                     _rest105806_
                                                     __tmp112956
                                                     __tmp112955))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx112095112096_))
                                             (let ((_e105816105868_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx112095112096_))))
                                               (let ((_tl105814105873_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105816105868_)))
                                                     (_hd105815105871_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105816105868_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105815105871_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd105815105871_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105814105873_))
                     (let ((_e105819105876_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105814105873_))))
                       (let ((_tl105817105881_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105819105876_)))
                             (_hd105818105879_
                              (let ()
                                (declare (not safe))
                                (##car _e105819105876_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105817105881_))
                             (___kont112097112098_)
                             (___kont112101112102_))))
                     (___kont112101112102_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd105815105871_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl105814105873_))
                         (let ((_e105825105853_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl105814105873_))))
                           (let ((_tl105823105858_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e105825105853_)))
                                 (_hd105824105856_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e105825105853_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl105823105858_))
                                 (___kont112099112100_)
                                 (___kont112101112102_))))
                         (___kont112101112102_))
                     (___kont112101112102_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112101112102_))))
                                             (___kont112101112102_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest105787105795_))
                                 (let ((_hd105792105892_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest105787105795_)))
                                       (_tl105793105894_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest105787105795_))))
                                   (let* ((_e105897_ _hd105792105892_)
                                          (_rest105899_ _tl105793105894_))
                                     (declare (not safe))
                                     (_K105791105889_ _rest105899_ _e105897_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else105789105803_)))))))))
                (___kont112145112146_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self105691_ _stx105692_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx112141112142_))
                (let ((_e105701105727_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx112141112142_))))
                  (let ((_tl105699105732_
                         (let () (declare (not safe)) (##cdr _e105701105727_)))
                        (_hd105700105730_
                         (let ()
                           (declare (not safe))
                           (##car _e105701105727_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl105699105732_))
                        (let ((_e105704105735_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl105699105732_))))
                          (let ((_tl105702105740_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105704105735_)))
                                (_hd105703105738_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105704105735_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd105703105738_))
                                (let ((_e105707105743_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd105703105738_))))
                                  (let ((_tl105705105748_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105707105743_)))
                                        (_hd105706105746_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105707105743_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd105706105746_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd105706105746_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl105705105748_))
                                                (let ((_e105710105751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl105705105748_))))
                                                  (let ((_tl105708105756_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105710105751_)))
                                                        (_hd105709105754_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105710105751_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105708105756_))
                                                        (___kont112143112144_
                                                         _tl105702105740_
                                                         _hd105709105754_)
                                                        (___kont112145112146_))))
                                                (___kont112145112146_))
                                            (___kont112145112146_))
                                        (___kont112145112146_))))
                                (___kont112145112146_))))
                        (___kont112145112146_))))
                (___kont112145112146_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self105503_ _stx105504_)
        (letrec ((_simplify105506_
                  (lambda (_code105591_)
                    (let* ((_code105592105610_ _code105591_)
                           (_else105594105618_ (lambda () _code105591_))
                           (_K105596105654_
                            (lambda (_expr105621_ _test105622_)
                              (let* ((_expr105623105631_ _expr105621_)
                                     (_else105625105639_
                                      (lambda ()
                                        (let ((__tmp112960
                                               (let ((__tmp112961
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr105621_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test105622_
                                                       __tmp112961))))
                                          (declare (not safe))
                                          (cons 'and __tmp112960))))
                                     (_K105627105644_
                                      (lambda (_exprs105642_)
                                        (let ((__tmp112962
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test105622_
                                                       _exprs105642_))))
                                          (declare (not safe))
                                          (cons 'and __tmp112962)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr105623105631_))
                                    (let ((_hd105628105647_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr105623105631_)))
                                          (_tl105629105649_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr105623105631_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd105628105647_ 'and))
                                          (let ((_exprs105652_
                                                 _tl105629105649_))
                                            (declare (not safe))
                                            (_K105627105644_ _exprs105652_))
                                          (let ()
                                            (declare (not safe))
                                            (_else105625105639_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else105625105639_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code105592105610_))
                          (let ((_hd105597105657_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code105592105610_)))
                                (_tl105598105659_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code105592105610_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd105597105657_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl105598105659_))
                                    (let ((_hd105599105662_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl105598105659_)))
                                          (_tl105600105664_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl105598105659_))))
                                      (let ((_test105667_ _hd105599105662_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl105600105664_))
                                            (let ((_hd105601105669_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl105600105664_)))
                                                  (_tl105602105671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl105600105664_))))
                                              (let ((_expr105674_
                                                     _hd105601105669_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl105602105671_))
                                                    (let ((_hd105603105676_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl105602105671_)))
                                                          (_tl105604105678_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl105602105671_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd105603105676_))
                                                          (let ((_hd105605105681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd105603105676_)))
                        (_tl105606105683_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd105603105676_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd105605105681_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl105606105683_))
                            (let ((_hd105607105686_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl105606105683_)))
                                  (_tl105608105688_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl105606105683_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd105607105686_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl105608105688_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105604105678_))
                                          (let ()
                                            (declare (not safe))
                                            (_K105596105654_
                                             _expr105674_
                                             _test105667_))
                                          (let ()
                                            (declare (not safe))
                                            (_else105594105618_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else105594105618_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else105594105618_))))
                            (let () (declare (not safe)) (_else105594105618_)))
                        (let () (declare (not safe)) (_else105594105618_))))
                  (let () (declare (not safe)) (_else105594105618_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else105594105618_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else105594105618_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else105594105618_)))
                                (let ()
                                  (declare (not safe))
                                  (_else105594105618_))))
                          (let ()
                            (declare (not safe))
                            (_else105594105618_)))))))
          (let* ((_g105508105529_
                  (lambda (_g105509105526_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105509105526_))))
                 (_g105507105588_
                  (lambda (_g105509105532_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105509105532_))
                        (let ((_e105515105534_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105509105532_))))
                          (let ((_hd105514105537_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105515105534_)))
                                (_tl105513105539_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105515105534_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105513105539_))
                                (let ((_e105518105542_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105513105539_))))
                                  (let ((_hd105517105545_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105518105542_)))
                                        (_tl105516105547_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105518105542_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105516105547_))
                                        (let ((_e105521105550_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105516105547_))))
                                          (let ((_hd105520105553_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105521105550_)))
                                                (_tl105519105555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105521105550_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl105519105555_))
                                                (let ((_e105524105558_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl105519105555_))))
                                                  (let ((_hd105523105561_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105524105558_)))
                                                        (_tl105522105563_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105524105558_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105522105563_))
                                                        ((lambda (_L105566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L105567_
                          _L105568_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp112970
                              (let ((__tmp112971
                                     (let ((__tmp112976
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105503_
                                               _L105568_)))
                                           (__tmp112972
                                            (let ((__tmp112975
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105503_
                                                      _L105567_)))
                                                  (__tmp112973
                                                   (let ((__tmp112974
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self105503_
                                                             _L105566_))))
                                                     (declare (not safe))
                                                     (cons __tmp112974 '()))))
                                              (declare (not safe))
                                              (cons __tmp112975 __tmp112973))))
                                       (declare (not safe))
                                       (cons __tmp112976 __tmp112972))))
                                (declare (not safe))
                                (cons 'if __tmp112971))))
                         (declare (not safe))
                         (_simplify105506_ __tmp112970))
                       (let ((__tmp112963
                              (let ((__tmp112968
                                     (let ((__tmp112969
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self105503_
                                                 _L105568_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp112969
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp112964
                                     (let ((__tmp112967
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105503_
                                               _L105567_)))
                                           (__tmp112965
                                            (let ((__tmp112966
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105503_
                                                      _L105566_))))
                                              (declare (not safe))
                                              (cons __tmp112966 '()))))
                                       (declare (not safe))
                                       (cons __tmp112967 __tmp112965))))
                                (declare (not safe))
                                (cons __tmp112968 __tmp112964))))
                         (declare (not safe))
                         (cons 'if __tmp112963))))
                 _hd105523105561_
                 _hd105520105553_
                 _hd105517105545_)
                (let ()
                  (declare (not safe))
                  (_g105508105529_ _g105509105532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105508105529_
                                                   _g105509105532_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105508105529_ _g105509105532_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105508105529_ _g105509105532_)))))
                        (let ()
                          (declare (not safe))
                          (_g105508105529_ _g105509105532_))))))
            (declare (not safe))
            (_g105507105588_ _stx105504_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self105451_ _stx105452_)
        (let* ((_g105454105467_
                (lambda (_g105455105464_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105455105464_))))
               (_g105453105500_
                (lambda (_g105455105470_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105455105470_))
                      (let ((_e105459105472_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105455105470_))))
                        (let ((_hd105458105475_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105459105472_)))
                              (_tl105457105477_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105459105472_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105457105477_))
                              (let ((_e105462105480_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105457105477_))))
                                (let ((_hd105461105483_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105462105480_)))
                                      (_tl105460105485_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105462105480_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl105460105485_))
                                      ((lambda (_L105488_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L105488_)))
                                       _hd105461105483_)
                                      (let ()
                                        (declare (not safe))
                                        (_g105454105467_ _g105455105470_)))))
                              (let ()
                                (declare (not safe))
                                (_g105454105467_ _g105455105470_)))))
                      (let ()
                        (declare (not safe))
                        (_g105454105467_ _g105455105470_))))))
          (declare (not safe))
          (_g105453105500_ _stx105452_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self105383_ _stx105384_)
        (let* ((_g105386105403_
                (lambda (_g105387105400_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105387105400_))))
               (_g105385105448_
                (lambda (_g105387105406_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105387105406_))
                      (let ((_e105392105408_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105387105406_))))
                        (let ((_hd105391105411_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105392105408_)))
                              (_tl105390105413_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105392105408_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105390105413_))
                              (let ((_e105395105416_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105390105413_))))
                                (let ((_hd105394105419_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105395105416_)))
                                      (_tl105393105421_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105395105416_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105393105421_))
                                      (let ((_e105398105424_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105393105421_))))
                                        (let ((_hd105397105427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105398105424_)))
                                              (_tl105396105429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105398105424_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105396105429_))
                                              ((lambda (_L105432_ _L105433_)
                                                 (let ((__tmp112977
                                                        (let ((__tmp112980
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L105433_)))
                      (__tmp112978
                       (let ((__tmp112979
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105383_ _L105432_))))
                         (declare (not safe))
                         (cons __tmp112979 '()))))
                  (declare (not safe))
                  (cons __tmp112980 __tmp112978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp112977)))
                                               _hd105397105427_
                                               _hd105394105419_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105386105403_
                                                 _g105387105406_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105386105403_ _g105387105406_)))))
                              (let ()
                                (declare (not safe))
                                (_g105386105403_ _g105387105406_)))))
                      (let ()
                        (declare (not safe))
                        (_g105386105403_ _g105387105406_))))))
          (declare (not safe))
          (_g105385105448_ _stx105384_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self105194_ _stx105195_)
        (let* ((_g105197105214_
                (lambda (_g105198105211_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105198105211_))))
               (_g105196105380_
                (lambda (_g105198105217_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105198105217_))
                      (let ((_e105203105219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105198105217_))))
                        (let ((_hd105202105222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105203105219_)))
                              (_tl105201105224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105203105219_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105201105224_))
                              (let ((_e105206105227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105201105224_))))
                                (let ((_hd105205105230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105206105227_)))
                                      (_tl105204105232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105206105227_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105204105232_))
                                      (let ((_e105209105235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105204105232_))))
                                        (let ((_hd105208105238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105209105235_)))
                                              (_tl105207105240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105209105235_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105207105240_))
                                              ((lambda (_L105243_ _L105244_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp112996
                                                            (let ((__tmp112999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self105194_ _L105243_)))
                          (__tmp112997
                           (let ((__tmp112998
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self105194_
                                     _L105244_))))
                             (declare (not safe))
                             (cons __tmp112998 '()))))
                      (declare (not safe))
                      (cons __tmp112999 __tmp112997))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp112996))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp105259_ ((_rest105262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112995
                                      (let ()
                                        (declare (not safe))
                                        (cons _L105243_ '()))))
                                 (declare (not safe))
                                 (cons _L105244_ __tmp112995)))
                              (_bind105264_ '())
                              (_args105265_ '()))
               (let* ((_rest105266105274_ _rest105262_)
                      (_else105268105282_
                       (lambda ()
                         (let ((__tmp112981
                                (let ((__tmp112982
                                       (let ((__tmp112983
                                              (let ((__tmp112984
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args105265_))))
                                                (declare (not safe))
                                                (cons __tmp112984 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp112983))))
                                  (declare (not safe))
                                  (cons _bind105264_ __tmp112982))))
                           (declare (not safe))
                           (cons 'let __tmp112981))))
                      (_K105270105368_
                       (lambda (_rest105285_ _e105286_)
                         (let* ((___stx112179112180_ _e105286_)
                                (_g105291105309_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx112179112180_)))))
                           (let ((___kont112181112182_
                                  (lambda ()
                                    (let ((__tmp112985
                                           (let ((__tmp112986
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105286_))))
                                             (declare (not safe))
                                             (cons __tmp112986 _args105265_))))
                                      (declare (not safe))
                                      (_lp105259_
                                       _rest105285_
                                       _bind105264_
                                       __tmp112985))))
                                 (___kont112183112184_
                                  (lambda ()
                                    (let ((__tmp112987
                                           (let ((__tmp112988
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105286_))))
                                             (declare (not safe))
                                             (cons __tmp112988 _args105265_))))
                                      (declare (not safe))
                                      (_lp105259_
                                       _rest105285_
                                       _bind105264_
                                       __tmp112987))))
                                 (___kont112185112186_
                                  (lambda ()
                                    (let ((_tmp105316_
                                           (let ((__tmp112989 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp112989))))
                                      (let ((__tmp112991
                                             (let ((__tmp112992
                                                    (let ((__tmp112993
                                                           (let ((__tmp112994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105286_))))
                     (declare (not safe))
                     (cons __tmp112994 '()))))
              (declare (not safe))
              (cons _tmp105316_ __tmp112993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112992
                                                     _bind105264_)))
                                            (__tmp112990
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp105316_
                                                     _args105265_))))
                                        (declare (not safe))
                                        (_lp105259_
                                         _rest105285_
                                         __tmp112991
                                         __tmp112990))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx112179112180_))
                                 (let ((_e105295105347_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx112179112180_))))
                                   (let ((_tl105293105352_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e105295105347_)))
                                         (_hd105294105350_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e105295105347_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd105294105350_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd105294105350_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl105293105352_))
                                                 (let ((_e105298105355_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl105293105352_))))
                                                   (let ((_tl105296105360_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105298105355_)))
                                                         (_hd105297105358_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105298105355_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105296105360_))
                                                         (___kont112181112182_)
                                                         (___kont112185112186_))))
                                                 (___kont112185112186_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd105294105350_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105293105352_))
                                                     (let ((_e105304105332_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105293105352_))))
                                                       (let ((_tl105302105337_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105304105332_)))
                     (_hd105303105335_
                      (let () (declare (not safe)) (##car _e105304105332_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105302105337_))
                     (___kont112183112184_)
                     (___kont112185112186_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112185112186_))
                                                 (___kont112185112186_)))
                                         (___kont112185112186_))))
                                 (___kont112185112186_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest105266105274_))
                     (let ((_hd105271105371_
                            (let ()
                              (declare (not safe))
                              (##car _rest105266105274_)))
                           (_tl105272105373_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest105266105274_))))
                       (let* ((_e105376_ _hd105271105371_)
                              (_rest105378_ _tl105272105373_))
                         (declare (not safe))
                         (_K105270105368_ _rest105378_ _e105376_)))
                     (let () (declare (not safe)) (_else105268105282_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd105208105238_
                                               _hd105205105230_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105197105214_
                                                 _g105198105217_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105197105214_ _g105198105217_)))))
                              (let ()
                                (declare (not safe))
                                (_g105197105214_ _g105198105217_)))))
                      (let ()
                        (declare (not safe))
                        (_g105197105214_ _g105198105217_))))))
          (declare (not safe))
          (_g105196105380_ _stx105195_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self105005_ _stx105006_)
        (let* ((_g105008105025_
                (lambda (_g105009105022_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105009105022_))))
               (_g105007105191_
                (lambda (_g105009105028_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105009105028_))
                      (let ((_e105014105030_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105009105028_))))
                        (let ((_hd105013105033_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105014105030_)))
                              (_tl105012105035_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105014105030_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105012105035_))
                              (let ((_e105017105038_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105012105035_))))
                                (let ((_hd105016105041_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105017105038_)))
                                      (_tl105015105043_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105017105038_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105015105043_))
                                      (let ((_e105020105046_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105015105043_))))
                                        (let ((_hd105019105049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105020105046_)))
                                              (_tl105018105051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105020105046_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105018105051_))
                                              ((lambda (_L105054_ _L105055_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp113015
                                                            (let ((__tmp113018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self105005_ _L105054_)))
                          (__tmp113016
                           (let ((__tmp113017
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self105005_
                                     _L105055_))))
                             (declare (not safe))
                             (cons __tmp113017 '()))))
                      (declare (not safe))
                      (cons __tmp113018 __tmp113016))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp113015))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp105070_ ((_rest105073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp113014
                                      (let ()
                                        (declare (not safe))
                                        (cons _L105054_ '()))))
                                 (declare (not safe))
                                 (cons _L105055_ __tmp113014)))
                              (_bind105075_ '())
                              (_args105076_ '()))
               (let* ((_rest105077105085_ _rest105073_)
                      (_else105079105093_
                       (lambda ()
                         (let ((__tmp113000
                                (let ((__tmp113001
                                       (let ((__tmp113002
                                              (let ((__tmp113003
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args105076_))))
                                                (declare (not safe))
                                                (cons __tmp113003 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp113002))))
                                  (declare (not safe))
                                  (cons _bind105075_ __tmp113001))))
                           (declare (not safe))
                           (cons 'let __tmp113000))))
                      (_K105081105179_
                       (lambda (_rest105096_ _e105097_)
                         (let* ((___stx112225112226_ _e105097_)
                                (_g105102105120_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx112225112226_)))))
                           (let ((___kont112227112228_
                                  (lambda ()
                                    (let ((__tmp113004
                                           (let ((__tmp113005
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105097_))))
                                             (declare (not safe))
                                             (cons __tmp113005 _args105076_))))
                                      (declare (not safe))
                                      (_lp105070_
                                       _rest105096_
                                       _bind105075_
                                       __tmp113004))))
                                 (___kont112229112230_
                                  (lambda ()
                                    (let ((__tmp113006
                                           (let ((__tmp113007
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105097_))))
                                             (declare (not safe))
                                             (cons __tmp113007 _args105076_))))
                                      (declare (not safe))
                                      (_lp105070_
                                       _rest105096_
                                       _bind105075_
                                       __tmp113006))))
                                 (___kont112231112232_
                                  (lambda ()
                                    (let ((_tmp105127_
                                           (let ((__tmp113008 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp113008))))
                                      (let ((__tmp113010
                                             (let ((__tmp113011
                                                    (let ((__tmp113012
                                                           (let ((__tmp113013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105097_))))
                     (declare (not safe))
                     (cons __tmp113013 '()))))
              (declare (not safe))
              (cons _tmp105127_ __tmp113012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp113011
                                                     _bind105075_)))
                                            (__tmp113009
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp105127_
                                                     _args105076_))))
                                        (declare (not safe))
                                        (_lp105070_
                                         _rest105096_
                                         __tmp113010
                                         __tmp113009))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx112225112226_))
                                 (let ((_e105106105158_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx112225112226_))))
                                   (let ((_tl105104105163_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e105106105158_)))
                                         (_hd105105105161_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e105106105158_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd105105105161_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd105105105161_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl105104105163_))
                                                 (let ((_e105109105166_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl105104105163_))))
                                                   (let ((_tl105107105171_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105109105166_)))
                                                         (_hd105108105169_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105109105166_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105107105171_))
                                                         (___kont112227112228_)
                                                         (___kont112231112232_))))
                                                 (___kont112231112232_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd105105105161_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105104105163_))
                                                     (let ((_e105115105143_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105104105163_))))
                                                       (let ((_tl105113105148_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105115105143_)))
                     (_hd105114105146_
                      (let () (declare (not safe)) (##car _e105115105143_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105113105148_))
                     (___kont112229112230_)
                     (___kont112231112232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112231112232_))
                                                 (___kont112231112232_)))
                                         (___kont112231112232_))))
                                 (___kont112231112232_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest105077105085_))
                     (let ((_hd105082105182_
                            (let ()
                              (declare (not safe))
                              (##car _rest105077105085_)))
                           (_tl105083105184_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest105077105085_))))
                       (let* ((_e105187_ _hd105082105182_)
                              (_rest105189_ _tl105083105184_))
                         (declare (not safe))
                         (_K105081105179_ _rest105189_ _e105187_)))
                     (let () (declare (not safe)) (_else105079105093_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd105019105049_
                                               _hd105016105041_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105008105025_
                                                 _g105009105028_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105008105025_ _g105009105028_)))))
                              (let ()
                                (declare (not safe))
                                (_g105008105025_ _g105009105028_)))))
                      (let ()
                        (declare (not safe))
                        (_g105008105025_ _g105009105028_))))))
          (declare (not safe))
          (_g105007105191_ _stx105006_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self104921_ _stx104922_)
        (let* ((_g104924104945_
                (lambda (_g104925104942_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104925104942_))))
               (_g104923105002_
                (lambda (_g104925104948_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104925104948_))
                      (let ((_e104931104950_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104925104948_))))
                        (let ((_hd104930104953_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104931104950_)))
                              (_tl104929104955_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104931104950_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104929104955_))
                              (let ((_e104934104958_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104929104955_))))
                                (let ((_hd104933104961_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104934104958_)))
                                      (_tl104932104963_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104934104958_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104932104963_))
                                      (let ((_e104937104966_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104932104963_))))
                                        (let ((_hd104936104969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104937104966_)))
                                              (_tl104935104971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104937104966_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104935104971_))
                                              (let ((_e104940104974_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104935104971_))))
                                                (let ((_hd104939104977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104940104974_)))
                                                      (_tl104938104979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104940104974_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104938104979_))
                                                      ((lambda (_L104982_
                                                                _L104983_
                                                                _L104984_)
                                                         (let ((__tmp113019
                                                                (let ((__tmp113025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self104921_ _L104982_)))
                              (__tmp113020
                               (let ((__tmp113024
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self104921_
                                         _L104983_)))
                                     (__tmp113021
                                      (let ((__tmp113023
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self104921_
                                                _L104984_)))
                                            (__tmp113022
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp113023 __tmp113022))))
                                 (declare (not safe))
                                 (cons __tmp113024 __tmp113021))))
                          (declare (not safe))
                          (cons __tmp113025 __tmp113020))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp113019)))
               _hd104939104977_
               _hd104936104969_
               _hd104933104961_)
              (let ()
                (declare (not safe))
                (_g104924104945_ _g104925104948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104924104945_
                                                 _g104925104948_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104924104945_ _g104925104948_)))))
                              (let ()
                                (declare (not safe))
                                (_g104924104945_ _g104925104948_)))))
                      (let ()
                        (declare (not safe))
                        (_g104924104945_ _g104925104948_))))))
          (declare (not safe))
          (_g104923105002_ _stx104922_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self104821_ _stx104822_)
        (let* ((_g104824104849_
                (lambda (_g104825104846_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104825104846_))))
               (_g104823104918_
                (lambda (_g104825104852_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104825104852_))
                      (let ((_e104832104854_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104825104852_))))
                        (let ((_hd104831104857_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104832104854_)))
                              (_tl104830104859_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104832104854_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104830104859_))
                              (let ((_e104835104862_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104830104859_))))
                                (let ((_hd104834104865_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104835104862_)))
                                      (_tl104833104867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104835104862_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104833104867_))
                                      (let ((_e104838104870_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104833104867_))))
                                        (let ((_hd104837104873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104838104870_)))
                                              (_tl104836104875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104838104870_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104836104875_))
                                              (let ((_e104841104878_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104836104875_))))
                                                (let ((_hd104840104881_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104841104878_)))
                                                      (_tl104839104883_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104841104878_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104839104883_))
                                                      (let ((_e104844104886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104839104883_))))
                (let ((_hd104843104889_
                       (let () (declare (not safe)) (##car _e104844104886_)))
                      (_tl104842104891_
                       (let () (declare (not safe)) (##cdr _e104844104886_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104842104891_))
                      ((lambda (_L104894_ _L104895_ _L104896_ _L104897_)
                         (let ((__tmp113026
                                (let ((__tmp113034
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self104821_
                                          _L104895_)))
                                      (__tmp113027
                                       (let ((__tmp113033
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104821_
                                                 _L104894_)))
                                             (__tmp113028
                                              (let ((__tmp113032
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self104821_
                                                        _L104896_)))
                                                    (__tmp113029
                                                     (let ((__tmp113031
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self104821_
                                                               _L104897_)))
                                                           (__tmp113030
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp113031 __tmp113030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113032
                                                      __tmp113029))))
                                         (declare (not safe))
                                         (cons __tmp113033 __tmp113028))))
                                  (declare (not safe))
                                  (cons __tmp113034 __tmp113027))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp113026)))
                       _hd104843104889_
                       _hd104840104881_
                       _hd104837104873_
                       _hd104834104865_)
                      (let ()
                        (declare (not safe))
                        (_g104824104849_ _g104825104852_)))))
              (let ()
                (declare (not safe))
                (_g104824104849_ _g104825104852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104824104849_
                                                 _g104825104852_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104824104849_ _g104825104852_)))))
                              (let ()
                                (declare (not safe))
                                (_g104824104849_ _g104825104852_)))))
                      (let ()
                        (declare (not safe))
                        (_g104824104849_ _g104825104852_))))))
          (declare (not safe))
          (_g104823104918_ _stx104822_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self104737_ _stx104738_)
        (let* ((_g104740104761_
                (lambda (_g104741104758_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104741104758_))))
               (_g104739104818_
                (lambda (_g104741104764_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104741104764_))
                      (let ((_e104747104766_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104741104764_))))
                        (let ((_hd104746104769_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104747104766_)))
                              (_tl104745104771_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104747104766_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104745104771_))
                              (let ((_e104750104774_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104745104771_))))
                                (let ((_hd104749104777_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104750104774_)))
                                      (_tl104748104779_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104750104774_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104748104779_))
                                      (let ((_e104753104782_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104748104779_))))
                                        (let ((_hd104752104785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104753104782_)))
                                              (_tl104751104787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104753104782_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104751104787_))
                                              (let ((_e104756104790_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104751104787_))))
                                                (let ((_hd104755104793_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104756104790_)))
                                                      (_tl104754104795_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104756104790_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104754104795_))
                                                      ((lambda (_L104798_
                                                                _L104799_
                                                                _L104800_)
                                                         (let ((__tmp113035
                                                                (let ((__tmp113041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self104737_ _L104798_)))
                              (__tmp113036
                               (let ((__tmp113040
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self104737_
                                         _L104799_)))
                                     (__tmp113037
                                      (let ((__tmp113039
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self104737_
                                                _L104800_)))
                                            (__tmp113038
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp113039 __tmp113038))))
                                 (declare (not safe))
                                 (cons __tmp113040 __tmp113037))))
                          (declare (not safe))
                          (cons __tmp113041 __tmp113036))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp113035)))
               _hd104755104793_
               _hd104752104785_
               _hd104749104777_)
              (let ()
                (declare (not safe))
                (_g104740104761_ _g104741104764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104740104761_
                                                 _g104741104764_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104740104761_ _g104741104764_)))))
                              (let ()
                                (declare (not safe))
                                (_g104740104761_ _g104741104764_)))))
                      (let ()
                        (declare (not safe))
                        (_g104740104761_ _g104741104764_))))))
          (declare (not safe))
          (_g104739104818_ _stx104738_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self104637_ _stx104638_)
        (let* ((_g104640104665_
                (lambda (_g104641104662_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104641104662_))))
               (_g104639104734_
                (lambda (_g104641104668_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104641104668_))
                      (let ((_e104648104670_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104641104668_))))
                        (let ((_hd104647104673_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104648104670_)))
                              (_tl104646104675_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104648104670_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104646104675_))
                              (let ((_e104651104678_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104646104675_))))
                                (let ((_hd104650104681_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104651104678_)))
                                      (_tl104649104683_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104651104678_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104649104683_))
                                      (let ((_e104654104686_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104649104683_))))
                                        (let ((_hd104653104689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104654104686_)))
                                              (_tl104652104691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104654104686_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104652104691_))
                                              (let ((_e104657104694_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104652104691_))))
                                                (let ((_hd104656104697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104657104694_)))
                                                      (_tl104655104699_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104657104694_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104655104699_))
                                                      (let ((_e104660104702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104655104699_))))
                (let ((_hd104659104705_
                       (let () (declare (not safe)) (##car _e104660104702_)))
                      (_tl104658104707_
                       (let () (declare (not safe)) (##cdr _e104660104702_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104658104707_))
                      ((lambda (_L104710_ _L104711_ _L104712_ _L104713_)
                         (let ((__tmp113042
                                (let ((__tmp113050
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self104637_
                                          _L104711_)))
                                      (__tmp113043
                                       (let ((__tmp113049
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104637_
                                                 _L104710_)))
                                             (__tmp113044
                                              (let ((__tmp113048
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self104637_
                                                        _L104712_)))
                                                    (__tmp113045
                                                     (let ((__tmp113047
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self104637_
                                                               _L104713_)))
                                                           (__tmp113046
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp113047 __tmp113046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp113048
                                                      __tmp113045))))
                                         (declare (not safe))
                                         (cons __tmp113049 __tmp113044))))
                                  (declare (not safe))
                                  (cons __tmp113050 __tmp113043))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp113042)))
                       _hd104659104705_
                       _hd104656104697_
                       _hd104653104689_
                       _hd104650104681_)
                      (let ()
                        (declare (not safe))
                        (_g104640104665_ _g104641104668_)))))
              (let ()
                (declare (not safe))
                (_g104640104665_ _g104641104668_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104640104665_
                                                 _g104641104668_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104640104665_ _g104641104668_)))))
                              (let ()
                                (declare (not safe))
                                (_g104640104665_ _g104641104668_)))))
                      (let ()
                        (declare (not safe))
                        (_g104640104665_ _g104641104668_))))))
          (declare (not safe))
          (_g104639104734_ _stx104638_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self104432_ _stx104433_)
        (let* ((_g104435104456_
                (lambda (_g104436104453_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104436104453_))))
               (_g104434104634_
                (lambda (_g104436104459_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104436104459_))
                      (let ((_e104442104461_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104436104459_))))
                        (let ((_hd104441104464_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104442104461_)))
                              (_tl104440104466_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104442104461_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104440104466_))
                              (let ((_e104445104469_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104440104466_))))
                                (let ((_hd104444104472_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104445104469_)))
                                      (_tl104443104474_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104445104469_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104443104474_))
                                      (let ((_e104448104477_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104443104474_))))
                                        (let ((_hd104447104480_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104448104477_)))
                                              (_tl104446104482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104448104477_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104446104482_))
                                              (let ((_e104451104485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104446104482_))))
                                                (let ((_hd104450104488_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104451104485_)))
                                                      (_tl104449104490_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104451104485_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104449104490_))
                                                      ((lambda (_L104493_
                                                                _L104494_
                                                                _L104495_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp113069
                            (let ((__tmp113075
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self104432_
                                      _L104493_)))
                                  (__tmp113070
                                   (let ((__tmp113074
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self104432_
                                             _L104494_)))
                                         (__tmp113071
                                          (let ((__tmp113073
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self104432_
                                                    _L104495_)))
                                                (__tmp113072
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp113073 __tmp113072))))
                                     (declare (not safe))
                                     (cons __tmp113074 __tmp113071))))
                              (declare (not safe))
                              (cons __tmp113075 __tmp113070))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp113069))
                     (let _lp104513_ ((_rest104516_
                                       (let ((__tmp113067
                                              (let ((__tmp113068
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L104493_ '()))))
                                                (declare (not safe))
                                                (cons _L104494_ __tmp113068))))
                                         (declare (not safe))
                                         (cons _L104495_ __tmp113067)))
                                      (_bind104518_ '())
                                      (_args104519_ '()))
                       (let* ((_rest104520104528_ _rest104516_)
                              (_else104522104536_
                               (lambda ()
                                 (let ((__tmp113051
                                        (let ((__tmp113052
                                               (let ((__tmp113053
                                                      (let ((__tmp113054
                                                             (let ((__tmp113055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113056
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp113056 _args104519_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp113055))))
                (declare (not safe))
                (cons __tmp113054 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp113053))))
                                          (declare (not safe))
                                          (cons _bind104518_ __tmp113052))))
                                   (declare (not safe))
                                   (cons 'let __tmp113051))))
                              (_K104524104622_
                               (lambda (_rest104539_ _e104540_)
                                 (let* ((___stx112271112272_ _e104540_)
                                        (_g104545104563_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx112271112272_)))))
                                   (let ((___kont112273112274_
                                          (lambda ()
                                            (let ((__tmp113057
                                                   (let ((__tmp113058
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e104540_))))
                                                     (declare (not safe))
                                                     (cons __tmp113058
                                                           _args104519_))))
                                              (declare (not safe))
                                              (_lp104513_
                                               _rest104539_
                                               _bind104518_
                                               __tmp113057))))
                                         (___kont112275112276_
                                          (lambda ()
                                            (let ((__tmp113059
                                                   (let ((__tmp113060
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e104540_))))
                                                     (declare (not safe))
                                                     (cons __tmp113060
                                                           _args104519_))))
                                              (declare (not safe))
                                              (_lp104513_
                                               _rest104539_
                                               _bind104518_
                                               __tmp113059))))
                                         (___kont112277112278_
                                          (lambda ()
                                            (let ((_tmp104570_
                                                   (let ((__tmp113061
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp113061))))
                                              (let ((__tmp113063
                                                     (let ((__tmp113064
                                                            (let ((__tmp113065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113066
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e104540_))))
                             (declare (not safe))
                             (cons __tmp113066 '()))))
                      (declare (not safe))
                      (cons _tmp104570_ __tmp113065))))
               (declare (not safe))
               (cons __tmp113064 _bind104518_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp113062
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp104570_
                                                             _args104519_))))
                                                (declare (not safe))
                                                (_lp104513_
                                                 _rest104539_
                                                 __tmp113063
                                                 __tmp113062))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx112271112272_))
                                         (let ((_e104549104601_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx112271112272_))))
                                           (let ((_tl104547104606_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e104549104601_)))
                                                 (_hd104548104604_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e104549104601_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd104548104604_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd104548104604_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl104547104606_))
                                                         (let ((_e104552104609_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl104547104606_))))
                   (let ((_tl104550104614_
                          (let ()
                            (declare (not safe))
                            (##cdr _e104552104609_)))
                         (_hd104551104612_
                          (let ()
                            (declare (not safe))
                            (##car _e104552104609_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl104550104614_))
                         (___kont112273112274_)
                         (___kont112277112278_))))
                 (___kont112277112278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd104548104604_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl104547104606_))
                     (let ((_e104558104586_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl104547104606_))))
                       (let ((_tl104556104591_
                              (let ()
                                (declare (not safe))
                                (##cdr _e104558104586_)))
                             (_hd104557104589_
                              (let ()
                                (declare (not safe))
                                (##car _e104558104586_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl104556104591_))
                             (___kont112275112276_)
                             (___kont112277112278_))))
                     (___kont112277112278_))
                 (___kont112277112278_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112277112278_))))
                                         (___kont112277112278_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest104520104528_))
                             (let ((_hd104525104625_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest104520104528_)))
                                   (_tl104526104627_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest104520104528_))))
                               (let* ((_e104630_ _hd104525104625_)
                                      (_rest104632_ _tl104526104627_))
                                 (declare (not safe))
                                 (_K104524104622_ _rest104632_ _e104630_)))
                             (let ()
                               (declare (not safe))
                               (_else104522104536_)))))))
               _hd104450104488_
               _hd104447104480_
               _hd104444104472_)
              (let ()
                (declare (not safe))
                (_g104435104456_ _g104436104459_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104435104456_
                                                 _g104436104459_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104435104456_ _g104436104459_)))))
                              (let ()
                                (declare (not safe))
                                (_g104435104456_ _g104436104459_)))))
                      (let ()
                        (declare (not safe))
                        (_g104435104456_ _g104436104459_))))))
          (declare (not safe))
          (_g104434104634_ _stx104433_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self104211_ _stx104212_)
        (let* ((_g104214104239_
                (lambda (_g104215104236_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104215104236_))))
               (_g104213104429_
                (lambda (_g104215104242_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104215104242_))
                      (let ((_e104222104244_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104215104242_))))
                        (let ((_hd104221104247_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104222104244_)))
                              (_tl104220104249_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104222104244_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104220104249_))
                              (let ((_e104225104252_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104220104249_))))
                                (let ((_hd104224104255_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104225104252_)))
                                      (_tl104223104257_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104225104252_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104223104257_))
                                      (let ((_e104228104260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104223104257_))))
                                        (let ((_hd104227104263_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104228104260_)))
                                              (_tl104226104265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104228104260_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104226104265_))
                                              (let ((_e104231104268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104226104265_))))
                                                (let ((_hd104230104271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104231104268_)))
                                                      (_tl104229104273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104231104268_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104229104273_))
                                                      (let ((_e104234104276_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104229104273_))))
                (let ((_hd104233104279_
                       (let () (declare (not safe)) (##car _e104234104276_)))
                      (_tl104232104281_
                       (let () (declare (not safe)) (##cdr _e104234104276_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104232104281_))
                      ((lambda (_L104284_ _L104285_ _L104286_ _L104287_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp113095
                                    (let ((__tmp113103
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self104211_
                                              _L104285_)))
                                          (__tmp113096
                                           (let ((__tmp113102
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self104211_
                                                     _L104284_)))
                                                 (__tmp113097
                                                  (let ((__tmp113101
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self104211_
                                                            _L104286_)))
                                                        (__tmp113098
                                                         (let ((__tmp113100
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self104211_ _L104287_)))
                       (__tmp113099
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp113100 __tmp113099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113101
                                                          __tmp113098))))
                                             (declare (not safe))
                                             (cons __tmp113102 __tmp113097))))
                                      (declare (not safe))
                                      (cons __tmp113103 __tmp113096))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp113095))
                             (let _lp104308_ ((_rest104311_
                                               (let ((__tmp113092
                                                      (let ((__tmp113093
                                                             (let ((__tmp113094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L104285_ '()))))
                       (declare (not safe))
                       (cons _L104284_ __tmp113094))))
                (declare (not safe))
                (cons _L104286_ __tmp113093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L104287_ __tmp113092)))
                                              (_bind104313_ '())
                                              (_args104314_ '()))
                               (let* ((_rest104315104323_ _rest104311_)
                                      (_else104317104331_
                                       (lambda ()
                                         (let ((__tmp113076
                                                (let ((__tmp113077
                                                       (let ((__tmp113078
                                                              (let ((__tmp113079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113080
                                    (let ((__tmp113081
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp113081 _args104314_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp113080))))
                        (declare (not safe))
                        (cons __tmp113079 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp113078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind104313_
                                                        __tmp113077))))
                                           (declare (not safe))
                                           (cons 'let __tmp113076))))
                                      (_K104319104417_
                                       (lambda (_rest104334_ _e104335_)
                                         (let* ((___stx112317112318_ _e104335_)
                                                (_g104340104358_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx112317112318_)))))
                                           (let ((___kont112319112320_
                                                  (lambda ()
                                                    (let ((__tmp113082
                                                           (let ((__tmp113083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e104335_))))
                     (declare (not safe))
                     (cons __tmp113083 _args104314_))))
              (declare (not safe))
              (_lp104308_ _rest104334_ _bind104313_ __tmp113082))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112321112322_
                                                  (lambda ()
                                                    (let ((__tmp113084
                                                           (let ((__tmp113085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e104335_))))
                     (declare (not safe))
                     (cons __tmp113085 _args104314_))))
              (declare (not safe))
              (_lp104308_ _rest104334_ _bind104313_ __tmp113084))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112323112324_
                                                  (lambda ()
                                                    (let ((_tmp104365_
                                                           (let ((__tmp113086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp113086))))
              (let ((__tmp113088
                     (let ((__tmp113089
                            (let ((__tmp113090
                                   (let ((__tmp113091
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e104335_))))
                                     (declare (not safe))
                                     (cons __tmp113091 '()))))
                              (declare (not safe))
                              (cons _tmp104365_ __tmp113090))))
                       (declare (not safe))
                       (cons __tmp113089 _bind104313_)))
                    (__tmp113087
                     (let ()
                       (declare (not safe))
                       (cons _tmp104365_ _args104314_))))
                (declare (not safe))
                (_lp104308_ _rest104334_ __tmp113088 __tmp113087))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx112317112318_))
                                                 (let ((_e104344104396_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx112317112318_))))
                                                   (let ((_tl104342104401_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e104344104396_)))
                                                         (_hd104343104399_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e104344104396_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd104343104399_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd104343104399_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl104342104401_))
                         (let ((_e104347104404_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl104342104401_))))
                           (let ((_tl104345104409_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e104347104404_)))
                                 (_hd104346104407_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e104347104404_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl104345104409_))
                                 (___kont112319112320_)
                                 (___kont112323112324_))))
                         (___kont112323112324_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd104343104399_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl104342104401_))
                             (let ((_e104353104381_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl104342104401_))))
                               (let ((_tl104351104386_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e104353104381_)))
                                     (_hd104352104384_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e104353104381_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl104351104386_))
                                     (___kont112321112322_)
                                     (___kont112323112324_))))
                             (___kont112323112324_))
                         (___kont112323112324_)))
                 (___kont112323112324_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112323112324_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest104315104323_))
                                     (let ((_hd104320104420_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest104315104323_)))
                                           (_tl104321104422_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest104315104323_))))
                                       (let* ((_e104425_ _hd104320104420_)
                                              (_rest104427_ _tl104321104422_))
                                         (declare (not safe))
                                         (_K104319104417_
                                          _rest104427_
                                          _e104425_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else104317104331_)))))))
                       _hd104233104279_
                       _hd104230104271_
                       _hd104227104263_
                       _hd104224104255_)
                      (let ()
                        (declare (not safe))
                        (_g104214104239_ _g104215104242_)))))
              (let ()
                (declare (not safe))
                (_g104214104239_ _g104215104242_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104214104239_
                                                 _g104215104242_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104214104239_ _g104215104242_)))))
                              (let ()
                                (declare (not safe))
                                (_g104214104239_ _g104215104242_)))))
                      (let ()
                        (declare (not safe))
                        (_g104214104239_ _g104215104242_))))))
          (declare (not safe))
          (_g104213104429_ _stx104212_))))
    (define gxc#collect-loader-deps-import%
      (lambda (_self104070_ _stx104071_)
        (letrec ((_import-set-template104073_
                  (lambda (_in104163_ _phi104164_)
                    (let ((_iphi104166_
                           (fx+ _phi104164_
                                (##direct-structure-ref
                                 _in104163_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports104167_
                           (##structure-ref
                            (##direct-structure-ref
                             _in104163_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp104169_ ((_rest104171_ _imports104167_)
                                       (_r104172_ '()))
                        (let* ((_rest104173104181_ _rest104171_)
                               (_else104175104189_ (lambda () _r104172_))
                               (_K104177104199_
                                (lambda (_rest104192_ _in104193_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in104193_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi104166_))
                                          (let ((__tmp113110
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in104193_
                                                         _r104172_))))
                                            (declare (not safe))
                                            (_lp104169_
                                             _rest104192_
                                             __tmp113110))
                                          (let ()
                                            (declare (not safe))
                                            (_lp104169_
                                             _rest104192_
                                             _r104172_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in104193_
                                             'gx#module-import::t))
                                          (let ((_iphi104195_
                                                 (fx+ _phi104164_
                                                      (##direct-structure-ref
                                                       _in104193_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi104195_))
                                                (let ((__tmp113108
                                                       (let ((__tmp113109
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in104193_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp113109
                                                               _r104172_))))
                                                  (declare (not safe))
                                                  (_lp104169_
                                                   _rest104192_
                                                   __tmp113108))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp104169_
                                                   _rest104192_
                                                   _r104172_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in104193_
                                                 'gx#import-set::t))
                                              (let ((_xphi104197_
                                                     (fx+ _iphi104166_
                                                          (##direct-structure-ref
                                                           _in104193_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi104197_))
                                                    (let ((__tmp113106
                                                           (let ((__tmp113107
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in104193_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp113107 _r104172_))))
              (declare (not safe))
              (_lp104169_ _rest104192_ __tmp113106))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi104197_)
                                                        (let ((__tmp113104
                                                               (let ((__tmp113105
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template104073_
                                 _in104193_
                                 _iphi104166_))))
                         (declare (not safe))
                         (foldl1 cons _r104172_ __tmp113105))))
                  (declare (not safe))
                  (_lp104169_ _rest104192_ __tmp113104))
                (let ()
                  (declare (not safe))
                  (_lp104169_ _rest104192_ _r104172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp104169_
                                                 _rest104192_
                                                 _r104172_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104173104181_))
                              (let ((_hd104178104202_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104173104181_)))
                                    (_tl104179104204_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104173104181_))))
                                (let* ((_in104207_ _hd104178104202_)
                                       (_rest104209_ _tl104179104204_))
                                  (declare (not safe))
                                  (_K104177104199_ _rest104209_ _in104207_)))
                              (let ()
                                (declare (not safe))
                                (_else104175104189_)))))))))
          (let* ((_g104075104085_
                  (lambda (_g104076104082_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104076104082_))))
                 (_g104074104160_
                  (lambda (_g104076104088_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104076104088_))
                        (let ((_e104080104090_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104076104088_))))
                          (let ((_hd104079104093_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104080104090_)))
                                (_tl104078104095_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104080104090_))))
                            ((lambda (_L104098_)
                               (let ((_ht104109_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp104111_ ((_rest104113_ _L104098_)
                                                  (_loads104114_ '()))
                                   (letrec ((_K104116_
                                             (lambda (_ctx104155_ _rest104156_)
                                               (let ((_id104158_
                                                      (##structure-ref
                                                       _ctx104155_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht104109_
                                                        _id104158_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp104111_
                                                        _rest104156_
                                                        _loads104114_))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht104109_
                                                          _id104158_
                                                          _id104158_))
                                                       (let ((__tmp113111
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _id104158_ _loads104114_))))
                 (declare (not safe))
                 (_lp104111_ _rest104156_ __tmp113111))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest104117104125_ _rest104113_)
                                            (_else104119104133_
                                             (lambda ()
                                               (set-box!
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self104070_
                                                   'deps))
                                                (let ((__tmp113112
                                                       (unbox (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (slot-ref__0 _self104070_ 'deps)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl1 cons
                                                          __tmp113112
                                                          _loads104114_)))))
                                            (_K104121104143_
                                             (lambda (_rest104136_ _in104137_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in104137_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K104116_
                                                      _in104137_
                                                      _rest104136_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in104137_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp113116
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in104137_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp113116))
                   (let ((__tmp113115
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in104137_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K104116_ __tmp113115 _rest104136_))
                   (let ()
                     (declare (not safe))
                     (_lp104111_ _rest104136_ _loads104114_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in104137_
                      'gx#import-set::t))
                   (let ((_phi104139_
                          (##direct-structure-ref
                           _in104137_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi104139_))
                         (let ((__tmp113114
                                (##direct-structure-ref
                                 _in104137_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K104116_ __tmp113114 _rest104136_))
                         (if (fxpositive? _phi104139_)
                             (let* ((_deps104141_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template104073_
                                        _in104137_
                                        '0)))
                                    (__tmp113113
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest104136_
                                               _deps104141_))))
                               (declare (not safe))
                               (_lp104111_ __tmp113113 _loads104114_))
                             (let ()
                               (declare (not safe))
                               (_lp104111_ _rest104136_ _loads104114_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx104071_
                      _in104137_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest104117104125_))
                                           (let ((_hd104122104146_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest104117104125_)))
                                                 (_tl104123104148_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest104117104125_))))
                                             (let* ((_in104151_
                                                     _hd104122104146_)
                                                    (_rest104153_
                                                     _tl104123104148_))
                                               (declare (not safe))
                                               (_K104121104143_
                                                _rest104153_
                                                _in104151_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else104119104133_))))))))
                             _tl104078104095_)))
                        (let ()
                          (declare (not safe))
                          (_g104075104085_ _g104076104088_))))))
            (declare (not safe))
            (_g104074104160_ _stx104071_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self103885_ _stx103886_)
        (letrec ((_add-lift!103888_
                  (lambda (_expr104068_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp113117 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr104068_ __tmp113117)))))
                 (_generate-syntax-quote103889_
                  (lambda (_id104065_ _marks104066_)
                    (let ((__tmp113118
                           (let ((__tmp113119
                                  (let ((__tmp113123
                                         (let ((__tmp113124
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id104065_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp113124)))
                                        (__tmp113120
                                         (let ((__tmp113121
                                                (let ((__tmp113122
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks104066_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp113122))))
                                           (declare (not safe))
                                           (cons '#f __tmp113121))))
                                    (declare (not safe))
                                    (cons __tmp113123 __tmp113120))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp113119))))
                      (declare (not safe))
                      (cons '##structure __tmp113118))))
                 (_generate-simple103890_
                  (lambda (_stxq104060_)
                    (let ((_gid104062_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid104063_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq104060_))))
                      (let ((__tmp113125
                             (let ((__tmp113126
                                    (let ((__tmp113127
                                           (let ((__tmp113128
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote103889_
                                                     _qid104063_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp113128 '()))))
                                      (declare (not safe))
                                      (cons _gid104062_ __tmp113127))))
                               (declare (not safe))
                               (cons 'define __tmp113126))))
                        (declare (not safe))
                        (_add-lift!103888_ __tmp113125))
                      (let ((__tmp113129 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp113129 _stxq104060_ _gid104062_))
                      _gid104062_)))
                 (_generate-serialized103891_
                  (lambda (_stxq104050_ _marks104051_)
                    (let* ((_mark-refs104053_
                            (map _generate-mark103892_ _marks104051_))
                           (_gid104055_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid104057_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq104050_))))
                      (let ((__tmp113130
                             (let ((__tmp113131
                                    (let ((__tmp113132
                                           (let ((__tmp113133
                                                  (let ((__tmp113134
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs104053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote103889_
                                                     _qid104057_
                                                     __tmp113134))))
                                             (declare (not safe))
                                             (cons __tmp113133 '()))))
                                      (declare (not safe))
                                      (cons _gid104055_ __tmp113132))))
                               (declare (not safe))
                               (cons 'define __tmp113131))))
                        (declare (not safe))
                        (_add-lift!103888_ __tmp113130))
                      (let ((__tmp113135 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp113135 _stxq104050_ _gid104055_))
                      _gid104055_)))
                 (_generate-mark103892_
                  (lambda (_mark104036_)
                    (let ((_$e104038_
                           (let ((__tmp113136 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp113136 _mark104036_))))
                      (if _$e104038_
                          (values _$e104038_)
                          (let* ((_gid104041_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr104043_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark103893_ _mark104036_)))
                                 (_ctx104045_
                                  (let ((__tmp113137
                                         (##structure-ref
                                          _mark104036_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp113137)))
                                 (_ctx-ref104047_
                                  (if (let ((__tmp113142
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx104045_ __tmp113142))
                                      '(gx#current-expander-context)
                                      (let ((__tmp113138
                                             (let ((__tmp113139
                                                    (let ((__tmp113140
                                                           (let ((__tmp113141
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref103894_ _ctx104045_))))
                     (declare (not safe))
                     (cons __tmp113141 '()))))
              (declare (not safe))
              (cons 'quote __tmp113140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp113139 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp113138)))))
                            (let ((__tmp113143 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp113143 _mark104036_ _gid104041_))
                            (let ((__tmp113144
                                   (let ((__tmp113145
                                          (let ((__tmp113146
                                                 (let ((__tmp113147
                                                        (let ((__tmp113148
                                                               (let ((__tmp113150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp113151
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr104043_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp113151)))
                             (__tmp113149
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref104047_ '()))))
                         (declare (not safe))
                         (cons __tmp113150 __tmp113149))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp113148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp113147 '()))))
                                            (declare (not safe))
                                            (cons _gid104041_ __tmp113146))))
                                     (declare (not safe))
                                     (cons 'define __tmp113145))))
                              (declare (not safe))
                              (_add-lift!103888_ __tmp113144))
                            _gid104041_)))))
                 (_serialize-mark103893_
                  (lambda (_mark103983_)
                    (letrec ((_quote-e103985_
                              (lambda (_sym104034_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _sym104034_))
                                    _sym104034_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym104034_))))))
                      (let* ((_mark103986103995_ _mark103983_)
                             (_E103988103999_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark103986103995_))))
                             (_K103989104011_
                              (lambda (_trace104002_
                                       _phi104003_
                                       _ctx104004_
                                       _subst104005_)
                                (let* ((_subs104007_
                                        (if _subst104005_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst104005_))
                                            '()))
                                       (__tmp113152
                                        (map (lambda (_pair104009_)
                                               (let ((__tmp113155
                                                      (let ((__tmp113156
                                                             (car _pair104009_)))
                                                        (declare (not safe))
                                                        (_quote-e103985_
                                                         __tmp113156)))
                                                     (__tmp113153
                                                      (let ((__tmp113154
                                                             (cdr _pair104009_)))
                                                        (declare (not safe))
                                                        (_quote-e103985_
                                                         __tmp113154))))
                                                 (declare (not safe))
                                                 (cons __tmp113155
                                                       __tmp113153)))
                                             _subs104007_)))
                                  (declare (not safe))
                                  (cons _phi104003_ __tmp113152)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark103986103995_
                               'gx#expander-mark::t))
                            (let* ((_e103990104014_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103986103995_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst104017_ _e103990104014_)
                                   (_e103991104019_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103986103995_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx104022_ _e103991104019_)
                                   (_e103992104024_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103986103995_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi104027_ _e103992104024_)
                                   (_e103993104029_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103986103995_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace104032_ _e103993104029_))
                              (declare (not safe))
                              (_K103989104011_
                               _trace104032_
                               _phi104027_
                               _ctx104022_
                               _subst104017_))
                            (let ()
                              (declare (not safe))
                              (_E103988103999_)))))))
                 (_context-ref103894_
                  (lambda (_ctx103970_)
                    (if (let ((__tmp113164
                               (##structure-ref
                                _ctx103970_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp113164
                           'gx#module-context::t))
                        (let ((_ctx-ref103972_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested103896_ _ctx103970_)))
                              (_ctx-origin103973_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin103895_ _ctx103970_)))
                              (_origin103974_
                               (let ((__tmp113158
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin103895_ __tmp113158))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin103974_ _ctx-origin103973_))
                              (let ((_ref103976_
                                     (let ((__tmp113159
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested103896_
                                        __tmp113159))))
                                (let _lp103978_ ((_ref103980_
                                                  (cdr _ref103976_))
                                                 (_ctx-ref103981_
                                                  (cdr _ctx-ref103972_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref103980_))
                                           (let ((__tmp113163
                                                  (car _ref103980_))
                                                 (__tmp113162
                                                  (car _ctx-ref103981_)))
                                             (declare (not safe))
                                             (eq? __tmp113163 __tmp113162)))
                                      (let ((__tmp113161 (cdr _ref103980_))
                                            (__tmp113160
                                             (cdr _ctx-ref103981_)))
                                        (declare (not safe))
                                        (_lp103978_ __tmp113161 __tmp113160))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref103981_)))))
                              _ctx-ref103972_))
                        (let ((__tmp113157
                               (##structure-ref
                                _ctx103970_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp113157)))))
                 (_context-ref-origin103895_
                  (lambda (_ctx103962_)
                    (let _lp103964_ ((_ctx103966_ _ctx103962_))
                      (let ((_super103968_
                             (##structure-ref
                              _ctx103966_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super103968_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp103964_ _super103968_))
                            _ctx103966_)))))
                 (_context-ref-nested103896_
                  (lambda (_ctx103953_)
                    (let _lp103955_ ((_ctx103957_ _ctx103953_) (_r103958_ '()))
                      (let ((_super103960_
                             (##structure-ref
                              _ctx103957_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super103960_
                               'gx#module-context::t))
                            (let ((__tmp113167
                                   (let ((__tmp113168
                                          (car (##structure-ref
                                                _ctx103957_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp113168 _r103958_))))
                              (declare (not safe))
                              (_lp103955_ _super103960_ __tmp113167))
                            (let ((__tmp113165
                                   (let ((__tmp113166
                                          (##structure-ref
                                           _ctx103957_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp113166))))
                              (declare (not safe))
                              (cons __tmp113165 _r103958_))))))))
          (let* ((_g103898103911_
                  (lambda (_g103899103908_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103899103908_))))
                 (_g103897103950_
                  (lambda (_g103899103914_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103899103914_))
                        (let ((_e103903103916_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103899103914_))))
                          (let ((_hd103902103919_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103903103916_)))
                                (_tl103901103921_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103903103916_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl103901103921_))
                                (let ((_e103906103924_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl103901103921_))))
                                  (let ((_hd103905103927_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e103906103924_)))
                                        (_tl103904103929_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e103906103924_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl103904103929_))
                                        ((lambda (_L103932_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L103932_))
                                               (let ((_$e103945_
                                                      (let ((__tmp113169
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp113169
                                                         _L103932_))))
                                                 (if _$e103945_
                                                     (values _$e103945_)
                                                     (let ((_marks103948_
                                                            (##direct-structure-ref
                                                             _L103932_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks103948_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple103890_
                                                              _L103932_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized103891_
                                                              _L103932_
                                                              _marks103948_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L103932_))))
                                         _hd103905103927_)
                                        (let ()
                                          (declare (not safe))
                                          (_g103898103911_ _g103899103914_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g103898103911_ _g103899103914_)))))
                        (let ()
                          (declare (not safe))
                          (_g103898103911_ _g103899103914_))))))
            (declare (not safe))
            (_g103897103950_ _stx103886_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self103817_ _stx103818_)
        (let* ((_g103820103837_
                (lambda (_g103821103834_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103821103834_))))
               (_g103819103882_
                (lambda (_g103821103840_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103821103840_))
                      (let ((_e103826103842_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103821103840_))))
                        (let ((_hd103825103845_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103826103842_)))
                              (_tl103824103847_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103826103842_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103824103847_))
                              (let ((_e103829103850_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103824103847_))))
                                (let ((_hd103828103853_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103829103850_)))
                                      (_tl103827103855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103829103850_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103827103855_))
                                      (let ((_e103832103858_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103827103855_))))
                                        (let ((_hd103831103861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103832103858_)))
                                              (_tl103830103863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103832103858_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103830103863_))
                                              ((lambda (_L103866_ _L103867_)
                                                 (let ((__tmp113170
                                                        (let ((__tmp113173
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L103867_)))
                      (__tmp113171
                       (let ((__tmp113172
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self103817_ _L103866_))))
                         (declare (not safe))
                         (cons __tmp113172 '()))))
                  (declare (not safe))
                  (cons __tmp113173 __tmp113171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp113170)))
                                               _hd103831103861_
                                               _hd103828103853_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103820103837_
                                                 _g103821103840_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103820103837_ _g103821103840_)))))
                              (let ()
                                (declare (not safe))
                                (_g103820103837_ _g103821103840_)))))
                      (let ()
                        (declare (not safe))
                        (_g103820103837_ _g103821103840_))))))
          (declare (not safe))
          (_g103819103882_ _stx103818_))))
    (define gxc#generate-meta-begin%
      (lambda (_self103766_ _stx103767_)
        (let* ((_g103769103779_
                (lambda (_g103770103776_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103770103776_))))
               (_g103768103814_
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
                             (let* ((_c-body103806_
                                     (map (lambda (_g103801103803_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self103766_
                                               _g103801103803_)))
                                          _L103792_))
                                    (_c-body103811_
                                     (filter (lambda (_$obj103808_)
                                               (let ((__tmp113174
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj103808_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp113174)))
                                             _c-body103806_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body103811_))))
                           _tl103772103789_)))
                      (let ()
                        (declare (not safe))
                        (_g103769103779_ _g103770103782_))))))
          (declare (not safe))
          (_g103768103814_ _stx103767_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self103674_ _stx103675_)
        (let* ((_g103677103687_
                (lambda (_g103678103684_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103678103684_))))
               (_g103676103763_
                (lambda (_g103678103690_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103678103690_))
                      (let ((_e103682103692_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103678103690_))))
                        (let ((_hd103681103695_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103682103692_)))
                              (_tl103680103697_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103682103692_))))
                          ((lambda (_L103700_)
                             (let* ((_phi103710_
                                     (let ((__tmp113175
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp113175 '1)))
                                    (_block103712_
                                     (let ((__tmp113176
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self103674_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp113176
                                        _phi103710_)))
                                    (_compiled103715_
                                     (let ((__tmp113177
                                            (lambda ()
                                              (let ((__tmp113179
                                                     (let ((__tmp113180
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp113180
                                                             _L103700_)))
                                                    (__tmp113178
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self103674_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp113179
                                                 'state:
                                                 __tmp113178)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp113177
                                        gx#current-expander-phi
                                        _phi103710_))))
                               (let* ((_g103718103728_
                                       (lambda (_g103719103725_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g103719103725_))))
                                      (_g103717103760_
                                       (lambda (_g103719103731_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g103719103731_))
                                             (let ((_e103723103733_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g103719103731_))))
                                               (let ((_hd103722103736_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e103723103733_)))
                                                     (_tl103721103738_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e103723103733_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd103722103736_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd103722103736_))
                                                         ((lambda (_L103741_)
                                                            (let ((_c-body103758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj103755_)
                                     (let ((__tmp113181
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj103755_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp113181)))
                                   _L103741_)))
                      (if _block103712_
                          (let ((__tmp113182
                                 (let ((__tmp113183
                                        (let ((__tmp113184
                                               (let ((__tmp113189
                                                      (let ((__tmp113190
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp113190)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp113185
                                                      (let ((__tmp113186
                                                             (let ((__tmp113187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113188 (string->symbol _block103712_)))
                              (declare (not safe))
                              (cons __tmp113188 '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp113187))))
                (declare (not safe))
                (cons __tmp113186 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp113189
                                                       __tmp113185))))
                                          (declare (not safe))
                                          (cons '%#call __tmp113184))))
                                   (declare (not safe))
                                   (cons __tmp113183 _c-body103758_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp113182))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body103758_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body103758_))))))
                  _tl103721103738_)
                 (let ()
                   (declare (not safe))
                   (_g103718103728_ _g103719103731_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g103718103728_
                                                        _g103719103731_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g103718103728_
                                                _g103719103731_))))))
                                 (declare (not safe))
                                 (_g103717103760_ _compiled103715_))))
                           _tl103680103697_)))
                      (let ()
                        (declare (not safe))
                        (_g103677103687_ _g103678103690_))))))
          (declare (not safe))
          (_g103676103763_ _stx103675_))))
    (define gxc#generate-meta-module%
      (lambda (_self103605_ _stx103606_)
        (let ((__tmp113191
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self103605_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp113191))
        (let* ((_g103608103622_
                (lambda (_g103609103619_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103609103619_))))
               (_g103607103671_
                (lambda (_g103609103625_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103609103625_))
                      (let ((_e103614103627_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103609103625_))))
                        (let ((_hd103613103630_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103614103627_)))
                              (_tl103612103632_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103614103627_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103612103632_))
                              (let ((_e103617103635_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103612103632_))))
                                (let ((_hd103616103638_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103617103635_)))
                                      (_tl103615103640_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103617103635_))))
                                  ((lambda (_L103643_ _L103644_)
                                     (let ((_key103657_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L103644_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _key103657_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx103606_
                                              _L103644_
                                              _key103657_)))
                                       (let* ((_ctx103659_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L103644_)))
                                              (_code103662_
                                               (let ((__tmp113192
                                                      (lambda ()
                                                        (let ((__tmp113193
                                                               (##structure-ref
                                                                _ctx103659_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self103605_
                                                           __tmp113193)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp113192
                                                  gx#current-expander-context
                                                  _ctx103659_)))
                                              (_rt103664_
                                               (let ((__tmp113194
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp113194
                                                  _ctx103659_)))
                                              (_loader103666_
                                               (if _rt103664_
                                                   (let ((__tmp113195
                                                          (let ((__tmp113196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113200
                                (let ((__tmp113201
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp113201)))
                               (__tmp113197
                                (let ((__tmp113198
                                       (let ((__tmp113199
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt103664_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp113199))))
                                  (declare (not safe))
                                  (cons __tmp113198 '()))))
                           (declare (not safe))
                           (cons __tmp113200 __tmp113197))))
                    (declare (not safe))
                    (cons '%#call __tmp113196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113195 '()))
                                                   '()))
                                              (_modid103668_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L103644_))))
                                         (let ((__tmp113202
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self103605_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp113202))
                                         (let ((__tmp113203
                                                (let ((__tmp113204
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code103662_
                                                               _loader103666_))))
                                                  (declare (not safe))
                                                  (cons _modid103668_
                                                        __tmp113204))))
                                           (declare (not safe))
                                           (cons '%#module __tmp113203)))))
                                   _tl103615103640_
                                   _hd103616103638_)))
                              (let ()
                                (declare (not safe))
                                (_g103608103622_ _g103609103625_)))))
                      (let ()
                        (declare (not safe))
                        (_g103608103622_ _g103609103625_))))))
          (declare (not safe))
          (_g103607103671_ _stx103606_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx103595_ _context-chain103596_)
        (let _lp103598_ ((_ctx103600_ _ctx103595_) (_path103601_ '()))
          (let ((_super103603_
                 (##structure-ref _ctx103600_ '3 gx#phi-context::t '#f)))
            (if (memq _super103603_ _context-chain103596_)
                (let ((__tmp113209
                       (let ((__tmp113210
                              (car (##structure-ref
                                    _ctx103600_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp113210 _path103601_))))
                  (declare (not safe))
                  (cons '#f __tmp113209))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super103603_
                       'gx#module-context::t))
                    (let ((__tmp113207
                           (let ((__tmp113208
                                  (car (##structure-ref
                                        _ctx103600_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp113208 _path103601_))))
                      (declare (not safe))
                      (_lp103598_ _super103603_ __tmp113207))
                    (let ((__tmp113205
                           (let ((__tmp113206
                                  (##structure-ref
                                   _ctx103600_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp113206))))
                      (declare (not safe))
                      (cons __tmp113205 _path103601_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp103590_ ((_ctx103592_ (gx#current-expander-context))
                         (_r103593_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx103592_ 'gx#module-context::t))
              (let ((__tmp113212
                     (##structure-ref _ctx103592_ '3 gx#phi-context::t '#f))
                    (__tmp113211
                     (let ()
                       (declare (not safe))
                       (cons _ctx103592_ _r103593_))))
                (declare (not safe))
                (_lp103590_ __tmp113212 __tmp113211))
              _r103593_))))
    (define gxc#generate-meta-import%
      (lambda (_self103359_ _stx103360_)
        (letrec* ((_context-chain103362_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec103363_
                   (lambda (_in103526_)
                     (let* ((_in103527103539_ _in103526_)
                            (_E103529103543_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in103527103539_))))
                            (_K103530103553_
                             (lambda (_phi103546_
                                      _name103547_
                                      _src-name103548_
                                      _src-phi103549_
                                      _src-key103550_
                                      _src-ctx103551_)
                               (let ((__tmp113213
                                      (let ((__tmp113217
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name103547_)))
                                            (__tmp113214
                                             (let ((__tmp113215
                                                    (let ((__tmp113216
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name103548_))))
                                                      (declare (not safe))
                                                      (cons __tmp113216 '()))))
                                               (declare (not safe))
                                               (cons _src-phi103549_
                                                     __tmp113215))))
                                        (declare (not safe))
                                        (cons __tmp113217 __tmp113214))))
                                 (declare (not safe))
                                 (cons _phi103546_ __tmp113213)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in103527103539_
                              'gx#module-import::t))
                           (let ((_e103531103556_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in103527103539_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e103531103556_
                                    'gx#module-export::t))
                                 (let* ((_e103534103559_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103531103556_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx103562_ _e103534103559_)
                                        (_e103535103564_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103531103556_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key103567_ _e103535103564_)
                                        (_e103536103569_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103531103556_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi103572_ _e103536103569_)
                                        (_e103537103574_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103531103556_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name103577_ _e103537103574_)
                                        (_e103532103579_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in103527103539_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name103582_ _e103532103579_)
                                        (_e103533103584_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in103527103539_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi103587_ _e103533103584_))
                                   (declare (not safe))
                                   (_K103530103553_
                                    _phi103587_
                                    _name103582_
                                    _src-name103577_
                                    _src-phi103572_
                                    _src-key103567_
                                    _src-ctx103562_))
                                 (let ()
                                   (declare (not safe))
                                   (_E103529103543_))))
                           (let () (declare (not safe)) (_E103529103543_))))))
                  (_make-import-path103364_
                   (lambda (_ctx103524_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx103524_
                        _context-chain103362_))))
                  (_make-import-spec-in103365_
                   (lambda (_ctx103521_ _in103522_)
                     (let ((__tmp113218
                            (let ((__tmp113220
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path103364_ _ctx103521_)))
                                  (__tmp113219 (reverse _in103522_)))
                              (declare (not safe))
                              (cons __tmp113220 __tmp113219))))
                       (declare (not safe))
                       (cons 'spec: __tmp113218)))))
          (let ((__tmp113221
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self103359_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp113221))
          (let* ((_g103367103377_
                  (lambda (_g103368103374_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103368103374_))))
                 (_g103366103518_
                  (lambda (_g103368103380_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103368103380_))
                        (let ((_e103372103382_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103368103380_))))
                          (let ((_hd103371103385_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103372103382_)))
                                (_tl103370103387_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103372103382_))))
                            ((lambda (_L103390_)
                               (let _lp103401_ ((_rest103403_ _L103390_)
                                                (_current-src103404_ '#f)
                                                (_current-in103405_ '())
                                                (_r103406_ '()))
                                 (let* ((_rest103407103415_ _rest103403_)
                                        (_else103409103425_
                                         (lambda ()
                                           (let* ((_r103423_
                                                   (if _current-src103404_
                                                       (let ((__tmp113222
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in103365_
                         _current-src103404_
                         _current-in103405_))))
                 (declare (not safe))
                 (cons __tmp113222 _r103406_))
               _r103406_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp113223
                                                   (reverse _r103423_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp113223))))
                                        (_K103411103506_
                                         (lambda (_rest103428_ _in103429_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in103429_
                                                  'gx#module-import::t))
                                               (let* ((_in103430103437_
                                                       _in103429_)
                                                      (_E103432103441_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in103430103437_))))
              (_K103433103446_
               (lambda (_src-ctx103444_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src103404_ _src-ctx103444_))
                     (let ((__tmp113239
                            (let ((__tmp113240
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec103363_ _in103429_))))
                              (declare (not safe))
                              (cons __tmp113240 _current-in103405_))))
                       (declare (not safe))
                       (_lp103401_
                        _rest103428_
                        _current-src103404_
                        __tmp113239
                        _r103406_))
                     (if _current-src103404_
                         (let ((__tmp113237
                                (let ((__tmp113238
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec103363_
                                          _in103429_))))
                                  (declare (not safe))
                                  (cons __tmp113238 '())))
                               (__tmp113235
                                (let ((__tmp113236
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in103365_
                                          _current-src103404_
                                          _current-in103405_))))
                                  (declare (not safe))
                                  (cons __tmp113236 _r103406_))))
                           (declare (not safe))
                           (_lp103401_
                            _rest103428_
                            _src-ctx103444_
                            __tmp113237
                            __tmp113235))
                         (let ((__tmp113233
                                (let ((__tmp113234
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec103363_
                                          _in103429_))))
                                  (declare (not safe))
                                  (cons __tmp113234 '()))))
                           (declare (not safe))
                           (_lp103401_
                            _rest103428_
                            _src-ctx103444_
                            __tmp113233
                            _r103406_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in103430103437_
                                                        'gx#module-import::t))
                                                     (let ((_e103434103449_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in103430103437_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e103434103449_
                                                              'gx#module-export::t))
                                                           (let* ((_e103435103452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e103434103449_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx103455_ _e103435103452_))
                     (declare (not safe))
                     (_K103433103446_ _src-ctx103455_))
                   (let () (declare (not safe)) (_E103432103441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E103432103441_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in103429_
                                                      'gx#import-set::t))
                                                   (let* ((_phi103457_
                                                           (##direct-structure-ref
                                                            _in103429_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src103459_
                                                           (##direct-structure-ref
                                                            _in103429_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in103499_
                                                           (let* ((_g103460103469_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path103364_ _src103459_)))
                          (_E103463103473_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g103460103469_)))))
                     (let ((_K103465103489_
                            (lambda (_path103487_) _path103487_))
                           (_K103464103479_
                            (lambda (_path103477_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path103477_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g103460103469_))
                           (let ((_tl103467103494_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g103460103469_)))
                                 (_hd103466103492_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g103460103469_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl103467103494_))
                                 (let ((_path103497_ _hd103466103492_))
                                   (declare (not safe))
                                   (_K103465103489_ _path103497_))
                                 (let ((_path103482_ _g103460103469_))
                                   (declare (not safe))
                                   (_K103464103479_ _path103482_))))
                           (let ((_path103482_ _g103460103469_))
                             (declare (not safe))
                             (_K103464103479_ _path103482_))))))
                  (_r103501_
                   (if _current-src103404_
                       (let ((__tmp113228
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in103365_
                                 _current-src103404_
                                 _current-in103405_))))
                         (declare (not safe))
                         (cons __tmp113228 _r103406_))
                       _r103406_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp113229
                                                            (let ((__tmp113230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi103457_))
                               _src-in103499_
                               (let ((__tmp113231
                                      (let ((__tmp113232
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in103499_ '()))))
                                        (declare (not safe))
                                        (cons _phi103457_ __tmp113232))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp113231)))))
                      (declare (not safe))
                      (cons __tmp113230 _r103501_))))
               (declare (not safe))
               (_lp103401_ _rest103428_ '#f '() __tmp113229)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in103429_
                                                          'gx#module-context::t))
                                                       (let* ((_r103504_
                                                               (if _current-src103404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113224
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in103365_
                                     _current-src103404_
                                     _current-in103405_))))
                             (declare (not safe))
                             (cons __tmp113224 _r103406_))
                           _r103406_))
                      (__tmp113225
                       (let ((__tmp113226
                              (let ((__tmp113227
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path103364_ _in103429_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp113227))))
                         (declare (not safe))
                         (cons __tmp113226 _r103504_))))
                 (declare (not safe))
                 (_lp103401_ _rest103428_ '#f '() __tmp113225))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest103407103415_))
                                       (let ((_hd103412103509_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest103407103415_)))
                                             (_tl103413103511_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest103407103415_))))
                                         (let* ((_in103514_ _hd103412103509_)
                                                (_rest103516_
                                                 _tl103413103511_))
                                           (declare (not safe))
                                           (_K103411103506_
                                            _rest103516_
                                            _in103514_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else103409103425_))))))
                             _tl103370103387_)))
                        (let ()
                          (declare (not safe))
                          (_g103367103377_ _g103368103380_))))))
            (declare (not safe))
            (_g103366103518_ _stx103360_)))))
    (define gxc#generate-meta-export%
      (lambda (_self103169_ _stx103170_)
        (letrec* ((_context-chain103172_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path103173_
                   (lambda (_ctx103357_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx103357_
                        _context-chain103172_)))))
          (let* ((_g103175103185_
                  (lambda (_g103176103182_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103176103182_))))
                 (_g103174103354_
                  (lambda (_g103176103188_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103176103188_))
                        (let ((_e103180103190_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103176103188_))))
                          (let ((_hd103179103193_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103180103190_)))
                                (_tl103178103195_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103180103190_))))
                            ((lambda (_L103198_)
                               (let _lp103209_ ((_rest103211_ _L103198_)
                                                (_r103212_ '()))
                                 (let* ((_rest103213103221_ _rest103211_)
                                        (_else103215103229_
                                         (lambda ()
                                           (let ((__tmp113241
                                                  (reverse _r103212_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp113241))))
                                        (_K103217103342_
                                         (lambda (_rest103232_ _out103233_)
                                           (let* ((_out103234103247_
                                                   _out103233_)
                                                  (_E103237103251_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out103234103247_)))))
                                             (let ((_K103241103321_
                                                    (lambda (_name103317_
                                                             _phi103318_
                                                             _key103319_)
                                                      (let ((__tmp113242
                                                             (let ((__tmp113243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113244
                                   (let ((__tmp113245
                                          (let ((__tmp113248
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key103319_)))
                                                (__tmp113246
                                                 (let ((__tmp113247
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name103317_))))
                                                   (declare (not safe))
                                                   (cons __tmp113247 '()))))
                                            (declare (not safe))
                                            (cons __tmp113248 __tmp113246))))
                                     (declare (not safe))
                                     (cons _phi103318_ __tmp113245))))
                              (declare (not safe))
                              (cons 'spec: __tmp113244))))
                       (declare (not safe))
                       (cons __tmp113243 _r103212_))))
                (declare (not safe))
                (_lp103209_ _rest103232_ __tmp113242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K103238103301_
                                                    (lambda (_phi103255_
                                                             _src103256_)
                                                      (let* ((_out103296_
                                                              (if _src103256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp113249
                                 (let ((__tmp113250
                                        (let* ((_g103257103266_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path103173_
                                                   _src103256_)))
                                               (_E103260103270_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g103257103266_)))))
                                          (let ((_K103262103286_
                                                 (lambda (_path103284_)
                                                   _path103284_))
                                                (_K103261103276_
                                                 (lambda (_path103274_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path103274_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g103257103266_))
                                                (let ((_tl103264103291_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g103257103266_)))
                                                      (_hd103263103289_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g103257103266_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl103264103291_))
                                                      (let ((_path103294_
                                                             _hd103263103289_))
                                                        (declare (not safe))
                                                        (_K103262103286_
                                                         _path103294_))
                                                      (let ((_path103279_
                                                             _g103257103266_))
                                                        (declare (not safe))
                                                        (_K103261103276_
                                                         _path103279_))))
                                                (let ((_path103279_
                                                       _g103257103266_))
                                                  (declare (not safe))
                                                  (_K103261103276_
                                                   _path103279_)))))))
                                   (declare (not safe))
                                   (cons __tmp113250 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp113249))
                          '#t))
                     (_out103298_
                      (if (let () (declare (not safe)) (fxzero? _phi103255_))
                          _out103296_
                          (let ((__tmp113251
                                 (let ((__tmp113252
                                        (let ()
                                          (declare (not safe))
                                          (cons _out103296_ '()))))
                                   (declare (not safe))
                                   (cons _phi103255_ __tmp113252))))
                            (declare (not safe))
                            (cons 'phi: __tmp113251)))))
                (let ((__tmp113253
                       (let ()
                         (declare (not safe))
                         (cons _out103298_ _r103212_))))
                  (declare (not safe))
                  (_lp103209_ _rest103232_ __tmp113253))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match103236103314_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out103234103247_
                                                               'gx#export-set::t))
                                                            (let* ((_e103239103304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out103234103247_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e103240103309_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out103234103247_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src103307_ _e103239103304_)
                            (_phi103312_ _e103240103309_))
                        (let ()
                          (declare (not safe))
                          (_K103238103301_ _phi103312_ _src103307_))))
                    (let () (declare (not safe)) (_E103237103251_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out103234103247_
                                                        'gx#module-export::t))
                                                     (let* ((_e103242103324_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out103234103247_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e103243103327_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103234103247_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e103244103332_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103234103247_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e103245103337_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103234103247_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key103330_ _e103243103327_)
                     (_phi103335_ _e103244103332_)
                     (_name103340_ _e103245103337_))
                 (let ()
                   (declare (not safe))
                   (_K103241103321_ _name103340_ _phi103335_ _key103330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match103236103314_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest103213103221_))
                                       (let ((_hd103218103345_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest103213103221_)))
                                             (_tl103219103347_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest103213103221_))))
                                         (let* ((_out103350_ _hd103218103345_)
                                                (_rest103352_
                                                 _tl103219103347_))
                                           (declare (not safe))
                                           (_K103217103342_
                                            _rest103352_
                                            _out103350_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else103215103229_))))))
                             _tl103178103195_)))
                        (let ()
                          (declare (not safe))
                          (_g103175103185_ _g103176103188_))))))
            (declare (not safe))
            (_g103174103354_ _stx103170_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self103130_ _stx103131_)
        (let ((__tmp113254
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self103130_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp113254))
        (let* ((_g103133103143_
                (lambda (_g103134103140_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103134103140_))))
               (_g103132103166_
                (lambda (_g103134103146_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103134103146_))
                      (let ((_e103138103148_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103134103146_))))
                        (let ((_hd103137103151_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103138103148_)))
                              (_tl103136103153_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103138103148_))))
                          ((lambda (_L103156_)
                             (let ((__tmp113255
                                    (map gxc#generate-runtime-identifier
                                         _L103156_)))
                               (declare (not safe))
                               (cons '%#provide __tmp113255)))
                           _tl103136103153_)))
                      (let ()
                        (declare (not safe))
                        (_g103133103143_ _g103134103146_))))))
          (declare (not safe))
          (_g103132103166_ _stx103131_))))
    (define gxc#generate-meta-extern%
      (lambda (_self103001_ _stx103002_)
        (letrec ((_generate1103004_
                  (lambda (_id103125_ _eid103126_)
                    (let ((_eid103128_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid103126_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _eid103128_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx103002_
                             _eid103128_)))
                      (let ((__tmp113257
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id103125_)))
                            (__tmp113256
                             (let ()
                               (declare (not safe))
                               (cons _eid103128_ '()))))
                        (declare (not safe))
                        (cons __tmp113257 __tmp113256))))))
          (let* ((_g103006103034_
                  (lambda (_g103007103031_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103007103031_))))
                 (_g103005103122_
                  (lambda (_g103007103037_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103007103037_))
                        (let ((_e103012103039_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103007103037_))))
                          (let ((_hd103011103042_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103012103039_)))
                                (_tl103010103044_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103012103039_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl103010103044_))
                                (let ((_g113258_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl103010103044_
                                          '0))))
                                  (begin
                                    (let ((_g113259_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g113258_)
                                                 (##vector-length _g113258_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g113259_ 2)))
                                          (error "Context expects 2 values"
                                                 _g113259_)))
                                    (let ((_target103013103047_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g113258_ 0)))
                                          (_tl103015103049_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g113258_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl103015103049_))
                                          (letrec ((_loop103016103052_
                                                    (lambda (_hd103014103055_
                                                             _eid103020103057_
                                                             _id103021103059_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd103014103055_))
                                                          (let ((_e103017103062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd103014103055_))))
                    (let ((_lp-hd103018103065_
                           (let ()
                             (declare (not safe))
                             (##car _e103017103062_)))
                          (_lp-tl103019103067_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103017103062_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd103018103065_))
                          (let ((_e103026103070_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd103018103065_))))
                            (let ((_hd103025103073_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103026103070_)))
                                  (_tl103024103075_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103026103070_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl103024103075_))
                                  (let ((_e103029103078_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl103024103075_))))
                                    (let ((_hd103028103081_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103029103078_)))
                                          (_tl103027103083_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103029103078_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl103027103083_))
                                          (let ((__tmp113264
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd103028103081_
                                                         _eid103020103057_)))
                                                (__tmp113263
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd103025103073_
                                                         _id103021103059_))))
                                            (declare (not safe))
                                            (_loop103016103052_
                                             _lp-tl103019103067_
                                             __tmp113264
                                             __tmp113263))
                                          (let ()
                                            (declare (not safe))
                                            (_g103006103034_
                                             _g103007103037_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g103006103034_ _g103007103037_)))))
                          (let ()
                            (declare (not safe))
                            (_g103006103034_ _g103007103037_)))))
                  (let ((_eid103022103086_ (reverse _eid103020103057_))
                        (_id103023103088_ (reverse _id103021103059_)))
                    ((lambda (_L103091_ _L103092_)
                       (let ((__tmp113260
                              (map _generate1103004_
                                   (let ((__tmp113261
                                          (lambda (_g103107103110_
                                                   _g103108103112_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g103107103110_
                                                    _g103108103112_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp113261 '() _L103092_))
                                   (let ((__tmp113262
                                          (lambda (_g103114103117_
                                                   _g103115103119_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g103114103117_
                                                    _g103115103119_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp113262 '() _L103091_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp113260)))
                     _eid103022103086_
                     _id103023103088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop103016103052_
                                               _target103013103047_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g103006103034_
                                             _g103007103037_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g103006103034_ _g103007103037_)))))
                        (let ()
                          (declare (not safe))
                          (_g103006103034_ _g103007103037_))))))
            (declare (not safe))
            (_g103005103122_ _stx103002_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self102791_ _stx102792_)
        (letrec ((_generate1102794_
                  (lambda (_id102996_)
                    (let ((_eid102998_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id102996_)))
                          (_ident102999_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id102996_))))
                      (let ((__tmp113265
                             (let ((__tmp113266
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid102998_ '()))))
                               (declare (not safe))
                               (cons _ident102999_ __tmp113266))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp113265)))))
                 (_generate*102795_
                  (lambda (_all102964_)
                    (let* ((_all102965102973_ _all102964_)
                           (_else102967102981_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all102964_))))
                           (_K102969102986_
                            (lambda (_one102984_) _one102984_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all102965102973_))
                          (let ((_hd102970102989_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all102965102973_)))
                                (_tl102971102991_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all102965102973_))))
                            (let ((_one102994_ _hd102970102989_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl102971102991_))
                                  (let ()
                                    (declare (not safe))
                                    (_K102969102986_ _one102994_))
                                  (let ()
                                    (declare (not safe))
                                    (_else102967102981_)))))
                          (let ()
                            (declare (not safe))
                            (_else102967102981_)))))))
          (let* ((_g102797102814_
                  (lambda (_g102798102811_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102798102811_))))
                 (_g102796102961_
                  (lambda (_g102798102817_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102798102817_))
                        (let ((_e102803102819_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102798102817_))))
                          (let ((_hd102802102822_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102803102819_)))
                                (_tl102801102824_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102803102819_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102801102824_))
                                (let ((_e102806102827_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102801102824_))))
                                  (let ((_hd102805102830_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102806102827_)))
                                        (_tl102804102832_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102806102827_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102804102832_))
                                        (let ((_e102809102835_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102804102832_))))
                                          (let ((_hd102808102838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102809102835_)))
                                                (_tl102807102840_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102809102835_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102807102840_))
                                                ((lambda (_L102843_ _L102844_)
                                                   (let _lp102860_ ((_rest102862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L102844_)
                            (_r102863_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx112394112395_
                                                             _rest102862_)
                                                            (_g102868102885_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx112394112395_)))))
               (let ((___kont112396112397_
                      (lambda (_L102948_)
                        (let ()
                          (declare (not safe))
                          (_lp102860_ _L102948_ _r102863_))))
                     (___kont112398112399_
                      (lambda (_L102921_ _L102922_)
                        (let ((__tmp113267
                               (let ((__tmp113268
                                      (let ()
                                        (declare (not safe))
                                        (_generate1102794_ _L102922_))))
                                 (declare (not safe))
                                 (cons __tmp113268 _r102863_))))
                          (declare (not safe))
                          (_lp102860_ _L102921_ __tmp113267))))
                     (___kont112400112401_
                      (lambda (_L102897_)
                        (let ((__tmp113269
                               (let ((__tmp113270
                                      (let ((__tmp113271
                                             (let ()
                                               (declare (not safe))
                                               (_generate1102794_ _L102897_))))
                                        (declare (not safe))
                                        (cons __tmp113271 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp113270 _r102863_))))
                          (declare (not safe))
                          (_generate*102795_ __tmp113269))))
                     (___kont112402112403_
                      (lambda ()
                        (let ((__tmp113272 (reverse _r102863_)))
                          (declare (not safe))
                          (_generate*102795_ __tmp113272)))))
                 (let ((_g102866102908_
                        (lambda ()
                          (let ((_L102897_ ___stx112394112395_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L102897_))
                                (___kont112400112401_ _L102897_)
                                (___kont112402112403_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx112394112395_))
                       (let ((_e102873102937_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx112394112395_))))
                         (let ((_tl102871102942_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e102873102937_)))
                               (_hd102872102940_
                                (let ()
                                  (declare (not safe))
                                  (##car _e102873102937_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd102872102940_))
                               (let ((_e102874102945_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd102872102940_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e102874102945_ '#f))
                                     (___kont112396112397_ _tl102871102942_)
                                     (___kont112398112399_
                                      _tl102871102942_
                                      _hd102872102940_)))
                               (___kont112398112399_
                                _tl102871102942_
                                _hd102872102940_))))
                       (let () (declare (not safe)) (_g102866102908_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd102808102838_
                                                 _hd102805102830_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102797102814_
                                                   _g102798102817_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102797102814_ _g102798102817_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102797102814_ _g102798102817_)))))
                        (let ()
                          (declare (not safe))
                          (_g102797102814_ _g102798102817_))))))
            (declare (not safe))
            (_g102796102961_ _stx102792_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self102688_ _stx102689_)
        (let* ((_g102691102708_
                (lambda (_g102692102705_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102692102705_))))
               (_g102690102788_
                (lambda (_g102692102711_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102692102711_))
                      (let ((_e102697102713_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102692102711_))))
                        (let ((_hd102696102716_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102697102713_)))
                              (_tl102695102718_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102697102713_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102695102718_))
                              (let ((_e102700102721_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102695102718_))))
                                (let ((_hd102699102724_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102700102721_)))
                                      (_tl102698102726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102700102721_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102698102726_))
                                      (let ((_e102703102729_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102698102726_))))
                                        (let ((_hd102702102732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102703102729_)))
                                              (_tl102701102734_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102703102729_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102701102734_))
                                              ((lambda (_L102737_ _L102738_)
                                                 (let* ((_eid102753_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L102738_)))
                                                        (_phi102755_
                                                         (let ((__tmp113273
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp113273
                                                                '1)))
                                                        (_block102757_
                                                         (let ((__tmp113274
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self102688_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp113274 _phi102755_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g102760102767_
                                                           (lambda (_g102761102764_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g102761102764_))))
                  (_g102759102785_
                   (lambda (_g102761102770_)
                     ((lambda (_L102772_)
                        (let ()
                          (let ((__tmp113279
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self102688_ 'state)))
                                (__tmp113275
                                 (let ((__tmp113278
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp113276
                                        (let ((__tmp113277
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L102737_ '()))))
                                          (declare (not safe))
                                          (cons _L102772_ __tmp113277))))
                                   (declare (not safe))
                                   (cons __tmp113278 __tmp113276))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp113279
                             _phi102755_
                             __tmp113275))))
                      _g102761102770_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g102759102785_
                                                      _eid102753_))
                                                   (if _block102757_
                                                       (let ((__tmp113283
                                                              (let ((__tmp113289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113290
                                    (let ((__tmp113291
                                           (let ((__tmp113292
                                                  (let ((__tmp113297
                                                         (let ((__tmp113298
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp113298)))
                (__tmp113293
                 (let ((__tmp113294
                        (let ((__tmp113295
                               (let ((__tmp113296
                                      (string->symbol _block102757_)))
                                 (declare (not safe))
                                 (cons __tmp113296 '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp113295))))
                   (declare (not safe))
                   (cons __tmp113294 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113297
                                                          __tmp113293))))
                                             (declare (not safe))
                                             (cons '%#call __tmp113292))))
                                      (declare (not safe))
                                      (cons __tmp113291 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp113290)))
                            (__tmp113284
                             (let ((__tmp113285
                                    (let ((__tmp113286
                                           (let ((__tmp113288
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L102738_)))
                                                 (__tmp113287
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid102753_ '()))))
                                             (declare (not safe))
                                             (cons __tmp113288 __tmp113287))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp113286))))
                               (declare (not safe))
                               (cons __tmp113285 '()))))
                        (declare (not safe))
                        (cons __tmp113289 __tmp113284))))
                 (declare (not safe))
                 (cons '%#begin __tmp113283))
               (let ((__tmp113280
                      (let ((__tmp113282
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L102738_)))
                            (__tmp113281
                             (let ()
                               (declare (not safe))
                               (cons _eid102753_ '()))))
                        (declare (not safe))
                        (cons __tmp113282 __tmp113281))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp113280)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd102702102732_
                                               _hd102699102724_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102691102708_
                                                 _g102692102711_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102691102708_ _g102692102711_)))))
                              (let ()
                                (declare (not safe))
                                (_g102691102708_ _g102692102711_)))))
                      (let ()
                        (declare (not safe))
                        (_g102691102708_ _g102692102711_))))))
          (declare (not safe))
          (_g102690102788_ _stx102689_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self102620_ _stx102621_)
        (let* ((_g102623102640_
                (lambda (_g102624102637_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102624102637_))))
               (_g102622102685_
                (lambda (_g102624102643_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102624102643_))
                      (let ((_e102629102645_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102624102643_))))
                        (let ((_hd102628102648_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102629102645_)))
                              (_tl102627102650_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102629102645_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102627102650_))
                              (let ((_e102632102653_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102627102650_))))
                                (let ((_hd102631102656_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102632102653_)))
                                      (_tl102630102658_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102632102653_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102630102658_))
                                      (let ((_e102635102661_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102630102658_))))
                                        (let ((_hd102634102664_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102635102661_)))
                                              (_tl102633102666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102635102661_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102633102666_))
                                              ((lambda (_L102669_ _L102670_)
                                                 (let ((__tmp113299
                                                        (let ((__tmp113302
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L102670_)))
                      (__tmp113300
                       (let ((__tmp113301
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L102669_))))
                         (declare (not safe))
                         (cons __tmp113301 '()))))
                  (declare (not safe))
                  (cons __tmp113302 __tmp113300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp113299)))
                                               _hd102634102664_
                                               _hd102631102656_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102623102640_
                                                 _g102624102643_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102623102640_ _g102624102643_)))))
                              (let ()
                                (declare (not safe))
                                (_g102623102640_ _g102624102643_)))))
                      (let ()
                        (declare (not safe))
                        (_g102623102640_ _g102624102643_))))))
          (declare (not safe))
          (_g102622102685_ _stx102621_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self102617_ _stx102618_)
        (let ((__tmp113304
               (let () (declare (not safe)) (slot-ref__0 _self102617_ 'state)))
              (__tmp113303 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp113304 __tmp113303 _stx102618_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self102617_ _stx102618_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self102614_ _stx102615_)
        (let ((__tmp113306
               (let () (declare (not safe)) (slot-ref__0 _self102614_ 'state)))
              (__tmp113305 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp113306 __tmp113305 _stx102615_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp113309 (list))
            (__tmp113307
             (let ((__tmp113308
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113308 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp113309
         '(src n open blocks)
         __tmp113307
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args102611_
        (apply make-instance gxc#meta-state::t _$args102611_)))
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
      (lambda (_self102608_ _ctx102609_)
        (if (let ((__tmp113318
                   (let ()
                     (declare (not safe))
                     (##structure-length _self102608_))))
              (declare (not safe))
              (##fx< '4 __tmp113318))
            (begin
              (let ((__tmp113312
                     (let ((__tmp113313
                            (##structure-ref
                             _ctx102609_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp113313)))
                    (__tmp113311
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102608_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102608_
                 __tmp113312
                 '1
                 __tmp113311
                 '#f))
              (let ((__tmp113314
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102608_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102608_
                 '1
                 '2
                 __tmp113314
                 '#f))
              (let ((__tmp113316
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113315
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102608_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102608_
                 __tmp113316
                 '3
                 __tmp113315
                 '#f))
              (let ((__tmp113317
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102608_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102608_
                 '()
                 '4
                 __tmp113317
                 '#f)))
            (let ((__tmp113310
                   (let ()
                     (declare (not safe))
                     (##vector-length _self102608_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self102608_
                     '4
                     __tmp113310)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp113321 (list))
            (__tmp113319
             (let ((__tmp113320
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113320 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp113321
         '(ctx phi n code)
         __tmp113319
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args102483_
        (apply make-instance gxc#meta-state-block::t _$args102483_)))
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
      (lambda (_state102442_ _phi102443_)
        (let* ((_state102444102452_ _state102442_)
               (_E102446102456_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state102444102452_))))
               (_K102447102465_
                (lambda (_open102459_ _n102460_ _src102461_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open102459_ _phi102443_))
                      '#f
                      (let ((_block-ref102463_
                             (string-append
                              _src102461_
                              '"--"
                              (number->string _n102460_))))
                        (##structure-set!
                         _state102442_
                         (let () (declare (not safe)) (fx+ _n102460_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp113322
                               (let ((__tmp113323
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp113323
                                  _phi102443_
                                  _n102460_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open102459_ _phi102443_ __tmp113322))
                        _block-ref102463_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state102444102452_
                 'gxc#meta-state::t))
              (let* ((_e102448102468_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102444102452_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src102471_ _e102448102468_)
                     (_e102449102473_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102444102452_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n102476_ _e102449102473_)
                     (_e102450102478_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102444102452_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open102481_ _e102450102478_))
                (declare (not safe))
                (_K102447102465_ _open102481_ _n102476_ _src102471_))
              (let () (declare (not safe)) (_E102446102456_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state102436_ _phi102437_ _stx102438_)
        (let ((_block102440_
               (let ((__tmp113324
                      (##structure-ref
                       _state102436_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp113324 _phi102437_))))
          (##structure-set!
           _block102440_
           (let ((__tmp113325
                  (##structure-ref
                   _block102440_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx102438_ __tmp113325))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state102431_)
        (##structure-set!
         _state102431_
         (let ((__tmp113328
                (lambda (_g113329_ _block102433_ _r102434_)
                  (let ()
                    (declare (not safe))
                    (cons _block102433_ _r102434_))))
               (__tmp113327
                (##structure-ref _state102431_ '4 gxc#meta-state::t '#f))
               (__tmp113326
                (##structure-ref _state102431_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp113328 __tmp113327 __tmp113326))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state102431_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state102383_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state102383_))
        (let ((__tmp113331
               (lambda (_block102385_ _r102386_)
                 (let* ((_block102387102396_ _block102385_)
                        (_E102389102400_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block102387102396_))))
                        (_K102390102408_
                         (lambda (_code102403_
                                  _n102404_
                                  _phi102405_
                                  _ctx102406_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code102403_))
                               _r102386_
                               (let ((__tmp113332
                                      (let ((__tmp113333
                                             (let ((__tmp113334
                                                    (let ((__tmp113335
                                                           (let ((__tmp113336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp113337 (reverse _code102403_)))
                            (declare (not safe))
                            (cons '%#begin __tmp113337))))
                     (declare (not safe))
                     (cons __tmp113336 '()))))
              (declare (not safe))
              (cons _n102404_ __tmp113335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi102405_
                                                     __tmp113334))))
                                        (declare (not safe))
                                        (cons _ctx102406_ __tmp113333))))
                                 (declare (not safe))
                                 (cons __tmp113332 _r102386_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block102387102396_
                          'gxc#meta-state-block::t))
                       (let* ((_e102391102411_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102387102396_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx102414_ _e102391102411_)
                              (_e102392102416_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102387102396_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi102419_ _e102392102416_)
                              (_e102393102421_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102387102396_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n102424_ _e102393102421_)
                              (_e102394102426_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102387102396_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code102429_ _e102394102426_))
                         (declare (not safe))
                         (_K102390102408_
                          _code102429_
                          _n102424_
                          _phi102419_
                          _ctx102414_))
                       (let () (declare (not safe)) (_E102389102400_))))))
              (__tmp113330
               (##structure-ref _state102383_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp113331 '() __tmp113330))))
    (define gxc#collect-expression-refs
      (lambda (_stx102379_)
        (let ((_ht102381_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx102379_ 'table: _ht102381_))
          _ht102381_)))
    (define gxc#collect-refs-ref%
      (lambda (_self102322_ _stx102323_)
        (let* ((_g102325102338_
                (lambda (_g102326102335_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102326102335_))))
               (_g102324102376_
                (lambda (_g102326102341_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102326102341_))
                      (let ((_e102330102343_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102326102341_))))
                        (let ((_hd102329102346_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102330102343_)))
                              (_tl102328102348_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102330102343_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102328102348_))
                              (let ((_e102333102351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102328102348_))))
                                (let ((_hd102332102354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102333102351_)))
                                      (_tl102331102356_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102333102351_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102331102356_))
                                      ((lambda (_L102359_)
                                         (let* ((_bind102371_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L102359_)))
                                                (_eid102373_
                                                 (if _bind102371_
                                                     (##structure-ref
                                                      _bind102371_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L102359_)))))
                                           (let ((__tmp113338
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self102322_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp113338
                                              _eid102373_
                                              _eid102373_))))
                                       _hd102332102354_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102325102338_ _g102326102341_)))))
                              (let ()
                                (declare (not safe))
                                (_g102325102338_ _g102326102341_)))))
                      (let ()
                        (declare (not safe))
                        (_g102325102338_ _g102326102341_))))))
          (declare (not safe))
          (_g102324102376_ _stx102323_))))
    (define gxc#collect-refs-setq%
      (lambda (_self102249_ _stx102250_)
        (let* ((_g102252102269_
                (lambda (_g102253102266_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102253102266_))))
               (_g102251102319_
                (lambda (_g102253102272_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102253102272_))
                      (let ((_e102258102274_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102253102272_))))
                        (let ((_hd102257102277_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102258102274_)))
                              (_tl102256102279_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102258102274_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102256102279_))
                              (let ((_e102261102282_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102256102279_))))
                                (let ((_hd102260102285_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102261102282_)))
                                      (_tl102259102287_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102261102282_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102259102287_))
                                      (let ((_e102264102290_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102259102287_))))
                                        (let ((_hd102263102293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102264102290_)))
                                              (_tl102262102295_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102264102290_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102262102295_))
                                              ((lambda (_L102298_ _L102299_)
                                                 (let* ((_bind102314_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L102299_)))
                                                        (_eid102316_
                                                         (if _bind102314_
                                                             (##structure-ref
                                                              _bind102314_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L102299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp113339
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self102249_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp113339
                                                      _eid102316_
                                                      _eid102316_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self102249_
                                                      _L102298_))))
                                               _hd102263102293_
                                               _hd102260102285_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102252102269_
                                                 _g102253102272_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102252102269_ _g102253102272_)))))
                              (let ()
                                (declare (not safe))
                                (_g102252102269_ _g102253102272_)))))
                      (let ()
                        (declare (not safe))
                        (_g102252102269_ _g102253102272_))))))
          (declare (not safe))
          (_g102251102319_ _stx102250_))))
    (define gxc#find-runtime-begin%
      (lambda (_self102206_ _stx102207_)
        (let* ((_g102209102219_
                (lambda (_g102210102216_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102210102216_))))
               (_g102208102246_
                (lambda (_g102210102222_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102210102222_))
                      (let ((_e102214102224_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102210102222_))))
                        (let ((_hd102213102227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102214102224_)))
                              (_tl102212102229_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102214102224_))))
                          ((lambda (_L102232_)
                             (let ((__tmp113340
                                    (lambda (_g102241102243_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self102206_
                                         _g102241102243_)))))
                               (declare (not safe))
                               (ormap1 __tmp113340 _L102232_)))
                           _tl102212102229_)))
                      (let ()
                        (declare (not safe))
                        (_g102209102219_ _g102210102222_))))))
          (declare (not safe))
          (_g102208102246_ _stx102207_))))
    (define gxc#count-values-single% (lambda (_self102203_ _stx102204_) '1))
    (define gxc#count-values-call%
      (lambda (_self102069_ _stx102070_)
        (let* ((___stx112424112425_ _stx102070_)
               (_g102073102102_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112424112425_)))))
          (let ((___kont112426112427_
                 (lambda (_L102170_ _L102171_)
                   (length (let ((__tmp113341
                                  (lambda (_g102192102195_ _g102193102197_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g102192102195_
                                            _g102193102197_)))))
                             (declare (not safe))
                             (foldr1 __tmp113341 '() _L102170_)))))
                (___kont112430112431_ (lambda () '#f)))
            (let ((___match112469112470_
                   (lambda (_e102079102114_
                            _hd102078102117_
                            _tl102077102119_
                            _e102082102122_
                            _hd102081102125_
                            _tl102080102127_
                            _e102085102130_
                            _hd102084102133_
                            _tl102083102135_
                            _e102088102138_
                            _hd102087102141_
                            _tl102086102143_
                            ___splice112428112429_
                            _target102089102146_
                            _tl102091102148_)
                     (letrec ((_loop102092102151_
                               (lambda (_hd102090102154_ _rand102096102156_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd102090102154_))
                                     (let ((_e102093102159_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd102090102154_))))
                                       (let ((_lp-tl102095102164_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e102093102159_)))
                                             (_lp-hd102094102162_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e102093102159_))))
                                         (let ((__tmp113342
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd102094102162_
                                                        _rand102096102156_))))
                                           (declare (not safe))
                                           (_loop102092102151_
                                            _lp-tl102095102164_
                                            __tmp113342))))
                                     (let ((_rand102097102167_
                                            (reverse _rand102096102156_)))
                                       (let ((_L102170_ _rand102097102167_)
                                             (_L102171_ _hd102087102141_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L102171_
                                                'values))
                                             (___kont112426112427_
                                              _L102170_
                                              _L102171_)
                                             (___kont112430112431_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop102092102151_ _target102089102146_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112424112425_))
                  (let ((_e102079102114_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112424112425_))))
                    (let ((_tl102077102119_
                           (let ()
                             (declare (not safe))
                             (##cdr _e102079102114_)))
                          (_hd102078102117_
                           (let ()
                             (declare (not safe))
                             (##car _e102079102114_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl102077102119_))
                          (let ((_e102082102122_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl102077102119_))))
                            (let ((_tl102080102127_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e102082102122_)))
                                  (_hd102081102125_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e102082102122_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd102081102125_))
                                  (let ((_e102085102130_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd102081102125_))))
                                    (let ((_tl102083102135_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e102085102130_)))
                                          (_hd102084102133_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e102085102130_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd102084102133_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd102084102133_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl102083102135_))
                                                  (let ((_e102088102138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl102083102135_))))
                                                    (let ((_tl102086102143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e102088102138_)))
                                                          (_hd102087102141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e102088102138_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl102086102143_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl102080102127_))
                      (let ((___splice112428112429_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl102080102127_ '0))))
                        (let ((_tl102091102148_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice112428112429_ '1)))
                              (_target102089102146_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice112428112429_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl102091102148_))
                              (___match112469112470_
                               _e102079102114_
                               _hd102078102117_
                               _tl102077102119_
                               _e102082102122_
                               _hd102081102125_
                               _tl102080102127_
                               _e102085102130_
                               _hd102084102133_
                               _tl102083102135_
                               _e102088102138_
                               _hd102087102141_
                               _tl102086102143_
                               ___splice112428112429_
                               _target102089102146_
                               _tl102091102148_)
                              (___kont112430112431_))))
                      (___kont112430112431_))
                  (___kont112430112431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112430112431_))
                                              (___kont112430112431_))
                                          (___kont112430112431_))))
                                  (___kont112430112431_))))
                          (___kont112430112431_))))
                  (___kont112430112431_)))))))
    (define gxc#count-values-if%
      (lambda (_self101972_ _stx101973_)
        (let* ((_g101975101996_
                (lambda (_g101976101993_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101976101993_))))
               (_g101974102066_
                (lambda (_g101976101999_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101976101999_))
                      (let ((_e101982102001_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101976101999_))))
                        (let ((_hd101981102004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101982102001_)))
                              (_tl101980102006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101982102001_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101980102006_))
                              (let ((_e101985102009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101980102006_))))
                                (let ((_hd101984102012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101985102009_)))
                                      (_tl101983102014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101985102009_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101983102014_))
                                      (let ((_e101988102017_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101983102014_))))
                                        (let ((_hd101987102020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101988102017_)))
                                              (_tl101986102022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101988102017_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl101986102022_))
                                              (let ((_e101991102025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl101986102022_))))
                                                (let ((_hd101990102028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e101991102025_)))
                                                      (_tl101989102030_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e101991102025_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl101989102030_))
                                                      ((lambda (_L102033_
                                                                _L102034_
                                                                _L102035_)
                                                         (let ((_c1102052102054_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self101972_ _L102034_))))
                   (if _c1102052102054_
                       (let* ((_c1102057_ _c1102052102054_)
                              (_c2102058102060_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self101972_ _L102033_))))
                         (if _c2102058102060_
                             (let ((_c2102063_ _c2102058102060_))
                               (if (fx= _c1102057_ _c2102063_) _c1102057_ '#f))
                             '#f))
                       '#f)))
               _hd101990102028_
               _hd101987102020_
               _hd101984102012_)
              (let ()
                (declare (not safe))
                (_g101975101996_ _g101976101999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g101975101996_
                                                 _g101976101999_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101975101996_ _g101976101999_)))))
                              (let ()
                                (declare (not safe))
                                (_g101975101996_ _g101976101999_)))))
                      (let ()
                        (declare (not safe))
                        (_g101975101996_ _g101976101999_))))))
          (declare (not safe))
          (_g101974102066_ _stx101973_))))))
