(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710238838)
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
        (letrec ((_hash-e111079_
                  (lambda (_id111081_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id111081_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e111079_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp112437 (list gxc#::void::t))
            (__tmp112435
             (let ((__tmp112436
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112436 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp112437
         '()
         __tmp112435
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args111075_
        (apply make-instance gxc#::collect-bindings::t _$args111075_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp112438
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
        (make-promise __tmp112438)))
    (define gxc#apply-collect-bindings
      (lambda (_stx111067_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self111070_
                (let ((__obj112411
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj112411))
               (__tmp112439
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111070_ _stx111067_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112439
           gxc#current-compile-method
           _self111070_))))
    (define gxc#::lift-modules::t
      (let ((__tmp112442 (list gxc#::void::t))
            (__tmp112440
             (let ((__tmp112441
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112441 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp112442
         '(modules)
         __tmp112440
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args111064_
        (apply make-instance gxc#::lift-modules::t _$args111064_)))
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
      (let ((__tmp112443
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
        (make-promise __tmp112443)))
    (define gxc#apply-lift-modules__%
      (lambda (_g112444_ _modules111035111038_ _stx111040_)
        (let ((_modules111043_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules111035111038_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules111035111038_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self111045_
                  (let ((__obj112413
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112413
                       _modules111043_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj112413))
                 (__tmp112445
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self111045_ _stx111040_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112445
             gxc#current-compile-method
             _self111045_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys111034111052_ . _args111054_)
        (apply gxc#apply-lift-modules__%
               _keys111034111052_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys111034111052_
                  'modules:
                  absent-value))
               _args111054_)))
    (define gxc#apply-lift-modules
      (lambda _args111036111060_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args111036111060_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp112448 (list))
            (__tmp112446
             (let ((__tmp112447
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112447 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp112448
         '()
         __tmp112446
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args111030_
        (apply make-instance gxc#::find-runtime-code::t _$args111030_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp112449
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
        (make-promise __tmp112449)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx111022_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self111025_
                (let ((__obj112415
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj112415))
               (__tmp112450
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111025_ _stx111022_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112450
           gxc#current-compile-method
           _self111025_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp112453 (list gxc#::false::t))
            (__tmp112451
             (let ((__tmp112452
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112452 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp112453
         '()
         __tmp112451
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args111019_
        (apply make-instance gxc#::find-lambda-expression::t _$args111019_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp112454
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
        (make-promise __tmp112454)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx111011_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self111014_
                (let ((__obj112417
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj112417))
               (__tmp112455
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111014_ _stx111011_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112455
           gxc#current-compile-method
           _self111014_))))
    (define gxc#::count-values::t
      (let ((__tmp112458 (list gxc#::false-expression::t))
            (__tmp112456
             (let ((__tmp112457
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112457 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp112458
         '()
         __tmp112456
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args111008_
        (apply make-instance gxc#::count-values::t _$args111008_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp112459
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
        (make-promise __tmp112459)))
    (define gxc#apply-count-values
      (lambda (_stx111000_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self111003_
                (let ((__obj112419
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj112419))
               (__tmp112460
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self111003_ _stx111000_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112460
           gxc#current-compile-method
           _self111003_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp112461 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp112461
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args110997_
        (apply make-instance gxc#::generate-runtime-empty::t _$args110997_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp112462
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
        (make-promise __tmp112462)))
    (define gxc#::generate-loader::t
      (let ((__tmp112465 (list gxc#::generate-runtime-empty::t))
            (__tmp112463
             (let ((__tmp112464
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112464 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp112465
         '()
         __tmp112463
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args110993_
        (apply make-instance gxc#::generate-loader::t _$args110993_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp112466
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
        (make-promise __tmp112466)))
    (define gxc#apply-generate-loader
      (lambda (_stx110985_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self110988_
                (let ((__obj112422
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj112422))
               (__tmp112467
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self110988_ _stx110985_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112467
           gxc#current-compile-method
           _self110988_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp112468 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp112468
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args110982_
        (apply make-instance gxc#::generate-runtime::t _$args110982_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp112469
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
        (make-promise __tmp112469)))
    (define gxc#apply-generate-runtime
      (lambda (_stx110974_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self110977_
                (let ((__obj112424
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj112424))
               (__tmp112470
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self110977_ _stx110974_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112470
           gxc#current-compile-method
           _self110977_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp112473 (list gxc#::generate-runtime::t))
            (__tmp112471
             (let ((__tmp112472
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112472 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp112473
         '()
         __tmp112471
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args110971_
        (apply make-instance gxc#::generate-runtime-phi::t _$args110971_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp112474
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
        (make-promise __tmp112474)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx110963_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self110966_
                (let ((__obj112426
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj112426))
               (__tmp112475
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self110966_ _stx110963_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp112475
           gxc#current-compile-method
           _self110966_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp112476 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp112476
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args110960_
        (apply make-instance gxc#::collect-expression-refs::t _$args110960_)))
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
      (let ((__tmp112477
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
        (make-promise __tmp112477)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_g112478_ _table110931110934_ _stx110936_)
        (let ((_table110939_
               (if (let ()
                     (declare (not safe))
                     (eq? _table110931110934_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table110931110934_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self110941_
                  (let ((__obj112428
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112428
                       _table110939_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj112428))
                 (__tmp112479
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self110941_ _stx110936_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112479
             gxc#current-compile-method
             _self110941_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys110930110948_ . _args110950_)
        (apply gxc#apply-collect-expression-refs__%
               _keys110930110948_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys110930110948_ 'table: absent-value))
               _args110950_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args110932110956_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args110932110956_)))
    (define gxc#::generate-meta::t
      (let ((__tmp112482 (list gxc#::void-expression::t))
            (__tmp112480
             (let ((__tmp112481
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112481 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp112482
         '(state)
         __tmp112480
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args110926_
        (apply make-instance gxc#::generate-meta::t _$args110926_)))
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
      (let ((__tmp112483
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
        (make-promise __tmp112483)))
    (define gxc#apply-generate-meta__%
      (lambda (_g112484_ _state110897110900_ _stx110902_)
        (let ((_state110905_
               (if (let ()
                     (declare (not safe))
                     (eq? _state110897110900_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state110897110900_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self110907_
                  (let ((__obj112430
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112430
                       _state110905_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj112430))
                 (__tmp112485
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self110907_ _stx110902_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112485
             gxc#current-compile-method
             _self110907_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys110896110914_ . _args110916_)
        (apply gxc#apply-generate-meta__%
               _keys110896110914_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys110896110914_ 'state: absent-value))
               _args110916_)))
    (define gxc#apply-generate-meta
      (lambda _args110898110922_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args110898110922_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp112488 (list))
            (__tmp112486
             (let ((__tmp112487
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp112487 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp112488
         '(state)
         __tmp112486
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args110892_
        (apply make-instance gxc#::generate-meta-phi::t _$args110892_)))
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
      (let ((__tmp112489
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
        (make-promise __tmp112489)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_g112490_ _state110863110866_ _stx110868_)
        (let ((_state110871_
               (if (let ()
                     (declare (not safe))
                     (eq? _state110863110866_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state110863110866_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self110873_
                  (let ((__obj112432
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj112432
                       _state110871_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj112432))
                 (__tmp112491
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self110873_ _stx110868_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp112491
             gxc#current-compile-method
             _self110873_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys110862110880_ . _args110882_)
        (apply gxc#apply-generate-meta-phi__%
               _keys110862110880_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys110862110880_ 'state: absent-value))
               _args110882_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args110864110888_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args110864110888_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self110791_ _stx110792_)
        (let* ((_g110794110811_
                (lambda (_g110795110808_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110795110808_))))
               (_g110793110858_
                (lambda (_g110795110814_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110795110814_))
                      (let ((_e110800110816_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110795110814_))))
                        (let ((_hd110799110819_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110800110816_)))
                              (_tl110798110821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110800110816_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110798110821_))
                              (let ((_e110803110824_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110798110821_))))
                                (let ((_hd110802110827_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110803110824_)))
                                      (_tl110801110829_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110803110824_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110801110829_))
                                      (let ((_e110806110832_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110801110829_))))
                                        (let ((_hd110805110835_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110806110832_)))
                                              (_tl110804110837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110806110832_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110804110837_))
                                              ((lambda (_L110840_ _L110841_)
                                                 (let ((__tmp112492
                                                        (lambda (_bind110856_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind110856_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind110856_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp112492
                                                    _L110841_)))
                                               _hd110805110835_
                                               _hd110802110827_)
                                              (let ()
                                                (declare (not safe))
                                                (_g110794110811_
                                                 _g110795110814_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110794110811_ _g110795110814_)))))
                              (let ()
                                (declare (not safe))
                                (_g110794110811_ _g110795110814_)))))
                      (let ()
                        (declare (not safe))
                        (_g110794110811_ _g110795110814_))))))
          (declare (not safe))
          (_g110793110858_ _stx110792_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self110723_ _stx110724_)
        (let* ((_g110726110743_
                (lambda (_g110727110740_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110727110740_))))
               (_g110725110788_
                (lambda (_g110727110746_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110727110746_))
                      (let ((_e110732110748_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110727110746_))))
                        (let ((_hd110731110751_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110732110748_)))
                              (_tl110730110753_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110732110748_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110730110753_))
                              (let ((_e110735110756_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110730110753_))))
                                (let ((_hd110734110759_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110735110756_)))
                                      (_tl110733110761_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110735110756_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110733110761_))
                                      (let ((_e110738110764_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110733110761_))))
                                        (let ((_hd110737110767_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110738110764_)))
                                              (_tl110736110769_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110738110764_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110736110769_))
                                              ((lambda (_L110772_ _L110773_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L110773_
                                                    '#t)))
                                               _hd110737110767_
                                               _hd110734110759_)
                                              (let ()
                                                (declare (not safe))
                                                (_g110726110743_
                                                 _g110727110746_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110726110743_ _g110727110746_)))))
                              (let ()
                                (declare (not safe))
                                (_g110726110743_ _g110727110746_)))))
                      (let ()
                        (declare (not safe))
                        (_g110726110743_ _g110727110746_))))))
          (declare (not safe))
          (_g110725110788_ _stx110724_))))
    (define gxc#lift-modules-module%
      (lambda (_self110665_ _stx110666_)
        (let* ((_g110668110682_
                (lambda (_g110669110679_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110669110679_))))
               (_g110667110720_
                (lambda (_g110669110685_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110669110685_))
                      (let ((_e110674110687_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110669110685_))))
                        (let ((_hd110673110690_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110674110687_)))
                              (_tl110672110692_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110674110687_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl110672110692_))
                              (let ((_e110677110695_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl110672110692_))))
                                (let ((_hd110676110698_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110677110695_)))
                                      (_tl110675110700_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110677110695_))))
                                  ((lambda (_L110703_ _L110704_)
                                     (let ((_ctx110717_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L110704_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self110665_ 'modules))
                                        (let ((__tmp112493
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self110665_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx110717_ __tmp112493)))
                                       (let ((__tmp112494
                                              (lambda ()
                                                (let ((__tmp112495
                                                       (##structure-ref
                                                        _ctx110717_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self110665_
                                                   __tmp112495)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp112494
                                          gx#current-expander-context
                                          _ctx110717_))))
                                   _tl110675110700_
                                   _hd110676110698_)))
                              (let ()
                                (declare (not safe))
                                (_g110668110682_ _g110669110685_)))))
                      (let ()
                        (declare (not safe))
                        (_g110668110682_ _g110669110685_))))))
          (declare (not safe))
          (_g110667110720_ _stx110666_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls110621110623_ (gxc#current-compile-decls)))
          (if _decls110621110623_
              (let ((_decls110626_ _decls110621110623_))
                (let _lp110628_ ((_rest110630_ _decls110626_))
                  (let* ((_rest110631110639_ _rest110630_)
                         (_else110633110647_ (lambda () '#f))
                         (_K110635110653_
                          (lambda (_decls110650_ _decl110651_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl110651_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl110651_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp110628_ _decls110650_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest110631110639_))
                        (let ((_hd110636110656_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest110631110639_)))
                              (_tl110637110658_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest110631110639_))))
                          (let* ((_decl110661_ _hd110636110656_)
                                 (_decls110663_ _tl110637110658_))
                            (declare (not safe))
                            (_K110635110653_ _decls110663_ _decl110661_)))
                        (let () (declare (not safe)) (_else110633110647_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id110615_ _syntax?110616_)
        (let ((_eid110618_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id110615_))
                '1
                gx#binding::t
                '#f))
              (_ht110619_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _eid110618_))
              '#!void
              (let ((__tmp112496
                     (let ((__tmp112497
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid110618_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp112497 _syntax?110616_))))
                (declare (not safe))
                (hash-put! _ht110619_ _eid110618_ __tmp112496))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1110608_ _id2110609_)
        (letrec ((_symbol-e110611_
                  (lambda (_id110613_)
                    (if (let () (declare (not safe)) (symbol? _id110613_))
                        _id110613_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id110613_))))))
          (let ((__tmp112499
                 (let () (declare (not safe)) (_symbol-e110611_ _id1110608_)))
                (__tmp112498
                 (let () (declare (not safe)) (_symbol-e110611_ _id2110609_))))
            (declare (not safe))
            (eq? __tmp112499 __tmp112498)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id110586_)
        (let ((_$e110588_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id110586_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id110586_))
                   '#f)))
          (if _$e110588_
              ((lambda (_bind110591_)
                 (let ((_eid110593_
                        (##structure-ref _bind110591_ '1 gx#binding::t '#f))
                       (_ht110594_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _eid110593_))
                       _eid110593_
                       (let ((_$e110596_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht110594_ _eid110593_))))
                         (if _$e110596_
                             (values _$e110596_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind110591_
                                    'gx#local-binding::t))
                                 (let ((_gid110599_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid110593_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht110594_
                                      _eid110593_
                                      _gid110599_))
                                   _gid110599_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind110591_
                                        'gx#module-binding::t))
                                     (let ((_gid110606_
                                            (let ((_$e110601_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind110591_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e110601_
                                                  ((lambda (_ns110604_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns110604_
                                                        '"#"
                                                        _eid110593_)))
                                                   _$e110601_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid110593_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht110594_
                                          _eid110593_
                                          _gid110606_))
                                       _gid110606_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id110586_
                                        _eid110593_
                                        _bind110591_)))))))))
               _$e110588_)
              (if (let ((__tmp112500
                         (let () (declare (not safe)) (gx#stx-e _id110586_))))
                    (declare (not safe))
                    (interned-symbol? __tmp112500))
                  (let () (declare (not safe)) (gx#stx-e _id110586_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id110586_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id110584_)
        (if (let () (declare (not safe)) (gx#identifier? _id110584_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id110584_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym110564_ _quote?110565_)
        (let* ((_ht110567_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e110569_
                (let ()
                  (declare (not safe))
                  (hash-get _ht110567_ _sym110564_))))
          (if _$e110569_
              (values _$e110569_)
              (let ((_g110572_
                     (if _quote?110565_
                         (let ((__tmp112501 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym110564_
                            '"__"
                            __tmp112501))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym110564_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht110567_ _sym110564_ _g110572_))
                _g110572_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym110577_)
        (let ((_quote?110579_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym110577_
           _quote?110579_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g112503_
        (let ((_g112502_ (let () (declare (not safe)) (##length _g112503_))))
          (cond ((let () (declare (not safe)) (##fx= _g112502_ 1))
                 (apply (lambda (_sym110577_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym110577_)))
                        _g112503_))
                ((let () (declare (not safe)) (##fx= _g112502_ 2))
                 (apply (lambda (_sym110581_ _quote?110582_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym110581_
                             _quote?110582_)))
                        _g112503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g112503_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id110561_)
        (let ((__tmp112504
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id110561_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp112504))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key110521_)
        (if (let () (declare (not safe)) (interned-symbol? _key110521_))
            _key110521_
            (if (uninterned-symbol? _key110521_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key110521_))
                (let* ((_key110522110529_ _key110521_)
                       (_E110524110533_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key110522110529_))))
                       (_K110525110549_
                        (lambda (_mark110536_ _eid110537_)
                          (let ((_$e110539_
                                 (##structure-ref
                                  _mark110536_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e110539_
                                ((lambda (_ht110542_)
                                   (let ((_$e110544_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht110542_
                                             _eid110537_))))
                                     (if _$e110544_
                                         ((lambda (_id110547_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _id110547_))
                                                _id110547_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id110547_))))
                                          _$e110544_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid110537_)))))
                                 _$e110539_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid110537_)))))))
                  (if (let () (declare (not safe)) (##pair? _key110522110529_))
                      (let ((_hd110526110552_
                             (let ()
                               (declare (not safe))
                               (##car _key110522110529_)))
                            (_tl110527110554_
                             (let ()
                               (declare (not safe))
                               (##cdr _key110522110529_))))
                        (let* ((_eid110557_ _hd110526110552_)
                               (_mark110559_ _tl110527110554_))
                          (declare (not safe))
                          (_K110525110549_ _mark110559_ _eid110557_)))
                      (let () (declare (not safe)) (_E110524110533_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top110508_)
        (if _top110508_
            (let ((_ns110510_
                   (##structure-ref
                    (let ((__tmp112506 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp112506))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi110511_ (gx#current-expander-phi)))
              (if _ns110510_
                  (if (fxpositive? _phi110511_)
                      (let ((__tmp112512 (number->string _phi110511_))
                            (__tmp112511 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns110510_
                         '"["
                         __tmp112512
                         '"]#_"
                         __tmp112511
                         '"_"))
                      (let ((__tmp112510 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns110510_ '"#_" __tmp112510 '"_")))
                  (if (fxpositive? _phi110511_)
                      (let ((__tmp112509 (number->string _phi110511_))
                            (__tmp112508 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp112509
                         '"]#_"
                         __tmp112508
                         '"_"))
                      (let ((__tmp112507 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp112507 '"_")))))
            (let ((__tmp112505 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp112505 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top110517_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top110517_))))
    (define gxc#generate-runtime-temporary
      (lambda _g112514_
        (let ((_g112513_ (let () (declare (not safe)) (##length _g112514_))))
          (cond ((let () (declare (not safe)) (##fx= _g112513_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g112514_))
                ((let () (declare (not safe)) (##fx= _g112513_ 1))
                 (apply (lambda (_top110519_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top110519_)))
                        _g112514_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g112514_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self110504_ _stx110505_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self110351_ _stx110352_)
        (letrec ((_simplify110354_
                  (lambda (_body110402_)
                    (let _lp110404_ ((_rest110406_ _body110402_)
                                     (_r110407_ '()))
                      (let* ((_rest110408110416_ _rest110406_)
                             (_else110410110424_
                              (lambda () (reverse _r110407_)))
                             (_K110412110492_
                              (lambda (_rest110427_ _hd110428_)
                                (let* ((_hd110429110445_ _hd110428_)
                                       (_else110433110453_
                                        (lambda ()
                                          (let ((__tmp112515
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd110428_
                                                         _r110407_))))
                                            (declare (not safe))
                                            (_lp110404_
                                             _rest110427_
                                             __tmp112515)))))
                                  (let ((_K110441110482_
                                         (lambda (_exprs110480_)
                                           (let ((__tmp112516
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest110427_
                                                            _exprs110480_))))
                                             (declare (not safe))
                                             (_lp110404_
                                              __tmp112516
                                              _r110407_))))
                                        (_K110436110466_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest110427_))
                                               (let ((__tmp112517
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd110428_
                                                              _r110407_))))
                                                 (declare (not safe))
                                                 (_lp110404_
                                                  _rest110427_
                                                  __tmp112517))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110404_
                                                  _rest110427_
                                                  _r110407_)))))
                                        (_K110435110458_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest110427_))
                                               (let ((__tmp112518
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd110428_
                                                              _r110407_))))
                                                 (declare (not safe))
                                                 (_lp110404_
                                                  _rest110427_
                                                  __tmp112518))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp110404_
                                                  _rest110427_
                                                  _r110407_))))))
                                    (let ((_try-match110432110461_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd110429110445_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K110435110458_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else110433110453_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd110429110445_))
                                          (let ((_tl110443110487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd110429110445_)))
                                                (_hd110442110485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd110429110445_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd110442110485_
                                                         'begin))
                                                (let ((_exprs110490_
                                                       _tl110443110487_))
                                                  (declare (not safe))
                                                  (_K110441110482_
                                                   _exprs110490_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd110442110485_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl110443110487_))
                                                        (let ((_tl110440110474_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl110443110487_))))
                  (if (let () (declare (not safe)) (##null? _tl110440110474_))
                      (let () (declare (not safe)) (_K110436110466_))
                      (let () (declare (not safe)) (_try-match110432110461_))))
                (let () (declare (not safe)) (_try-match110432110461_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match110432110461_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match110432110461_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest110408110416_))
                            (let ((_hd110413110495_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest110408110416_)))
                                  (_tl110414110497_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest110408110416_))))
                              (let* ((_hd110500_ _hd110413110495_)
                                     (_rest110502_ _tl110414110497_))
                                (declare (not safe))
                                (_K110412110492_ _rest110502_ _hd110500_)))
                            (let ()
                              (declare (not safe))
                              (_else110410110424_))))))))
          (let* ((_g110356110366_
                  (lambda (_g110357110363_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g110357110363_))))
                 (_g110355110399_
                  (lambda (_g110357110369_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g110357110369_))
                        (let ((_e110361110371_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g110357110369_))))
                          (let ((_hd110360110374_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110361110371_)))
                                (_tl110359110376_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110361110371_))))
                            ((lambda (_L110379_)
                               (let* ((_body110394_
                                       (map (lambda (_g110389110391_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self110351_
                                                 _g110389110391_)))
                                            _L110379_))
                                      (_body110396_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify110354_ _body110394_))))
                                 (if (fx= (length _body110396_) '1)
                                     (car _body110396_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body110396_)))))
                             _tl110359110376_)))
                        (let ()
                          (declare (not safe))
                          (_g110356110366_ _g110357110369_))))))
            (declare (not safe))
            (_g110355110399_ _stx110352_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self110312_ _stx110313_)
        (let* ((_g110315110325_
                (lambda (_g110316110322_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110316110322_))))
               (_g110314110348_
                (lambda (_g110316110328_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110316110328_))
                      (let ((_e110320110330_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110316110328_))))
                        (let ((_hd110319110333_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110320110330_)))
                              (_tl110318110335_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110320110330_))))
                          ((lambda (_L110338_)
                             (let ((__tmp112519
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L110338_))))
                               (declare (not safe))
                               (cons 'begin __tmp112519)))
                           _tl110318110335_)))
                      (let ()
                        (declare (not safe))
                        (_g110315110325_ _g110316110328_))))))
          (declare (not safe))
          (_g110314110348_ _stx110313_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self110076_ _stx110077_)
        (let* ((___stx111104111105_ _stx110077_)
               (_g110081110133_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx111104111105_)))))
          (let ((___kont111106111107_
                 (lambda (_L110294_ _L110295_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self110076_ _L110294_))))
                (___kont111108111109_
                 (lambda (_L110242_ _L110243_ _L110244_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self110076_ _L110242_))))
                (___kont111112111113_
                 (lambda (_L110162_ _L110163_)
                   (let ((_decls110178_ (map gx#syntax->datum _L110163_)))
                     (let ((__tmp112522
                            (lambda ()
                              (let ((__tmp112523
                                     (let ((__tmp112526
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls110178_)))
                                           (__tmp112524
                                            (let ((__tmp112525
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self110076_
                                                      _L110162_))))
                                              (declare (not safe))
                                              (cons __tmp112525 '()))))
                                       (declare (not safe))
                                       (cons __tmp112526 __tmp112524))))
                                (declare (not safe))
                                (cons 'begin __tmp112523))))
                           (__tmp112520
                            (let ((__tmp112521 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp112521 _decls110178_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp112522
                        gxc#current-compile-decls
                        __tmp112520))))))
            (let* ((___match111159111160_
                    (lambda (_e110099110186_
                             _hd110098110189_
                             _tl110097110191_
                             _e110102110194_
                             _hd110101110197_
                             _tl110100110199_
                             _e110105110202_
                             _hd110104110205_
                             _tl110103110207_
                             ___splice111110111111_
                             _target110106110210_
                             _tl110108110212_)
                      (letrec ((_loop110109110215_
                                (lambda (_hd110107110218_ _param110113110220_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd110107110218_))
                                      (let ((_e110110110223_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd110107110218_))))
                                        (let ((_lp-tl110112110228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110110110223_)))
                                              (_lp-hd110111110226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110110110223_))))
                                          (let ((__tmp112528
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd110111110226_
                                                         _param110113110220_))))
                                            (declare (not safe))
                                            (_loop110109110215_
                                             _lp-tl110112110228_
                                             __tmp112528))))
                                      (let ((_param110114110231_
                                             (reverse _param110113110220_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110100110199_))
                                            (let ((_e110117110234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110100110199_))))
                                              (let ((_tl110115110239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110117110234_)))
                                                    (_hd110116110237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110117110234_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110115110239_))
                                                    (let ((_L110242_
                                                           _hd110116110237_)
                                                          (_L110243_
                                                           _param110114110231_)
                                                          (_L110244_
                                                           _hd110104110205_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L110244_))
                       (let ((__tmp112527
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L110244_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp112527)))
                  (___kont111108111109_ _L110242_ _L110243_ _L110244_)
                  (___kont111112111113_ _hd110116110237_ _hd110101110197_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110081110133_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110081110133_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop110109110215_ _target110106110210_ '())))))
                   (___match111133111134_
                    (lambda (_e110087110270_
                             _hd110086110273_
                             _tl110085110275_
                             _e110090110278_
                             _hd110089110281_
                             _tl110088110283_
                             _e110093110286_
                             _hd110092110289_
                             _tl110091110291_)
                      (let ((_L110294_ _hd110092110289_)
                            (_L110295_ _hd110089110281_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L110295_))
                            (___kont111106111107_ _L110294_ _L110295_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd110089110281_))
                                (let ((_e110105110202_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd110089110281_))))
                                  (let ((_tl110103110207_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e110105110202_)))
                                        (_hd110104110205_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e110105110202_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl110103110207_))
                                        (let ((___splice111110111111_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl110103110207_
                                                  '0))))
                                          (let ((_tl110108110212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice111110111111_
                                                    '1)))
                                                (_target110106110210_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice111110111111_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110108110212_))
                                                (___match111159111160_
                                                 _e110087110270_
                                                 _hd110086110273_
                                                 _tl110085110275_
                                                 _e110090110278_
                                                 _hd110089110281_
                                                 _tl110088110283_
                                                 _e110105110202_
                                                 _hd110104110205_
                                                 _tl110103110207_
                                                 ___splice111110111111_
                                                 _target110106110210_
                                                 _tl110108110212_)
                                                (___kont111112111113_
                                                 _hd110092110289_
                                                 _hd110089110281_))))
                                        (___kont111112111113_
                                         _hd110092110289_
                                         _hd110089110281_))))
                                (___kont111112111113_
                                 _hd110092110289_
                                 _hd110089110281_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx111104111105_))
                  (let ((_e110087110270_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx111104111105_))))
                    (let ((_tl110085110275_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110087110270_)))
                          (_hd110086110273_
                           (let ()
                             (declare (not safe))
                             (##car _e110087110270_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110085110275_))
                          (let ((_e110090110278_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110085110275_))))
                            (let ((_tl110088110283_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110090110278_)))
                                  (_hd110089110281_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110090110278_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl110088110283_))
                                  (let ((_e110093110286_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl110088110283_))))
                                    (let ((_tl110091110291_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110093110286_)))
                                          (_hd110092110289_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110093110286_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl110091110291_))
                                          (___match111133111134_
                                           _e110087110270_
                                           _hd110086110273_
                                           _tl110085110275_
                                           _e110090110278_
                                           _hd110089110281_
                                           _tl110088110283_
                                           _e110093110286_
                                           _hd110092110289_
                                           _tl110091110291_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110089110281_))
                                              (let ((_e110105110202_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110089110281_))))
                                                (let ((_tl110103110207_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110105110202_)))
                                                      (_hd110104110205_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110105110202_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl110103110207_))
                                                      (let ((___splice111110111111_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl110103110207_ '0))))
                (let ((_tl110108110212_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice111110111111_ '1)))
                      (_target110106110210_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice111110111111_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110108110212_))
                      (___match111159111160_
                       _e110087110270_
                       _hd110086110273_
                       _tl110085110275_
                       _e110090110278_
                       _hd110089110281_
                       _tl110088110283_
                       _e110105110202_
                       _hd110104110205_
                       _tl110103110207_
                       ___splice111110111111_
                       _target110106110210_
                       _tl110108110212_)
                      (let () (declare (not safe)) (_g110081110133_)))))
              (let () (declare (not safe)) (_g110081110133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110081110133_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd110089110281_))
                                      (let ((_e110105110202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd110089110281_))))
                                        (let ((_tl110103110207_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110105110202_)))
                                              (_hd110104110205_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110105110202_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl110103110207_))
                                              (let ((___splice111110111111_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl110103110207_
                                                        '0))))
                                                (let ((_tl110108110212_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice111110111111_
                                                          '1)))
                                                      (_target110106110210_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice111110111111_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110108110212_))
                                                      (___match111159111160_
                                                       _e110087110270_
                                                       _hd110086110273_
                                                       _tl110085110275_
                                                       _e110090110278_
                                                       _hd110089110281_
                                                       _tl110088110283_
                                                       _e110105110202_
                                                       _hd110104110205_
                                                       _tl110103110207_
                                                       ___splice111110111111_
                                                       _target110106110210_
                                                       _tl110108110212_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g110081110133_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g110081110133_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110081110133_))))))
                          (let () (declare (not safe)) (_g110081110133_)))))
                  (let () (declare (not safe)) (_g110081110133_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self110035_ _stx110036_)
        (let* ((_g110038110048_
                (lambda (_g110039110045_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g110039110045_))))
               (_g110037110073_
                (lambda (_g110039110051_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g110039110051_))
                      (let ((_e110043110053_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g110039110051_))))
                        (let ((_hd110042110056_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110043110053_)))
                              (_tl110041110058_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110043110053_))))
                          ((lambda (_L110061_)
                             (let ((_decls110071_
                                    (map gx#syntax->datum _L110061_)))
                               (gxc#current-compile-decls
                                (let ((__tmp112529
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp112529 _decls110071_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls110071_))))
                           _tl110041110058_)))
                      (let ()
                        (declare (not safe))
                        (_g110038110048_ _g110039110051_))))))
          (declare (not safe))
          (_g110037110073_ _stx110036_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self109781_ _stx109782_)
        (let* ((_g109784109801_
                (lambda (_g109785109798_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109785109798_))))
               (_g109783110032_
                (lambda (_g109785109804_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109785109804_))
                      (let ((_e109790109806_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109785109804_))))
                        (let ((_hd109789109809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109790109806_)))
                              (_tl109788109811_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109790109806_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109788109811_))
                              (let ((_e109793109814_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109788109811_))))
                                (let ((_hd109792109817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109793109814_)))
                                      (_tl109791109819_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109793109814_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109791109819_))
                                      (let ((_e109796109822_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109791109819_))))
                                        (let ((_hd109795109825_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109796109822_)))
                                              (_tl109794109827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109796109822_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109794109827_))
                                              ((lambda (_L109830_ _L109831_)
                                                 (let* ((___stx111212111213_
                                                         _L109831_)
                                                        (_g109848109862_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx111212111213_)))))
                                                   (let ((___kont111214111215_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self109781_
                                                               _L109830_))))
                                                         (___kont111216111217_
                                                          (lambda (_L109994_)
                                                            (let ((_eid110003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L109994_))))
                      (let ((_lambda-expr110004110006_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L109830_))))
                        (if _lambda-expr110004110006_
                            (let* ((_lambda-expr110009_
                                    _lambda-expr110004110006_)
                                   (__tmp112530
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp112530
                               _lambda-expr110009_
                               _eid110003_))
                            '#f))
                      (let ((__tmp112531
                             (let ((__tmp112532
                                    (let ((__tmp112533
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self109781_
                                              _L109830_))))
                                      (declare (not safe))
                                      (cons __tmp112533 '()))))
                               (declare (not safe))
                               (cons _eid110003_ __tmp112532))))
                        (declare (not safe))
                        (cons 'define __tmp112531)))))
                 (___kont111218111219_
                  (lambda ()
                    (let* ((_tmp109869_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body109978_
                            (let _lp109871_ ((_rest109873_ _L109831_)
                                             (_k109874_ '0)
                                             (_r109875_ '()))
                              (let* ((___stx111182111183_ _rest109873_)
                                     (_g109880109897_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx111182111183_)))))
                                (let ((___kont111184111185_
                                       (lambda (_L109965_)
                                         (let ((__tmp112534
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k109874_ '1))))
                                           (declare (not safe))
                                           (_lp109871_
                                            _L109965_
                                            __tmp112534
                                            _r109875_))))
                                      (___kont111186111187_
                                       (lambda (_L109938_ _L109939_)
                                         (let ((__tmp112541
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k109874_ '1)))
                                               (__tmp112535
                                                (let ((__tmp112536
                                                       (let ((__tmp112537
                                                              (let ((__tmp112540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L109939_)))
                            (__tmp112538
                             (let ((__tmp112539
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp109869_
                                       _k109874_
                                       _L109938_))))
                               (declare (not safe))
                               (cons __tmp112539 '()))))
                        (declare (not safe))
                        (cons __tmp112540 __tmp112538))))
                 (declare (not safe))
                 (cons 'define __tmp112537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112536
                                                        _r109875_))))
                                           (declare (not safe))
                                           (_lp109871_
                                            _L109938_
                                            __tmp112541
                                            __tmp112535))))
                                      (___kont111188111189_
                                       (lambda (_L109909_)
                                         (let ((__tmp112542
                                                (let ((__tmp112543
                                                       (let ((__tmp112544
                                                              (let ((__tmp112547
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L109909_)))
                            (__tmp112545
                             (let ((__tmp112546
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp109869_
                                       _k109874_))))
                               (declare (not safe))
                               (cons __tmp112546 '()))))
                        (declare (not safe))
                        (cons __tmp112547 __tmp112545))))
                 (declare (not safe))
                 (cons 'define __tmp112544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112543 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp112542
                                                   _r109875_))))
                                      (___kont111190111191_
                                       (lambda () (reverse _r109875_))))
                                  (let ((_g109878109925_
                                         (lambda ()
                                           (let ((_L109909_
                                                  ___stx111182111183_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L109909_))
                                                 (___kont111188111189_
                                                  _L109909_)
                                                 (___kont111190111191_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx111182111183_))
                                        (let ((_e109885109954_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx111182111183_))))
                                          (let ((_tl109883109959_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109885109954_)))
                                                (_hd109884109957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109885109954_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd109884109957_))
                                                (let ((_e109886109962_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109884109957_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e109886109962_
                                                                '#f))
                                                      (___kont111184111185_
                                                       _tl109883109959_)
                                                      (___kont111186111187_
                                                       _tl109883109959_
                                                       _hd109884109957_)))
                                                (___kont111186111187_
                                                 _tl109883109959_
                                                 _hd109884109957_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109878109925_)))))))))
                      (let ((__tmp112548
                             (let ((__tmp112551
                                    (let ((__tmp112552
                                           (let ((__tmp112553
                                                  (let ((__tmp112554
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self109781_
                                                            _L109830_))))
                                                    (declare (not safe))
                                                    (cons __tmp112554 '()))))
                                             (declare (not safe))
                                             (cons _tmp109869_ __tmp112553))))
                                      (declare (not safe))
                                      (cons 'define __tmp112552)))
                                   (__tmp112549
                                    (let ((__tmp112550
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp109869_
                                              _L109831_
                                              _L109830_))))
                                      (declare (not safe))
                                      (cons __tmp112550 _body109978_))))
                               (declare (not safe))
                               (cons __tmp112551 __tmp112549))))
                        (declare (not safe))
                        (cons 'begin __tmp112548))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx111212111213_))
                                                         (let ((_e109852110016_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx111212111213_))))
                   (let ((_tl109850110021_
                          (let ()
                            (declare (not safe))
                            (##cdr _e109852110016_)))
                         (_hd109851110019_
                          (let ()
                            (declare (not safe))
                            (##car _e109852110016_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd109851110019_))
                         (let ((_e109853110024_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd109851110019_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e109853110024_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl109850110021_))
                                   (___kont111214111215_)
                                   (___kont111218111219_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl109850110021_))
                                   (___kont111216111217_ _hd109851110019_)
                                   (___kont111218111219_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109850110021_))
                             (___kont111216111217_ _hd109851110019_)
                             (___kont111218111219_)))))
                 (___kont111218111219_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd109795109825_
                                               _hd109792109817_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109784109801_
                                                 _g109785109804_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109784109801_ _g109785109804_)))))
                              (let ()
                                (declare (not safe))
                                (_g109784109801_ _g109785109804_)))))
                      (let ()
                        (declare (not safe))
                        (_g109784109801_ _g109785109804_))))))
          (declare (not safe))
          (_g109783110032_ _stx109782_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals109757_ _hd109758_ _expr109759_)
        (let ((_$e109761_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr109759_))))
          (if _$e109761_
              ((lambda (_count109764_)
                 (let ((_len109766_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd109758_)))
                       (_cmp109767_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd109758_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len109766_ '0)
                           (_cmp109767_ _count109764_ _len109766_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr109759_
                          _hd109758_)))))
               _$e109761_)
              (let* ((_len109772_
                      (let () (declare (not safe)) (gx#stx-length _hd109758_)))
                     (_cmp109774_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd109758_))
                          '##fx=
                          '##fx>=))
                     (_errmsg109776_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd109758_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len109772_)
                       '" values"))
                     (_count109778_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp112578
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd109758_))))
                           (declare (not safe))
                           (not __tmp112578))
                         (fx= _len109772_ '0))
                    '#!void
                    (let ((__tmp112555
                           (let ((__tmp112574
                                  (let ((__tmp112575
                                         (let ((__tmp112576
                                                (let ((__tmp112577
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals109757_))))
                                                  (declare (not safe))
                                                  (cons __tmp112577 '()))))
                                           (declare (not safe))
                                           (cons _count109778_ __tmp112576))))
                                    (declare (not safe))
                                    (cons __tmp112575 '())))
                                 (__tmp112556
                                  (let ((__tmp112557
                                         (let ((__tmp112558
                                                (let ((__tmp112563
                                                       (let ((__tmp112564
                                                              (let ((__tmp112565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp112572
                                        (let ((__tmp112573
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len109772_ '()))))
                                          (declare (not safe))
                                          (cons _count109778_ __tmp112573))))
                                   (declare (not safe))
                                   (cons _cmp109774_ __tmp112572))
                                 (let ((__tmp112566
                                        (let ((__tmp112567
                                               (let ((__tmp112568
                                                      (let ((__tmp112569
                                                             (let ((__tmp112570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112571
                                   (let ()
                                     (declare (not safe))
                                     (cons _len109772_ '()))))
                              (declare (not safe))
                              (cons _count109778_ __tmp112571))))
                       (declare (not safe))
                       (cons _cmp109774_ __tmp112570))))
                (declare (not safe))
                (cons __tmp112569 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp112568))))
                                          (declare (not safe))
                                          (cons '() __tmp112567))))
                                   (declare (not safe))
                                   (cons 'let __tmp112566)))))
                        (declare (not safe))
                        (cons __tmp112565 '()))))
                 (declare (not safe))
                 (cons 'not __tmp112564)))
              (__tmp112559
               (let ((__tmp112560
                      (let ((__tmp112561
                             (let ((__tmp112562
                                    (let ()
                                      (declare (not safe))
                                      (cons _count109778_ '()))))
                               (declare (not safe))
                               (cons _errmsg109776_ __tmp112562))))
                        (declare (not safe))
                        (cons 'error __tmp112561))))
                 (declare (not safe))
                 (cons __tmp112560 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112563
                                                        __tmp112559))))
                                           (declare (not safe))
                                           (cons 'if __tmp112558))))
                                    (declare (not safe))
                                    (cons __tmp112557 '()))))
                             (declare (not safe))
                             (cons __tmp112574 __tmp112556))))
                      (declare (not safe))
                      (cons 'let __tmp112555))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var109752_)
        (letrec ((_generate-inline109754_
                  (lambda ()
                    (let ((__tmp112579
                           (let ((__tmp112584
                                  (let ((__tmp112585
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109752_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp112585)))
                                 (__tmp112580
                                  (let ((__tmp112582
                                         (let ((__tmp112583
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var109752_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp112583)))
                                        (__tmp112581
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp112582 __tmp112581))))
                             (declare (not safe))
                             (cons __tmp112584 __tmp112580))))
                      (declare (not safe))
                      (cons 'if __tmp112579)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline109754_))
              (let ((__tmp112586
                     (let ((__tmp112587
                            (let ((__tmp112588
                                   (let ((__tmp112589
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline109754_))))
                                     (declare (not safe))
                                     (cons __tmp112589 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp112588))))
                       (declare (not safe))
                       (cons '() __tmp112587))))
                (declare (not safe))
                (cons 'let __tmp112586))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var109745_ _i109746_ _rest109747_)
        (letrec ((_generate-inline109749_
                  (lambda ()
                    (if (and (fx= _i109746_ '0)
                             (let ((__tmp112600
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest109747_))))
                               (declare (not safe))
                               (not __tmp112600)))
                        (let ((__tmp112592
                               (let ((__tmp112598
                                      (let ((__tmp112599
                                             (let ()
                                               (declare (not safe))
                                               (cons _var109745_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp112599)))
                                     (__tmp112593
                                      (let ((__tmp112595
                                             (let ((__tmp112596
                                                    (let ((__tmp112597
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var109745_
                                                            __tmp112597))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp112596)))
                                            (__tmp112594
                                             (let ()
                                               (declare (not safe))
                                               (cons _var109745_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112595 __tmp112594))))
                                 (declare (not safe))
                                 (cons __tmp112598 __tmp112593))))
                          (declare (not safe))
                          (cons 'if __tmp112592))
                        (let ((__tmp112590
                               (let ((__tmp112591
                                      (let ()
                                        (declare (not safe))
                                        (cons _i109746_ '()))))
                                 (declare (not safe))
                                 (cons _var109745_ __tmp112591))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp112590))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline109749_))
              (let ((__tmp112601
                     (let ((__tmp112602
                            (let ((__tmp112603
                                   (let ((__tmp112604
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline109749_))))
                                     (declare (not safe))
                                     (cons __tmp112604 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp112603))))
                       (declare (not safe))
                       (cons '() __tmp112602))))
                (declare (not safe))
                (cons 'let __tmp112601))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var109742_ _i109743_)
        (if (fx= _i109743_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp112652
                       (let ((__tmp112659
                              (let ((__tmp112660
                                     (let ()
                                       (declare (not safe))
                                       (cons _var109742_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp112660)))
                             (__tmp112653
                              (let ((__tmp112657
                                     (let ((__tmp112658
                                            (let ()
                                              (declare (not safe))
                                              (cons _var109742_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp112658)))
                                    (__tmp112654
                                     (let ((__tmp112655
                                            (let ((__tmp112656
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var109742_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp112656))))
                                       (declare (not safe))
                                       (cons __tmp112655 '()))))
                                (declare (not safe))
                                (cons __tmp112657 __tmp112654))))
                         (declare (not safe))
                         (cons __tmp112659 __tmp112653))))
                  (declare (not safe))
                  (cons 'if __tmp112652))
                (let ((__tmp112639
                       (let ((__tmp112640
                              (let ((__tmp112641
                                     (let ((__tmp112642
                                            (let ((__tmp112643
                                                   (let ((__tmp112650
                                                          (let ((__tmp112651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var109742_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp112651)))
                 (__tmp112644
                  (let ((__tmp112648
                         (let ((__tmp112649
                                (let ()
                                  (declare (not safe))
                                  (cons _var109742_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp112649)))
                        (__tmp112645
                         (let ((__tmp112646
                                (let ((__tmp112647
                                       (let ()
                                         (declare (not safe))
                                         (cons _var109742_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp112647))))
                           (declare (not safe))
                           (cons __tmp112646 '()))))
                    (declare (not safe))
                    (cons __tmp112648 __tmp112645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp112650
                                                           __tmp112644))))
                                              (declare (not safe))
                                              (cons 'if __tmp112643))))
                                       (declare (not safe))
                                       (cons __tmp112642 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp112641))))
                         (declare (not safe))
                         (cons '() __tmp112640))))
                  (declare (not safe))
                  (cons 'let __tmp112639)))
            (if (fx= _i109743_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp112630
                           (let ((__tmp112637
                                  (let ((__tmp112638
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109742_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp112638)))
                                 (__tmp112631
                                  (let ((__tmp112633
                                         (let ((__tmp112634
                                                (let ((__tmp112635
                                                       (let ((__tmp112636
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var109742_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp112636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp112635 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp112634)))
                                        (__tmp112632
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp112633 __tmp112632))))
                             (declare (not safe))
                             (cons __tmp112637 __tmp112631))))
                      (declare (not safe))
                      (cons 'if __tmp112630))
                    (let ((__tmp112617
                           (let ((__tmp112618
                                  (let ((__tmp112619
                                         (let ((__tmp112620
                                                (let ((__tmp112621
                                                       (let ((__tmp112628
                                                              (let ((__tmp112629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var109742_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp112629)))
                     (__tmp112622
                      (let ((__tmp112624
                             (let ((__tmp112625
                                    (let ((__tmp112626
                                           (let ((__tmp112627
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var109742_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp112627))))
                                      (declare (not safe))
                                      (cons __tmp112626 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp112625)))
                            (__tmp112623
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp112624 __tmp112623))))
                 (declare (not safe))
                 (cons __tmp112628 __tmp112622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp112621))))
                                           (declare (not safe))
                                           (cons __tmp112620 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp112619))))
                             (declare (not safe))
                             (cons '() __tmp112618))))
                      (declare (not safe))
                      (cons 'let __tmp112617)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp112613
                           (let ((__tmp112615
                                  (let ((__tmp112616
                                         (let ()
                                           (declare (not safe))
                                           (cons _var109742_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp112616)))
                                 (__tmp112614
                                  (let ()
                                    (declare (not safe))
                                    (cons _i109743_ '()))))
                             (declare (not safe))
                             (cons __tmp112615 __tmp112614))))
                      (declare (not safe))
                      (cons '##list-tail __tmp112613))
                    (let ((__tmp112605
                           (let ((__tmp112606
                                  (let ((__tmp112607
                                         (let ((__tmp112608
                                                (let ((__tmp112609
                                                       (let ((__tmp112611
                                                              (let ((__tmp112612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var109742_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp112612)))
                     (__tmp112610
                      (let () (declare (not safe)) (cons _i109743_ '()))))
                 (declare (not safe))
                 (cons __tmp112611 __tmp112610))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp112609))))
                                           (declare (not safe))
                                           (cons __tmp112608 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp112607))))
                             (declare (not safe))
                             (cons '() __tmp112606))))
                      (declare (not safe))
                      (cons 'let __tmp112605)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self109674_ _stx109675_)
        (let* ((_g109677109694_
                (lambda (_g109678109691_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109678109691_))))
               (_g109676109739_
                (lambda (_g109678109697_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109678109697_))
                      (let ((_e109683109699_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109678109697_))))
                        (let ((_hd109682109702_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109683109699_)))
                              (_tl109681109704_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109683109699_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109681109704_))
                              (let ((_e109686109707_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109681109704_))))
                                (let ((_hd109685109710_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109686109707_)))
                                      (_tl109684109712_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109686109707_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109684109712_))
                                      (let ((_e109689109715_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109684109712_))))
                                        (let ((_hd109688109718_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109689109715_)))
                                              (_tl109687109720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109689109715_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109687109720_))
                                              ((lambda (_L109723_ _L109724_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self109674_
                                                    _L109724_
                                                    _L109723_)))
                                               _hd109688109718_
                                               _hd109685109710_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109677109694_
                                                 _g109678109697_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109677109694_ _g109678109697_)))))
                              (let ()
                                (declare (not safe))
                                (_g109677109694_ _g109678109697_)))))
                      (let ()
                        (declare (not safe))
                        (_g109677109694_ _g109678109697_))))))
          (declare (not safe))
          (_g109676109739_ _stx109675_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self109633_ _hd109634_ _body109635_)
        (let* ((_hd109637_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd109634_)))
               (_body109639_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self109633_ _body109635_)))
               (_body109671_
                (let* ((_body109640109648_ _body109639_)
                       (_else109642109656_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body109639_ '()))))
                       (_K109644109661_
                        (lambda (_exprs109659_) _exprs109659_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body109640109648_))
                      (let ((_hd109645109664_
                             (let ()
                               (declare (not safe))
                               (##car _body109640109648_)))
                            (_tl109646109666_
                             (let ()
                               (declare (not safe))
                               (##cdr _body109640109648_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd109645109664_ 'begin))
                            (let ((_exprs109669_ _tl109646109666_))
                              (declare (not safe))
                              (_K109644109661_ _exprs109669_))
                            (let ()
                              (declare (not safe))
                              (_else109642109656_))))
                      (let () (declare (not safe)) (_else109642109656_))))))
          (let ((__tmp112661
                 (let () (declare (not safe)) (cons _hd109637_ _body109671_))))
            (declare (not safe))
            (cons 'lambda __tmp112661)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd109631_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd109631_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self108173_ _stx108174_)
        (letrec ((_dispatch-case?108176_
                  (lambda (_hd108861_ _body108862_)
                    (let* ((_form108864_
                            (let ((__tmp112662
                                   (let ()
                                     (declare (not safe))
                                     (cons _body108862_ '()))))
                              (declare (not safe))
                              (cons _hd108861_ __tmp112662)))
                           (___stx111244111245_ _form108864_)
                           (_g108869109026_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111244111245_)))))
                      (let ((___kont111246111247_
                             (lambda (_L109551_ _L109552_ _L109553_) '#t))
                            (___kont111252111253_
                             (lambda (_L109339_
                                      _L109340_
                                      _L109341_
                                      _L109342_
                                      _L109343_
                                      _L109344_)
                               '#t))
                            (___kont111258111259_
                             (lambda (_L109134_ _L109135_ _L109136_ _L109137_)
                               '#t))
                            (___kont111260111261_ (lambda () '#f)))
                        (let* ((___match111385111386_
                                (lambda (_e108988109038_
                                         _hd108987109041_
                                         _tl108986109043_
                                         _e108991109046_
                                         _hd108990109049_
                                         _tl108989109051_
                                         _e108994109054_
                                         _hd108993109057_
                                         _tl108992109059_
                                         _e108997109062_
                                         _hd108996109065_
                                         _tl108995109067_
                                         _e109000109070_
                                         _hd108999109073_
                                         _tl108998109075_
                                         _e109003109078_
                                         _hd109002109081_
                                         _tl109001109083_
                                         _e109006109086_
                                         _hd109005109089_
                                         _tl109004109091_
                                         _e109009109094_
                                         _hd109008109097_
                                         _tl109007109099_
                                         _e109012109102_
                                         _hd109011109105_
                                         _tl109010109107_
                                         _e109015109110_
                                         _hd109014109113_
                                         _tl109013109115_
                                         _e109018109118_
                                         _hd109017109121_
                                         _tl109016109123_
                                         _e109021109126_
                                         _hd109020109129_
                                         _tl109019109131_)
                                  (let ((_L109134_ _hd109020109129_)
                                        (_L109135_ _hd109011109105_)
                                        (_L109136_ _hd109002109081_)
                                        (_L109137_ _hd108987109041_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L109137_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L109136_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L109137_
                                                _L109134_))
                                             (let ((__tmp112663
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L109135_
                                                       _L109137_))))
                                               (declare (not safe))
                                               (not __tmp112663)))
                                        (___kont111258111259_
                                         _L109134_
                                         _L109135_
                                         _L109136_
                                         _L109137_)
                                        (___kont111260111261_)))))
                               (___match111357111358_
                                (lambda (_e108988109038_
                                         _hd108987109041_
                                         _tl108986109043_
                                         _e108991109046_
                                         _hd108990109049_
                                         _tl108989109051_
                                         _e108994109054_
                                         _hd108993109057_
                                         _tl108992109059_
                                         _e108997109062_
                                         _hd108996109065_
                                         _tl108995109067_
                                         _e109000109070_
                                         _hd108999109073_
                                         _tl108998109075_
                                         _e109003109078_
                                         _hd109002109081_
                                         _tl109001109083_
                                         _e109006109086_
                                         _hd109005109089_
                                         _tl109004109091_
                                         _e109009109094_
                                         _hd109008109097_
                                         _tl109007109099_
                                         _e109012109102_
                                         _hd109011109105_
                                         _tl109010109107_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109004109091_))
                                      (let ((_e109015109110_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109004109091_))))
                                        (let ((_tl109013109115_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109015109110_)))
                                              (_hd109014109113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109015109110_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd109014109113_))
                                              (let ((_e109018109118_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd109014109113_))))
                                                (let ((_tl109016109123_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109018109118_)))
                                                      (_hd109017109121_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109018109118_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd109017109121_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd109017109121_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109016109123_))
                      (let ((_e109021109126_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109016109123_))))
                        (let ((_tl109019109131_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109021109126_)))
                              (_hd109020109129_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109021109126_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl109019109131_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl109013109115_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl108989109051_))
                                      (___match111385111386_
                                       _e108988109038_
                                       _hd108987109041_
                                       _tl108986109043_
                                       _e108991109046_
                                       _hd108990109049_
                                       _tl108989109051_
                                       _e108994109054_
                                       _hd108993109057_
                                       _tl108992109059_
                                       _e108997109062_
                                       _hd108996109065_
                                       _tl108995109067_
                                       _e109000109070_
                                       _hd108999109073_
                                       _tl108998109075_
                                       _e109003109078_
                                       _hd109002109081_
                                       _tl109001109083_
                                       _e109006109086_
                                       _hd109005109089_
                                       _tl109004109091_
                                       _e109009109094_
                                       _hd109008109097_
                                       _tl109007109099_
                                       _e109012109102_
                                       _hd109011109105_
                                       _tl109010109107_
                                       _e109015109110_
                                       _hd109014109113_
                                       _tl109013109115_
                                       _e109018109118_
                                       _hd109017109121_
                                       _tl109016109123_
                                       _e109021109126_
                                       _hd109020109129_
                                       _tl109019109131_)
                                      (___kont111260111261_))
                                  (___kont111260111261_))
                              (___kont111260111261_))))
                      (___kont111260111261_))
                  (___kont111260111261_))
              (___kont111260111261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont111260111261_))))
                                      (___kont111260111261_))))
                               (___match111287111288_
                                (lambda (_e108924109179_
                                         _hd108923109182_
                                         _tl108922109184_
                                         ___splice111254111255_
                                         _target108925109187_
                                         _tl108927109189_)
                                  (letrec ((_loop108928109192_
                                            (lambda (_hd108926109195_
                                                     _arg108932109197_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108926109195_))
                                                  (let ((_e108929109200_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108926109195_))))
                                                    (let ((_lp-tl108931109205_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108929109200_)))
                                                          (_lp-hd108930109203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108929109200_))))
                                                      (let ((__tmp112678
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108930109203_ _arg108932109197_))))
                (declare (not safe))
                (_loop108928109192_ _lp-tl108931109205_ __tmp112678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108933109208_
                                                         (reverse _arg108932109197_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108922109184_))
                                                        (let ((_e108936109211_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108922109184_))))
                  (let ((_tl108934109216_
                         (let () (declare (not safe)) (##cdr _e108936109211_)))
                        (_hd108935109214_
                         (let ()
                           (declare (not safe))
                           (##car _e108936109211_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108935109214_))
                        (let ((_e108939109219_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108935109214_))))
                          (let ((_tl108937109224_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108939109219_)))
                                (_hd108938109222_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108939109219_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108938109222_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108938109222_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108937109224_))
                                        (let ((_e108942109227_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108937109224_))))
                                          (let ((_tl108940109232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108942109227_)))
                                                (_hd108941109230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108942109227_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108941109230_))
                                                (let ((_e108945109235_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108941109230_))))
                                                  (let ((_tl108943109240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108945109235_)))
                                                        (_hd108944109238_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108945109235_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108944109238_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108944109238_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108943109240_))
                        (let ((_e108948109243_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108943109240_))))
                          (let ((_tl108946109248_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108948109243_)))
                                (_hd108947109246_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108948109243_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108946109248_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl108940109232_))
                                    (let ((_e108951109251_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl108940109232_))))
                                      (let ((_tl108949109256_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e108951109251_)))
                                            (_hd108950109254_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e108951109251_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd108950109254_))
                                            (let ((_e108954109259_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd108950109254_))))
                                              (let ((_tl108952109264_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108954109259_)))
                                                    (_hd108953109262_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108954109259_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd108953109262_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd108953109262_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108952109264_))
                                                            (let ((_e108957109267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108952109264_))))
                      (let ((_tl108955109272_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108957109267_)))
                            (_hd108956109270_
                             (let ()
                               (declare (not safe))
                               (##car _e108957109267_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108955109272_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl108949109256_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl108949109256_))
                                          '1)
                                    (let ((___splice111256111257_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl108949109256_
                                              '1))))
                                      (let ((_tl108960109277_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111256111257_
                                                '1)))
                                            (_target108958109275_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111256111257_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108960109277_))
                                            (let ((_e108969109280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108960109277_))))
                                              (let ((_tl108967109285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108969109280_)))
                                                    (_hd108968109283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108969109280_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd108968109283_))
                                                    (let ((_e108972109288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd108968109283_))))
                                                      (let ((_tl108970109293_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108972109288_)))
                    (_hd108971109291_
                     (let () (declare (not safe)) (##car _e108972109288_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd108971109291_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd108971109291_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl108970109293_))
                            (let ((_e108975109296_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl108970109293_))))
                              (let ((_tl108973109301_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108975109296_)))
                                    (_hd108974109299_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108975109296_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl108973109301_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl108967109285_))
                                        (letrec ((_loop108961109304_
                                                  (lambda (_hd108959109307_
                                                           _xarg108965109309_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd108959109307_))
                                                        (let ((_e108962109312_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd108959109307_))))
                  (let ((_lp-tl108964109317_
                         (let () (declare (not safe)) (##cdr _e108962109312_)))
                        (_lp-hd108963109315_
                         (let ()
                           (declare (not safe))
                           (##car _e108962109312_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd108963109315_))
                        (let ((_e108978109320_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd108963109315_))))
                          (let ((_tl108976109325_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108978109320_)))
                                (_hd108977109323_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108978109320_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108977109323_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd108977109323_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108976109325_))
                                        (let ((_e108981109328_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108976109325_))))
                                          (let ((_tl108979109333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108981109328_)))
                                                (_hd108980109331_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108981109328_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108979109333_))
                                                (let ((__tmp112677
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd108980109331_
                                                               _xarg108965109309_))))
                                                  (declare (not safe))
                                                  (_loop108961109304_
                                                   _lp-tl108964109317_
                                                   __tmp112677))
                                                (___match111357111358_
                                                 _e108924109179_
                                                 _hd108923109182_
                                                 _tl108922109184_
                                                 _e108936109211_
                                                 _hd108935109214_
                                                 _tl108934109216_
                                                 _e108939109219_
                                                 _hd108938109222_
                                                 _tl108937109224_
                                                 _e108942109227_
                                                 _hd108941109230_
                                                 _tl108940109232_
                                                 _e108945109235_
                                                 _hd108944109238_
                                                 _tl108943109240_
                                                 _e108948109243_
                                                 _hd108947109246_
                                                 _tl108946109248_
                                                 _e108951109251_
                                                 _hd108950109254_
                                                 _tl108949109256_
                                                 _e108954109259_
                                                 _hd108953109262_
                                                 _tl108952109264_
                                                 _e108957109267_
                                                 _hd108956109270_
                                                 _tl108955109272_))))
                                        (___match111357111358_
                                         _e108924109179_
                                         _hd108923109182_
                                         _tl108922109184_
                                         _e108936109211_
                                         _hd108935109214_
                                         _tl108934109216_
                                         _e108939109219_
                                         _hd108938109222_
                                         _tl108937109224_
                                         _e108942109227_
                                         _hd108941109230_
                                         _tl108940109232_
                                         _e108945109235_
                                         _hd108944109238_
                                         _tl108943109240_
                                         _e108948109243_
                                         _hd108947109246_
                                         _tl108946109248_
                                         _e108951109251_
                                         _hd108950109254_
                                         _tl108949109256_
                                         _e108954109259_
                                         _hd108953109262_
                                         _tl108952109264_
                                         _e108957109267_
                                         _hd108956109270_
                                         _tl108955109272_))
                                    (___match111357111358_
                                     _e108924109179_
                                     _hd108923109182_
                                     _tl108922109184_
                                     _e108936109211_
                                     _hd108935109214_
                                     _tl108934109216_
                                     _e108939109219_
                                     _hd108938109222_
                                     _tl108937109224_
                                     _e108942109227_
                                     _hd108941109230_
                                     _tl108940109232_
                                     _e108945109235_
                                     _hd108944109238_
                                     _tl108943109240_
                                     _e108948109243_
                                     _hd108947109246_
                                     _tl108946109248_
                                     _e108951109251_
                                     _hd108950109254_
                                     _tl108949109256_
                                     _e108954109259_
                                     _hd108953109262_
                                     _tl108952109264_
                                     _e108957109267_
                                     _hd108956109270_
                                     _tl108955109272_))
                                (___match111357111358_
                                 _e108924109179_
                                 _hd108923109182_
                                 _tl108922109184_
                                 _e108936109211_
                                 _hd108935109214_
                                 _tl108934109216_
                                 _e108939109219_
                                 _hd108938109222_
                                 _tl108937109224_
                                 _e108942109227_
                                 _hd108941109230_
                                 _tl108940109232_
                                 _e108945109235_
                                 _hd108944109238_
                                 _tl108943109240_
                                 _e108948109243_
                                 _hd108947109246_
                                 _tl108946109248_
                                 _e108951109251_
                                 _hd108950109254_
                                 _tl108949109256_
                                 _e108954109259_
                                 _hd108953109262_
                                 _tl108952109264_
                                 _e108957109267_
                                 _hd108956109270_
                                 _tl108955109272_))))
                        (___match111357111358_
                         _e108924109179_
                         _hd108923109182_
                         _tl108922109184_
                         _e108936109211_
                         _hd108935109214_
                         _tl108934109216_
                         _e108939109219_
                         _hd108938109222_
                         _tl108937109224_
                         _e108942109227_
                         _hd108941109230_
                         _tl108940109232_
                         _e108945109235_
                         _hd108944109238_
                         _tl108943109240_
                         _e108948109243_
                         _hd108947109246_
                         _tl108946109248_
                         _e108951109251_
                         _hd108950109254_
                         _tl108949109256_
                         _e108954109259_
                         _hd108953109262_
                         _tl108952109264_
                         _e108957109267_
                         _hd108956109270_
                         _tl108955109272_))))
                (let ((_xarg108966109336_ (reverse _xarg108965109309_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108934109216_))
                      (let ((_L109339_ _hd108974109299_)
                            (_L109340_ _xarg108966109336_)
                            (_L109341_ _hd108956109270_)
                            (_L109342_ _hd108947109246_)
                            (_L109343_ _tl108927109189_)
                            (_L109344_ _arg108933109208_))
                        (if (and (let ((__tmp112675
                                        (let ((__tmp112676
                                               (lambda (_g109387109390_
                                                        _g109388109392_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109387109390_
                                                         _g109388109392_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112676 '() _L109344_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp112675))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L109343_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L109342_ 'apply))
                                 (fx= (length (let ((__tmp112673
                                                     (lambda (_g109394109397_
                                                              _g109395109399_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109394109397_
                                                               _g109395109399_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112673
                                                        '()
                                                        _L109344_)))
                                      (length (let ((__tmp112674
                                                     (lambda (_g109401109404_
                                                              _g109402109406_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109401109404_
                                                               _g109402109406_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112674
                                                        '()
                                                        _L109340_))))
                                 (let ((__tmp112671
                                        (let ((__tmp112672
                                               (lambda (_g109408109411_
                                                        _g109409109413_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109408109411_
                                                         _g109409109413_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112672 '() _L109344_)))
                                       (__tmp112669
                                        (let ((__tmp112670
                                               (lambda (_g109415109418_
                                                        _g109416109420_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g109415109418_
                                                         _g109416109420_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp112670 '() _L109340_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp112671
                                            __tmp112669))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L109343_ _L109339_))
                                 (let ((__tmp112664
                                        (let ((__tmp112668
                                               (lambda (_g109422109424_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g109422109424_
                                                    _L109341_))))
                                              (__tmp112665
                                               (let ((__tmp112667
                                                      (lambda (_g109426109429_
                                                               _g109427109431_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g109426109429_
                                                                _g109427109431_))))
                                                     (__tmp112666
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L109343_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp112667
                                                         __tmp112666
                                                         _L109344_))))
                                          (declare (not safe))
                                          (find __tmp112668 __tmp112665))))
                                   (declare (not safe))
                                   (not __tmp112664)))
                            (___kont111252111253_
                             _L109339_
                             _L109340_
                             _L109341_
                             _L109342_
                             _L109343_
                             _L109344_)
                            (___match111357111358_
                             _e108924109179_
                             _hd108923109182_
                             _tl108922109184_
                             _e108936109211_
                             _hd108935109214_
                             _tl108934109216_
                             _e108939109219_
                             _hd108938109222_
                             _tl108937109224_
                             _e108942109227_
                             _hd108941109230_
                             _tl108940109232_
                             _e108945109235_
                             _hd108944109238_
                             _tl108943109240_
                             _e108948109243_
                             _hd108947109246_
                             _tl108946109248_
                             _e108951109251_
                             _hd108950109254_
                             _tl108949109256_
                             _e108954109259_
                             _hd108953109262_
                             _tl108952109264_
                             _e108957109267_
                             _hd108956109270_
                             _tl108955109272_)))
                      (___match111357111358_
                       _e108924109179_
                       _hd108923109182_
                       _tl108922109184_
                       _e108936109211_
                       _hd108935109214_
                       _tl108934109216_
                       _e108939109219_
                       _hd108938109222_
                       _tl108937109224_
                       _e108942109227_
                       _hd108941109230_
                       _tl108940109232_
                       _e108945109235_
                       _hd108944109238_
                       _tl108943109240_
                       _e108948109243_
                       _hd108947109246_
                       _tl108946109248_
                       _e108951109251_
                       _hd108950109254_
                       _tl108949109256_
                       _e108954109259_
                       _hd108953109262_
                       _tl108952109264_
                       _e108957109267_
                       _hd108956109270_
                       _tl108955109272_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop108961109304_
                                             _target108958109275_
                                             '())))
                                        (___match111357111358_
                                         _e108924109179_
                                         _hd108923109182_
                                         _tl108922109184_
                                         _e108936109211_
                                         _hd108935109214_
                                         _tl108934109216_
                                         _e108939109219_
                                         _hd108938109222_
                                         _tl108937109224_
                                         _e108942109227_
                                         _hd108941109230_
                                         _tl108940109232_
                                         _e108945109235_
                                         _hd108944109238_
                                         _tl108943109240_
                                         _e108948109243_
                                         _hd108947109246_
                                         _tl108946109248_
                                         _e108951109251_
                                         _hd108950109254_
                                         _tl108949109256_
                                         _e108954109259_
                                         _hd108953109262_
                                         _tl108952109264_
                                         _e108957109267_
                                         _hd108956109270_
                                         _tl108955109272_))
                                    (___match111357111358_
                                     _e108924109179_
                                     _hd108923109182_
                                     _tl108922109184_
                                     _e108936109211_
                                     _hd108935109214_
                                     _tl108934109216_
                                     _e108939109219_
                                     _hd108938109222_
                                     _tl108937109224_
                                     _e108942109227_
                                     _hd108941109230_
                                     _tl108940109232_
                                     _e108945109235_
                                     _hd108944109238_
                                     _tl108943109240_
                                     _e108948109243_
                                     _hd108947109246_
                                     _tl108946109248_
                                     _e108951109251_
                                     _hd108950109254_
                                     _tl108949109256_
                                     _e108954109259_
                                     _hd108953109262_
                                     _tl108952109264_
                                     _e108957109267_
                                     _hd108956109270_
                                     _tl108955109272_))))
                            (___match111357111358_
                             _e108924109179_
                             _hd108923109182_
                             _tl108922109184_
                             _e108936109211_
                             _hd108935109214_
                             _tl108934109216_
                             _e108939109219_
                             _hd108938109222_
                             _tl108937109224_
                             _e108942109227_
                             _hd108941109230_
                             _tl108940109232_
                             _e108945109235_
                             _hd108944109238_
                             _tl108943109240_
                             _e108948109243_
                             _hd108947109246_
                             _tl108946109248_
                             _e108951109251_
                             _hd108950109254_
                             _tl108949109256_
                             _e108954109259_
                             _hd108953109262_
                             _tl108952109264_
                             _e108957109267_
                             _hd108956109270_
                             _tl108955109272_))
                        (___match111357111358_
                         _e108924109179_
                         _hd108923109182_
                         _tl108922109184_
                         _e108936109211_
                         _hd108935109214_
                         _tl108934109216_
                         _e108939109219_
                         _hd108938109222_
                         _tl108937109224_
                         _e108942109227_
                         _hd108941109230_
                         _tl108940109232_
                         _e108945109235_
                         _hd108944109238_
                         _tl108943109240_
                         _e108948109243_
                         _hd108947109246_
                         _tl108946109248_
                         _e108951109251_
                         _hd108950109254_
                         _tl108949109256_
                         _e108954109259_
                         _hd108953109262_
                         _tl108952109264_
                         _e108957109267_
                         _hd108956109270_
                         _tl108955109272_))
                    (___match111357111358_
                     _e108924109179_
                     _hd108923109182_
                     _tl108922109184_
                     _e108936109211_
                     _hd108935109214_
                     _tl108934109216_
                     _e108939109219_
                     _hd108938109222_
                     _tl108937109224_
                     _e108942109227_
                     _hd108941109230_
                     _tl108940109232_
                     _e108945109235_
                     _hd108944109238_
                     _tl108943109240_
                     _e108948109243_
                     _hd108947109246_
                     _tl108946109248_
                     _e108951109251_
                     _hd108950109254_
                     _tl108949109256_
                     _e108954109259_
                     _hd108953109262_
                     _tl108952109264_
                     _e108957109267_
                     _hd108956109270_
                     _tl108955109272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111357111358_
                                                     _e108924109179_
                                                     _hd108923109182_
                                                     _tl108922109184_
                                                     _e108936109211_
                                                     _hd108935109214_
                                                     _tl108934109216_
                                                     _e108939109219_
                                                     _hd108938109222_
                                                     _tl108937109224_
                                                     _e108942109227_
                                                     _hd108941109230_
                                                     _tl108940109232_
                                                     _e108945109235_
                                                     _hd108944109238_
                                                     _tl108943109240_
                                                     _e108948109243_
                                                     _hd108947109246_
                                                     _tl108946109248_
                                                     _e108951109251_
                                                     _hd108950109254_
                                                     _tl108949109256_
                                                     _e108954109259_
                                                     _hd108953109262_
                                                     _tl108952109264_
                                                     _e108957109267_
                                                     _hd108956109270_
                                                     _tl108955109272_))))
                                            (___match111357111358_
                                             _e108924109179_
                                             _hd108923109182_
                                             _tl108922109184_
                                             _e108936109211_
                                             _hd108935109214_
                                             _tl108934109216_
                                             _e108939109219_
                                             _hd108938109222_
                                             _tl108937109224_
                                             _e108942109227_
                                             _hd108941109230_
                                             _tl108940109232_
                                             _e108945109235_
                                             _hd108944109238_
                                             _tl108943109240_
                                             _e108948109243_
                                             _hd108947109246_
                                             _tl108946109248_
                                             _e108951109251_
                                             _hd108950109254_
                                             _tl108949109256_
                                             _e108954109259_
                                             _hd108953109262_
                                             _tl108952109264_
                                             _e108957109267_
                                             _hd108956109270_
                                             _tl108955109272_))))
                                    (___match111357111358_
                                     _e108924109179_
                                     _hd108923109182_
                                     _tl108922109184_
                                     _e108936109211_
                                     _hd108935109214_
                                     _tl108934109216_
                                     _e108939109219_
                                     _hd108938109222_
                                     _tl108937109224_
                                     _e108942109227_
                                     _hd108941109230_
                                     _tl108940109232_
                                     _e108945109235_
                                     _hd108944109238_
                                     _tl108943109240_
                                     _e108948109243_
                                     _hd108947109246_
                                     _tl108946109248_
                                     _e108951109251_
                                     _hd108950109254_
                                     _tl108949109256_
                                     _e108954109259_
                                     _hd108953109262_
                                     _tl108952109264_
                                     _e108957109267_
                                     _hd108956109270_
                                     _tl108955109272_))
                                (___match111357111358_
                                 _e108924109179_
                                 _hd108923109182_
                                 _tl108922109184_
                                 _e108936109211_
                                 _hd108935109214_
                                 _tl108934109216_
                                 _e108939109219_
                                 _hd108938109222_
                                 _tl108937109224_
                                 _e108942109227_
                                 _hd108941109230_
                                 _tl108940109232_
                                 _e108945109235_
                                 _hd108944109238_
                                 _tl108943109240_
                                 _e108948109243_
                                 _hd108947109246_
                                 _tl108946109248_
                                 _e108951109251_
                                 _hd108950109254_
                                 _tl108949109256_
                                 _e108954109259_
                                 _hd108953109262_
                                 _tl108952109264_
                                 _e108957109267_
                                 _hd108956109270_
                                 _tl108955109272_))
                            (___kont111260111261_))))
                    (___kont111260111261_))
                (___kont111260111261_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont111260111261_))))
                                            (___kont111260111261_))))
                                    (___kont111260111261_))
                                (___kont111260111261_))))
                        (___kont111260111261_))
                    (___kont111260111261_))
                (___kont111260111261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont111260111261_))))
                                        (___kont111260111261_))
                                    (___kont111260111261_))
                                (___kont111260111261_))))
                        (___kont111260111261_))))
                (___kont111260111261_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108928109192_
                                       _target108925109187_
                                       '())))))
                               (___match111275111276_
                                (lambda (_e108876109439_
                                         _hd108875109442_
                                         _tl108874109444_
                                         ___splice111248111249_
                                         _target108877109447_
                                         _tl108879109449_)
                                  (letrec ((_loop108880109452_
                                            (lambda (_hd108878109455_
                                                     _arg108884109457_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108878109455_))
                                                  (let ((_e108881109460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108878109455_))))
                                                    (let ((_lp-tl108883109465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108881109460_)))
                                                          (_lp-hd108882109463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108881109460_))))
                                                      (let ((__tmp112692
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108882109463_ _arg108884109457_))))
                (declare (not safe))
                (_loop108880109452_ _lp-tl108883109465_ __tmp112692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108885109468_
                                                         (reverse _arg108884109457_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108874109444_))
                                                        (let ((_e108888109471_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108874109444_))))
                  (let ((_tl108886109476_
                         (let () (declare (not safe)) (##cdr _e108888109471_)))
                        (_hd108887109474_
                         (let ()
                           (declare (not safe))
                           (##car _e108888109471_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108887109474_))
                        (let ((_e108891109479_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108887109474_))))
                          (let ((_tl108889109484_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108891109479_)))
                                (_hd108890109482_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108891109479_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108890109482_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108890109482_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108889109484_))
                                        (let ((_e108894109487_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108889109484_))))
                                          (let ((_tl108892109492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108894109487_)))
                                                (_hd108893109490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108894109487_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108893109490_))
                                                (let ((_e108897109495_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108893109490_))))
                                                  (let ((_tl108895109500_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108897109495_)))
                                                        (_hd108896109498_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108897109495_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108896109498_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108896109498_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108895109500_))
                        (let ((_e108900109503_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108895109500_))))
                          (let ((_tl108898109508_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108900109503_)))
                                (_hd108899109506_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108900109503_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108898109508_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl108892109492_))
                                    (let ((___splice111250111251_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl108892109492_
                                              '0))))
                                      (let ((_tl108903109513_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111250111251_
                                                '1)))
                                            (_target108901109511_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111250111251_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl108903109513_))
                                            (letrec ((_loop108904109516_
                                                      (lambda (_hd108902109519_
                                                               _xarg108908109521_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd108902109519_))
                                                            (let ((_e108905109524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd108902109519_))))
                      (let ((_lp-tl108907109529_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108905109524_)))
                            (_lp-hd108906109527_
                             (let ()
                               (declare (not safe))
                               (##car _e108905109524_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd108906109527_))
                            (let ((_e108912109532_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd108906109527_))))
                              (let ((_tl108910109537_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108912109532_)))
                                    (_hd108911109535_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108912109532_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108911109535_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd108911109535_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108910109537_))
                                            (let ((_e108915109540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108910109537_))))
                                              (let ((_tl108913109545_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108915109540_)))
                                                    (_hd108914109543_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108915109540_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108913109545_))
                                                    (let ((__tmp112691
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd108914109543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg108908109521_))))
              (declare (not safe))
              (_loop108904109516_ _lp-tl108907109529_ __tmp112691))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111287111288_
                                                     _e108876109439_
                                                     _hd108875109442_
                                                     _tl108874109444_
                                                     ___splice111248111249_
                                                     _target108877109447_
                                                     _tl108879109449_))))
                                            (___match111287111288_
                                             _e108876109439_
                                             _hd108875109442_
                                             _tl108874109444_
                                             ___splice111248111249_
                                             _target108877109447_
                                             _tl108879109449_))
                                        (___match111287111288_
                                         _e108876109439_
                                         _hd108875109442_
                                         _tl108874109444_
                                         ___splice111248111249_
                                         _target108877109447_
                                         _tl108879109449_))
                                    (___match111287111288_
                                     _e108876109439_
                                     _hd108875109442_
                                     _tl108874109444_
                                     ___splice111248111249_
                                     _target108877109447_
                                     _tl108879109449_))))
                            (___match111287111288_
                             _e108876109439_
                             _hd108875109442_
                             _tl108874109444_
                             ___splice111248111249_
                             _target108877109447_
                             _tl108879109449_))))
                    (let ((_xarg108909109548_ (reverse _xarg108908109521_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108886109476_))
                          (let ((_L109551_ _xarg108909109548_)
                                (_L109552_ _hd108899109506_)
                                (_L109553_ _arg108885109468_))
                            (if (and (let ((__tmp112689
                                            (let ((__tmp112690
                                                   (lambda (_g109581109584_
                                                            _g109582109586_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109581109584_
                                                             _g109582109586_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112690
                                                      '()
                                                      _L109553_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp112689))
                                     (fx= (length (let ((__tmp112687
                                                         (lambda (_g109588109591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g109589109593_)
                   (let ()
                     (declare (not safe))
                     (cons _g109588109591_ _g109589109593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112687
                                                            '()
                                                            _L109553_)))
                                          (length (let ((__tmp112688
                                                         (lambda (_g109595109598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g109596109600_)
                   (let ()
                     (declare (not safe))
                     (cons _g109595109598_ _g109596109600_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112688
                                                            '()
                                                            _L109551_))))
                                     (let ((__tmp112685
                                            (let ((__tmp112686
                                                   (lambda (_g109602109605_
                                                            _g109603109607_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109602109605_
                                                             _g109603109607_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112686
                                                      '()
                                                      _L109553_)))
                                           (__tmp112683
                                            (let ((__tmp112684
                                                   (lambda (_g109609109612_
                                                            _g109610109614_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g109609109612_
                                                             _g109610109614_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp112684
                                                      '()
                                                      _L109551_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp112685
                                                __tmp112683))
                                     (let ((__tmp112679
                                            (let ((__tmp112682
                                                   (lambda (_g109616109618_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g109616109618_
                                                        _L109552_))))
                                                  (__tmp112680
                                                   (let ((__tmp112681
                                                          (lambda (_g109620109623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g109621109625_)
                    (let ()
                      (declare (not safe))
                      (cons _g109620109623_ _g109621109625_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp112681
                                                             '()
                                                             _L109553_))))
                                              (declare (not safe))
                                              (find __tmp112682 __tmp112680))))
                                       (declare (not safe))
                                       (not __tmp112679)))
                                (___kont111246111247_
                                 _L109551_
                                 _L109552_
                                 _L109553_)
                                (___match111287111288_
                                 _e108876109439_
                                 _hd108875109442_
                                 _tl108874109444_
                                 ___splice111248111249_
                                 _target108877109447_
                                 _tl108879109449_)))
                          (___match111287111288_
                           _e108876109439_
                           _hd108875109442_
                           _tl108874109444_
                           ___splice111248111249_
                           _target108877109447_
                           _tl108879109449_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop108904109516_
                                                 _target108901109511_
                                                 '())))
                                            (___match111287111288_
                                             _e108876109439_
                                             _hd108875109442_
                                             _tl108874109444_
                                             ___splice111248111249_
                                             _target108877109447_
                                             _tl108879109449_))))
                                    (___match111287111288_
                                     _e108876109439_
                                     _hd108875109442_
                                     _tl108874109444_
                                     ___splice111248111249_
                                     _target108877109447_
                                     _tl108879109449_))
                                (___match111287111288_
                                 _e108876109439_
                                 _hd108875109442_
                                 _tl108874109444_
                                 ___splice111248111249_
                                 _target108877109447_
                                 _tl108879109449_))))
                        (___match111287111288_
                         _e108876109439_
                         _hd108875109442_
                         _tl108874109444_
                         ___splice111248111249_
                         _target108877109447_
                         _tl108879109449_))
                    (___match111287111288_
                     _e108876109439_
                     _hd108875109442_
                     _tl108874109444_
                     ___splice111248111249_
                     _target108877109447_
                     _tl108879109449_))
                (___match111287111288_
                 _e108876109439_
                 _hd108875109442_
                 _tl108874109444_
                 ___splice111248111249_
                 _target108877109447_
                 _tl108879109449_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match111287111288_
                                                 _e108876109439_
                                                 _hd108875109442_
                                                 _tl108874109444_
                                                 ___splice111248111249_
                                                 _target108877109447_
                                                 _tl108879109449_))))
                                        (___match111287111288_
                                         _e108876109439_
                                         _hd108875109442_
                                         _tl108874109444_
                                         ___splice111248111249_
                                         _target108877109447_
                                         _tl108879109449_))
                                    (___match111287111288_
                                     _e108876109439_
                                     _hd108875109442_
                                     _tl108874109444_
                                     ___splice111248111249_
                                     _target108877109447_
                                     _tl108879109449_))
                                (___match111287111288_
                                 _e108876109439_
                                 _hd108875109442_
                                 _tl108874109444_
                                 ___splice111248111249_
                                 _target108877109447_
                                 _tl108879109449_))))
                        (___match111287111288_
                         _e108876109439_
                         _hd108875109442_
                         _tl108874109444_
                         ___splice111248111249_
                         _target108877109447_
                         _tl108879109449_))))
                (___match111287111288_
                 _e108876109439_
                 _hd108875109442_
                 _tl108874109444_
                 ___splice111248111249_
                 _target108877109447_
                 _tl108879109449_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108880109452_
                                       _target108877109447_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111244111245_))
                              (let ((_e108876109439_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111244111245_))))
                                (let ((_tl108874109444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108876109439_)))
                                      (_hd108875109442_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108876109439_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd108875109442_))
                                      (let ((___splice111248111249_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd108875109442_
                                                '0))))
                                        (let ((_tl108879109449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111248111249_
                                                  '1)))
                                              (_target108877109447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111248111249_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108879109449_))
                                              (___match111275111276_
                                               _e108876109439_
                                               _hd108875109442_
                                               _tl108874109444_
                                               ___splice111248111249_
                                               _target108877109447_
                                               _tl108879109449_)
                                              (___match111287111288_
                                               _e108876109439_
                                               _hd108875109442_
                                               _tl108874109444_
                                               ___splice111248111249_
                                               _target108877109447_
                                               _tl108879109449_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl108874109444_))
                                          (let ((_e108991109046_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl108874109444_))))
                                            (let ((_tl108989109051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e108991109046_)))
                                                  (_hd108990109049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e108991109046_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108990109049_))
                                                  (let ((_e108994109054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108990109049_))))
                                                    (let ((_tl108992109059_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108994109054_)))
                                                          (_hd108993109057_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108994109054_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd108993109057_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd108993109057_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108992109059_))
                          (let ((_e108997109062_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108992109059_))))
                            (let ((_tl108995109067_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108997109062_)))
                                  (_hd108996109065_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108997109062_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd108996109065_))
                                  (let ((_e109000109070_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd108996109065_))))
                                    (let ((_tl108998109075_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109000109070_)))
                                          (_hd108999109073_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109000109070_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd108999109073_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd108999109073_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl108998109075_))
                                                  (let ((_e109003109078_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl108998109075_))))
                                                    (let ((_tl109001109083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109003109078_)))
                                                          (_hd109002109081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109003109078_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109001109083_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl108995109067_))
                      (let ((_e109006109086_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl108995109067_))))
                        (let ((_tl109004109091_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109006109086_)))
                              (_hd109005109089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109006109086_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd109005109089_))
                              (let ((_e109009109094_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd109005109089_))))
                                (let ((_tl109007109099_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109009109094_)))
                                      (_hd109008109097_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109009109094_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd109008109097_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd109008109097_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl109007109099_))
                                              (let ((_e109012109102_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl109007109099_))))
                                                (let ((_tl109010109107_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109012109102_)))
                                                      (_hd109011109105_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109012109102_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109010109107_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl109004109091_))
                                                          (let ((_e109015109110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl109004109091_))))
                    (let ((_tl109013109115_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109015109110_)))
                          (_hd109014109113_
                           (let ()
                             (declare (not safe))
                             (##car _e109015109110_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd109014109113_))
                          (let ((_e109018109118_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd109014109113_))))
                            (let ((_tl109016109123_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109018109118_)))
                                  (_hd109017109121_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109018109118_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd109017109121_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd109017109121_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl109016109123_))
                                          (let ((_e109021109126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl109016109123_))))
                                            (let ((_tl109019109131_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109021109126_)))
                                                  (_hd109020109129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109021109126_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl109019109131_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109013109115_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl108989109051_))
                                                          (___match111385111386_
                                                           _e108876109439_
                                                           _hd108875109442_
                                                           _tl108874109444_
                                                           _e108991109046_
                                                           _hd108990109049_
                                                           _tl108989109051_
                                                           _e108994109054_
                                                           _hd108993109057_
                                                           _tl108992109059_
                                                           _e108997109062_
                                                           _hd108996109065_
                                                           _tl108995109067_
                                                           _e109000109070_
                                                           _hd108999109073_
                                                           _tl108998109075_
                                                           _e109003109078_
                                                           _hd109002109081_
                                                           _tl109001109083_
                                                           _e109006109086_
                                                           _hd109005109089_
                                                           _tl109004109091_
                                                           _e109009109094_
                                                           _hd109008109097_
                                                           _tl109007109099_
                                                           _e109012109102_
                                                           _hd109011109105_
                                                           _tl109010109107_
                                                           _e109015109110_
                                                           _hd109014109113_
                                                           _tl109013109115_
                                                           _e109018109118_
                                                           _hd109017109121_
                                                           _tl109016109123_
                                                           _e109021109126_
                                                           _hd109020109129_
                                                           _tl109019109131_)
                                                          (___kont111260111261_))
                                                      (___kont111260111261_))
                                                  (___kont111260111261_))))
                                          (___kont111260111261_))
                                      (___kont111260111261_))
                                  (___kont111260111261_))))
                          (___kont111260111261_))))
                  (___kont111260111261_))
              (___kont111260111261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont111260111261_))
                                          (___kont111260111261_))
                                      (___kont111260111261_))))
                              (___kont111260111261_))))
                      (___kont111260111261_))
                  (___kont111260111261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111260111261_))
                                              (___kont111260111261_))
                                          (___kont111260111261_))))
                                  (___kont111260111261_))))
                          (___kont111260111261_))
                      (___kont111260111261_))
                  (___kont111260111261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111260111261_))))
                                          (___kont111260111261_)))))
                              (___kont111260111261_)))))))
                 (_dispatch-case-e108177_
                  (lambda (_hd108325_ _body108326_)
                    (let* ((_form108328_
                            (let ((__tmp112693
                                   (let ()
                                     (declare (not safe))
                                     (cons _body108326_ '()))))
                              (declare (not safe))
                              (cons _hd108325_ __tmp112693)))
                           (___stx111388111389_ _form108328_)
                           (_g108332108456_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111388111389_)))))
                      (let ((___kont111390111391_
                             (lambda (_L108827_ _L108828_ _L108829_)
                               (let ((__tmp112694
                                      (let ((__tmp112696
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112695
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108828_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112696 __tmp112695))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self108173_ __tmp112694))))
                            (___kont111396111397_
                             (lambda (_L108675_ _L108676_ _L108677_ _L108678_)
                               (let ((__tmp112697
                                      (let ((__tmp112699
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112698
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108675_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112699 __tmp112698))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self108173_ __tmp112697))))
                            (___kont111400111401_
                             (lambda (_L108541_ _L108542_ _L108543_)
                               (let ((__tmp112700
                                      (let ((__tmp112702
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp112701
                                             (let ()
                                               (declare (not safe))
                                               (cons _L108541_ '()))))
                                        (declare (not safe))
                                        (cons __tmp112702 __tmp112701))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self108173_
                                  __tmp112700)))))
                        (let* ((___match111497111498_
                                (lambda (_e108424108461_
                                         _hd108423108464_
                                         _tl108422108466_
                                         _e108427108469_
                                         _hd108426108472_
                                         _tl108425108474_
                                         _e108430108477_
                                         _hd108429108480_
                                         _tl108428108482_
                                         _e108433108485_
                                         _hd108432108488_
                                         _tl108431108490_
                                         _e108436108493_
                                         _hd108435108496_
                                         _tl108434108498_
                                         _e108439108501_
                                         _hd108438108504_
                                         _tl108437108506_
                                         _e108442108509_
                                         _hd108441108512_
                                         _tl108440108514_
                                         _e108445108517_
                                         _hd108444108520_
                                         _tl108443108522_
                                         _e108448108525_
                                         _hd108447108528_
                                         _tl108446108530_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108440108514_))
                                      (let ((_e108451108533_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108440108514_))))
                                        (let ((_tl108449108538_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108451108533_)))
                                              (_hd108450108536_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108451108533_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108449108538_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl108425108474_))
                                                  (___kont111400111401_
                                                   _hd108447108528_
                                                   _hd108438108504_
                                                   _hd108423108464_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108332108456_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g108332108456_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108332108456_)))))
                               (___match111427111428_
                                (lambda (_e108385108579_
                                         _hd108384108582_
                                         _tl108383108584_
                                         ___splice111398111399_
                                         _target108386108587_
                                         _tl108388108589_)
                                  (letrec ((_loop108389108592_
                                            (lambda (_hd108387108595_
                                                     _arg108393108597_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108387108595_))
                                                  (let ((_e108390108600_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108387108595_))))
                                                    (let ((_lp-tl108392108605_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108390108600_)))
                                                          (_lp-hd108391108603_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108390108600_))))
                                                      (let ((__tmp112703
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108391108603_ _arg108393108597_))))
                (declare (not safe))
                (_loop108389108592_ _lp-tl108392108605_ __tmp112703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108394108608_
                                                         (reverse _arg108393108597_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108383108584_))
                                                        (let ((_e108397108611_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108383108584_))))
                  (let ((_tl108395108616_
                         (let () (declare (not safe)) (##cdr _e108397108611_)))
                        (_hd108396108614_
                         (let ()
                           (declare (not safe))
                           (##car _e108397108611_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108396108614_))
                        (let ((_e108400108619_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108396108614_))))
                          (let ((_tl108398108624_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108400108619_)))
                                (_hd108399108622_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108400108619_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108399108622_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108399108622_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108398108624_))
                                        (let ((_e108403108627_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108398108624_))))
                                          (let ((_tl108401108632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108403108627_)))
                                                (_hd108402108630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108403108627_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108402108630_))
                                                (let ((_e108406108635_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108402108630_))))
                                                  (let ((_tl108404108640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108406108635_)))
                                                        (_hd108405108638_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108406108635_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108405108638_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108405108638_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108404108640_))
                        (let ((_e108409108643_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108404108640_))))
                          (let ((_tl108407108648_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108409108643_)))
                                (_hd108408108646_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108409108643_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108407108648_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl108401108632_))
                                    (let ((_e108412108651_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl108401108632_))))
                                      (let ((_tl108410108656_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e108412108651_)))
                                            (_hd108411108654_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e108412108651_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd108411108654_))
                                            (let ((_e108415108659_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd108411108654_))))
                                              (let ((_tl108413108664_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108415108659_)))
                                                    (_hd108414108662_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108415108659_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd108414108662_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd108414108662_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108413108664_))
                                                            (let ((_e108418108667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108413108664_))))
                      (let ((_tl108416108672_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108418108667_)))
                            (_hd108417108670_
                             (let ()
                               (declare (not safe))
                               (##car _e108418108667_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108416108672_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108395108616_))
                                (___kont111396111397_
                                 _hd108417108670_
                                 _hd108408108646_
                                 _tl108388108589_
                                 _arg108394108608_)
                                (___match111497111498_
                                 _e108385108579_
                                 _hd108384108582_
                                 _tl108383108584_
                                 _e108397108611_
                                 _hd108396108614_
                                 _tl108395108616_
                                 _e108400108619_
                                 _hd108399108622_
                                 _tl108398108624_
                                 _e108403108627_
                                 _hd108402108630_
                                 _tl108401108632_
                                 _e108406108635_
                                 _hd108405108638_
                                 _tl108404108640_
                                 _e108409108643_
                                 _hd108408108646_
                                 _tl108407108648_
                                 _e108412108651_
                                 _hd108411108654_
                                 _tl108410108656_
                                 _e108415108659_
                                 _hd108414108662_
                                 _tl108413108664_
                                 _e108418108667_
                                 _hd108417108670_
                                 _tl108416108672_))
                            (let () (declare (not safe)) (_g108332108456_)))))
                    (let () (declare (not safe)) (_g108332108456_)))
                (let () (declare (not safe)) (_g108332108456_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108332108456_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g108332108456_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g108332108456_)))
                                (let ()
                                  (declare (not safe))
                                  (_g108332108456_)))))
                        (let () (declare (not safe)) (_g108332108456_)))
                    (let () (declare (not safe)) (_g108332108456_)))
                (let () (declare (not safe)) (_g108332108456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108332108456_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108332108456_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g108332108456_)))
                                (let ()
                                  (declare (not safe))
                                  (_g108332108456_)))))
                        (let () (declare (not safe)) (_g108332108456_)))))
                (let () (declare (not safe)) (_g108332108456_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108389108592_
                                       _target108386108587_
                                       '())))))
                               (___match111415111416_
                                (lambda (_e108339108715_
                                         _hd108338108718_
                                         _tl108337108720_
                                         ___splice111392111393_
                                         _target108340108723_
                                         _tl108342108725_)
                                  (letrec ((_loop108343108728_
                                            (lambda (_hd108341108731_
                                                     _arg108347108733_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108341108731_))
                                                  (let ((_e108344108736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108341108731_))))
                                                    (let ((_lp-tl108346108741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108344108736_)))
                                                          (_lp-hd108345108739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108344108736_))))
                                                      (let ((__tmp112705
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd108345108739_ _arg108347108733_))))
                (declare (not safe))
                (_loop108343108728_ _lp-tl108346108741_ __tmp112705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg108348108744_
                                                         (reverse _arg108347108733_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl108337108720_))
                                                        (let ((_e108351108747_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl108337108720_))))
                  (let ((_tl108349108752_
                         (let () (declare (not safe)) (##cdr _e108351108747_)))
                        (_hd108350108750_
                         (let ()
                           (declare (not safe))
                           (##car _e108351108747_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd108350108750_))
                        (let ((_e108354108755_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd108350108750_))))
                          (let ((_tl108352108760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108354108755_)))
                                (_hd108353108758_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108354108755_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd108353108758_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd108353108758_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108352108760_))
                                        (let ((_e108357108763_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108352108760_))))
                                          (let ((_tl108355108768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108357108763_)))
                                                (_hd108356108766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108357108763_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108356108766_))
                                                (let ((_e108360108771_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108356108766_))))
                                                  (let ((_tl108358108776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108360108771_)))
                                                        (_hd108359108774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108360108771_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd108359108774_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd108359108774_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl108358108776_))
                        (let ((_e108363108779_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl108358108776_))))
                          (let ((_tl108361108784_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108363108779_)))
                                (_hd108362108782_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108363108779_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl108361108784_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl108355108768_))
                                    (let ((___splice111394111395_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl108355108768_
                                              '0))))
                                      (let ((_tl108366108789_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111394111395_
                                                '1)))
                                            (_target108364108787_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice111394111395_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl108366108789_))
                                            (letrec ((_loop108367108792_
                                                      (lambda (_hd108365108795_
                                                               _xarg108371108797_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd108365108795_))
                                                            (let ((_e108368108800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd108365108795_))))
                      (let ((_lp-tl108370108805_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108368108800_)))
                            (_lp-hd108369108803_
                             (let ()
                               (declare (not safe))
                               (##car _e108368108800_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd108369108803_))
                            (let ((_e108375108808_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd108369108803_))))
                              (let ((_tl108373108813_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108375108808_)))
                                    (_hd108374108811_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108375108808_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108374108811_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd108374108811_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108373108813_))
                                            (let ((_e108378108816_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108373108813_))))
                                              (let ((_tl108376108821_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108378108816_)))
                                                    (_hd108377108819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108378108816_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108376108821_))
                                                    (let ((__tmp112704
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd108377108819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg108371108797_))))
              (declare (not safe))
              (_loop108367108792_ _lp-tl108370108805_ __tmp112704))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match111427111428_
                                                     _e108339108715_
                                                     _hd108338108718_
                                                     _tl108337108720_
                                                     ___splice111392111393_
                                                     _target108340108723_
                                                     _tl108342108725_))))
                                            (___match111427111428_
                                             _e108339108715_
                                             _hd108338108718_
                                             _tl108337108720_
                                             ___splice111392111393_
                                             _target108340108723_
                                             _tl108342108725_))
                                        (___match111427111428_
                                         _e108339108715_
                                         _hd108338108718_
                                         _tl108337108720_
                                         ___splice111392111393_
                                         _target108340108723_
                                         _tl108342108725_))
                                    (___match111427111428_
                                     _e108339108715_
                                     _hd108338108718_
                                     _tl108337108720_
                                     ___splice111392111393_
                                     _target108340108723_
                                     _tl108342108725_))))
                            (___match111427111428_
                             _e108339108715_
                             _hd108338108718_
                             _tl108337108720_
                             ___splice111392111393_
                             _target108340108723_
                             _tl108342108725_))))
                    (let ((_xarg108372108824_ (reverse _xarg108371108797_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108349108752_))
                          (___kont111390111391_
                           _xarg108372108824_
                           _hd108362108782_
                           _arg108348108744_)
                          (___match111427111428_
                           _e108339108715_
                           _hd108338108718_
                           _tl108337108720_
                           ___splice111392111393_
                           _target108340108723_
                           _tl108342108725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop108367108792_
                                                 _target108364108787_
                                                 '())))
                                            (___match111427111428_
                                             _e108339108715_
                                             _hd108338108718_
                                             _tl108337108720_
                                             ___splice111392111393_
                                             _target108340108723_
                                             _tl108342108725_))))
                                    (___match111427111428_
                                     _e108339108715_
                                     _hd108338108718_
                                     _tl108337108720_
                                     ___splice111392111393_
                                     _target108340108723_
                                     _tl108342108725_))
                                (___match111427111428_
                                 _e108339108715_
                                 _hd108338108718_
                                 _tl108337108720_
                                 ___splice111392111393_
                                 _target108340108723_
                                 _tl108342108725_))))
                        (___match111427111428_
                         _e108339108715_
                         _hd108338108718_
                         _tl108337108720_
                         ___splice111392111393_
                         _target108340108723_
                         _tl108342108725_))
                    (___match111427111428_
                     _e108339108715_
                     _hd108338108718_
                     _tl108337108720_
                     ___splice111392111393_
                     _target108340108723_
                     _tl108342108725_))
                (___match111427111428_
                 _e108339108715_
                 _hd108338108718_
                 _tl108337108720_
                 ___splice111392111393_
                 _target108340108723_
                 _tl108342108725_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match111427111428_
                                                 _e108339108715_
                                                 _hd108338108718_
                                                 _tl108337108720_
                                                 ___splice111392111393_
                                                 _target108340108723_
                                                 _tl108342108725_))))
                                        (___match111427111428_
                                         _e108339108715_
                                         _hd108338108718_
                                         _tl108337108720_
                                         ___splice111392111393_
                                         _target108340108723_
                                         _tl108342108725_))
                                    (___match111427111428_
                                     _e108339108715_
                                     _hd108338108718_
                                     _tl108337108720_
                                     ___splice111392111393_
                                     _target108340108723_
                                     _tl108342108725_))
                                (___match111427111428_
                                 _e108339108715_
                                 _hd108338108718_
                                 _tl108337108720_
                                 ___splice111392111393_
                                 _target108340108723_
                                 _tl108342108725_))))
                        (___match111427111428_
                         _e108339108715_
                         _hd108338108718_
                         _tl108337108720_
                         ___splice111392111393_
                         _target108340108723_
                         _tl108342108725_))))
                (___match111427111428_
                 _e108339108715_
                 _hd108338108718_
                 _tl108337108720_
                 ___splice111392111393_
                 _target108340108723_
                 _tl108342108725_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop108343108728_
                                       _target108340108723_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111388111389_))
                              (let ((_e108339108715_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111388111389_))))
                                (let ((_tl108337108720_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108339108715_)))
                                      (_hd108338108718_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108339108715_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd108338108718_))
                                      (let ((___splice111392111393_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd108338108718_
                                                '0))))
                                        (let ((_tl108342108725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111392111393_
                                                  '1)))
                                              (_target108340108723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice111392111393_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108342108725_))
                                              (___match111415111416_
                                               _e108339108715_
                                               _hd108338108718_
                                               _tl108337108720_
                                               ___splice111392111393_
                                               _target108340108723_
                                               _tl108342108725_)
                                              (___match111427111428_
                                               _e108339108715_
                                               _hd108338108718_
                                               _tl108337108720_
                                               ___splice111392111393_
                                               _target108340108723_
                                               _tl108342108725_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl108337108720_))
                                          (let ((_e108427108469_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl108337108720_))))
                                            (let ((_tl108425108474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e108427108469_)))
                                                  (_hd108426108472_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e108427108469_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd108426108472_))
                                                  (let ((_e108430108477_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd108426108472_))))
                                                    (let ((_tl108428108482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108430108477_)))
                                                          (_hd108429108480_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108430108477_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd108429108480_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd108429108480_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108428108482_))
                          (let ((_e108433108485_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108428108482_))))
                            (let ((_tl108431108490_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108433108485_)))
                                  (_hd108432108488_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108433108485_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd108432108488_))
                                  (let ((_e108436108493_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd108432108488_))))
                                    (let ((_tl108434108498_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108436108493_)))
                                          (_hd108435108496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108436108493_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd108435108496_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd108435108496_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl108434108498_))
                                                  (let ((_e108439108501_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl108434108498_))))
                                                    (let ((_tl108437108506_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e108439108501_)))
                                                          (_hd108438108504_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e108439108501_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl108437108506_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl108431108490_))
                      (let ((_e108442108509_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl108431108490_))))
                        (let ((_tl108440108514_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108442108509_)))
                              (_hd108441108512_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108442108509_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd108441108512_))
                              (let ((_e108445108517_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd108441108512_))))
                                (let ((_tl108443108522_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108445108517_)))
                                      (_hd108444108520_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108445108517_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd108444108520_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd108444108520_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl108443108522_))
                                              (let ((_e108448108525_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl108443108522_))))
                                                (let ((_tl108446108530_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108448108525_)))
                                                      (_hd108447108528_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108448108525_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl108446108530_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl108440108514_))
                                                          (let ((_e108451108533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl108440108514_))))
                    (let ((_tl108449108538_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108451108533_)))
                          (_hd108450108536_
                           (let ()
                             (declare (not safe))
                             (##car _e108451108533_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl108449108538_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl108425108474_))
                              (___kont111400111401_
                               _hd108447108528_
                               _hd108438108504_
                               _hd108338108718_)
                              (let () (declare (not safe)) (_g108332108456_)))
                          (let () (declare (not safe)) (_g108332108456_)))))
                  (let () (declare (not safe)) (_g108332108456_)))
              (let () (declare (not safe)) (_g108332108456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108332108456_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g108332108456_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g108332108456_)))))
                              (let ()
                                (declare (not safe))
                                (_g108332108456_)))))
                      (let () (declare (not safe)) (_g108332108456_)))
                  (let () (declare (not safe)) (_g108332108456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108332108456_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g108332108456_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g108332108456_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g108332108456_)))))
                          (let () (declare (not safe)) (_g108332108456_)))
                      (let () (declare (not safe)) (_g108332108456_)))
                  (let () (declare (not safe)) (_g108332108456_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g108332108456_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g108332108456_))))))
                              (let ()
                                (declare (not safe))
                                (_g108332108456_))))))))
                 (_generate1108178_
                  (lambda (_args108313_ _arglen108314_ _hd108315_ _body108316_)
                    (let* ((_len108318_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd108315_)))
                           (_condition108320_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd108315_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp112720
                                           (let ((__tmp112721
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len108318_ '()))))
                                             (declare (not safe))
                                             (cons _arglen108314_
                                                   __tmp112721))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp112720))
                                    (let ((__tmp112714
                                           (let ((__tmp112715
                                                  (let ((__tmp112716
                                                         (let ((__tmp112717
                                                                (let ((__tmp112718
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112719
                                      (let ()
                                        (declare (not safe))
                                        (cons _len108318_ '()))))
                                 (declare (not safe))
                                 (cons _arglen108314_ __tmp112719))))
                          (declare (not safe))
                          (cons '##fx= __tmp112718))))
                   (declare (not safe))
                   (cons __tmp112717 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp112716))))
                                             (declare (not safe))
                                             (cons '() __tmp112715))))
                                      (declare (not safe))
                                      (cons 'let __tmp112714)))
                                (if (> _len108318_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp112712
                                               (let ((__tmp112713
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len108318_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen108314_
                                                       __tmp112713))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp112712))
                                        (let ((__tmp112706
                                               (let ((__tmp112707
                                                      (let ((__tmp112708
                                                             (let ((__tmp112709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112710
                                   (let ((__tmp112711
                                          (let ()
                                            (declare (not safe))
                                            (cons _len108318_ '()))))
                                     (declare (not safe))
                                     (cons _arglen108314_ __tmp112711))))
                              (declare (not safe))
                              (cons '##fx>= __tmp112710))))
                       (declare (not safe))
                       (cons __tmp112709 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp112708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp112707))))
                                          (declare (not safe))
                                          (cons 'let __tmp112706)))
                                    '#t)))
                           (_dispatch108322_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?108176_
                                   _hd108315_
                                   _body108316_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e108177_
                                   _hd108315_
                                   _body108316_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self108173_
                                   _hd108315_
                                   _body108316_)))))
                      (let ((__tmp112722
                             (let ((__tmp112723
                                    (let ((__tmp112724
                                           (let ((__tmp112725
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args108313_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch108322_
                                                   __tmp112725))))
                                      (declare (not safe))
                                      (cons 'apply __tmp112724))))
                               (declare (not safe))
                               (cons __tmp112723 '()))))
                        (declare (not safe))
                        (cons _condition108320_ __tmp112722))))))
          (let* ((_g108180108208_
                  (lambda (_g108181108205_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108181108205_))))
                 (_g108179108310_
                  (lambda (_g108181108211_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108181108211_))
                        (let ((_e108186108213_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108181108211_))))
                          (let ((_hd108185108216_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108186108213_)))
                                (_tl108184108218_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108186108213_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl108184108218_))
                                (let ((_g112726_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl108184108218_
                                          '0))))
                                  (begin
                                    (let ((_g112727_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g112726_)
                                                 (##vector-length _g112726_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g112727_ 2)))
                                          (error "Context expects 2 values"
                                                 _g112727_)))
                                    (let ((_target108187108221_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g112726_ 0)))
                                          (_tl108189108223_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g112726_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108189108223_))
                                          (letrec ((_loop108190108226_
                                                    (lambda (_hd108188108229_
                                                             _body108194108231_
                                                             _hd108195108233_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd108188108229_))
                                                          (let ((_e108191108236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd108188108229_))))
                    (let ((_lp-hd108192108239_
                           (let ()
                             (declare (not safe))
                             (##car _e108191108236_)))
                          (_lp-tl108193108241_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108191108236_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd108192108239_))
                          (let ((_e108200108244_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd108192108239_))))
                            (let ((_hd108199108247_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108200108244_)))
                                  (_tl108198108249_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108200108244_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl108198108249_))
                                  (let ((_e108203108252_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl108198108249_))))
                                    (let ((_hd108202108255_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108203108252_)))
                                          (_tl108201108257_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108203108252_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108201108257_))
                                          (let ((__tmp112756
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd108202108255_
                                                         _body108194108231_)))
                                                (__tmp112755
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd108199108247_
                                                         _hd108195108233_))))
                                            (declare (not safe))
                                            (_loop108190108226_
                                             _lp-tl108193108241_
                                             __tmp112756
                                             __tmp112755))
                                          (let ()
                                            (declare (not safe))
                                            (_g108180108208_
                                             _g108181108211_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g108180108208_ _g108181108211_)))))
                          (let ()
                            (declare (not safe))
                            (_g108180108208_ _g108181108211_)))))
                  (let ((_body108196108260_ (reverse _body108194108231_))
                        (_hd108197108262_ (reverse _hd108195108233_)))
                    ((lambda (_L108265_ _L108266_)
                       (let ((_args108285_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen108286_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name108287_
                              (let ((_$e108282_
                                     (let ((__tmp112728
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp112728 _stx108174_))))
                                (if _$e108282_
                                    _$e108282_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp112729
                                (let ((__tmp112730
                                       (let ((__tmp112731
                                              (let ((__tmp112732
                                                     (let ((__tmp112745
                                                            (let ((__tmp112746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112747
                                  (let ((__tmp112748
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp112754
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args108285_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp112754))
                                             (let ((__tmp112749
                                                    (let ((__tmp112750
                                                           (let ((__tmp112751
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112752
                                 (let ((__tmp112753
                                        (let ()
                                          (declare (not safe))
                                          (cons _args108285_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp112753))))
                            (declare (not safe))
                            (cons __tmp112752 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp112751))))
              (declare (not safe))
              (cons '() __tmp112750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp112749)))))
                                    (declare (not safe))
                                    (cons __tmp112748 '()))))
                             (declare (not safe))
                             (cons _arglen108286_ __tmp112747))))
                      (declare (not safe))
                      (cons __tmp112746 '())))
                   (__tmp112733
                    (let ((__tmp112734
                           (let ((__tmp112735
                                  (let ((__tmp112739
                                         (let ((__tmp112740
                                                (let ((__tmp112741
                                                       (let ((__tmp112742
                                                              (let ((__tmp112743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp112744
                                    (let ()
                                      (declare (not safe))
                                      (cons _args108285_ '()))))
                               (declare (not safe))
                               (cons _name108287_ __tmp112744))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp112743))))
                 (declare (not safe))
                 (cons __tmp112742 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp112741))))
                                           (declare (not safe))
                                           (cons __tmp112740 '())))
                                        (__tmp112736
                                         (map (lambda (_g108288108291_
                                                       _g108289108293_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1108178_
                                                   _args108285_
                                                   _arglen108286_
                                                   _g108288108291_
                                                   _g108289108293_)))
                                              (let ((__tmp112737
                                                     (lambda (_g108295108298_
                                                              _g108296108300_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108295108298_
                                                               _g108296108300_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112737
                                                        '()
                                                        _L108266_))
                                              (let ((__tmp112738
                                                     (lambda (_g108302108305_
                                                              _g108303108307_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108302108305_
                                                               _g108303108307_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp112738
                                                        '()
                                                        _L108265_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp112739 __tmp112736))))
                             (declare (not safe))
                             (cons 'cond __tmp112735))))
                      (declare (not safe))
                      (cons __tmp112734 '()))))
               (declare (not safe))
               (cons __tmp112745 __tmp112733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp112732))))
                                         (declare (not safe))
                                         (cons __tmp112731 '()))))
                                  (declare (not safe))
                                  (cons _args108285_ __tmp112730))))
                           (declare (not safe))
                           (cons 'lambda __tmp112729))))
                     _body108196108260_
                     _hd108197108262_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop108190108226_
                                               _target108187108221_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g108180108208_
                                             _g108181108211_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g108180108208_ _g108181108211_)))))
                        (let ()
                          (declare (not safe))
                          (_g108180108208_ _g108181108211_))))))
            (declare (not safe))
            (_g108179108310_ _stx108174_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self107444_ _stx107445_ _compiled-body?107446_)
        (letrec ((_generate-simple107448_
                  (lambda (_hd108158_ _body108159_)
                    (let ((__tmp112757
                           (let ((__tmp112758
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self107444_
                                     'let
                                     _hd108158_
                                     _body108159_
                                     _compiled-body?107446_))))
                             (declare (not safe))
                             (_coalesce-let*107450_ __tmp112758))))
                      (declare (not safe))
                      (_coalesce-boolean107449_ __tmp112757))))
                 (_coalesce-boolean107449_
                  (lambda (_code108019_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code108020108046_ _code108019_)
                               (_else108022108054_ (lambda () _code108019_))
                               (_K108024108091_
                                (lambda (_expr2108057_
                                         _expr1108058_
                                         _id108059_)
                                  (let* ((_expr2108060108068_ _expr2108057_)
                                         (_else108062108076_
                                          (lambda ()
                                            (let ((__tmp112759
                                                   (let ((__tmp112760
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2108057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1108058_
                                                           __tmp112760))))
                                              (declare (not safe))
                                              (cons 'or __tmp112759))))
                                         (_K108064108081_
                                          (lambda (_exprs108079_)
                                            (let ((__tmp112761
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1108058_
                                                           _exprs108079_))))
                                              (declare (not safe))
                                              (cons 'or __tmp112761)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2108060108068_))
                                        (let ((_hd108065108084_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2108060108068_)))
                                              (_tl108066108086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2108060108068_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd108065108084_ 'or))
                                              (let ((_exprs108089_
                                                     _tl108066108086_))
                                                (declare (not safe))
                                                (_K108064108081_
                                                 _exprs108089_))
                                              (let ()
                                                (declare (not safe))
                                                (_else108062108076_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else108062108076_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code108020108046_))
                              (let ((_hd108025108094_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code108020108046_)))
                                    (_tl108026108096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code108020108046_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd108025108094_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl108026108096_))
                                        (let ((_hd108027108099_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl108026108096_)))
                                              (_tl108028108101_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl108026108096_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd108027108099_))
                                              (let ((_hd108039108104_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd108027108099_)))
                                                    (_tl108040108106_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd108027108099_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd108039108104_))
                                                    (let ((_hd108041108109_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd108039108104_)))
                                                          (_tl108042108111_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd108039108104_))))
                                                      (let ((_id108114_
                                                             _hd108041108109_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl108042108111_))
                                                            (let ((_hd108043108116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl108042108111_)))
                          (_tl108044108118_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl108042108111_))))
                      (let ((_expr1108121_ _hd108043108116_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl108044108118_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl108040108106_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl108028108101_))
                                    (let ((_hd108029108123_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl108028108101_)))
                                          (_tl108030108125_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl108028108101_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd108029108123_))
                                          (let ((_hd108031108128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd108029108123_)))
                                                (_tl108032108130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd108029108123_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd108031108128_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl108032108130_))
                                                    (let ((_hd108033108133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl108032108130_)))
                                                          (_tl108034108135_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl108032108130_))))
                                                      (if ((lambda (_g108137108139_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g108137108139_ _id108114_)))
                   _hd108033108133_)
                  (if (let () (declare (not safe)) (##pair? _tl108034108135_))
                      (let ((_hd108035108142_
                             (let ()
                               (declare (not safe))
                               (##car _tl108034108135_)))
                            (_tl108036108144_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl108034108135_))))
                        (if ((lambda (_g108146108148_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g108146108148_ _id108114_)))
                             _hd108035108142_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl108036108144_))
                                (let ((_hd108037108151_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl108036108144_)))
                                      (_tl108038108153_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl108036108144_))))
                                  (let ((_expr2108156_ _hd108037108151_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108038108153_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl108030108125_))
                                            (let ()
                                              (declare (not safe))
                                              (_K108024108091_
                                               _expr2108156_
                                               _expr1108121_
                                               _id108114_))
                                            (let ()
                                              (declare (not safe))
                                              (_else108022108054_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else108022108054_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else108022108054_)))
                            (let ()
                              (declare (not safe))
                              (_else108022108054_))))
                      (let () (declare (not safe)) (_else108022108054_)))
                  (let () (declare (not safe)) (_else108022108054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else108022108054_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108022108054_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108022108054_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else108022108054_)))
                                (let ()
                                  (declare (not safe))
                                  (_else108022108054_)))
                            (let ()
                              (declare (not safe))
                              (_else108022108054_)))))
                    (let () (declare (not safe)) (_else108022108054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else108022108054_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else108022108054_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else108022108054_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else108022108054_))))
                              (let ()
                                (declare (not safe))
                                (_else108022108054_))))
                        _code108019_)))
                 (_coalesce-let*107450_
                  (lambda (_code107752_)
                    (let* ((_code107753107817_ _code107752_)
                           (_else107757107825_ (lambda () _code107752_)))
                      (let ((_K107799107970_
                             (lambda (_body107966_ _expr107967_ _id107968_)
                               (let ((__tmp112762
                                      (let ((__tmp112763
                                             (let ((__tmp112764
                                                    (let ((__tmp112765
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr107967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id107968_ __tmp112765))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112764 '()))))
                                        (declare (not safe))
                                        (cons __tmp112763 _body107966_))))
                                 (declare (not safe))
                                 (cons 'let __tmp112762))))
                            (_K107776107895_
                             (lambda (_body107889_
                                      _expr2107890_
                                      _id2107891_
                                      _expr1107892_
                                      _id1107893_)
                               (let ((__tmp112766
                                      (let ((__tmp112767
                                             (let ((__tmp112771
                                                    (let ((__tmp112772
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1107892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1107893_ __tmp112772)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp112768
                                                    (let ((__tmp112769
                                                           (let ((__tmp112770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2107890_ '()))))
                     (declare (not safe))
                     (cons _id2107891_ __tmp112770))))
              (declare (not safe))
              (cons __tmp112769 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112771
                                                     __tmp112768))))
                                        (declare (not safe))
                                        (cons __tmp112767 _body107889_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp112766))))
                            (_K107759107834_
                             (lambda (_body107829_
                                      _bind107830_
                                      _expr1107831_
                                      _id1107832_)
                               (let ((__tmp112773
                                      (let ((__tmp112774
                                             (let ((__tmp112775
                                                    (let ((__tmp112776
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1107831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1107832_ __tmp112776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112775
                                                     _bind107830_))))
                                        (declare (not safe))
                                        (cons __tmp112774 _body107829_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp112773)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code107753107817_))
                            (let ((_tl107801107975_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code107753107817_)))
                                  (_hd107800107973_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code107753107817_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107800107973_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl107801107975_))
                                      (let ((_tl107803107980_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl107801107975_)))
                                            (_hd107802107978_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl107801107975_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd107802107978_))
                                            (let ((_tl107811107985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd107802107978_)))
                                                  (_hd107810107983_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd107802107978_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd107810107983_))
                                                  (let ((_tl107813107990_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd107810107983_)))
                                                        (_hd107812107988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd107810107983_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl107813107990_))
                                                        (let ((_tl107815107997_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl107813107990_)))
                      (_hd107814107995_
                       (let () (declare (not safe)) (##car _tl107813107990_))))
                  (if (let () (declare (not safe)) (##null? _tl107815107997_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl107811107985_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl107803107980_))
                              (let ((_tl107805108004_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl107803107980_)))
                                    (_hd107804108002_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl107803107980_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd107804108002_))
                                    (let ((_tl107807108009_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd107804108002_)))
                                          (_hd107806108007_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd107804108002_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107806108007_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl107807108009_))
                                              (let ((_tl107809108014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl107807108009_)))
                                                    (_hd107808108012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl107807108009_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd107808108012_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl107805108004_))
                                                        (let ((_id107993_
                                                               _hd107812107988_)
                                                              (_expr108000_
                                                               _hd107814107995_)
                                                              (_body108017_
                                                               _tl107809108014_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K107799107970_
                                                             _body108017_
                                                             _expr108000_
                                                             _id107993_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else107757107825_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd107808108012_))
                                                        (let ((_tl107788107944_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd107808108012_)))
                      (_hd107787107942_
                       (let () (declare (not safe)) (##car _hd107808108012_))))
                  (if (let () (declare (not safe)) (##pair? _hd107787107942_))
                      (let ((_tl107790107949_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd107787107942_)))
                            (_hd107789107947_
                             (let ()
                               (declare (not safe))
                               (##car _hd107787107942_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107790107949_))
                            (let ((_tl107792107956_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107790107949_)))
                                  (_hd107791107954_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107790107949_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl107792107956_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107788107944_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107805108004_))
                                          (let ((_id1107918_ _hd107812107988_)
                                                (_expr1107925_
                                                 _hd107814107995_)
                                                (_id2107952_ _hd107789107947_)
                                                (_expr2107959_
                                                 _hd107791107954_)
                                                (_body107961_
                                                 _tl107809108014_))
                                            (let ()
                                              (declare (not safe))
                                              (_K107776107895_
                                               _body107961_
                                               _expr2107959_
                                               _id2107952_
                                               _expr1107925_
                                               _id1107918_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else107757107825_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107757107825_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107757107825_))))
                            (let ()
                              (declare (not safe))
                              (_else107757107825_))))
                      (let () (declare (not safe)) (_else107757107825_))))
                (let () (declare (not safe)) (_else107757107825_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else107757107825_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd107806108007_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl107807108009_))
                                                  (let ((_tl107769107878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl107807108009_)))
                                                        (_hd107768107876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl107807108009_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl107805108004_))
                                                        (let ((_id1107857_
                                                               _hd107812107988_)
                                                              (_expr1107864_
                                                               _hd107814107995_)
                                                              (_bind107881_
                                                               _hd107768107876_)
                                                              (_body107883_
                                                               _tl107769107878_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K107759107834_
                                                             _body107883_
                                                             _bind107881_
                                                             _expr1107864_
                                                             _id1107857_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else107757107825_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else107757107825_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else107757107825_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107757107825_))))
                              (let ()
                                (declare (not safe))
                                (_else107757107825_)))
                          (let () (declare (not safe)) (_else107757107825_)))
                      (let () (declare (not safe)) (_else107757107825_))))
                (let () (declare (not safe)) (_else107757107825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else107757107825_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107757107825_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else107757107825_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107757107825_))))
                            (let ()
                              (declare (not safe))
                              (_else107757107825_)))))))
                 (_generate-values107451_
                  (lambda (_hd107565_ _body107566_)
                    (let _lp107568_ ((_rest107570_ _hd107565_)
                                     (_bind107571_ '())
                                     (_check107572_ '())
                                     (_post107573_ '()))
                      (let* ((___stx111699111700_ _rest107570_)
                             (_g107576107587_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111699111700_)))))
                        (let ((___kont111701111702_
                               (lambda (_L107614_ _L107615_)
                                 (let* ((___stx111655111656_ _L107615_)
                                        (_g107630107655_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx111655111656_)))))
                                   (let ((___kont111657111658_
                                          (lambda (_L107728_ _L107729_)
                                            (let ((_eid107743_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L107729_)))
                                                  (_expr107744_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107444_
                                                      _L107728_))))
                                              (let ((__tmp112777
                                                     (let ((__tmp112778
                                                            (let ((__tmp112779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107744_ '()))))
                      (declare (not safe))
                      (cons _eid107743_ __tmp112779))))
               (declare (not safe))
               (cons __tmp112778 _bind107571_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp107568_
                                                 _L107614_
                                                 __tmp112777
                                                 _check107572_
                                                 _post107573_)))))
                                         (___kont111659111660_
                                          (lambda (_L107676_ _L107677_)
                                            (let* ((_vals107690_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values107692_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals107690_
                                                       _L107677_
                                                       _L107676_)))
                                                   (_refs107694_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals107690_
                                                       _L107677_)))
                                                   (_expr107696_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self107444_
                                                       _L107676_))))
                                              (let ((__tmp112782
                                                     (let ((__tmp112783
                                                            (let ((__tmp112784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107696_ '()))))
                      (declare (not safe))
                      (cons _vals107690_ __tmp112784))))
               (declare (not safe))
               (cons __tmp112783 _bind107571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp112781
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values107692_
                                                             _check107572_)))
                                                    (__tmp112780
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs107694_
                                                             _post107573_))))
                                                (declare (not safe))
                                                (_lp107568_
                                                 _L107614_
                                                 __tmp112782
                                                 __tmp112781
                                                 __tmp112780))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx111655111656_))
                                         (let ((_e107636107704_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx111655111656_))))
                                           (let ((_tl107634107709_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107636107704_)))
                                                 (_hd107635107707_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107636107704_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd107635107707_))
                                                 (let ((_e107639107712_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd107635107707_))))
                                                   (let ((_tl107637107717_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107639107712_)))
                                                         (_hd107638107715_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107639107712_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107637107717_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107634107709_))
                     (let ((_e107642107720_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107634107709_))))
                       (let ((_tl107640107725_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107642107720_)))
                             (_hd107641107723_
                              (let ()
                                (declare (not safe))
                                (##car _e107642107720_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107640107725_))
                             (___kont111657111658_
                              _hd107641107723_
                              _hd107638107715_)
                             (let () (declare (not safe)) (_g107630107655_)))))
                     (let () (declare (not safe)) (_g107630107655_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl107634107709_))
                     (let ((_e107650107668_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107634107709_))))
                       (let ((_tl107648107673_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107650107668_)))
                             (_hd107649107671_
                              (let ()
                                (declare (not safe))
                                (##car _e107650107668_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107648107673_))
                             (___kont111659111660_
                              _hd107649107671_
                              _hd107635107707_)
                             (let () (declare (not safe)) (_g107630107655_)))))
                     (let () (declare (not safe)) (_g107630107655_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107634107709_))
                                                     (let ((_e107650107668_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107634107709_))))
                                                       (let ((_tl107648107673_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107650107668_)))
                     (_hd107649107671_
                      (let () (declare (not safe)) (##car _e107650107668_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107648107673_))
                     (___kont111659111660_ _hd107649107671_ _hd107635107707_)
                     (let () (declare (not safe)) (_g107630107655_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g107630107655_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g107630107655_)))))))
                              (___kont111703111704_
                               (lambda ()
                                 (let* ((_body107594_
                                         (if _compiled-body?107446_
                                             _body107566_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self107444_
                                                _body107566_))))
                                        (_body107596_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post107452_
                                            _post107573_
                                            _body107594_)))
                                        (_body107598_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check107453_
                                            _check107572_
                                            _body107596_))))
                                   (let ((__tmp112785
                                          (let ((__tmp112787
                                                 (reverse _bind107571_))
                                                (__tmp112786
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body107598_ '()))))
                                            (declare (not safe))
                                            (cons __tmp112787 __tmp112786))))
                                     (declare (not safe))
                                     (cons 'let __tmp112785))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111699111700_))
                              (let ((_e107582107606_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111699111700_))))
                                (let ((_tl107580107611_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107582107606_)))
                                      (_hd107581107609_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107582107606_))))
                                  (___kont111701111702_
                                   _tl107580107611_
                                   _hd107581107609_)))
                              (___kont111703111704_)))))))
                 (_generate-values-post107452_
                  (lambda (_post107524_ _body107525_)
                    (let _lp107527_ ((_rest107529_ _post107524_)
                                     (_body107530_ _body107525_))
                      (let* ((_rest107531107539_ _rest107529_)
                             (_else107533107547_ (lambda () _body107530_))
                             (_K107535107553_
                              (lambda (_rest107550_ _bind107551_)
                                (let ((__tmp112788
                                       (let ((__tmp112789
                                              (let ((__tmp112790
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body107530_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind107551_
                                                      __tmp112790))))
                                         (declare (not safe))
                                         (cons 'let __tmp112789))))
                                  (declare (not safe))
                                  (_lp107527_ _rest107550_ __tmp112788)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107531107539_))
                            (let ((_hd107536107556_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107531107539_)))
                                  (_tl107537107558_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107531107539_))))
                              (let* ((_bind107561_ _hd107536107556_)
                                     (_rest107563_ _tl107537107558_))
                                (declare (not safe))
                                (_K107535107553_ _rest107563_ _bind107561_)))
                            (let ()
                              (declare (not safe))
                              (_else107533107547_)))))))
                 (_generate-values-check107453_
                  (lambda (_check107521_ _body107522_)
                    (let ((__tmp112791
                           (let ((__tmp112793
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107522_ '())))
                                 (__tmp112792 (reverse _check107521_)))
                             (declare (not safe))
                             (foldr1 cons __tmp112793 __tmp112792))))
                      (declare (not safe))
                      (cons 'begin __tmp112791)))))
          (let* ((_g107455107472_
                  (lambda (_g107456107469_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107456107469_))))
                 (_g107454107518_
                  (lambda (_g107456107475_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107456107475_))
                        (let ((_e107461107477_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107456107475_))))
                          (let ((_hd107460107480_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107461107477_)))
                                (_tl107459107482_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107461107477_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107459107482_))
                                (let ((_e107464107485_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107459107482_))))
                                  (let ((_hd107463107488_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107464107485_)))
                                        (_tl107462107490_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107464107485_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107462107490_))
                                        (let ((_e107467107493_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107462107490_))))
                                          (let ((_hd107466107496_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107467107493_)))
                                                (_tl107465107498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107467107493_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107465107498_))
                                                ((lambda (_L107501_ _L107502_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L107502_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple107448_
                                                          _L107502_
                                                          _L107501_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values107451_
                                                          _L107502_
                                                          _L107501_))))
                                                 _hd107466107496_
                                                 _hd107463107488_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107455107472_
                                                   _g107456107475_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107455107472_ _g107456107475_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107455107472_ _g107456107475_)))))
                        (let ()
                          (declare (not safe))
                          (_g107455107472_ _g107456107475_))))))
            (declare (not safe))
            (_g107454107518_ _stx107445_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self108164_ _stx108165_)
        (let ((_compiled-body?108167_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self108164_
           _stx108165_
           _compiled-body?108167_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g112795_
        (let ((_g112794_ (let () (declare (not safe)) (##length _g112795_))))
          (cond ((let () (declare (not safe)) (##fx= _g112794_ 2))
                 (apply (lambda (_self108164_ _stx108165_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self108164_
                             _stx108165_)))
                        _g112795_))
                ((let () (declare (not safe)) (##fx= _g112794_ 3))
                 (apply (lambda (_self108169_
                                 _stx108170_
                                 _compiled-body?108171_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self108169_
                             _stx108170_
                             _compiled-body?108171_)))
                        _g112795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g112795_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals107338_ _hd107339_)
        (let _lp107341_ ((_rest107343_ _hd107339_)
                         (_k107344_ '0)
                         (_r107345_ '()))
          (let* ((___stx111713111714_ _rest107343_)
                 (_g107350107367_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx111713111714_)))))
            (let ((___kont111715111716_
                   (lambda (_L107430_)
                     (let ((__tmp112796
                            (let () (declare (not safe)) (fx+ _k107344_ '1))))
                       (declare (not safe))
                       (_lp107341_ _L107430_ __tmp112796 _r107345_))))
                  (___kont111717111718_
                   (lambda (_L107403_ _L107404_)
                     (let ((__tmp112802
                            (let () (declare (not safe)) (fx+ _k107344_ '1)))
                           (__tmp112797
                            (let ((__tmp112798
                                   (let ((__tmp112801
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L107404_)))
                                         (__tmp112799
                                          (let ((__tmp112800
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals107338_
                                                    _k107344_
                                                    _L107403_))))
                                            (declare (not safe))
                                            (cons __tmp112800 '()))))
                                     (declare (not safe))
                                     (cons __tmp112801 __tmp112799))))
                              (declare (not safe))
                              (cons __tmp112798 _r107345_))))
                       (declare (not safe))
                       (_lp107341_ _L107403_ __tmp112802 __tmp112797))))
                  (___kont111719111720_
                   (lambda (_L107379_)
                     (let ((__tmp112803
                            (let ((__tmp112804
                                   (let ((__tmp112807
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L107379_)))
                                         (__tmp112805
                                          (let ((__tmp112806
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals107338_
                                                    _k107344_))))
                                            (declare (not safe))
                                            (cons __tmp112806 '()))))
                                     (declare (not safe))
                                     (cons __tmp112807 __tmp112805))))
                              (declare (not safe))
                              (cons __tmp112804 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp112803 _r107345_))))
                  (___kont111721111722_ (lambda () (reverse _r107345_))))
              (let ((_g107348107390_
                     (lambda ()
                       (let ((_L107379_ ___stx111713111714_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L107379_))
                             (___kont111719111720_ _L107379_)
                             (___kont111721111722_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx111713111714_))
                    (let ((_e107355107419_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx111713111714_))))
                      (let ((_tl107353107424_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107355107419_)))
                            (_hd107354107422_
                             (let ()
                               (declare (not safe))
                               (##car _e107355107419_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd107354107422_))
                            (let ((_e107356107427_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd107354107422_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e107356107427_ '#f))
                                  (___kont111715111716_ _tl107353107424_)
                                  (___kont111717111718_
                                   _tl107353107424_
                                   _hd107354107422_)))
                            (___kont111717111718_
                             _tl107353107424_
                             _hd107354107422_))))
                    (let () (declare (not safe)) (_g107348107390_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self107017_ _stx107018_ _compiled-body?107019_)
        (letrec ((_generate-simple107021_
                  (lambda (_hd107323_ _body107324_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self107017_
                       'letrec
                       _hd107323_
                       _body107324_
                       _compiled-body?107019_))))
                 (_generate-values107022_
                  (lambda (_hd107102_ _body107103_)
                    (let _lp107105_ ((_rest107107_ _hd107102_)
                                     (_bind107108_ '())
                                     (_check107109_ '())
                                     (_post107110_ '()))
                      (let* ((___stx111787111788_ _rest107107_)
                             (_g107113107124_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111787111788_)))))
                        (let ((___kont111789111790_
                               (lambda (_L107151_ _L107152_)
                                 (let* ((___stx111743111744_ _L107152_)
                                        (_g107167107192_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx111743111744_)))))
                                   (let ((___kont111745111746_
                                          (lambda (_L107299_ _L107300_)
                                            (let ((_eid107314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L107300_)))
                                                  (_expr107315_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107017_
                                                      _L107299_))))
                                              (let ((__tmp112808
                                                     (let ((__tmp112809
                                                            (let ((__tmp112810
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr107315_ '()))))
                      (declare (not safe))
                      (cons _eid107314_ __tmp112810))))
               (declare (not safe))
               (cons __tmp112809 _bind107108_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp107105_
                                                 _L107151_
                                                 __tmp112808
                                                 _check107109_
                                                 _post107110_)))))
                                         (___kont111747111748_
                                          (lambda (_L107213_ _L107214_)
                                            (let* ((_vals107227_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values107229_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals107227_
                                                       _L107214_
                                                       _L107213_)))
                                                   (_refs107231_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals107227_
                                                       _L107214_)))
                                                   (_expr107233_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self107017_
                                                       _L107213_))))
                                              (let ((__tmp112813
                                                     (let ((__tmp112816
                                                            (let ((__tmp112817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp112818
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr107233_ '()))))
                             (declare (not safe))
                             (cons _vals107227_ __tmp112818))))
                      (declare (not safe))
                      (cons __tmp112817 _bind107108_)))
                   (__tmp112814
                    (map (lambda (_e107235107237_)
                           (let* ((_g107239107248_ _e107235107237_)
                                  (_E107241107252_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g107239107248_))))
                                  (_K107242107257_
                                   (lambda (_eid107255_)
                                     (let ((__tmp112815
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid107255_ __tmp112815)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g107239107248_))
                                 (let ((_hd107243107260_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g107239107248_)))
                                       (_tl107244107262_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g107239107248_))))
                                   (let ((_eid107265_ _hd107243107260_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl107244107262_))
                                         (let ((_tl107246107267_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl107244107262_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl107246107267_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K107242107257_ _eid107265_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E107241107252_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E107241107252_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E107241107252_)))))
                         _refs107231_)))
               (declare (not safe))
               (foldl1 cons __tmp112816 __tmp112814)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp112812
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values107229_
                                                             _check107109_)))
                                                    (__tmp112811
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs107231_
                                                               _post107110_))))
                                                (declare (not safe))
                                                (_lp107105_
                                                 _L107151_
                                                 __tmp112813
                                                 __tmp112812
                                                 __tmp112811))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx111743111744_))
                                         (let ((_e107173107275_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx111743111744_))))
                                           (let ((_tl107171107280_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107173107275_)))
                                                 (_hd107172107278_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107173107275_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd107172107278_))
                                                 (let ((_e107176107283_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd107172107278_))))
                                                   (let ((_tl107174107288_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107176107283_)))
                                                         (_hd107175107286_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107176107283_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107174107288_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107171107280_))
                     (let ((_e107179107291_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107171107280_))))
                       (let ((_tl107177107296_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107179107291_)))
                             (_hd107178107294_
                              (let ()
                                (declare (not safe))
                                (##car _e107179107291_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107177107296_))
                             (___kont111745111746_
                              _hd107178107294_
                              _hd107175107286_)
                             (let () (declare (not safe)) (_g107167107192_)))))
                     (let () (declare (not safe)) (_g107167107192_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl107171107280_))
                     (let ((_e107187107205_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107171107280_))))
                       (let ((_tl107185107210_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107187107205_)))
                             (_hd107186107208_
                              (let ()
                                (declare (not safe))
                                (##car _e107187107205_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107185107210_))
                             (___kont111747111748_
                              _hd107186107208_
                              _hd107172107278_)
                             (let () (declare (not safe)) (_g107167107192_)))))
                     (let () (declare (not safe)) (_g107167107192_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107171107280_))
                                                     (let ((_e107187107205_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107171107280_))))
                                                       (let ((_tl107185107210_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107187107205_)))
                     (_hd107186107208_
                      (let () (declare (not safe)) (##car _e107187107205_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107185107210_))
                     (___kont111747111748_ _hd107186107208_ _hd107172107278_)
                     (let () (declare (not safe)) (_g107167107192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g107167107192_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g107167107192_)))))))
                              (___kont111791111792_
                               (lambda ()
                                 (let* ((_body107131_
                                         (if _compiled-body?107019_
                                             _body107103_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self107017_
                                                _body107103_))))
                                        (_body107133_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post107024_
                                            _post107110_
                                            _body107131_)))
                                        (_body107135_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check107023_
                                            _check107109_
                                            _body107133_))))
                                   (let ((__tmp112819
                                          (let ((__tmp112821
                                                 (reverse _bind107108_))
                                                (__tmp112820
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body107135_ '()))))
                                            (declare (not safe))
                                            (cons __tmp112821 __tmp112820))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp112819))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx111787111788_))
                              (let ((_e107119107143_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx111787111788_))))
                                (let ((_tl107117107148_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107119107143_)))
                                      (_hd107118107146_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107119107143_))))
                                  (___kont111789111790_
                                   _tl107117107148_
                                   _hd107118107146_)))
                              (___kont111791111792_)))))))
                 (_generate-values-check107023_
                  (lambda (_check107099_ _body107100_)
                    (let ((__tmp112822
                           (let ((__tmp112824
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107100_ '())))
                                 (__tmp112823 (reverse _check107099_)))
                             (declare (not safe))
                             (foldr1 cons __tmp112824 __tmp112823))))
                      (declare (not safe))
                      (cons 'begin __tmp112822))))
                 (_generate-values-post107024_
                  (lambda (_post107092_ _body107093_)
                    (let ((__tmp112825
                           (let ((__tmp112827
                                  (let ()
                                    (declare (not safe))
                                    (cons _body107093_ '())))
                                 (__tmp112826
                                  (map (lambda (_g107094107096_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g107094107096_)))
                                       (reverse _post107092_))))
                             (declare (not safe))
                             (foldr1 cons __tmp112827 __tmp112826))))
                      (declare (not safe))
                      (cons 'begin __tmp112825)))))
          (let* ((_g107026107043_
                  (lambda (_g107027107040_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107027107040_))))
                 (_g107025107089_
                  (lambda (_g107027107046_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107027107046_))
                        (let ((_e107032107048_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107027107046_))))
                          (let ((_hd107031107051_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107032107048_)))
                                (_tl107030107053_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107032107048_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107030107053_))
                                (let ((_e107035107056_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107030107053_))))
                                  (let ((_hd107034107059_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107035107056_)))
                                        (_tl107033107061_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107035107056_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107033107061_))
                                        (let ((_e107038107064_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107033107061_))))
                                          (let ((_hd107037107067_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107038107064_)))
                                                (_tl107036107069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107038107064_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107036107069_))
                                                ((lambda (_L107072_ _L107073_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L107073_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple107021_
                                                          _L107073_
                                                          _L107072_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values107022_
                                                          _L107073_
                                                          _L107072_))))
                                                 _hd107037107067_
                                                 _hd107034107059_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107026107043_
                                                   _g107027107046_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107026107043_ _g107027107046_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107026107043_ _g107027107046_)))))
                        (let ()
                          (declare (not safe))
                          (_g107026107043_ _g107027107046_))))))
            (declare (not safe))
            (_g107025107089_ _stx107018_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self107329_ _stx107330_)
        (let ((_compiled-body?107332_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self107329_
           _stx107330_
           _compiled-body?107332_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g112829_
        (let ((_g112828_ (let () (declare (not safe)) (##length _g112829_))))
          (cond ((let () (declare (not safe)) (##fx= _g112828_ 2))
                 (apply (lambda (_self107329_ _stx107330_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self107329_
                             _stx107330_)))
                        _g112829_))
                ((let () (declare (not safe)) (##fx= _g112828_ 3))
                 (apply (lambda (_self107334_
                                 _stx107335_
                                 _compiled-body?107336_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self107334_
                             _stx107335_
                             _compiled-body?107336_)))
                        _g112829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g112829_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self106598_ _stx106599_)
        (letrec ((_generate-values106601_
                  (lambda (_hd106844_ _body106845_)
                    (let _lp106847_ ((_rest106849_ _hd106844_)
                                     (_bind106850_ '()))
                      (let* ((_rest106851106859_ _rest106849_)
                             (_else106853106870_
                              (lambda ()
                                (let ((_bind106867_ (reverse _bind106850_))
                                      (_body106868_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106598_
                                          _body106845_))))
                                  (let ((__tmp112830
                                         (let ((__tmp112831
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body106868_ '()))))
                                           (declare (not safe))
                                           (cons _bind106867_ __tmp112831))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp112830)))))
                             (_K106855107004_
                              (lambda (_rest106873_ _hd-bind106874_)
                                (let* ((___stx111801111802_ _hd-bind106874_)
                                       (_g106877106902_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx111801111802_)))))
                                  (let ((___kont111803111804_
                                         (lambda (_L106983_ _L106984_)
                                           (let ((_eid106998_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L106984_)))
                                                 (_expr106999_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self106598_
                                                     _L106983_))))
                                             (let ((__tmp112832
                                                    (let ((__tmp112833
                                                           (let ((__tmp112834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr106999_ '()))))
                     (declare (not safe))
                     (cons _eid106998_ __tmp112834))))
              (declare (not safe))
              (cons __tmp112833 _bind106850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp106847_
                                                _rest106873_
                                                __tmp112832)))))
                                        (___kont111805111806_
                                         (lambda (_L106923_ _L106924_)
                                           (let* ((_vals106943_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp106945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values106947_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp106945_
                                                      _L106924_
                                                      _L106923_)))
                                                  (_refs106949_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals106943_
                                                      _L106924_)))
                                                  (_expr106951_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106598_
                                                      _L106923_))))
                                             (let ((__tmp112835
                                                    (let ((__tmp112836
                                                           (let ((__tmp112837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112838
                                 (let ((__tmp112839
                                        (let ((__tmp112840
                                               (let ((__tmp112843
                                                      (let ((__tmp112844
                                                             (let ((__tmp112845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr106951_ '()))))
                       (declare (not safe))
                       (cons _tmp106945_ __tmp112845))))
                (declare (not safe))
                (cons __tmp112844 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp112841
                                                      (let ((__tmp112842
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp106945_ '()))))
                (declare (not safe))
                (cons _check-values106947_ __tmp112842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp112843
                                                       __tmp112841))))
                                          (declare (not safe))
                                          (cons 'let __tmp112840))))
                                   (declare (not safe))
                                   (cons __tmp112839 '()))))
                            (declare (not safe))
                            (cons _vals106943_ __tmp112838))))
                     (declare (not safe))
                     (cons __tmp112837 _bind106850_))))
              (declare (not safe))
              (foldl1 cons __tmp112836 _refs106949_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp106847_
                                                _rest106873_
                                                __tmp112835))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx111801111802_))
                                        (let ((_e106883106959_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx111801111802_))))
                                          (let ((_tl106881106964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106883106959_)))
                                                (_hd106882106962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106883106959_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd106882106962_))
                                                (let ((_e106886106967_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd106882106962_))))
                                                  (let ((_tl106884106972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106886106967_)))
                                                        (_hd106885106970_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106886106967_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl106884106972_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl106881106964_))
                                                            (let ((_e106889106975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106881106964_))))
                      (let ((_tl106887106980_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106889106975_)))
                            (_hd106888106978_
                             (let ()
                               (declare (not safe))
                               (##car _e106889106975_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106887106980_))
                            (___kont111803111804_
                             _hd106888106978_
                             _hd106885106970_)
                            (let () (declare (not safe)) (_g106877106902_)))))
                    (let () (declare (not safe)) (_g106877106902_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl106881106964_))
                    (let ((_e106897106915_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106881106964_))))
                      (let ((_tl106895106920_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106897106915_)))
                            (_hd106896106918_
                             (let ()
                               (declare (not safe))
                               (##car _e106897106915_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106895106920_))
                            (___kont111805111806_
                             _hd106896106918_
                             _hd106882106962_)
                            (let () (declare (not safe)) (_g106877106902_)))))
                    (let () (declare (not safe)) (_g106877106902_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl106881106964_))
                                                    (let ((_e106897106915_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl106881106964_))))
                                                      (let ((_tl106895106920_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e106897106915_)))
                    (_hd106896106918_
                     (let () (declare (not safe)) (##car _e106897106915_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl106895106920_))
                    (___kont111805111806_ _hd106896106918_ _hd106882106962_)
                    (let () (declare (not safe)) (_g106877106902_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g106877106902_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106877106902_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106851106859_))
                            (let ((_hd106856107007_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106851106859_)))
                                  (_tl106857107009_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106851106859_))))
                              (let* ((_hd-bind107012_ _hd106856107007_)
                                     (_rest107014_ _tl106857107009_))
                                (declare (not safe))
                                (_K106855107004_
                                 _rest107014_
                                 _hd-bind107012_)))
                            (let ()
                              (declare (not safe))
                              (_else106853106870_)))))))
                 (_generate-letrec?106602_
                  (lambda (_hd106734_)
                    (let _lp106736_ ((_rest106738_ _hd106734_))
                      (let* ((_rest106739106747_ _rest106738_)
                             (_else106741106755_ (lambda () '#t))
                             (_K106743106832_
                              (lambda (_rest106758_ _hd-bind106759_)
                                (let* ((_g106761106778_
                                        (lambda (_g106762106775_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g106762106775_))))
                                       (_g106760106829_
                                        (lambda (_g106762106781_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g106762106781_))
                                              (let ((_e106767106783_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g106762106781_))))
                                                (let ((_hd106766106786_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106767106783_)))
                                                      (_tl106765106788_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106767106783_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd106766106786_))
                                                      (let ((_e106770106791_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd106766106786_))))
                (let ((_hd106769106794_
                       (let () (declare (not safe)) (##car _e106770106791_)))
                      (_tl106768106796_
                       (let () (declare (not safe)) (##cdr _e106770106791_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106768106796_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl106765106788_))
                          (let ((_e106773106799_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl106765106788_))))
                            (let ((_hd106772106802_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e106773106799_)))
                                  (_tl106771106804_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e106773106799_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl106771106804_))
                                  ((lambda (_L106807_ _L106808_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?106603_ _L106807_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp106736_ _rest106758_))
                                         '#f))
                                   _hd106772106802_
                                   _hd106769106794_)
                                  (let ()
                                    (declare (not safe))
                                    (_g106761106778_ _g106762106781_)))))
                          (let ()
                            (declare (not safe))
                            (_g106761106778_ _g106762106781_)))
                      (let ()
                        (declare (not safe))
                        (_g106761106778_ _g106762106781_)))))
              (let ()
                (declare (not safe))
                (_g106761106778_ _g106762106781_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106761106778_
                                                 _g106762106781_))))))
                                  (declare (not safe))
                                  (_g106760106829_ _hd-bind106759_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106739106747_))
                            (let ((_hd106744106835_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106739106747_)))
                                  (_tl106745106837_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106739106747_))))
                              (let* ((_hd-bind106840_ _hd106744106835_)
                                     (_rest106842_ _tl106745106837_))
                                (declare (not safe))
                                (_K106743106832_
                                 _rest106842_
                                 _hd-bind106840_)))
                            (let ()
                              (declare (not safe))
                              (_else106741106755_)))))))
                 (_is-lambda-expr?106603_
                  (lambda (_expr106671_)
                    (let* ((___stx111845111846_ _expr106671_)
                           (_g106674106688_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx111845111846_)))))
                      (let ((___kont111847111848_
                             (lambda (_L106716_ _L106717_) '#t))
                            (___kont111849111850_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx111845111846_))
                            (let ((_e106680106700_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx111845111846_))))
                              (let ((_tl106678106705_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e106680106700_)))
                                    (_hd106679106703_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e106680106700_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd106679106703_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd106679106703_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl106678106705_))
                                            (let ((_e106683106708_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl106678106705_))))
                                              (let ((_tl106681106713_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e106683106708_)))
                                                    (_hd106682106711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e106683106708_))))
                                                (___kont111847111848_
                                                 _tl106681106713_
                                                 _hd106682106711_)))
                                            (___kont111849111850_))
                                        (___kont111849111850_))
                                    (___kont111849111850_))))
                            (___kont111849111850_)))))))
          (let* ((_g106605106622_
                  (lambda (_g106606106619_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106606106619_))))
                 (_g106604106668_
                  (lambda (_g106606106625_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106606106625_))
                        (let ((_e106611106627_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106606106625_))))
                          (let ((_hd106610106630_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106611106627_)))
                                (_tl106609106632_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106611106627_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106609106632_))
                                (let ((_e106614106635_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106609106632_))))
                                  (let ((_hd106613106638_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106614106635_)))
                                        (_tl106612106640_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106614106635_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106612106640_))
                                        (let ((_e106617106643_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106612106640_))))
                                          (let ((_hd106616106646_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106617106643_)))
                                                (_tl106615106648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106617106643_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl106615106648_))
                                                ((lambda (_L106651_ _L106652_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L106652_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?106602_
                                                              _L106652_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self106598_
                                                              'letrec
                                                              _L106652_
                                                              _L106651_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self106598_
                                                              'letrec*
                                                              _L106652_
                                                              _L106651_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values106601_
                                                          _L106652_
                                                          _L106651_))))
                                                 _hd106616106646_
                                                 _hd106613106638_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106605106622_
                                                   _g106606106625_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106605106622_ _g106606106625_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106605106622_ _g106606106625_)))))
                        (let ()
                          (declare (not safe))
                          (_g106605106622_ _g106606106625_))))))
            (declare (not safe))
            (_g106604106668_ _stx106599_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd106535_)
        (let _lp106537_ ((_rest106539_ _hd106535_))
          (let* ((_rest106540106556_ _rest106539_)
                 (_else106543106564_ (lambda () '#f)))
            (let ((_K106546106577_
                   (lambda (_rest106575_)
                     (let () (declare (not safe)) (_lp106537_ _rest106575_))))
                  (_K106545106569_ (lambda () '#t)))
              (let ((_try-match106542106572_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest106540106556_))
                           (let () (declare (not safe)) (_K106545106569_))
                           (let ()
                             (declare (not safe))
                             (_else106543106564_))))))
                (if (let () (declare (not safe)) (##pair? _rest106540106556_))
                    (let ((_tl106548106582_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest106540106556_)))
                          (_hd106547106580_
                           (let ()
                             (declare (not safe))
                             (##car _rest106540106556_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd106547106580_))
                          (let ((_tl106550106587_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd106547106580_)))
                                (_hd106549106585_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd106547106580_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd106549106585_))
                                (let ((_tl106554106590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd106549106585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl106554106590_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl106550106587_))
                                          (let ((_tl106552106593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl106550106587_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl106552106593_))
                                                (let ((_rest106596_
                                                       _tl106548106582_))
                                                  (declare (not safe))
                                                  (_lp106537_ _rest106596_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else106543106564_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else106543106564_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else106543106564_))))
                                (let ()
                                  (declare (not safe))
                                  (_else106543106564_))))
                          (let () (declare (not safe)) (_else106543106564_))))
                    (let ()
                      (declare (not safe))
                      (_try-match106542106572_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self106446_
               _form106447_
               _hd106448_
               _body106449_
               _compiled-body?106450_)
        (letrec ((_generate1106452_
                  (lambda (_bind106491_)
                    (let* ((_bind106492106503_ _bind106491_)
                           (_E106494106507_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind106492106503_))))
                           (_K106495106513_
                            (lambda (_expr106510_ _id106511_)
                              (let ((__tmp112848
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id106511_)))
                                    (__tmp112846
                                     (let ((__tmp112847
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106446_
                                               _expr106510_))))
                                       (declare (not safe))
                                       (cons __tmp112847 '()))))
                                (declare (not safe))
                                (cons __tmp112848 __tmp112846)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind106492106503_))
                          (let ((_hd106496106516_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind106492106503_)))
                                (_tl106497106518_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind106492106503_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd106496106516_))
                                (let ((_hd106500106521_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd106496106516_)))
                                      (_tl106501106523_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd106496106516_))))
                                  (let ((_id106526_ _hd106500106521_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl106501106523_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl106497106518_))
                                            (let ((_hd106498106528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl106497106518_)))
                                                  (_tl106499106530_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl106497106518_))))
                                              (let ((_expr106533_
                                                     _hd106498106528_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl106499106530_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K106495106513_
                                                       _expr106533_
                                                       _id106526_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E106494106507_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E106494106507_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E106494106507_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E106494106507_))))
                          (let () (declare (not safe)) (_E106494106507_)))))))
          (let* ((_bind106454_ (map _generate1106452_ _hd106448_))
                 (_body106456_
                  (if _compiled-body?106450_
                      _body106449_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self106446_ _body106449_))))
                 (_body106488_
                  (let* ((_body106457106465_ _body106456_)
                         (_else106459106473_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body106456_ '()))))
                         (_K106461106478_
                          (lambda (_exprs106476_) _exprs106476_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body106457106465_))
                        (let ((_hd106462106481_
                               (let ()
                                 (declare (not safe))
                                 (##car _body106457106465_)))
                              (_tl106463106483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body106457106465_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd106462106481_ 'begin))
                              (let ((_exprs106486_ _tl106463106483_))
                                (declare (not safe))
                                (_K106461106478_ _exprs106486_))
                              (let ()
                                (declare (not safe))
                                (_else106459106473_))))
                        (let () (declare (not safe)) (_else106459106473_))))))
            (let ((__tmp112849
                   (let ()
                     (declare (not safe))
                     (cons _bind106454_ _body106488_))))
              (declare (not safe))
              (cons _form106447_ __tmp112849))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self106353_ _stx106354_)
        (letrec ((_generate1106356_
                  (lambda (_datum106408_)
                    (if (or (let () (declare (not safe)) (null? _datum106408_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _datum106408_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum106408_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum106408_)))
                        _datum106408_
                        (if (uninterned-symbol? _datum106408_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum106408_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum106408_))
                                (let ((__tmp112854
                                       (let ((__tmp112855 (car _datum106408_)))
                                         (declare (not safe))
                                         (_generate1106356_ __tmp112855)))
                                      (__tmp112852
                                       (let ((__tmp112853 (cdr _datum106408_)))
                                         (declare (not safe))
                                         (_generate1106356_ __tmp112853))))
                                  (declare (not safe))
                                  (cons __tmp112854 __tmp112852))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum106408_))
                                    (let ((__tmp112850
                                           (let ((__tmp112851
                                                  (unbox _datum106408_)))
                                             (declare (not safe))
                                             (_generate1106356_ __tmp112851))))
                                      (declare (not safe))
                                      (box __tmp112850))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum106408_))
                                        (vector-map
                                         _generate1106356_
                                         _datum106408_)
                                        (if (or (s8vector? _datum106408_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum106408_))
                                                (s16vector? _datum106408_)
                                                (u16vector? _datum106408_)
                                                (s32vector? _datum106408_)
                                                (u32vector? _datum106408_)
                                                (s64vector? _datum106408_)
                                                (u64vector? _datum106408_)
                                                (f32vector? _datum106408_)
                                                (f64vector? _datum106408_))
                                            _datum106408_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx106354_)))))))))))
          (let* ((_g106358106371_
                  (lambda (_g106359106368_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106359106368_))))
                 (_g106357106405_
                  (lambda (_g106359106374_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106359106374_))
                        (let ((_e106363106376_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106359106374_))))
                          (let ((_hd106362106379_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106363106376_)))
                                (_tl106361106381_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106363106376_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106361106381_))
                                (let ((_e106366106384_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106361106381_))))
                                  (let ((_hd106365106387_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106366106384_)))
                                        (_tl106364106389_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106366106384_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl106364106389_))
                                        ((lambda (_L106392_)
                                           (let ((__tmp112856
                                                  (let ((__tmp112857
                                                         (let ((__tmp112858
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L106392_))))
                   (declare (not safe))
                   (_generate1106356_ __tmp112858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112857 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp112856)))
                                         _hd106365106387_)
                                        (let ()
                                          (declare (not safe))
                                          (_g106358106371_ _g106359106374_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106358106371_ _g106359106374_)))))
                        (let ()
                          (declare (not safe))
                          (_g106358106371_ _g106359106374_))))))
            (declare (not safe))
            (_g106357106405_ _stx106354_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self105866_ _stx105867_)
        (letrec ((_compile-call105869_
                  (lambda (_rator106093_ _rands106094_)
                    (let ((_rator106100_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self105866_ _rator106093_)))
                          (_rands106101_
                           (map (lambda (_g106095106097_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self105866_
                                     _g106095106097_)))
                                _rands106094_)))
                      (let* ((___stx111892111893_ _rator106100_)
                             (_g106104106156_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx111892111893_)))))
                        (let ((___kont111894111895_
                               (lambda (_L106280_
                                        _L106281_
                                        _L106282_
                                        _L106283_)
                                 (if (fx= (length _rands106101_)
                                          (length (let ((__tmp112863
                                                         (lambda (_g106319106322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g106320106324_)
                   (let ()
                     (declare (not safe))
                     (cons _g106319106322_ _g106320106324_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp112863
                                                            '()
                                                            _L106282_))))
                                     (let* ((_id106327_ _L106283_)
                                            (_args106336_
                                             (let ((__tmp112859
                                                    (lambda (_g106328106331_
                                                             _g106329106333_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g106328106331_
                                                              _g106329106333_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp112859
                                                       '()
                                                       _L106282_)))
                                            (_body106345_
                                             (let ((__tmp112860
                                                    (lambda (_g106337106340_
                                                             _g106338106342_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g106337106340_
                                                              _g106338106342_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp112860
                                                       '()
                                                       _L106281_)))
                                            (_init106347_
                                             (map list
                                                  _args106336_
                                                  _rands106101_)))
                                       (let ((__tmp112861
                                              (let ((__tmp112862
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init106347_
                                                             _body106345_))))
                                                (declare (not safe))
                                                (cons _id106327_
                                                      __tmp112862))))
                                         (declare (not safe))
                                         (cons 'let __tmp112861)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx105867_)))))
                              (___kont111900111901_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator106100_ _rands106101_)))))
                          (let ((___match111959111960_
                                 (lambda (_e106112106168_
                                          _hd106111106171_
                                          _tl106110106173_
                                          _e106115106176_
                                          _hd106114106179_
                                          _tl106113106181_
                                          _e106118106184_
                                          _hd106117106187_
                                          _tl106116106189_
                                          _e106121106192_
                                          _hd106120106195_
                                          _tl106119106197_
                                          _e106124106200_
                                          _hd106123106203_
                                          _tl106122106205_
                                          _e106127106208_
                                          _hd106126106211_
                                          _tl106125106213_
                                          _e106130106216_
                                          _hd106129106219_
                                          _tl106128106221_
                                          ___splice111896111897_
                                          _target106131106224_
                                          _tl106133106226_)
                                   (letrec ((_loop106134106229_
                                             (lambda (_hd106132106232_
                                                      _arg106138106234_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd106132106232_))
                                                   (let ((_e106135106237_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd106132106232_))))
                                                     (let ((_lp-tl106137106242_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e106135106237_)))
                                                           (_lp-hd106136106240_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e106135106237_))))
                                                       (let ((__tmp112865
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd106136106240_ _arg106138106234_))))
                 (declare (not safe))
                 (_loop106134106229_ _lp-tl106137106242_ __tmp112865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg106139106245_
                                                          (reverse _arg106138106234_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl106128106221_))
                                                         (let ((___splice111898111899_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl106128106221_ '0))))
                   (let ((_tl106142106250_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice111898111899_ '1)))
                         (_target106140106248_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice111898111899_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106142106250_))
                         (letrec ((_loop106143106253_
                                   (lambda (_hd106141106256_
                                            _body106147106258_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd106141106256_))
                                         (let ((_e106144106261_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd106141106256_))))
                                           (let ((_lp-tl106146106266_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106144106261_)))
                                                 (_lp-hd106145106264_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106144106261_))))
                                             (let ((__tmp112864
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd106145106264_
                                                            _body106147106258_))))
                                               (declare (not safe))
                                               (_loop106143106253_
                                                _lp-tl106146106266_
                                                __tmp112864))))
                                         (let ((_body106148106269_
                                                (reverse _body106147106258_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl106122106205_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl106116106189_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl106113106181_))
                                                       (let ((_e106151106272_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl106113106181_))))
                 (let ((_tl106149106277_
                        (let () (declare (not safe)) (##cdr _e106151106272_)))
                       (_hd106150106275_
                        (let () (declare (not safe)) (##car _e106151106272_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl106149106277_))
                       (let ((_L106280_ _hd106150106275_)
                             (_L106281_ _body106148106269_)
                             (_L106282_ _arg106139106245_)
                             (_L106283_ _hd106120106195_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L106283_ _L106280_))
                             (___kont111894111895_
                              _L106280_
                              _L106281_
                              _L106282_
                              _L106283_)
                             (___kont111900111901_)))
                       (___kont111900111901_))))
               (___kont111900111901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont111900111901_))
                                               (___kont111900111901_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop106143106253_ _target106140106248_ '())))
                         (___kont111900111901_))))
                 (___kont111900111901_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop106134106229_
                                        _target106131106224_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx111892111893_))
                                (let ((_e106112106168_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx111892111893_))))
                                  (let ((_tl106110106173_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106112106168_)))
                                        (_hd106111106171_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106112106168_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd106111106171_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd106111106171_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl106110106173_))
                                                (let ((_e106115106176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl106110106173_))))
                                                  (let ((_tl106113106181_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106115106176_)))
                                                        (_hd106114106179_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106115106176_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd106114106179_))
                                                        (let ((_e106118106184_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd106114106179_))))
                  (let ((_tl106116106189_
                         (let () (declare (not safe)) (##cdr _e106118106184_)))
                        (_hd106117106187_
                         (let ()
                           (declare (not safe))
                           (##car _e106118106184_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd106117106187_))
                        (let ((_e106121106192_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd106117106187_))))
                          (let ((_tl106119106197_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106121106192_)))
                                (_hd106120106195_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106121106192_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106119106197_))
                                (let ((_e106124106200_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106119106197_))))
                                  (let ((_tl106122106205_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106124106200_)))
                                        (_hd106123106203_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106124106200_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd106123106203_))
                                        (let ((_e106127106208_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd106123106203_))))
                                          (let ((_tl106125106213_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106127106208_)))
                                                (_hd106126106211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106127106208_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd106126106211_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd106126106211_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106125106213_))
                                                        (let ((_e106130106216_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106125106213_))))
                  (let ((_tl106128106221_
                         (let () (declare (not safe)) (##cdr _e106130106216_)))
                        (_hd106129106219_
                         (let ()
                           (declare (not safe))
                           (##car _e106130106216_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd106129106219_))
                        (let ((___splice111896111897_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd106129106219_
                                  '0))))
                          (let ((_tl106133106226_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice111896111897_ '1)))
                                (_target106131106224_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice111896111897_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl106133106226_))
                                (___match111959111960_
                                 _e106112106168_
                                 _hd106111106171_
                                 _tl106110106173_
                                 _e106115106176_
                                 _hd106114106179_
                                 _tl106113106181_
                                 _e106118106184_
                                 _hd106117106187_
                                 _tl106116106189_
                                 _e106121106192_
                                 _hd106120106195_
                                 _tl106119106197_
                                 _e106124106200_
                                 _hd106123106203_
                                 _tl106122106205_
                                 _e106127106208_
                                 _hd106126106211_
                                 _tl106125106213_
                                 _e106130106216_
                                 _hd106129106219_
                                 _tl106128106221_
                                 ___splice111896111897_
                                 _target106131106224_
                                 _tl106133106226_)
                                (___kont111900111901_))))
                        (___kont111900111901_))))
                (___kont111900111901_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont111900111901_))
                                                (___kont111900111901_))))
                                        (___kont111900111901_))))
                                (___kont111900111901_))))
                        (___kont111900111901_))))
                (___kont111900111901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont111900111901_))
                                            (___kont111900111901_))
                                        (___kont111900111901_))))
                                (___kont111900111901_)))))))))
          (let* ((_g105871105885_
                  (lambda (_g105872105882_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105872105882_))))
                 (_g105870106090_
                  (lambda (_g105872105888_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105872105888_))
                        (let ((_e105877105890_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105872105888_))))
                          (let ((_hd105876105893_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105877105890_)))
                                (_tl105875105895_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105877105890_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105875105895_))
                                (let ((_e105880105898_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105875105895_))))
                                  (let ((_hd105879105901_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105880105898_)))
                                        (_tl105878105903_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105880105898_))))
                                    ((lambda (_L105906_ _L105907_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call105869_
                                              _L105907_
                                              _L105906_))
                                           (let* ((___stx112008112009_
                                                   _L105907_)
                                                  (_g105922105934_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx112008112009_)))))
                                             (let ((___kont112010112011_
                                                    (lambda ()
                                                      (let ((_f105964_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self105866_ _L105907_))))
                (if (let ((__tmp112880 (symbol->string _f105964_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp112880))
                    (let _lp105966_ ((_rest105969_ (reverse _L105906_))
                                     (_bind105971_ '())
                                     (_args105972_ '()))
                      (let* ((_rest105973105981_ _rest105969_)
                             (_else105975105989_
                              (lambda ()
                                (let ((__tmp112866
                                       (let ((__tmp112867
                                              (let ((__tmp112868
                                                     (let ((__tmp112869
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f105964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args105972_))))
               (declare (not safe))
               (cons __tmp112869 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp112868))))
                                         (declare (not safe))
                                         (cons _bind105971_ __tmp112867))))
                                  (declare (not safe))
                                  (cons 'let __tmp112866))))
                             (_K105977106075_
                              (lambda (_rest105992_ _e105993_)
                                (let* ((___stx111962111963_ _e105993_)
                                       (_g105998106016_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx111962111963_)))))
                                  (let ((___kont111964111965_
                                         (lambda ()
                                           (let ((__tmp112870
                                                  (let ((__tmp112871
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e105993_))))
                                                    (declare (not safe))
                                                    (cons __tmp112871
                                                          _args105972_))))
                                             (declare (not safe))
                                             (_lp105966_
                                              _rest105992_
                                              _bind105971_
                                              __tmp112870))))
                                        (___kont111966111967_
                                         (lambda ()
                                           (let ((__tmp112872
                                                  (let ((__tmp112873
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e105993_))))
                                                    (declare (not safe))
                                                    (cons __tmp112873
                                                          _args105972_))))
                                             (declare (not safe))
                                             (_lp105966_
                                              _rest105992_
                                              _bind105971_
                                              __tmp112872))))
                                        (___kont111968111969_
                                         (lambda ()
                                           (let ((_tmp106023_
                                                  (let ((__tmp112874
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp112874))))
                                             (let ((__tmp112876
                                                    (let ((__tmp112877
                                                           (let ((__tmp112878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112879
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e105993_))))
                            (declare (not safe))
                            (cons __tmp112879 '()))))
                     (declare (not safe))
                     (cons _tmp106023_ __tmp112878))))
              (declare (not safe))
              (cons __tmp112877 _bind105971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp112875
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp106023_
                                                            _args105972_))))
                                               (declare (not safe))
                                               (_lp105966_
                                                _rest105992_
                                                __tmp112876
                                                __tmp112875))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx111962111963_))
                                        (let ((_e106002106054_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx111962111963_))))
                                          (let ((_tl106000106059_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106002106054_)))
                                                (_hd106001106057_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106002106054_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd106001106057_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd106001106057_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106000106059_))
                                                        (let ((_e106005106062_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106000106059_))))
                  (let ((_tl106003106067_
                         (let () (declare (not safe)) (##cdr _e106005106062_)))
                        (_hd106004106065_
                         (let ()
                           (declare (not safe))
                           (##car _e106005106062_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl106003106067_))
                        (___kont111964111965_)
                        (___kont111968111969_))))
                (___kont111968111969_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd106001106057_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl106000106059_))
                                                            (let ((_e106011106039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106000106059_))))
                      (let ((_tl106009106044_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106011106039_)))
                            (_hd106010106042_
                             (let ()
                               (declare (not safe))
                               (##car _e106011106039_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106009106044_))
                            (___kont111966111967_)
                            (___kont111968111969_))))
                    (___kont111968111969_))
                (___kont111968111969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont111968111969_))))
                                        (___kont111968111969_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest105973105981_))
                            (let ((_hd105978106078_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest105973105981_)))
                                  (_tl105979106080_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest105973105981_))))
                              (let* ((_e106083_ _hd105978106078_)
                                     (_rest106085_ _tl105979106080_))
                                (declare (not safe))
                                (_K105977106075_ _rest106085_ _e106083_)))
                            (let ()
                              (declare (not safe))
                              (_else105975105989_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call105869_ _L105907_ _L105906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont112012112013_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call105869_
                                                         _L105907_
                                                         _L105906_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx112008112009_))
                                                   (let ((_e105926105946_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx112008112009_))))
                                                     (let ((_tl105924105951_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e105926105946_)))
                                                           (_hd105925105949_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e105926105946_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd105925105949_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd105925105949_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl105924105951_))
                           (let ((_e105929105954_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl105924105951_))))
                             (let ((_tl105927105959_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e105929105954_)))
                                   (_hd105928105957_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e105929105954_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl105927105959_))
                                   (___kont112010112011_)
                                   (___kont112012112013_))))
                           (___kont112012112013_))
                       (___kont112012112013_))
                   (___kont112012112013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont112012112013_))))))
                                     _tl105878105903_
                                     _hd105879105901_)))
                                (let ()
                                  (declare (not safe))
                                  (_g105871105885_ _g105872105888_)))))
                        (let ()
                          (declare (not safe))
                          (_g105871105885_ _g105872105888_))))))
            (declare (not safe))
            (_g105870106090_ _stx105867_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self105653_ _stx105654_)
        (let* ((___stx112080112081_ _stx105654_)
               (_g105657105677_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112080112081_)))))
          (let ((___kont112082112083_
                 (lambda (_L105721_ _L105722_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self105653_ _stx105654_))
                       (let ((_f105740_
                              (let ((__tmp112881
                                     (let ((__tmp112883
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp112882
                                            (let ()
                                              (declare (not safe))
                                              (cons _L105722_ '()))))
                                       (declare (not safe))
                                       (cons __tmp112883 __tmp112882))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self105653_ __tmp112881))))
                         (let _lp105742_ ((_rest105745_ (reverse _L105721_))
                                          (_bind105747_ '())
                                          (_args105748_ '()))
                           (let* ((_rest105749105757_ _rest105745_)
                                  (_else105751105765_
                                   (lambda ()
                                     (let ((__tmp112884
                                            (let ((__tmp112885
                                                   (let ((__tmp112886
                                                          (let ((__tmp112887
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f105740_ _args105748_))))
                    (declare (not safe))
                    (cons __tmp112887 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp112886))))
                                              (declare (not safe))
                                              (cons _bind105747_
                                                    __tmp112885))))
                                       (declare (not safe))
                                       (cons 'let __tmp112884))))
                                  (_K105753105851_
                                   (lambda (_rest105768_ _e105769_)
                                     (let* ((___stx112034112035_ _e105769_)
                                            (_g105774105792_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx112034112035_)))))
                                       (let ((___kont112036112037_
                                              (lambda ()
                                                (let ((__tmp112888
                                                       (let ((__tmp112889
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e105769_))))
                 (declare (not safe))
                 (cons __tmp112889 _args105748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp105742_
                                                   _rest105768_
                                                   _bind105747_
                                                   __tmp112888))))
                                             (___kont112038112039_
                                              (lambda ()
                                                (let ((__tmp112890
                                                       (let ((__tmp112891
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e105769_))))
                 (declare (not safe))
                 (cons __tmp112891 _args105748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp105742_
                                                   _rest105768_
                                                   _bind105747_
                                                   __tmp112890))))
                                             (___kont112040112041_
                                              (lambda ()
                                                (let ((_tmp105799_
                                                       (let ((__tmp112892
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp112892))))
                                                  (let ((__tmp112894
                                                         (let ((__tmp112895
                                                                (let ((__tmp112896
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112897
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e105769_))))
                                 (declare (not safe))
                                 (cons __tmp112897 '()))))
                          (declare (not safe))
                          (cons _tmp105799_ __tmp112896))))
                   (declare (not safe))
                   (cons __tmp112895 _bind105747_)))
                (__tmp112893
                 (let ()
                   (declare (not safe))
                   (cons _tmp105799_ _args105748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp105742_
                                                     _rest105768_
                                                     __tmp112894
                                                     __tmp112893))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx112034112035_))
                                             (let ((_e105778105830_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx112034112035_))))
                                               (let ((_tl105776105835_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105778105830_)))
                                                     (_hd105777105833_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105778105830_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105777105833_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd105777105833_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105776105835_))
                     (let ((_e105781105838_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105776105835_))))
                       (let ((_tl105779105843_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105781105838_)))
                             (_hd105780105841_
                              (let ()
                                (declare (not safe))
                                (##car _e105781105838_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105779105843_))
                             (___kont112036112037_)
                             (___kont112040112041_))))
                     (___kont112040112041_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd105777105833_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl105776105835_))
                         (let ((_e105787105815_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl105776105835_))))
                           (let ((_tl105785105820_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e105787105815_)))
                                 (_hd105786105818_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e105787105815_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl105785105820_))
                                 (___kont112038112039_)
                                 (___kont112040112041_))))
                         (___kont112040112041_))
                     (___kont112040112041_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112040112041_))))
                                             (___kont112040112041_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest105749105757_))
                                 (let ((_hd105754105854_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest105749105757_)))
                                       (_tl105755105856_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest105749105757_))))
                                   (let* ((_e105859_ _hd105754105854_)
                                          (_rest105861_ _tl105755105856_))
                                     (declare (not safe))
                                     (_K105753105851_ _rest105861_ _e105859_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else105751105765_)))))))))
                (___kont112084112085_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self105653_ _stx105654_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx112080112081_))
                (let ((_e105663105689_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx112080112081_))))
                  (let ((_tl105661105694_
                         (let () (declare (not safe)) (##cdr _e105663105689_)))
                        (_hd105662105692_
                         (let ()
                           (declare (not safe))
                           (##car _e105663105689_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl105661105694_))
                        (let ((_e105666105697_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl105661105694_))))
                          (let ((_tl105664105702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105666105697_)))
                                (_hd105665105700_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105666105697_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd105665105700_))
                                (let ((_e105669105705_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd105665105700_))))
                                  (let ((_tl105667105710_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105669105705_)))
                                        (_hd105668105708_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105669105705_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd105668105708_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd105668105708_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl105667105710_))
                                                (let ((_e105672105713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl105667105710_))))
                                                  (let ((_tl105670105718_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105672105713_)))
                                                        (_hd105671105716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105672105713_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105670105718_))
                                                        (___kont112082112083_
                                                         _tl105664105702_
                                                         _hd105671105716_)
                                                        (___kont112084112085_))))
                                                (___kont112084112085_))
                                            (___kont112084112085_))
                                        (___kont112084112085_))))
                                (___kont112084112085_))))
                        (___kont112084112085_))))
                (___kont112084112085_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self105465_ _stx105466_)
        (letrec ((_simplify105468_
                  (lambda (_code105553_)
                    (let* ((_code105554105572_ _code105553_)
                           (_else105556105580_ (lambda () _code105553_))
                           (_K105558105616_
                            (lambda (_expr105583_ _test105584_)
                              (let* ((_expr105585105593_ _expr105583_)
                                     (_else105587105601_
                                      (lambda ()
                                        (let ((__tmp112898
                                               (let ((__tmp112899
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr105583_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test105584_
                                                       __tmp112899))))
                                          (declare (not safe))
                                          (cons 'and __tmp112898))))
                                     (_K105589105606_
                                      (lambda (_exprs105604_)
                                        (let ((__tmp112900
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test105584_
                                                       _exprs105604_))))
                                          (declare (not safe))
                                          (cons 'and __tmp112900)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr105585105593_))
                                    (let ((_hd105590105609_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr105585105593_)))
                                          (_tl105591105611_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr105585105593_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd105590105609_ 'and))
                                          (let ((_exprs105614_
                                                 _tl105591105611_))
                                            (declare (not safe))
                                            (_K105589105606_ _exprs105614_))
                                          (let ()
                                            (declare (not safe))
                                            (_else105587105601_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else105587105601_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code105554105572_))
                          (let ((_hd105559105619_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code105554105572_)))
                                (_tl105560105621_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code105554105572_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd105559105619_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl105560105621_))
                                    (let ((_hd105561105624_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl105560105621_)))
                                          (_tl105562105626_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl105560105621_))))
                                      (let ((_test105629_ _hd105561105624_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl105562105626_))
                                            (let ((_hd105563105631_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl105562105626_)))
                                                  (_tl105564105633_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl105562105626_))))
                                              (let ((_expr105636_
                                                     _hd105563105631_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl105564105633_))
                                                    (let ((_hd105565105638_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl105564105633_)))
                                                          (_tl105566105640_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl105564105633_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd105565105638_))
                                                          (let ((_hd105567105643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd105565105638_)))
                        (_tl105568105645_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd105565105638_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd105567105643_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl105568105645_))
                            (let ((_hd105569105648_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl105568105645_)))
                                  (_tl105570105650_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl105568105645_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd105569105648_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl105570105650_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105566105640_))
                                          (let ()
                                            (declare (not safe))
                                            (_K105558105616_
                                             _expr105636_
                                             _test105629_))
                                          (let ()
                                            (declare (not safe))
                                            (_else105556105580_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else105556105580_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else105556105580_))))
                            (let () (declare (not safe)) (_else105556105580_)))
                        (let () (declare (not safe)) (_else105556105580_))))
                  (let () (declare (not safe)) (_else105556105580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else105556105580_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else105556105580_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else105556105580_)))
                                (let ()
                                  (declare (not safe))
                                  (_else105556105580_))))
                          (let ()
                            (declare (not safe))
                            (_else105556105580_)))))))
          (let* ((_g105470105491_
                  (lambda (_g105471105488_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105471105488_))))
                 (_g105469105550_
                  (lambda (_g105471105494_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105471105494_))
                        (let ((_e105477105496_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105471105494_))))
                          (let ((_hd105476105499_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105477105496_)))
                                (_tl105475105501_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105477105496_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105475105501_))
                                (let ((_e105480105504_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105475105501_))))
                                  (let ((_hd105479105507_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105480105504_)))
                                        (_tl105478105509_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105480105504_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105478105509_))
                                        (let ((_e105483105512_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105478105509_))))
                                          (let ((_hd105482105515_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105483105512_)))
                                                (_tl105481105517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105483105512_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl105481105517_))
                                                (let ((_e105486105520_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl105481105517_))))
                                                  (let ((_hd105485105523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105486105520_)))
                                                        (_tl105484105525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105486105520_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105484105525_))
                                                        ((lambda (_L105528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L105529_
                          _L105530_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp112908
                              (let ((__tmp112909
                                     (let ((__tmp112914
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105465_
                                               _L105530_)))
                                           (__tmp112910
                                            (let ((__tmp112913
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105465_
                                                      _L105529_)))
                                                  (__tmp112911
                                                   (let ((__tmp112912
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self105465_
                                                             _L105528_))))
                                                     (declare (not safe))
                                                     (cons __tmp112912 '()))))
                                              (declare (not safe))
                                              (cons __tmp112913 __tmp112911))))
                                       (declare (not safe))
                                       (cons __tmp112914 __tmp112910))))
                                (declare (not safe))
                                (cons 'if __tmp112909))))
                         (declare (not safe))
                         (_simplify105468_ __tmp112908))
                       (let ((__tmp112901
                              (let ((__tmp112906
                                     (let ((__tmp112907
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self105465_
                                                 _L105530_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp112907
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp112902
                                     (let ((__tmp112905
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105465_
                                               _L105529_)))
                                           (__tmp112903
                                            (let ((__tmp112904
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105465_
                                                      _L105528_))))
                                              (declare (not safe))
                                              (cons __tmp112904 '()))))
                                       (declare (not safe))
                                       (cons __tmp112905 __tmp112903))))
                                (declare (not safe))
                                (cons __tmp112906 __tmp112902))))
                         (declare (not safe))
                         (cons 'if __tmp112901))))
                 _hd105485105523_
                 _hd105482105515_
                 _hd105479105507_)
                (let ()
                  (declare (not safe))
                  (_g105470105491_ _g105471105494_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105470105491_
                                                   _g105471105494_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105470105491_ _g105471105494_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105470105491_ _g105471105494_)))))
                        (let ()
                          (declare (not safe))
                          (_g105470105491_ _g105471105494_))))))
            (declare (not safe))
            (_g105469105550_ _stx105466_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self105413_ _stx105414_)
        (let* ((_g105416105429_
                (lambda (_g105417105426_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105417105426_))))
               (_g105415105462_
                (lambda (_g105417105432_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105417105432_))
                      (let ((_e105421105434_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105417105432_))))
                        (let ((_hd105420105437_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105421105434_)))
                              (_tl105419105439_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105421105434_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105419105439_))
                              (let ((_e105424105442_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105419105439_))))
                                (let ((_hd105423105445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105424105442_)))
                                      (_tl105422105447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105424105442_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl105422105447_))
                                      ((lambda (_L105450_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L105450_)))
                                       _hd105423105445_)
                                      (let ()
                                        (declare (not safe))
                                        (_g105416105429_ _g105417105432_)))))
                              (let ()
                                (declare (not safe))
                                (_g105416105429_ _g105417105432_)))))
                      (let ()
                        (declare (not safe))
                        (_g105416105429_ _g105417105432_))))))
          (declare (not safe))
          (_g105415105462_ _stx105414_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self105345_ _stx105346_)
        (let* ((_g105348105365_
                (lambda (_g105349105362_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105349105362_))))
               (_g105347105410_
                (lambda (_g105349105368_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105349105368_))
                      (let ((_e105354105370_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105349105368_))))
                        (let ((_hd105353105373_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105354105370_)))
                              (_tl105352105375_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105354105370_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105352105375_))
                              (let ((_e105357105378_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105352105375_))))
                                (let ((_hd105356105381_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105357105378_)))
                                      (_tl105355105383_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105357105378_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105355105383_))
                                      (let ((_e105360105386_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105355105383_))))
                                        (let ((_hd105359105389_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105360105386_)))
                                              (_tl105358105391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105360105386_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105358105391_))
                                              ((lambda (_L105394_ _L105395_)
                                                 (let ((__tmp112915
                                                        (let ((__tmp112918
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L105395_)))
                      (__tmp112916
                       (let ((__tmp112917
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105345_ _L105394_))))
                         (declare (not safe))
                         (cons __tmp112917 '()))))
                  (declare (not safe))
                  (cons __tmp112918 __tmp112916))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp112915)))
                                               _hd105359105389_
                                               _hd105356105381_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105348105365_
                                                 _g105349105368_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105348105365_ _g105349105368_)))))
                              (let ()
                                (declare (not safe))
                                (_g105348105365_ _g105349105368_)))))
                      (let ()
                        (declare (not safe))
                        (_g105348105365_ _g105349105368_))))))
          (declare (not safe))
          (_g105347105410_ _stx105346_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self105156_ _stx105157_)
        (let* ((_g105159105176_
                (lambda (_g105160105173_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105160105173_))))
               (_g105158105342_
                (lambda (_g105160105179_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105160105179_))
                      (let ((_e105165105181_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105160105179_))))
                        (let ((_hd105164105184_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105165105181_)))
                              (_tl105163105186_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105165105181_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105163105186_))
                              (let ((_e105168105189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105163105186_))))
                                (let ((_hd105167105192_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105168105189_)))
                                      (_tl105166105194_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105168105189_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105166105194_))
                                      (let ((_e105171105197_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105166105194_))))
                                        (let ((_hd105170105200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105171105197_)))
                                              (_tl105169105202_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105171105197_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105169105202_))
                                              ((lambda (_L105205_ _L105206_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp112934
                                                            (let ((__tmp112937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self105156_ _L105205_)))
                          (__tmp112935
                           (let ((__tmp112936
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self105156_
                                     _L105206_))))
                             (declare (not safe))
                             (cons __tmp112936 '()))))
                      (declare (not safe))
                      (cons __tmp112937 __tmp112935))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp112934))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp105221_ ((_rest105224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112933
                                      (let ()
                                        (declare (not safe))
                                        (cons _L105205_ '()))))
                                 (declare (not safe))
                                 (cons _L105206_ __tmp112933)))
                              (_bind105226_ '())
                              (_args105227_ '()))
               (let* ((_rest105228105236_ _rest105224_)
                      (_else105230105244_
                       (lambda ()
                         (let ((__tmp112919
                                (let ((__tmp112920
                                       (let ((__tmp112921
                                              (let ((__tmp112922
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args105227_))))
                                                (declare (not safe))
                                                (cons __tmp112922 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp112921))))
                                  (declare (not safe))
                                  (cons _bind105226_ __tmp112920))))
                           (declare (not safe))
                           (cons 'let __tmp112919))))
                      (_K105232105330_
                       (lambda (_rest105247_ _e105248_)
                         (let* ((___stx112118112119_ _e105248_)
                                (_g105253105271_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx112118112119_)))))
                           (let ((___kont112120112121_
                                  (lambda ()
                                    (let ((__tmp112923
                                           (let ((__tmp112924
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105248_))))
                                             (declare (not safe))
                                             (cons __tmp112924 _args105227_))))
                                      (declare (not safe))
                                      (_lp105221_
                                       _rest105247_
                                       _bind105226_
                                       __tmp112923))))
                                 (___kont112122112123_
                                  (lambda ()
                                    (let ((__tmp112925
                                           (let ((__tmp112926
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105248_))))
                                             (declare (not safe))
                                             (cons __tmp112926 _args105227_))))
                                      (declare (not safe))
                                      (_lp105221_
                                       _rest105247_
                                       _bind105226_
                                       __tmp112925))))
                                 (___kont112124112125_
                                  (lambda ()
                                    (let ((_tmp105278_
                                           (let ((__tmp112927 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp112927))))
                                      (let ((__tmp112929
                                             (let ((__tmp112930
                                                    (let ((__tmp112931
                                                           (let ((__tmp112932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105248_))))
                     (declare (not safe))
                     (cons __tmp112932 '()))))
              (declare (not safe))
              (cons _tmp105278_ __tmp112931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112930
                                                     _bind105226_)))
                                            (__tmp112928
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp105278_
                                                     _args105227_))))
                                        (declare (not safe))
                                        (_lp105221_
                                         _rest105247_
                                         __tmp112929
                                         __tmp112928))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx112118112119_))
                                 (let ((_e105257105309_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx112118112119_))))
                                   (let ((_tl105255105314_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e105257105309_)))
                                         (_hd105256105312_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e105257105309_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd105256105312_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd105256105312_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl105255105314_))
                                                 (let ((_e105260105317_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl105255105314_))))
                                                   (let ((_tl105258105322_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105260105317_)))
                                                         (_hd105259105320_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105260105317_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105258105322_))
                                                         (___kont112120112121_)
                                                         (___kont112124112125_))))
                                                 (___kont112124112125_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd105256105312_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105255105314_))
                                                     (let ((_e105266105294_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105255105314_))))
                                                       (let ((_tl105264105299_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105266105294_)))
                     (_hd105265105297_
                      (let () (declare (not safe)) (##car _e105266105294_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105264105299_))
                     (___kont112122112123_)
                     (___kont112124112125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112124112125_))
                                                 (___kont112124112125_)))
                                         (___kont112124112125_))))
                                 (___kont112124112125_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest105228105236_))
                     (let ((_hd105233105333_
                            (let ()
                              (declare (not safe))
                              (##car _rest105228105236_)))
                           (_tl105234105335_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest105228105236_))))
                       (let* ((_e105338_ _hd105233105333_)
                              (_rest105340_ _tl105234105335_))
                         (declare (not safe))
                         (_K105232105330_ _rest105340_ _e105338_)))
                     (let () (declare (not safe)) (_else105230105244_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd105170105200_
                                               _hd105167105192_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105159105176_
                                                 _g105160105179_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105159105176_ _g105160105179_)))))
                              (let ()
                                (declare (not safe))
                                (_g105159105176_ _g105160105179_)))))
                      (let ()
                        (declare (not safe))
                        (_g105159105176_ _g105160105179_))))))
          (declare (not safe))
          (_g105158105342_ _stx105157_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self104967_ _stx104968_)
        (let* ((_g104970104987_
                (lambda (_g104971104984_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104971104984_))))
               (_g104969105153_
                (lambda (_g104971104990_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104971104990_))
                      (let ((_e104976104992_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104971104990_))))
                        (let ((_hd104975104995_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104976104992_)))
                              (_tl104974104997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104976104992_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104974104997_))
                              (let ((_e104979105000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104974104997_))))
                                (let ((_hd104978105003_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104979105000_)))
                                      (_tl104977105005_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104979105000_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104977105005_))
                                      (let ((_e104982105008_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104977105005_))))
                                        (let ((_hd104981105011_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104982105008_)))
                                              (_tl104980105013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104982105008_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104980105013_))
                                              ((lambda (_L105016_ _L105017_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp112953
                                                            (let ((__tmp112956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self104967_ _L105016_)))
                          (__tmp112954
                           (let ((__tmp112955
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self104967_
                                     _L105017_))))
                             (declare (not safe))
                             (cons __tmp112955 '()))))
                      (declare (not safe))
                      (cons __tmp112956 __tmp112954))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp112953))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp105032_ ((_rest105035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp112952
                                      (let ()
                                        (declare (not safe))
                                        (cons _L105016_ '()))))
                                 (declare (not safe))
                                 (cons _L105017_ __tmp112952)))
                              (_bind105037_ '())
                              (_args105038_ '()))
               (let* ((_rest105039105047_ _rest105035_)
                      (_else105041105055_
                       (lambda ()
                         (let ((__tmp112938
                                (let ((__tmp112939
                                       (let ((__tmp112940
                                              (let ((__tmp112941
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args105038_))))
                                                (declare (not safe))
                                                (cons __tmp112941 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp112940))))
                                  (declare (not safe))
                                  (cons _bind105037_ __tmp112939))))
                           (declare (not safe))
                           (cons 'let __tmp112938))))
                      (_K105043105141_
                       (lambda (_rest105058_ _e105059_)
                         (let* ((___stx112164112165_ _e105059_)
                                (_g105064105082_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx112164112165_)))))
                           (let ((___kont112166112167_
                                  (lambda ()
                                    (let ((__tmp112942
                                           (let ((__tmp112943
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105059_))))
                                             (declare (not safe))
                                             (cons __tmp112943 _args105038_))))
                                      (declare (not safe))
                                      (_lp105032_
                                       _rest105058_
                                       _bind105037_
                                       __tmp112942))))
                                 (___kont112168112169_
                                  (lambda ()
                                    (let ((__tmp112944
                                           (let ((__tmp112945
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e105059_))))
                                             (declare (not safe))
                                             (cons __tmp112945 _args105038_))))
                                      (declare (not safe))
                                      (_lp105032_
                                       _rest105058_
                                       _bind105037_
                                       __tmp112944))))
                                 (___kont112170112171_
                                  (lambda ()
                                    (let ((_tmp105089_
                                           (let ((__tmp112946 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp112946))))
                                      (let ((__tmp112948
                                             (let ((__tmp112949
                                                    (let ((__tmp112950
                                                           (let ((__tmp112951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105059_))))
                     (declare (not safe))
                     (cons __tmp112951 '()))))
              (declare (not safe))
              (cons _tmp105089_ __tmp112950))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp112949
                                                     _bind105037_)))
                                            (__tmp112947
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp105089_
                                                     _args105038_))))
                                        (declare (not safe))
                                        (_lp105032_
                                         _rest105058_
                                         __tmp112948
                                         __tmp112947))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx112164112165_))
                                 (let ((_e105068105120_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx112164112165_))))
                                   (let ((_tl105066105125_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e105068105120_)))
                                         (_hd105067105123_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e105068105120_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd105067105123_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd105067105123_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl105066105125_))
                                                 (let ((_e105071105128_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl105066105125_))))
                                                   (let ((_tl105069105133_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105071105128_)))
                                                         (_hd105070105131_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105071105128_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105069105133_))
                                                         (___kont112166112167_)
                                                         (___kont112170112171_))))
                                                 (___kont112170112171_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd105067105123_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105066105125_))
                                                     (let ((_e105077105105_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105066105125_))))
                                                       (let ((_tl105075105110_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105077105105_)))
                     (_hd105076105108_
                      (let () (declare (not safe)) (##car _e105077105105_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105075105110_))
                     (___kont112168112169_)
                     (___kont112170112171_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont112170112171_))
                                                 (___kont112170112171_)))
                                         (___kont112170112171_))))
                                 (___kont112170112171_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest105039105047_))
                     (let ((_hd105044105144_
                            (let ()
                              (declare (not safe))
                              (##car _rest105039105047_)))
                           (_tl105045105146_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest105039105047_))))
                       (let* ((_e105149_ _hd105044105144_)
                              (_rest105151_ _tl105045105146_))
                         (declare (not safe))
                         (_K105043105141_ _rest105151_ _e105149_)))
                     (let () (declare (not safe)) (_else105041105055_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104981105011_
                                               _hd104978105003_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104970104987_
                                                 _g104971104990_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104970104987_ _g104971104990_)))))
                              (let ()
                                (declare (not safe))
                                (_g104970104987_ _g104971104990_)))))
                      (let ()
                        (declare (not safe))
                        (_g104970104987_ _g104971104990_))))))
          (declare (not safe))
          (_g104969105153_ _stx104968_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self104883_ _stx104884_)
        (let* ((_g104886104907_
                (lambda (_g104887104904_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104887104904_))))
               (_g104885104964_
                (lambda (_g104887104910_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104887104910_))
                      (let ((_e104893104912_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104887104910_))))
                        (let ((_hd104892104915_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104893104912_)))
                              (_tl104891104917_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104893104912_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104891104917_))
                              (let ((_e104896104920_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104891104917_))))
                                (let ((_hd104895104923_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104896104920_)))
                                      (_tl104894104925_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104896104920_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104894104925_))
                                      (let ((_e104899104928_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104894104925_))))
                                        (let ((_hd104898104931_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104899104928_)))
                                              (_tl104897104933_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104899104928_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104897104933_))
                                              (let ((_e104902104936_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104897104933_))))
                                                (let ((_hd104901104939_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104902104936_)))
                                                      (_tl104900104941_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104902104936_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104900104941_))
                                                      ((lambda (_L104944_
                                                                _L104945_
                                                                _L104946_)
                                                         (let ((__tmp112957
                                                                (let ((__tmp112963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self104883_ _L104944_)))
                              (__tmp112958
                               (let ((__tmp112962
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self104883_
                                         _L104945_)))
                                     (__tmp112959
                                      (let ((__tmp112961
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self104883_
                                                _L104946_)))
                                            (__tmp112960
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp112961 __tmp112960))))
                                 (declare (not safe))
                                 (cons __tmp112962 __tmp112959))))
                          (declare (not safe))
                          (cons __tmp112963 __tmp112958))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp112957)))
               _hd104901104939_
               _hd104898104931_
               _hd104895104923_)
              (let ()
                (declare (not safe))
                (_g104886104907_ _g104887104910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104886104907_
                                                 _g104887104910_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104886104907_ _g104887104910_)))))
                              (let ()
                                (declare (not safe))
                                (_g104886104907_ _g104887104910_)))))
                      (let ()
                        (declare (not safe))
                        (_g104886104907_ _g104887104910_))))))
          (declare (not safe))
          (_g104885104964_ _stx104884_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self104783_ _stx104784_)
        (let* ((_g104786104811_
                (lambda (_g104787104808_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104787104808_))))
               (_g104785104880_
                (lambda (_g104787104814_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104787104814_))
                      (let ((_e104794104816_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104787104814_))))
                        (let ((_hd104793104819_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104794104816_)))
                              (_tl104792104821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104794104816_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104792104821_))
                              (let ((_e104797104824_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104792104821_))))
                                (let ((_hd104796104827_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104797104824_)))
                                      (_tl104795104829_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104797104824_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104795104829_))
                                      (let ((_e104800104832_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104795104829_))))
                                        (let ((_hd104799104835_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104800104832_)))
                                              (_tl104798104837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104800104832_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104798104837_))
                                              (let ((_e104803104840_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104798104837_))))
                                                (let ((_hd104802104843_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104803104840_)))
                                                      (_tl104801104845_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104803104840_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104801104845_))
                                                      (let ((_e104806104848_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104801104845_))))
                (let ((_hd104805104851_
                       (let () (declare (not safe)) (##car _e104806104848_)))
                      (_tl104804104853_
                       (let () (declare (not safe)) (##cdr _e104806104848_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104804104853_))
                      ((lambda (_L104856_ _L104857_ _L104858_ _L104859_)
                         (let ((__tmp112964
                                (let ((__tmp112972
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self104783_
                                          _L104857_)))
                                      (__tmp112965
                                       (let ((__tmp112971
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104783_
                                                 _L104856_)))
                                             (__tmp112966
                                              (let ((__tmp112970
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self104783_
                                                        _L104858_)))
                                                    (__tmp112967
                                                     (let ((__tmp112969
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self104783_
                                                               _L104859_)))
                                                           (__tmp112968
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp112969 __tmp112968))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112970
                                                      __tmp112967))))
                                         (declare (not safe))
                                         (cons __tmp112971 __tmp112966))))
                                  (declare (not safe))
                                  (cons __tmp112972 __tmp112965))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp112964)))
                       _hd104805104851_
                       _hd104802104843_
                       _hd104799104835_
                       _hd104796104827_)
                      (let ()
                        (declare (not safe))
                        (_g104786104811_ _g104787104814_)))))
              (let ()
                (declare (not safe))
                (_g104786104811_ _g104787104814_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104786104811_
                                                 _g104787104814_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104786104811_ _g104787104814_)))))
                              (let ()
                                (declare (not safe))
                                (_g104786104811_ _g104787104814_)))))
                      (let ()
                        (declare (not safe))
                        (_g104786104811_ _g104787104814_))))))
          (declare (not safe))
          (_g104785104880_ _stx104784_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self104699_ _stx104700_)
        (let* ((_g104702104723_
                (lambda (_g104703104720_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104703104720_))))
               (_g104701104780_
                (lambda (_g104703104726_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104703104726_))
                      (let ((_e104709104728_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104703104726_))))
                        (let ((_hd104708104731_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104709104728_)))
                              (_tl104707104733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104709104728_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104707104733_))
                              (let ((_e104712104736_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104707104733_))))
                                (let ((_hd104711104739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104712104736_)))
                                      (_tl104710104741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104712104736_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104710104741_))
                                      (let ((_e104715104744_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104710104741_))))
                                        (let ((_hd104714104747_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104715104744_)))
                                              (_tl104713104749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104715104744_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104713104749_))
                                              (let ((_e104718104752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104713104749_))))
                                                (let ((_hd104717104755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104718104752_)))
                                                      (_tl104716104757_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104718104752_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104716104757_))
                                                      ((lambda (_L104760_
                                                                _L104761_
                                                                _L104762_)
                                                         (let ((__tmp112973
                                                                (let ((__tmp112979
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self104699_ _L104760_)))
                              (__tmp112974
                               (let ((__tmp112978
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self104699_
                                         _L104761_)))
                                     (__tmp112975
                                      (let ((__tmp112977
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self104699_
                                                _L104762_)))
                                            (__tmp112976
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp112977 __tmp112976))))
                                 (declare (not safe))
                                 (cons __tmp112978 __tmp112975))))
                          (declare (not safe))
                          (cons __tmp112979 __tmp112974))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp112973)))
               _hd104717104755_
               _hd104714104747_
               _hd104711104739_)
              (let ()
                (declare (not safe))
                (_g104702104723_ _g104703104726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104702104723_
                                                 _g104703104726_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104702104723_ _g104703104726_)))))
                              (let ()
                                (declare (not safe))
                                (_g104702104723_ _g104703104726_)))))
                      (let ()
                        (declare (not safe))
                        (_g104702104723_ _g104703104726_))))))
          (declare (not safe))
          (_g104701104780_ _stx104700_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self104599_ _stx104600_)
        (let* ((_g104602104627_
                (lambda (_g104603104624_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104603104624_))))
               (_g104601104696_
                (lambda (_g104603104630_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104603104630_))
                      (let ((_e104610104632_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104603104630_))))
                        (let ((_hd104609104635_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104610104632_)))
                              (_tl104608104637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104610104632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104608104637_))
                              (let ((_e104613104640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104608104637_))))
                                (let ((_hd104612104643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104613104640_)))
                                      (_tl104611104645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104613104640_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104611104645_))
                                      (let ((_e104616104648_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104611104645_))))
                                        (let ((_hd104615104651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104616104648_)))
                                              (_tl104614104653_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104616104648_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104614104653_))
                                              (let ((_e104619104656_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104614104653_))))
                                                (let ((_hd104618104659_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104619104656_)))
                                                      (_tl104617104661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104619104656_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104617104661_))
                                                      (let ((_e104622104664_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104617104661_))))
                (let ((_hd104621104667_
                       (let () (declare (not safe)) (##car _e104622104664_)))
                      (_tl104620104669_
                       (let () (declare (not safe)) (##cdr _e104622104664_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104620104669_))
                      ((lambda (_L104672_ _L104673_ _L104674_ _L104675_)
                         (let ((__tmp112980
                                (let ((__tmp112988
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self104599_
                                          _L104673_)))
                                      (__tmp112981
                                       (let ((__tmp112987
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104599_
                                                 _L104672_)))
                                             (__tmp112982
                                              (let ((__tmp112986
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self104599_
                                                        _L104674_)))
                                                    (__tmp112983
                                                     (let ((__tmp112985
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self104599_
                                                               _L104675_)))
                                                           (__tmp112984
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp112985 __tmp112984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp112986
                                                      __tmp112983))))
                                         (declare (not safe))
                                         (cons __tmp112987 __tmp112982))))
                                  (declare (not safe))
                                  (cons __tmp112988 __tmp112981))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp112980)))
                       _hd104621104667_
                       _hd104618104659_
                       _hd104615104651_
                       _hd104612104643_)
                      (let ()
                        (declare (not safe))
                        (_g104602104627_ _g104603104630_)))))
              (let ()
                (declare (not safe))
                (_g104602104627_ _g104603104630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104602104627_
                                                 _g104603104630_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104602104627_ _g104603104630_)))))
                              (let ()
                                (declare (not safe))
                                (_g104602104627_ _g104603104630_)))))
                      (let ()
                        (declare (not safe))
                        (_g104602104627_ _g104603104630_))))))
          (declare (not safe))
          (_g104601104696_ _stx104600_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self104394_ _stx104395_)
        (let* ((_g104397104418_
                (lambda (_g104398104415_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104398104415_))))
               (_g104396104596_
                (lambda (_g104398104421_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104398104421_))
                      (let ((_e104404104423_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104398104421_))))
                        (let ((_hd104403104426_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104404104423_)))
                              (_tl104402104428_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104404104423_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104402104428_))
                              (let ((_e104407104431_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104402104428_))))
                                (let ((_hd104406104434_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104407104431_)))
                                      (_tl104405104436_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104407104431_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104405104436_))
                                      (let ((_e104410104439_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104405104436_))))
                                        (let ((_hd104409104442_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104410104439_)))
                                              (_tl104408104444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104410104439_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104408104444_))
                                              (let ((_e104413104447_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104408104444_))))
                                                (let ((_hd104412104450_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104413104447_)))
                                                      (_tl104411104452_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104413104447_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl104411104452_))
                                                      ((lambda (_L104455_
                                                                _L104456_
                                                                _L104457_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp113007
                            (let ((__tmp113013
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self104394_
                                      _L104455_)))
                                  (__tmp113008
                                   (let ((__tmp113012
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self104394_
                                             _L104456_)))
                                         (__tmp113009
                                          (let ((__tmp113011
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self104394_
                                                    _L104457_)))
                                                (__tmp113010
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp113011 __tmp113010))))
                                     (declare (not safe))
                                     (cons __tmp113012 __tmp113009))))
                              (declare (not safe))
                              (cons __tmp113013 __tmp113008))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp113007))
                     (let _lp104475_ ((_rest104478_
                                       (let ((__tmp113005
                                              (let ((__tmp113006
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L104455_ '()))))
                                                (declare (not safe))
                                                (cons _L104456_ __tmp113006))))
                                         (declare (not safe))
                                         (cons _L104457_ __tmp113005)))
                                      (_bind104480_ '())
                                      (_args104481_ '()))
                       (let* ((_rest104482104490_ _rest104478_)
                              (_else104484104498_
                               (lambda ()
                                 (let ((__tmp112989
                                        (let ((__tmp112990
                                               (let ((__tmp112991
                                                      (let ((__tmp112992
                                                             (let ((__tmp112993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp112994
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp112994 _args104481_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp112993))))
                (declare (not safe))
                (cons __tmp112992 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp112991))))
                                          (declare (not safe))
                                          (cons _bind104480_ __tmp112990))))
                                   (declare (not safe))
                                   (cons 'let __tmp112989))))
                              (_K104486104584_
                               (lambda (_rest104501_ _e104502_)
                                 (let* ((___stx112210112211_ _e104502_)
                                        (_g104507104525_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx112210112211_)))))
                                   (let ((___kont112212112213_
                                          (lambda ()
                                            (let ((__tmp112995
                                                   (let ((__tmp112996
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e104502_))))
                                                     (declare (not safe))
                                                     (cons __tmp112996
                                                           _args104481_))))
                                              (declare (not safe))
                                              (_lp104475_
                                               _rest104501_
                                               _bind104480_
                                               __tmp112995))))
                                         (___kont112214112215_
                                          (lambda ()
                                            (let ((__tmp112997
                                                   (let ((__tmp112998
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e104502_))))
                                                     (declare (not safe))
                                                     (cons __tmp112998
                                                           _args104481_))))
                                              (declare (not safe))
                                              (_lp104475_
                                               _rest104501_
                                               _bind104480_
                                               __tmp112997))))
                                         (___kont112216112217_
                                          (lambda ()
                                            (let ((_tmp104532_
                                                   (let ((__tmp112999
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp112999))))
                                              (let ((__tmp113001
                                                     (let ((__tmp113002
                                                            (let ((__tmp113003
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113004
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e104502_))))
                             (declare (not safe))
                             (cons __tmp113004 '()))))
                      (declare (not safe))
                      (cons _tmp104532_ __tmp113003))))
               (declare (not safe))
               (cons __tmp113002 _bind104480_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp113000
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp104532_
                                                             _args104481_))))
                                                (declare (not safe))
                                                (_lp104475_
                                                 _rest104501_
                                                 __tmp113001
                                                 __tmp113000))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx112210112211_))
                                         (let ((_e104511104563_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx112210112211_))))
                                           (let ((_tl104509104568_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e104511104563_)))
                                                 (_hd104510104566_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e104511104563_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd104510104566_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd104510104566_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl104509104568_))
                                                         (let ((_e104514104571_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl104509104568_))))
                   (let ((_tl104512104576_
                          (let ()
                            (declare (not safe))
                            (##cdr _e104514104571_)))
                         (_hd104513104574_
                          (let ()
                            (declare (not safe))
                            (##car _e104514104571_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl104512104576_))
                         (___kont112212112213_)
                         (___kont112216112217_))))
                 (___kont112216112217_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd104510104566_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl104509104568_))
                     (let ((_e104520104548_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl104509104568_))))
                       (let ((_tl104518104553_
                              (let ()
                                (declare (not safe))
                                (##cdr _e104520104548_)))
                             (_hd104519104551_
                              (let ()
                                (declare (not safe))
                                (##car _e104520104548_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl104518104553_))
                             (___kont112214112215_)
                             (___kont112216112217_))))
                     (___kont112216112217_))
                 (___kont112216112217_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112216112217_))))
                                         (___kont112216112217_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest104482104490_))
                             (let ((_hd104487104587_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest104482104490_)))
                                   (_tl104488104589_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest104482104490_))))
                               (let* ((_e104592_ _hd104487104587_)
                                      (_rest104594_ _tl104488104589_))
                                 (declare (not safe))
                                 (_K104486104584_ _rest104594_ _e104592_)))
                             (let ()
                               (declare (not safe))
                               (_else104484104498_)))))))
               _hd104412104450_
               _hd104409104442_
               _hd104406104434_)
              (let ()
                (declare (not safe))
                (_g104397104418_ _g104398104421_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104397104418_
                                                 _g104398104421_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104397104418_ _g104398104421_)))))
                              (let ()
                                (declare (not safe))
                                (_g104397104418_ _g104398104421_)))))
                      (let ()
                        (declare (not safe))
                        (_g104397104418_ _g104398104421_))))))
          (declare (not safe))
          (_g104396104596_ _stx104395_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self104173_ _stx104174_)
        (let* ((_g104176104201_
                (lambda (_g104177104198_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104177104198_))))
               (_g104175104391_
                (lambda (_g104177104204_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104177104204_))
                      (let ((_e104184104206_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104177104204_))))
                        (let ((_hd104183104209_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104184104206_)))
                              (_tl104182104211_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104184104206_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104182104211_))
                              (let ((_e104187104214_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104182104211_))))
                                (let ((_hd104186104217_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104187104214_)))
                                      (_tl104185104219_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104187104214_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104185104219_))
                                      (let ((_e104190104222_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104185104219_))))
                                        (let ((_hd104189104225_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104190104222_)))
                                              (_tl104188104227_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104190104222_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl104188104227_))
                                              (let ((_e104193104230_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl104188104227_))))
                                                (let ((_hd104192104233_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104193104230_)))
                                                      (_tl104191104235_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104193104230_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl104191104235_))
                                                      (let ((_e104196104238_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl104191104235_))))
                (let ((_hd104195104241_
                       (let () (declare (not safe)) (##car _e104196104238_)))
                      (_tl104194104243_
                       (let () (declare (not safe)) (##cdr _e104196104238_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104194104243_))
                      ((lambda (_L104246_ _L104247_ _L104248_ _L104249_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp113033
                                    (let ((__tmp113041
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self104173_
                                              _L104247_)))
                                          (__tmp113034
                                           (let ((__tmp113040
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self104173_
                                                     _L104246_)))
                                                 (__tmp113035
                                                  (let ((__tmp113039
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self104173_
                                                            _L104248_)))
                                                        (__tmp113036
                                                         (let ((__tmp113038
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self104173_ _L104249_)))
                       (__tmp113037
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp113038 __tmp113037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113039
                                                          __tmp113036))))
                                             (declare (not safe))
                                             (cons __tmp113040 __tmp113035))))
                                      (declare (not safe))
                                      (cons __tmp113041 __tmp113034))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp113033))
                             (let _lp104270_ ((_rest104273_
                                               (let ((__tmp113030
                                                      (let ((__tmp113031
                                                             (let ((__tmp113032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L104247_ '()))))
                       (declare (not safe))
                       (cons _L104246_ __tmp113032))))
                (declare (not safe))
                (cons _L104248_ __tmp113031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L104249_ __tmp113030)))
                                              (_bind104275_ '())
                                              (_args104276_ '()))
                               (let* ((_rest104277104285_ _rest104273_)
                                      (_else104279104293_
                                       (lambda ()
                                         (let ((__tmp113014
                                                (let ((__tmp113015
                                                       (let ((__tmp113016
                                                              (let ((__tmp113017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113018
                                    (let ((__tmp113019
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp113019 _args104276_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp113018))))
                        (declare (not safe))
                        (cons __tmp113017 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp113016))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind104275_
                                                        __tmp113015))))
                                           (declare (not safe))
                                           (cons 'let __tmp113014))))
                                      (_K104281104379_
                                       (lambda (_rest104296_ _e104297_)
                                         (let* ((___stx112256112257_ _e104297_)
                                                (_g104302104320_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx112256112257_)))))
                                           (let ((___kont112258112259_
                                                  (lambda ()
                                                    (let ((__tmp113020
                                                           (let ((__tmp113021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e104297_))))
                     (declare (not safe))
                     (cons __tmp113021 _args104276_))))
              (declare (not safe))
              (_lp104270_ _rest104296_ _bind104275_ __tmp113020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112260112261_
                                                  (lambda ()
                                                    (let ((__tmp113022
                                                           (let ((__tmp113023
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e104297_))))
                     (declare (not safe))
                     (cons __tmp113023 _args104276_))))
              (declare (not safe))
              (_lp104270_ _rest104296_ _bind104275_ __tmp113022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112262112263_
                                                  (lambda ()
                                                    (let ((_tmp104327_
                                                           (let ((__tmp113024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp113024))))
              (let ((__tmp113026
                     (let ((__tmp113027
                            (let ((__tmp113028
                                   (let ((__tmp113029
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e104297_))))
                                     (declare (not safe))
                                     (cons __tmp113029 '()))))
                              (declare (not safe))
                              (cons _tmp104327_ __tmp113028))))
                       (declare (not safe))
                       (cons __tmp113027 _bind104275_)))
                    (__tmp113025
                     (let ()
                       (declare (not safe))
                       (cons _tmp104327_ _args104276_))))
                (declare (not safe))
                (_lp104270_ _rest104296_ __tmp113026 __tmp113025))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx112256112257_))
                                                 (let ((_e104306104358_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx112256112257_))))
                                                   (let ((_tl104304104363_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e104306104358_)))
                                                         (_hd104305104361_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e104306104358_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd104305104361_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd104305104361_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl104304104363_))
                         (let ((_e104309104366_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl104304104363_))))
                           (let ((_tl104307104371_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e104309104366_)))
                                 (_hd104308104369_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e104309104366_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl104307104371_))
                                 (___kont112258112259_)
                                 (___kont112262112263_))))
                         (___kont112262112263_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd104305104361_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl104304104363_))
                             (let ((_e104315104343_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl104304104363_))))
                               (let ((_tl104313104348_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e104315104343_)))
                                     (_hd104314104346_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e104315104343_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl104313104348_))
                                     (___kont112260112261_)
                                     (___kont112262112263_))))
                             (___kont112262112263_))
                         (___kont112262112263_)))
                 (___kont112262112263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont112262112263_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest104277104285_))
                                     (let ((_hd104282104382_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest104277104285_)))
                                           (_tl104283104384_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest104277104285_))))
                                       (let* ((_e104387_ _hd104282104382_)
                                              (_rest104389_ _tl104283104384_))
                                         (declare (not safe))
                                         (_K104281104379_
                                          _rest104389_
                                          _e104387_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else104279104293_)))))))
                       _hd104195104241_
                       _hd104192104233_
                       _hd104189104225_
                       _hd104186104217_)
                      (let ()
                        (declare (not safe))
                        (_g104176104201_ _g104177104204_)))))
              (let ()
                (declare (not safe))
                (_g104176104201_ _g104177104204_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104176104201_
                                                 _g104177104204_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104176104201_ _g104177104204_)))))
                              (let ()
                                (declare (not safe))
                                (_g104176104201_ _g104177104204_)))))
                      (let ()
                        (declare (not safe))
                        (_g104176104201_ _g104177104204_))))))
          (declare (not safe))
          (_g104175104391_ _stx104174_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self104026_ _stx104027_)
        (letrec ((_import-set-template104029_
                  (lambda (_in104125_ _phi104126_)
                    (let ((_iphi104128_
                           (fx+ _phi104126_
                                (##direct-structure-ref
                                 _in104125_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports104129_
                           (##structure-ref
                            (##direct-structure-ref
                             _in104125_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp104131_ ((_rest104133_ _imports104129_)
                                       (_r104134_ '()))
                        (let* ((_rest104135104143_ _rest104133_)
                               (_else104137104151_ (lambda () _r104134_))
                               (_K104139104161_
                                (lambda (_rest104154_ _in104155_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in104155_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi104128_))
                                          (let ((__tmp113048
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in104155_
                                                         _r104134_))))
                                            (declare (not safe))
                                            (_lp104131_
                                             _rest104154_
                                             __tmp113048))
                                          (let ()
                                            (declare (not safe))
                                            (_lp104131_
                                             _rest104154_
                                             _r104134_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in104155_
                                             'gx#module-import::t))
                                          (let ((_iphi104157_
                                                 (fx+ _phi104126_
                                                      (##direct-structure-ref
                                                       _in104155_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi104157_))
                                                (let ((__tmp113046
                                                       (let ((__tmp113047
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in104155_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp113047
                                                               _r104134_))))
                                                  (declare (not safe))
                                                  (_lp104131_
                                                   _rest104154_
                                                   __tmp113046))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp104131_
                                                   _rest104154_
                                                   _r104134_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in104155_
                                                 'gx#import-set::t))
                                              (let ((_xphi104159_
                                                     (fx+ _iphi104128_
                                                          (##direct-structure-ref
                                                           _in104155_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi104159_))
                                                    (let ((__tmp113044
                                                           (let ((__tmp113045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in104155_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp113045 _r104134_))))
              (declare (not safe))
              (_lp104131_ _rest104154_ __tmp113044))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi104159_)
                                                        (let ((__tmp113042
                                                               (let ((__tmp113043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template104029_
                                 _in104155_
                                 _iphi104128_))))
                         (declare (not safe))
                         (foldl1 cons _r104134_ __tmp113043))))
                  (declare (not safe))
                  (_lp104131_ _rest104154_ __tmp113042))
                (let ()
                  (declare (not safe))
                  (_lp104131_ _rest104154_ _r104134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp104131_
                                                 _rest104154_
                                                 _r104134_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest104135104143_))
                              (let ((_hd104140104164_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest104135104143_)))
                                    (_tl104141104166_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest104135104143_))))
                                (let* ((_in104169_ _hd104140104164_)
                                       (_rest104171_ _tl104141104166_))
                                  (declare (not safe))
                                  (_K104139104161_ _rest104171_ _in104169_)))
                              (let ()
                                (declare (not safe))
                                (_else104137104151_)))))))))
          (let* ((_g104031104041_
                  (lambda (_g104032104038_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104032104038_))))
                 (_g104030104122_
                  (lambda (_g104032104044_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104032104044_))
                        (let ((_e104036104046_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104032104044_))))
                          (let ((_hd104035104049_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104036104046_)))
                                (_tl104034104051_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104036104046_))))
                            ((lambda (_L104054_)
                               (let ((_ht104065_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp104067_ ((_rest104069_ _L104054_)
                                                  (_loads104070_ '()))
                                   (letrec ((_K104072_
                                             (lambda (_ctx104115_ _rest104116_)
                                               (let ((_id104118_
                                                      (##structure-ref
                                                       _ctx104115_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht104065_
                                                        _id104118_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp104067_
                                                        _rest104116_
                                                        _loads104070_))
                                                     (let ((_rt104120_
                                                            (string-append
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#module-id->path-string _id104118_))
                     '"__rt")))
               (let ()
                 (declare (not safe))
                 (hash-put! _ht104065_ _id104118_ _rt104120_))
               (let ((__tmp113049
                      (let ()
                        (declare (not safe))
                        (cons _rt104120_ _loads104070_))))
                 (declare (not safe))
                 (_lp104067_ _rest104116_ __tmp113049))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest104073104081_ _rest104069_)
                                            (_else104075104093_
                                             (lambda ()
                                               (let ((__tmp113050
                                                      (map (lambda (_g104088104090_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g104088104090_))
                   (reverse _loads104070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp113050))))
                                            (_K104077104103_
                                             (lambda (_rest104096_ _in104097_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in104097_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K104072_
                                                      _in104097_
                                                      _rest104096_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in104097_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp113054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in104097_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp113054))
                   (let ((__tmp113053
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in104097_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K104072_ __tmp113053 _rest104096_))
                   (let ()
                     (declare (not safe))
                     (_lp104067_ _rest104096_ _loads104070_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in104097_
                      'gx#import-set::t))
                   (let ((_phi104099_
                          (##direct-structure-ref
                           _in104097_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi104099_))
                         (let ((__tmp113052
                                (##direct-structure-ref
                                 _in104097_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K104072_ __tmp113052 _rest104096_))
                         (if (fxpositive? _phi104099_)
                             (let* ((_deps104101_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template104029_
                                        _in104097_
                                        '0)))
                                    (__tmp113051
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest104096_
                                               _deps104101_))))
                               (declare (not safe))
                               (_lp104067_ __tmp113051 _loads104070_))
                             (let ()
                               (declare (not safe))
                               (_lp104067_ _rest104096_ _loads104070_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx104027_
                      _in104097_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest104073104081_))
                                           (let ((_hd104078104106_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest104073104081_)))
                                                 (_tl104079104108_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest104073104081_))))
                                             (let* ((_in104111_
                                                     _hd104078104106_)
                                                    (_rest104113_
                                                     _tl104079104108_))
                                               (declare (not safe))
                                               (_K104077104103_
                                                _rest104113_
                                                _in104111_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else104075104093_))))))))
                             _tl104034104051_)))
                        (let ()
                          (declare (not safe))
                          (_g104031104041_ _g104032104044_))))))
            (declare (not safe))
            (_g104030104122_ _stx104027_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self103841_ _stx103842_)
        (letrec ((_add-lift!103844_
                  (lambda (_expr104024_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp113055 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr104024_ __tmp113055)))))
                 (_generate-syntax-quote103845_
                  (lambda (_id104021_ _marks104022_)
                    (let ((__tmp113056
                           (let ((__tmp113057
                                  (let ((__tmp113061
                                         (let ((__tmp113062
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id104021_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp113062)))
                                        (__tmp113058
                                         (let ((__tmp113059
                                                (let ((__tmp113060
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks104022_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp113060))))
                                           (declare (not safe))
                                           (cons '#f __tmp113059))))
                                    (declare (not safe))
                                    (cons __tmp113061 __tmp113058))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp113057))))
                      (declare (not safe))
                      (cons '##structure __tmp113056))))
                 (_generate-simple103846_
                  (lambda (_stxq104016_)
                    (let ((_gid104018_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid104019_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq104016_))))
                      (let ((__tmp113063
                             (let ((__tmp113064
                                    (let ((__tmp113065
                                           (let ((__tmp113066
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote103845_
                                                     _qid104019_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp113066 '()))))
                                      (declare (not safe))
                                      (cons _gid104018_ __tmp113065))))
                               (declare (not safe))
                               (cons 'define __tmp113064))))
                        (declare (not safe))
                        (_add-lift!103844_ __tmp113063))
                      (let ((__tmp113067 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp113067 _stxq104016_ _gid104018_))
                      _gid104018_)))
                 (_generate-serialized103847_
                  (lambda (_stxq104006_ _marks104007_)
                    (let* ((_mark-refs104009_
                            (map _generate-mark103848_ _marks104007_))
                           (_gid104011_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid104013_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq104006_))))
                      (let ((__tmp113068
                             (let ((__tmp113069
                                    (let ((__tmp113070
                                           (let ((__tmp113071
                                                  (let ((__tmp113072
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs104009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote103845_
                                                     _qid104013_
                                                     __tmp113072))))
                                             (declare (not safe))
                                             (cons __tmp113071 '()))))
                                      (declare (not safe))
                                      (cons _gid104011_ __tmp113070))))
                               (declare (not safe))
                               (cons 'define __tmp113069))))
                        (declare (not safe))
                        (_add-lift!103844_ __tmp113068))
                      (let ((__tmp113073 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp113073 _stxq104006_ _gid104011_))
                      _gid104011_)))
                 (_generate-mark103848_
                  (lambda (_mark103992_)
                    (let ((_$e103994_
                           (let ((__tmp113074 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp113074 _mark103992_))))
                      (if _$e103994_
                          (values _$e103994_)
                          (let* ((_gid103997_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr103999_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark103849_ _mark103992_)))
                                 (_ctx104001_
                                  (let ((__tmp113075
                                         (##structure-ref
                                          _mark103992_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp113075)))
                                 (_ctx-ref104003_
                                  (if (let ((__tmp113080
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx104001_ __tmp113080))
                                      '(gx#current-expander-context)
                                      (let ((__tmp113076
                                             (let ((__tmp113077
                                                    (let ((__tmp113078
                                                           (let ((__tmp113079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref103850_ _ctx104001_))))
                     (declare (not safe))
                     (cons __tmp113079 '()))))
              (declare (not safe))
              (cons 'quote __tmp113078))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp113077 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp113076)))))
                            (let ((__tmp113081 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp113081 _mark103992_ _gid103997_))
                            (let ((__tmp113082
                                   (let ((__tmp113083
                                          (let ((__tmp113084
                                                 (let ((__tmp113085
                                                        (let ((__tmp113086
                                                               (let ((__tmp113088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp113089
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr103999_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp113089)))
                             (__tmp113087
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref104003_ '()))))
                         (declare (not safe))
                         (cons __tmp113088 __tmp113087))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp113086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp113085 '()))))
                                            (declare (not safe))
                                            (cons _gid103997_ __tmp113084))))
                                     (declare (not safe))
                                     (cons 'define __tmp113083))))
                              (declare (not safe))
                              (_add-lift!103844_ __tmp113082))
                            _gid103997_)))))
                 (_serialize-mark103849_
                  (lambda (_mark103939_)
                    (letrec ((_quote-e103941_
                              (lambda (_sym103990_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _sym103990_))
                                    _sym103990_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym103990_))))))
                      (let* ((_mark103942103951_ _mark103939_)
                             (_E103944103955_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark103942103951_))))
                             (_K103945103967_
                              (lambda (_trace103958_
                                       _phi103959_
                                       _ctx103960_
                                       _subst103961_)
                                (let* ((_subs103963_
                                        (if _subst103961_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst103961_))
                                            '()))
                                       (__tmp113090
                                        (map (lambda (_pair103965_)
                                               (let ((__tmp113093
                                                      (let ((__tmp113094
                                                             (car _pair103965_)))
                                                        (declare (not safe))
                                                        (_quote-e103941_
                                                         __tmp113094)))
                                                     (__tmp113091
                                                      (let ((__tmp113092
                                                             (cdr _pair103965_)))
                                                        (declare (not safe))
                                                        (_quote-e103941_
                                                         __tmp113092))))
                                                 (declare (not safe))
                                                 (cons __tmp113093
                                                       __tmp113091)))
                                             _subs103963_)))
                                  (declare (not safe))
                                  (cons _phi103959_ __tmp113090)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark103942103951_
                               'gx#expander-mark::t))
                            (let* ((_e103946103970_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103942103951_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst103973_ _e103946103970_)
                                   (_e103947103975_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103942103951_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx103978_ _e103947103975_)
                                   (_e103948103980_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103942103951_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi103983_ _e103948103980_)
                                   (_e103949103985_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark103942103951_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace103988_ _e103949103985_))
                              (declare (not safe))
                              (_K103945103967_
                               _trace103988_
                               _phi103983_
                               _ctx103978_
                               _subst103973_))
                            (let ()
                              (declare (not safe))
                              (_E103944103955_)))))))
                 (_context-ref103850_
                  (lambda (_ctx103926_)
                    (if (let ((__tmp113102
                               (##structure-ref
                                _ctx103926_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp113102
                           'gx#module-context::t))
                        (let ((_ctx-ref103928_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested103852_ _ctx103926_)))
                              (_ctx-origin103929_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin103851_ _ctx103926_)))
                              (_origin103930_
                               (let ((__tmp113096
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin103851_ __tmp113096))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin103930_ _ctx-origin103929_))
                              (let ((_ref103932_
                                     (let ((__tmp113097
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested103852_
                                        __tmp113097))))
                                (let _lp103934_ ((_ref103936_
                                                  (cdr _ref103932_))
                                                 (_ctx-ref103937_
                                                  (cdr _ctx-ref103928_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref103936_))
                                           (let ((__tmp113101
                                                  (car _ref103936_))
                                                 (__tmp113100
                                                  (car _ctx-ref103937_)))
                                             (declare (not safe))
                                             (eq? __tmp113101 __tmp113100)))
                                      (let ((__tmp113099 (cdr _ref103936_))
                                            (__tmp113098
                                             (cdr _ctx-ref103937_)))
                                        (declare (not safe))
                                        (_lp103934_ __tmp113099 __tmp113098))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref103937_)))))
                              _ctx-ref103928_))
                        (let ((__tmp113095
                               (##structure-ref
                                _ctx103926_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp113095)))))
                 (_context-ref-origin103851_
                  (lambda (_ctx103918_)
                    (let _lp103920_ ((_ctx103922_ _ctx103918_))
                      (let ((_super103924_
                             (##structure-ref
                              _ctx103922_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super103924_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp103920_ _super103924_))
                            _ctx103922_)))))
                 (_context-ref-nested103852_
                  (lambda (_ctx103909_)
                    (let _lp103911_ ((_ctx103913_ _ctx103909_) (_r103914_ '()))
                      (let ((_super103916_
                             (##structure-ref
                              _ctx103913_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super103916_
                               'gx#module-context::t))
                            (let ((__tmp113105
                                   (let ((__tmp113106
                                          (car (##structure-ref
                                                _ctx103913_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp113106 _r103914_))))
                              (declare (not safe))
                              (_lp103911_ _super103916_ __tmp113105))
                            (let ((__tmp113103
                                   (let ((__tmp113104
                                          (##structure-ref
                                           _ctx103913_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp113104))))
                              (declare (not safe))
                              (cons __tmp113103 _r103914_))))))))
          (let* ((_g103854103867_
                  (lambda (_g103855103864_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103855103864_))))
                 (_g103853103906_
                  (lambda (_g103855103870_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103855103870_))
                        (let ((_e103859103872_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103855103870_))))
                          (let ((_hd103858103875_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103859103872_)))
                                (_tl103857103877_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103859103872_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl103857103877_))
                                (let ((_e103862103880_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl103857103877_))))
                                  (let ((_hd103861103883_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e103862103880_)))
                                        (_tl103860103885_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e103862103880_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl103860103885_))
                                        ((lambda (_L103888_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L103888_))
                                               (let ((_$e103901_
                                                      (let ((__tmp113107
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp113107
                                                         _L103888_))))
                                                 (if _$e103901_
                                                     (values _$e103901_)
                                                     (let ((_marks103904_
                                                            (##direct-structure-ref
                                                             _L103888_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks103904_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple103846_
                                                              _L103888_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized103847_
                                                              _L103888_
                                                              _marks103904_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L103888_))))
                                         _hd103861103883_)
                                        (let ()
                                          (declare (not safe))
                                          (_g103854103867_ _g103855103870_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g103854103867_ _g103855103870_)))))
                        (let ()
                          (declare (not safe))
                          (_g103854103867_ _g103855103870_))))))
            (declare (not safe))
            (_g103853103906_ _stx103842_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self103773_ _stx103774_)
        (let* ((_g103776103793_
                (lambda (_g103777103790_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103777103790_))))
               (_g103775103838_
                (lambda (_g103777103796_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103777103796_))
                      (let ((_e103782103798_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103777103796_))))
                        (let ((_hd103781103801_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103782103798_)))
                              (_tl103780103803_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103782103798_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103780103803_))
                              (let ((_e103785103806_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103780103803_))))
                                (let ((_hd103784103809_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103785103806_)))
                                      (_tl103783103811_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103785103806_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103783103811_))
                                      (let ((_e103788103814_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103783103811_))))
                                        (let ((_hd103787103817_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103788103814_)))
                                              (_tl103786103819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103788103814_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103786103819_))
                                              ((lambda (_L103822_ _L103823_)
                                                 (let ((__tmp113108
                                                        (let ((__tmp113111
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L103823_)))
                      (__tmp113109
                       (let ((__tmp113110
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self103773_ _L103822_))))
                         (declare (not safe))
                         (cons __tmp113110 '()))))
                  (declare (not safe))
                  (cons __tmp113111 __tmp113109))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp113108)))
                                               _hd103787103817_
                                               _hd103784103809_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103776103793_
                                                 _g103777103796_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103776103793_ _g103777103796_)))))
                              (let ()
                                (declare (not safe))
                                (_g103776103793_ _g103777103796_)))))
                      (let ()
                        (declare (not safe))
                        (_g103776103793_ _g103777103796_))))))
          (declare (not safe))
          (_g103775103838_ _stx103774_))))
    (define gxc#generate-meta-begin%
      (lambda (_self103722_ _stx103723_)
        (let* ((_g103725103735_
                (lambda (_g103726103732_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103726103732_))))
               (_g103724103770_
                (lambda (_g103726103738_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103726103738_))
                      (let ((_e103730103740_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103726103738_))))
                        (let ((_hd103729103743_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103730103740_)))
                              (_tl103728103745_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103730103740_))))
                          ((lambda (_L103748_)
                             (let* ((_c-body103762_
                                     (map (lambda (_g103757103759_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self103722_
                                               _g103757103759_)))
                                          _L103748_))
                                    (_c-body103767_
                                     (filter (lambda (_$obj103764_)
                                               (let ((__tmp113112
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj103764_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp113112)))
                                             _c-body103762_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body103767_))))
                           _tl103728103745_)))
                      (let ()
                        (declare (not safe))
                        (_g103725103735_ _g103726103738_))))))
          (declare (not safe))
          (_g103724103770_ _stx103723_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self103630_ _stx103631_)
        (let* ((_g103633103643_
                (lambda (_g103634103640_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103634103640_))))
               (_g103632103719_
                (lambda (_g103634103646_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103634103646_))
                      (let ((_e103638103648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103634103646_))))
                        (let ((_hd103637103651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103638103648_)))
                              (_tl103636103653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103638103648_))))
                          ((lambda (_L103656_)
                             (let* ((_phi103666_
                                     (let ((__tmp113113
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp113113 '1)))
                                    (_block103668_
                                     (let ((__tmp113114
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self103630_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp113114
                                        _phi103666_)))
                                    (_compiled103671_
                                     (let ((__tmp113115
                                            (lambda ()
                                              (let ((__tmp113117
                                                     (let ((__tmp113118
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp113118
                                                             _L103656_)))
                                                    (__tmp113116
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self103630_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp113117
                                                 'state:
                                                 __tmp113116)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp113115
                                        gx#current-expander-phi
                                        _phi103666_))))
                               (let* ((_g103674103684_
                                       (lambda (_g103675103681_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g103675103681_))))
                                      (_g103673103716_
                                       (lambda (_g103675103687_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g103675103687_))
                                             (let ((_e103679103689_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g103675103687_))))
                                               (let ((_hd103678103692_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e103679103689_)))
                                                     (_tl103677103694_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e103679103689_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd103678103692_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd103678103692_))
                                                         ((lambda (_L103697_)
                                                            (let ((_c-body103714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj103711_)
                                     (let ((__tmp113119
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj103711_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp113119)))
                                   _L103697_)))
                      (if _block103668_
                          (let ((__tmp113120
                                 (let ((__tmp113121
                                        (let ((__tmp113122
                                               (let ((__tmp113126
                                                      (let ((__tmp113127
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp113127)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp113123
                                                      (let ((__tmp113124
                                                             (let ((__tmp113125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block103668_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp113125))))
                (declare (not safe))
                (cons __tmp113124 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp113126
                                                       __tmp113123))))
                                          (declare (not safe))
                                          (cons '%#call __tmp113122))))
                                   (declare (not safe))
                                   (cons __tmp113121 _c-body103714_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp113120))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body103714_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body103714_))))))
                  _tl103677103694_)
                 (let ()
                   (declare (not safe))
                   (_g103674103684_ _g103675103687_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g103674103684_
                                                        _g103675103687_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g103674103684_
                                                _g103675103687_))))))
                                 (declare (not safe))
                                 (_g103673103716_ _compiled103671_))))
                           _tl103636103653_)))
                      (let ()
                        (declare (not safe))
                        (_g103633103643_ _g103634103646_))))))
          (declare (not safe))
          (_g103632103719_ _stx103631_))))
    (define gxc#generate-meta-module%
      (lambda (_self103561_ _stx103562_)
        (let ((__tmp113128
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self103561_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp113128))
        (let* ((_g103564103578_
                (lambda (_g103565103575_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103565103575_))))
               (_g103563103627_
                (lambda (_g103565103581_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103565103581_))
                      (let ((_e103570103583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103565103581_))))
                        (let ((_hd103569103586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103570103583_)))
                              (_tl103568103588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103570103583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103568103588_))
                              (let ((_e103573103591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103568103588_))))
                                (let ((_hd103572103594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103573103591_)))
                                      (_tl103571103596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103573103591_))))
                                  ((lambda (_L103599_ _L103600_)
                                     (let ((_key103613_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L103600_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _key103613_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx103562_
                                              _L103600_
                                              _key103613_)))
                                       (let* ((_ctx103615_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L103600_)))
                                              (_code103618_
                                               (let ((__tmp113129
                                                      (lambda ()
                                                        (let ((__tmp113130
                                                               (##structure-ref
                                                                _ctx103615_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self103561_
                                                           __tmp113130)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp113129
                                                  gx#current-expander-context
                                                  _ctx103615_)))
                                              (_rt103620_
                                               (let ((__tmp113131
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp113131
                                                  _ctx103615_)))
                                              (_loader103622_
                                               (if _rt103620_
                                                   (let ((__tmp113132
                                                          (let ((__tmp113133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp113137
                                (let ((__tmp113138
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp113138)))
                               (__tmp113134
                                (let ((__tmp113135
                                       (let ((__tmp113136
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt103620_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp113136))))
                                  (declare (not safe))
                                  (cons __tmp113135 '()))))
                           (declare (not safe))
                           (cons __tmp113137 __tmp113134))))
                    (declare (not safe))
                    (cons '%#call __tmp113133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp113132 '()))
                                                   '()))
                                              (_modid103624_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L103600_))))
                                         (let ((__tmp113139
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self103561_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp113139))
                                         (let ((__tmp113140
                                                (let ((__tmp113141
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code103618_
                                                               _loader103622_))))
                                                  (declare (not safe))
                                                  (cons _modid103624_
                                                        __tmp113141))))
                                           (declare (not safe))
                                           (cons '%#module __tmp113140)))))
                                   _tl103571103596_
                                   _hd103572103594_)))
                              (let ()
                                (declare (not safe))
                                (_g103564103578_ _g103565103581_)))))
                      (let ()
                        (declare (not safe))
                        (_g103564103578_ _g103565103581_))))))
          (declare (not safe))
          (_g103563103627_ _stx103562_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx103551_ _context-chain103552_)
        (let _lp103554_ ((_ctx103556_ _ctx103551_) (_path103557_ '()))
          (let ((_super103559_
                 (##structure-ref _ctx103556_ '3 gx#phi-context::t '#f)))
            (if (memq _super103559_ _context-chain103552_)
                (let ((__tmp113146
                       (let ((__tmp113147
                              (car (##structure-ref
                                    _ctx103556_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp113147 _path103557_))))
                  (declare (not safe))
                  (cons '#f __tmp113146))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super103559_
                       'gx#module-context::t))
                    (let ((__tmp113144
                           (let ((__tmp113145
                                  (car (##structure-ref
                                        _ctx103556_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp113145 _path103557_))))
                      (declare (not safe))
                      (_lp103554_ _super103559_ __tmp113144))
                    (let ((__tmp113142
                           (let ((__tmp113143
                                  (##structure-ref
                                   _ctx103556_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp113143))))
                      (declare (not safe))
                      (cons __tmp113142 _path103557_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp103546_ ((_ctx103548_ (gx#current-expander-context))
                         (_r103549_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx103548_ 'gx#module-context::t))
              (let ((__tmp113149
                     (##structure-ref _ctx103548_ '3 gx#phi-context::t '#f))
                    (__tmp113148
                     (let ()
                       (declare (not safe))
                       (cons _ctx103548_ _r103549_))))
                (declare (not safe))
                (_lp103546_ __tmp113149 __tmp113148))
              _r103549_))))
    (define gxc#generate-meta-import%
      (lambda (_self103315_ _stx103316_)
        (letrec* ((_context-chain103318_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec103319_
                   (lambda (_in103482_)
                     (let* ((_in103483103495_ _in103482_)
                            (_E103485103499_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in103483103495_))))
                            (_K103486103509_
                             (lambda (_phi103502_
                                      _name103503_
                                      _src-name103504_
                                      _src-phi103505_
                                      _src-key103506_
                                      _src-ctx103507_)
                               (let ((__tmp113150
                                      (let ((__tmp113154
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name103503_)))
                                            (__tmp113151
                                             (let ((__tmp113152
                                                    (let ((__tmp113153
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name103504_))))
                                                      (declare (not safe))
                                                      (cons __tmp113153 '()))))
                                               (declare (not safe))
                                               (cons _src-phi103505_
                                                     __tmp113152))))
                                        (declare (not safe))
                                        (cons __tmp113154 __tmp113151))))
                                 (declare (not safe))
                                 (cons _phi103502_ __tmp113150)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in103483103495_
                              'gx#module-import::t))
                           (let ((_e103487103512_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in103483103495_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e103487103512_
                                    'gx#module-export::t))
                                 (let* ((_e103490103515_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103487103512_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx103518_ _e103490103515_)
                                        (_e103491103520_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103487103512_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key103523_ _e103491103520_)
                                        (_e103492103525_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103487103512_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi103528_ _e103492103525_)
                                        (_e103493103530_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e103487103512_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name103533_ _e103493103530_)
                                        (_e103488103535_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in103483103495_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name103538_ _e103488103535_)
                                        (_e103489103540_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in103483103495_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi103543_ _e103489103540_))
                                   (declare (not safe))
                                   (_K103486103509_
                                    _phi103543_
                                    _name103538_
                                    _src-name103533_
                                    _src-phi103528_
                                    _src-key103523_
                                    _src-ctx103518_))
                                 (let ()
                                   (declare (not safe))
                                   (_E103485103499_))))
                           (let () (declare (not safe)) (_E103485103499_))))))
                  (_make-import-path103320_
                   (lambda (_ctx103480_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx103480_
                        _context-chain103318_))))
                  (_make-import-spec-in103321_
                   (lambda (_ctx103477_ _in103478_)
                     (let ((__tmp113155
                            (let ((__tmp113157
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path103320_ _ctx103477_)))
                                  (__tmp113156 (reverse _in103478_)))
                              (declare (not safe))
                              (cons __tmp113157 __tmp113156))))
                       (declare (not safe))
                       (cons 'spec: __tmp113155)))))
          (let ((__tmp113158
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self103315_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp113158))
          (let* ((_g103323103333_
                  (lambda (_g103324103330_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103324103330_))))
                 (_g103322103474_
                  (lambda (_g103324103336_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103324103336_))
                        (let ((_e103328103338_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103324103336_))))
                          (let ((_hd103327103341_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103328103338_)))
                                (_tl103326103343_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103328103338_))))
                            ((lambda (_L103346_)
                               (let _lp103357_ ((_rest103359_ _L103346_)
                                                (_current-src103360_ '#f)
                                                (_current-in103361_ '())
                                                (_r103362_ '()))
                                 (let* ((_rest103363103371_ _rest103359_)
                                        (_else103365103381_
                                         (lambda ()
                                           (let* ((_r103379_
                                                   (if _current-src103360_
                                                       (let ((__tmp113159
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in103321_
                         _current-src103360_
                         _current-in103361_))))
                 (declare (not safe))
                 (cons __tmp113159 _r103362_))
               _r103362_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp113160
                                                   (reverse _r103379_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp113160))))
                                        (_K103367103462_
                                         (lambda (_rest103384_ _in103385_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in103385_
                                                  'gx#module-import::t))
                                               (let* ((_in103386103393_
                                                       _in103385_)
                                                      (_E103388103397_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in103386103393_))))
              (_K103389103402_
               (lambda (_src-ctx103400_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src103360_ _src-ctx103400_))
                     (let ((__tmp113176
                            (let ((__tmp113177
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec103319_ _in103385_))))
                              (declare (not safe))
                              (cons __tmp113177 _current-in103361_))))
                       (declare (not safe))
                       (_lp103357_
                        _rest103384_
                        _current-src103360_
                        __tmp113176
                        _r103362_))
                     (if _current-src103360_
                         (let ((__tmp113174
                                (let ((__tmp113175
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec103319_
                                          _in103385_))))
                                  (declare (not safe))
                                  (cons __tmp113175 '())))
                               (__tmp113172
                                (let ((__tmp113173
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in103321_
                                          _current-src103360_
                                          _current-in103361_))))
                                  (declare (not safe))
                                  (cons __tmp113173 _r103362_))))
                           (declare (not safe))
                           (_lp103357_
                            _rest103384_
                            _src-ctx103400_
                            __tmp113174
                            __tmp113172))
                         (let ((__tmp113170
                                (let ((__tmp113171
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec103319_
                                          _in103385_))))
                                  (declare (not safe))
                                  (cons __tmp113171 '()))))
                           (declare (not safe))
                           (_lp103357_
                            _rest103384_
                            _src-ctx103400_
                            __tmp113170
                            _r103362_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in103386103393_
                                                        'gx#module-import::t))
                                                     (let ((_e103390103405_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in103386103393_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e103390103405_
                                                              'gx#module-export::t))
                                                           (let* ((_e103391103408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e103390103405_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx103411_ _e103391103408_))
                     (declare (not safe))
                     (_K103389103402_ _src-ctx103411_))
                   (let () (declare (not safe)) (_E103388103397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E103388103397_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in103385_
                                                      'gx#import-set::t))
                                                   (let* ((_phi103413_
                                                           (##direct-structure-ref
                                                            _in103385_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src103415_
                                                           (##direct-structure-ref
                                                            _in103385_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in103455_
                                                           (let* ((_g103416103425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path103320_ _src103415_)))
                          (_E103419103429_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g103416103425_)))))
                     (let ((_K103421103445_
                            (lambda (_path103443_) _path103443_))
                           (_K103420103435_
                            (lambda (_path103433_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path103433_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g103416103425_))
                           (let ((_tl103423103450_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g103416103425_)))
                                 (_hd103422103448_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g103416103425_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl103423103450_))
                                 (let ((_path103453_ _hd103422103448_))
                                   (declare (not safe))
                                   (_K103421103445_ _path103453_))
                                 (let ((_path103438_ _g103416103425_))
                                   (declare (not safe))
                                   (_K103420103435_ _path103438_))))
                           (let ((_path103438_ _g103416103425_))
                             (declare (not safe))
                             (_K103420103435_ _path103438_))))))
                  (_r103457_
                   (if _current-src103360_
                       (let ((__tmp113165
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in103321_
                                 _current-src103360_
                                 _current-in103361_))))
                         (declare (not safe))
                         (cons __tmp113165 _r103362_))
                       _r103362_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp113166
                                                            (let ((__tmp113167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi103413_))
                               _src-in103455_
                               (let ((__tmp113168
                                      (let ((__tmp113169
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in103455_ '()))))
                                        (declare (not safe))
                                        (cons _phi103413_ __tmp113169))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp113168)))))
                      (declare (not safe))
                      (cons __tmp113167 _r103457_))))
               (declare (not safe))
               (_lp103357_ _rest103384_ '#f '() __tmp113166)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in103385_
                                                          'gx#module-context::t))
                                                       (let* ((_r103460_
                                                               (if _current-src103360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp113161
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in103321_
                                     _current-src103360_
                                     _current-in103361_))))
                             (declare (not safe))
                             (cons __tmp113161 _r103362_))
                           _r103362_))
                      (__tmp113162
                       (let ((__tmp113163
                              (let ((__tmp113164
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path103320_ _in103385_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp113164))))
                         (declare (not safe))
                         (cons __tmp113163 _r103460_))))
                 (declare (not safe))
                 (_lp103357_ _rest103384_ '#f '() __tmp113162))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest103363103371_))
                                       (let ((_hd103368103465_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest103363103371_)))
                                             (_tl103369103467_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest103363103371_))))
                                         (let* ((_in103470_ _hd103368103465_)
                                                (_rest103472_
                                                 _tl103369103467_))
                                           (declare (not safe))
                                           (_K103367103462_
                                            _rest103472_
                                            _in103470_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else103365103381_))))))
                             _tl103326103343_)))
                        (let ()
                          (declare (not safe))
                          (_g103323103333_ _g103324103336_))))))
            (declare (not safe))
            (_g103322103474_ _stx103316_)))))
    (define gxc#generate-meta-export%
      (lambda (_self103125_ _stx103126_)
        (letrec* ((_context-chain103128_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path103129_
                   (lambda (_ctx103313_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx103313_
                        _context-chain103128_)))))
          (let* ((_g103131103141_
                  (lambda (_g103132103138_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103132103138_))))
                 (_g103130103310_
                  (lambda (_g103132103144_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103132103144_))
                        (let ((_e103136103146_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103132103144_))))
                          (let ((_hd103135103149_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103136103146_)))
                                (_tl103134103151_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103136103146_))))
                            ((lambda (_L103154_)
                               (let _lp103165_ ((_rest103167_ _L103154_)
                                                (_r103168_ '()))
                                 (let* ((_rest103169103177_ _rest103167_)
                                        (_else103171103185_
                                         (lambda ()
                                           (let ((__tmp113178
                                                  (reverse _r103168_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp113178))))
                                        (_K103173103298_
                                         (lambda (_rest103188_ _out103189_)
                                           (let* ((_out103190103203_
                                                   _out103189_)
                                                  (_E103193103207_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out103190103203_)))))
                                             (let ((_K103197103277_
                                                    (lambda (_name103273_
                                                             _phi103274_
                                                             _key103275_)
                                                      (let ((__tmp113179
                                                             (let ((__tmp113180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113181
                                   (let ((__tmp113182
                                          (let ((__tmp113185
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key103275_)))
                                                (__tmp113183
                                                 (let ((__tmp113184
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name103273_))))
                                                   (declare (not safe))
                                                   (cons __tmp113184 '()))))
                                            (declare (not safe))
                                            (cons __tmp113185 __tmp113183))))
                                     (declare (not safe))
                                     (cons _phi103274_ __tmp113182))))
                              (declare (not safe))
                              (cons 'spec: __tmp113181))))
                       (declare (not safe))
                       (cons __tmp113180 _r103168_))))
                (declare (not safe))
                (_lp103165_ _rest103188_ __tmp113179))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K103194103257_
                                                    (lambda (_phi103211_
                                                             _src103212_)
                                                      (let* ((_out103252_
                                                              (if _src103212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp113186
                                 (let ((__tmp113187
                                        (let* ((_g103213103222_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path103129_
                                                   _src103212_)))
                                               (_E103216103226_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g103213103222_)))))
                                          (let ((_K103218103242_
                                                 (lambda (_path103240_)
                                                   _path103240_))
                                                (_K103217103232_
                                                 (lambda (_path103230_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path103230_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g103213103222_))
                                                (let ((_tl103220103247_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g103213103222_)))
                                                      (_hd103219103245_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g103213103222_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl103220103247_))
                                                      (let ((_path103250_
                                                             _hd103219103245_))
                                                        (declare (not safe))
                                                        (_K103218103242_
                                                         _path103250_))
                                                      (let ((_path103235_
                                                             _g103213103222_))
                                                        (declare (not safe))
                                                        (_K103217103232_
                                                         _path103235_))))
                                                (let ((_path103235_
                                                       _g103213103222_))
                                                  (declare (not safe))
                                                  (_K103217103232_
                                                   _path103235_)))))))
                                   (declare (not safe))
                                   (cons __tmp113187 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp113186))
                          '#t))
                     (_out103254_
                      (if (let () (declare (not safe)) (fxzero? _phi103211_))
                          _out103252_
                          (let ((__tmp113188
                                 (let ((__tmp113189
                                        (let ()
                                          (declare (not safe))
                                          (cons _out103252_ '()))))
                                   (declare (not safe))
                                   (cons _phi103211_ __tmp113189))))
                            (declare (not safe))
                            (cons 'phi: __tmp113188)))))
                (let ((__tmp113190
                       (let ()
                         (declare (not safe))
                         (cons _out103254_ _r103168_))))
                  (declare (not safe))
                  (_lp103165_ _rest103188_ __tmp113190))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match103192103270_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out103190103203_
                                                               'gx#export-set::t))
                                                            (let* ((_e103195103260_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out103190103203_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e103196103265_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out103190103203_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src103263_ _e103195103260_)
                            (_phi103268_ _e103196103265_))
                        (let ()
                          (declare (not safe))
                          (_K103194103257_ _phi103268_ _src103263_))))
                    (let () (declare (not safe)) (_E103193103207_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out103190103203_
                                                        'gx#module-export::t))
                                                     (let* ((_e103198103280_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out103190103203_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e103199103283_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103190103203_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e103200103288_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103190103203_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e103201103293_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out103190103203_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key103286_ _e103199103283_)
                     (_phi103291_ _e103200103288_)
                     (_name103296_ _e103201103293_))
                 (let ()
                   (declare (not safe))
                   (_K103197103277_ _name103296_ _phi103291_ _key103286_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match103192103270_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest103169103177_))
                                       (let ((_hd103174103301_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest103169103177_)))
                                             (_tl103175103303_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest103169103177_))))
                                         (let* ((_out103306_ _hd103174103301_)
                                                (_rest103308_
                                                 _tl103175103303_))
                                           (declare (not safe))
                                           (_K103173103298_
                                            _rest103308_
                                            _out103306_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else103171103185_))))))
                             _tl103134103151_)))
                        (let ()
                          (declare (not safe))
                          (_g103131103141_ _g103132103144_))))))
            (declare (not safe))
            (_g103130103310_ _stx103126_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self103086_ _stx103087_)
        (let ((__tmp113191
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self103086_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp113191))
        (let* ((_g103089103099_
                (lambda (_g103090103096_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103090103096_))))
               (_g103088103122_
                (lambda (_g103090103102_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103090103102_))
                      (let ((_e103094103104_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103090103102_))))
                        (let ((_hd103093103107_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103094103104_)))
                              (_tl103092103109_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103094103104_))))
                          ((lambda (_L103112_)
                             (let ((__tmp113192
                                    (map gxc#generate-runtime-identifier
                                         _L103112_)))
                               (declare (not safe))
                               (cons '%#provide __tmp113192)))
                           _tl103092103109_)))
                      (let ()
                        (declare (not safe))
                        (_g103089103099_ _g103090103102_))))))
          (declare (not safe))
          (_g103088103122_ _stx103087_))))
    (define gxc#generate-meta-extern%
      (lambda (_self102957_ _stx102958_)
        (letrec ((_generate1102960_
                  (lambda (_id103081_ _eid103082_)
                    (let ((_eid103084_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid103082_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _eid103084_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx102958_
                             _eid103084_)))
                      (let ((__tmp113194
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id103081_)))
                            (__tmp113193
                             (let ()
                               (declare (not safe))
                               (cons _eid103084_ '()))))
                        (declare (not safe))
                        (cons __tmp113194 __tmp113193))))))
          (let* ((_g102962102990_
                  (lambda (_g102963102987_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102963102987_))))
                 (_g102961103078_
                  (lambda (_g102963102993_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102963102993_))
                        (let ((_e102968102995_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102963102993_))))
                          (let ((_hd102967102998_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102968102995_)))
                                (_tl102966103000_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102968102995_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl102966103000_))
                                (let ((_g113195_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl102966103000_
                                          '0))))
                                  (begin
                                    (let ((_g113196_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g113195_)
                                                 (##vector-length _g113195_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g113196_ 2)))
                                          (error "Context expects 2 values"
                                                 _g113196_)))
                                    (let ((_target102969103003_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g113195_ 0)))
                                          (_tl102971103005_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g113195_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl102971103005_))
                                          (letrec ((_loop102972103008_
                                                    (lambda (_hd102970103011_
                                                             _eid102976103013_
                                                             _id102977103015_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd102970103011_))
                                                          (let ((_e102973103018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd102970103011_))))
                    (let ((_lp-hd102974103021_
                           (let ()
                             (declare (not safe))
                             (##car _e102973103018_)))
                          (_lp-tl102975103023_
                           (let ()
                             (declare (not safe))
                             (##cdr _e102973103018_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd102974103021_))
                          (let ((_e102982103026_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd102974103021_))))
                            (let ((_hd102981103029_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e102982103026_)))
                                  (_tl102980103031_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e102982103026_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl102980103031_))
                                  (let ((_e102985103034_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl102980103031_))))
                                    (let ((_hd102984103037_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e102985103034_)))
                                          (_tl102983103039_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e102985103034_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl102983103039_))
                                          (let ((__tmp113201
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd102984103037_
                                                         _eid102976103013_)))
                                                (__tmp113200
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd102981103029_
                                                         _id102977103015_))))
                                            (declare (not safe))
                                            (_loop102972103008_
                                             _lp-tl102975103023_
                                             __tmp113201
                                             __tmp113200))
                                          (let ()
                                            (declare (not safe))
                                            (_g102962102990_
                                             _g102963102993_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g102962102990_ _g102963102993_)))))
                          (let ()
                            (declare (not safe))
                            (_g102962102990_ _g102963102993_)))))
                  (let ((_eid102978103042_ (reverse _eid102976103013_))
                        (_id102979103044_ (reverse _id102977103015_)))
                    ((lambda (_L103047_ _L103048_)
                       (let ((__tmp113197
                              (map _generate1102960_
                                   (let ((__tmp113198
                                          (lambda (_g103063103066_
                                                   _g103064103068_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g103063103066_
                                                    _g103064103068_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp113198 '() _L103048_))
                                   (let ((__tmp113199
                                          (lambda (_g103070103073_
                                                   _g103071103075_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g103070103073_
                                                    _g103071103075_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp113199 '() _L103047_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp113197)))
                     _eid102978103042_
                     _id102979103044_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop102972103008_
                                               _target102969103003_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g102962102990_
                                             _g102963102993_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g102962102990_ _g102963102993_)))))
                        (let ()
                          (declare (not safe))
                          (_g102962102990_ _g102963102993_))))))
            (declare (not safe))
            (_g102961103078_ _stx102958_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self102747_ _stx102748_)
        (letrec ((_generate1102750_
                  (lambda (_id102952_)
                    (let ((_eid102954_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id102952_)))
                          (_ident102955_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id102952_))))
                      (let ((__tmp113202
                             (let ((__tmp113203
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid102954_ '()))))
                               (declare (not safe))
                               (cons _ident102955_ __tmp113203))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp113202)))))
                 (_generate*102751_
                  (lambda (_all102920_)
                    (let* ((_all102921102929_ _all102920_)
                           (_else102923102937_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all102920_))))
                           (_K102925102942_
                            (lambda (_one102940_) _one102940_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all102921102929_))
                          (let ((_hd102926102945_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all102921102929_)))
                                (_tl102927102947_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all102921102929_))))
                            (let ((_one102950_ _hd102926102945_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl102927102947_))
                                  (let ()
                                    (declare (not safe))
                                    (_K102925102942_ _one102950_))
                                  (let ()
                                    (declare (not safe))
                                    (_else102923102937_)))))
                          (let ()
                            (declare (not safe))
                            (_else102923102937_)))))))
          (let* ((_g102753102770_
                  (lambda (_g102754102767_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102754102767_))))
                 (_g102752102917_
                  (lambda (_g102754102773_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102754102773_))
                        (let ((_e102759102775_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102754102773_))))
                          (let ((_hd102758102778_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102759102775_)))
                                (_tl102757102780_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102759102775_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102757102780_))
                                (let ((_e102762102783_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102757102780_))))
                                  (let ((_hd102761102786_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102762102783_)))
                                        (_tl102760102788_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102762102783_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl102760102788_))
                                        (let ((_e102765102791_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl102760102788_))))
                                          (let ((_hd102764102794_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e102765102791_)))
                                                (_tl102763102796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e102765102791_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl102763102796_))
                                                ((lambda (_L102799_ _L102800_)
                                                   (let _lp102816_ ((_rest102818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L102800_)
                            (_r102819_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx112333112334_
                                                             _rest102818_)
                                                            (_g102824102841_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx112333112334_)))))
               (let ((___kont112335112336_
                      (lambda (_L102904_)
                        (let ()
                          (declare (not safe))
                          (_lp102816_ _L102904_ _r102819_))))
                     (___kont112337112338_
                      (lambda (_L102877_ _L102878_)
                        (let ((__tmp113204
                               (let ((__tmp113205
                                      (let ()
                                        (declare (not safe))
                                        (_generate1102750_ _L102878_))))
                                 (declare (not safe))
                                 (cons __tmp113205 _r102819_))))
                          (declare (not safe))
                          (_lp102816_ _L102877_ __tmp113204))))
                     (___kont112339112340_
                      (lambda (_L102853_)
                        (let ((__tmp113206
                               (let ((__tmp113207
                                      (let ((__tmp113208
                                             (let ()
                                               (declare (not safe))
                                               (_generate1102750_ _L102853_))))
                                        (declare (not safe))
                                        (cons __tmp113208 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp113207 _r102819_))))
                          (declare (not safe))
                          (_generate*102751_ __tmp113206))))
                     (___kont112341112342_
                      (lambda ()
                        (let ((__tmp113209 (reverse _r102819_)))
                          (declare (not safe))
                          (_generate*102751_ __tmp113209)))))
                 (let ((_g102822102864_
                        (lambda ()
                          (let ((_L102853_ ___stx112333112334_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L102853_))
                                (___kont112339112340_ _L102853_)
                                (___kont112341112342_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx112333112334_))
                       (let ((_e102829102893_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx112333112334_))))
                         (let ((_tl102827102898_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e102829102893_)))
                               (_hd102828102896_
                                (let ()
                                  (declare (not safe))
                                  (##car _e102829102893_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd102828102896_))
                               (let ((_e102830102901_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd102828102896_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e102830102901_ '#f))
                                     (___kont112335112336_ _tl102827102898_)
                                     (___kont112337112338_
                                      _tl102827102898_
                                      _hd102828102896_)))
                               (___kont112337112338_
                                _tl102827102898_
                                _hd102828102896_))))
                       (let () (declare (not safe)) (_g102822102864_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd102764102794_
                                                 _hd102761102786_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g102753102770_
                                                   _g102754102773_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g102753102770_ _g102754102773_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102753102770_ _g102754102773_)))))
                        (let ()
                          (declare (not safe))
                          (_g102753102770_ _g102754102773_))))))
            (declare (not safe))
            (_g102752102917_ _stx102748_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self102644_ _stx102645_)
        (let* ((_g102647102664_
                (lambda (_g102648102661_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102648102661_))))
               (_g102646102744_
                (lambda (_g102648102667_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102648102667_))
                      (let ((_e102653102669_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102648102667_))))
                        (let ((_hd102652102672_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102653102669_)))
                              (_tl102651102674_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102653102669_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102651102674_))
                              (let ((_e102656102677_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102651102674_))))
                                (let ((_hd102655102680_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102656102677_)))
                                      (_tl102654102682_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102656102677_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102654102682_))
                                      (let ((_e102659102685_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102654102682_))))
                                        (let ((_hd102658102688_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102659102685_)))
                                              (_tl102657102690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102659102685_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102657102690_))
                                              ((lambda (_L102693_ _L102694_)
                                                 (let* ((_eid102709_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L102694_)))
                                                        (_phi102711_
                                                         (let ((__tmp113210
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp113210
                                                                '1)))
                                                        (_block102713_
                                                         (let ((__tmp113211
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self102644_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp113211 _phi102711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g102716102723_
                                                           (lambda (_g102717102720_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g102717102720_))))
                  (_g102715102741_
                   (lambda (_g102717102726_)
                     ((lambda (_L102728_)
                        (let ()
                          (let ((__tmp113216
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self102644_ 'state)))
                                (__tmp113212
                                 (let ((__tmp113215
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp113213
                                        (let ((__tmp113214
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L102693_ '()))))
                                          (declare (not safe))
                                          (cons _L102728_ __tmp113214))))
                                   (declare (not safe))
                                   (cons __tmp113215 __tmp113213))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp113216
                             _phi102711_
                             __tmp113212))))
                      _g102717102726_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g102715102741_
                                                      _eid102709_))
                                                   (if _block102713_
                                                       (let ((__tmp113220
                                                              (let ((__tmp113226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp113227
                                    (let ((__tmp113228
                                           (let ((__tmp113229
                                                  (let ((__tmp113233
                                                         (let ((__tmp113234
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp113234)))
                (__tmp113230
                 (let ((__tmp113231
                        (let ((__tmp113232
                               (let ()
                                 (declare (not safe))
                                 (cons _block102713_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp113232))))
                   (declare (not safe))
                   (cons __tmp113231 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp113233
                                                          __tmp113230))))
                                             (declare (not safe))
                                             (cons '%#call __tmp113229))))
                                      (declare (not safe))
                                      (cons __tmp113228 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp113227)))
                            (__tmp113221
                             (let ((__tmp113222
                                    (let ((__tmp113223
                                           (let ((__tmp113225
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L102694_)))
                                                 (__tmp113224
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid102709_ '()))))
                                             (declare (not safe))
                                             (cons __tmp113225 __tmp113224))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp113223))))
                               (declare (not safe))
                               (cons __tmp113222 '()))))
                        (declare (not safe))
                        (cons __tmp113226 __tmp113221))))
                 (declare (not safe))
                 (cons '%#begin __tmp113220))
               (let ((__tmp113217
                      (let ((__tmp113219
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L102694_)))
                            (__tmp113218
                             (let ()
                               (declare (not safe))
                               (cons _eid102709_ '()))))
                        (declare (not safe))
                        (cons __tmp113219 __tmp113218))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp113217)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd102658102688_
                                               _hd102655102680_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102647102664_
                                                 _g102648102667_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102647102664_ _g102648102667_)))))
                              (let ()
                                (declare (not safe))
                                (_g102647102664_ _g102648102667_)))))
                      (let ()
                        (declare (not safe))
                        (_g102647102664_ _g102648102667_))))))
          (declare (not safe))
          (_g102646102744_ _stx102645_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self102576_ _stx102577_)
        (let* ((_g102579102596_
                (lambda (_g102580102593_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102580102593_))))
               (_g102578102641_
                (lambda (_g102580102599_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102580102599_))
                      (let ((_e102585102601_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102580102599_))))
                        (let ((_hd102584102604_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102585102601_)))
                              (_tl102583102606_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102585102601_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102583102606_))
                              (let ((_e102588102609_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102583102606_))))
                                (let ((_hd102587102612_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102588102609_)))
                                      (_tl102586102614_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102588102609_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102586102614_))
                                      (let ((_e102591102617_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102586102614_))))
                                        (let ((_hd102590102620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102591102617_)))
                                              (_tl102589102622_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102591102617_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102589102622_))
                                              ((lambda (_L102625_ _L102626_)
                                                 (let ((__tmp113235
                                                        (let ((__tmp113238
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L102626_)))
                      (__tmp113236
                       (let ((__tmp113237
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L102625_))))
                         (declare (not safe))
                         (cons __tmp113237 '()))))
                  (declare (not safe))
                  (cons __tmp113238 __tmp113236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp113235)))
                                               _hd102590102620_
                                               _hd102587102612_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102579102596_
                                                 _g102580102599_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102579102596_ _g102580102599_)))))
                              (let ()
                                (declare (not safe))
                                (_g102579102596_ _g102580102599_)))))
                      (let ()
                        (declare (not safe))
                        (_g102579102596_ _g102580102599_))))))
          (declare (not safe))
          (_g102578102641_ _stx102577_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self102573_ _stx102574_)
        (let ((__tmp113240
               (let () (declare (not safe)) (slot-ref__0 _self102573_ 'state)))
              (__tmp113239 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp113240 __tmp113239 _stx102574_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self102573_ _stx102574_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self102570_ _stx102571_)
        (let ((__tmp113242
               (let () (declare (not safe)) (slot-ref__0 _self102570_ 'state)))
              (__tmp113241 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp113242 __tmp113241 _stx102571_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp113245 (list))
            (__tmp113243
             (let ((__tmp113244
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113244 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp113245
         '(src n open blocks)
         __tmp113243
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args102567_
        (apply make-instance gxc#meta-state::t _$args102567_)))
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
      (lambda (_self102564_ _ctx102565_)
        (if (let ((__tmp113254
                   (let ()
                     (declare (not safe))
                     (##structure-length _self102564_))))
              (declare (not safe))
              (##fx< '4 __tmp113254))
            (begin
              (let ((__tmp113248
                     (let ((__tmp113249
                            (##structure-ref
                             _ctx102565_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp113249)))
                    (__tmp113247
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102564_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102564_
                 __tmp113248
                 '1
                 __tmp113247
                 '#f))
              (let ((__tmp113250
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102564_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102564_
                 '1
                 '2
                 __tmp113250
                 '#f))
              (let ((__tmp113252
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp113251
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102564_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102564_
                 __tmp113252
                 '3
                 __tmp113251
                 '#f))
              (let ((__tmp113253
                     (let ()
                       (declare (not safe))
                       (##structure-type _self102564_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self102564_
                 '()
                 '4
                 __tmp113253
                 '#f)))
            (let ((__tmp113246
                   (let ()
                     (declare (not safe))
                     (##vector-length _self102564_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self102564_
                     '4
                     __tmp113246)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp113257 (list))
            (__tmp113255
             (let ((__tmp113256
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp113256 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp113257
         '(ctx phi n code)
         __tmp113255
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args102439_
        (apply make-instance gxc#meta-state-block::t _$args102439_)))
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
      (lambda (_state102398_ _phi102399_)
        (let* ((_state102400102408_ _state102398_)
               (_E102402102412_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state102400102408_))))
               (_K102403102421_
                (lambda (_open102415_ _n102416_ _src102417_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open102415_ _phi102399_))
                      '#f
                      (let ((_block-ref102419_
                             (string-append
                              _src102417_
                              '"__"
                              (number->string _n102416_))))
                        (##structure-set!
                         _state102398_
                         (let () (declare (not safe)) (fx+ _n102416_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp113258
                               (let ((__tmp113259
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp113259
                                  _phi102399_
                                  _n102416_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open102415_ _phi102399_ __tmp113258))
                        _block-ref102419_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state102400102408_
                 'gxc#meta-state::t))
              (let* ((_e102404102424_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102400102408_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src102427_ _e102404102424_)
                     (_e102405102429_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102400102408_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n102432_ _e102405102429_)
                     (_e102406102434_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state102400102408_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open102437_ _e102406102434_))
                (declare (not safe))
                (_K102403102421_ _open102437_ _n102432_ _src102427_))
              (let () (declare (not safe)) (_E102402102412_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state102392_ _phi102393_ _stx102394_)
        (let ((_block102396_
               (let ((__tmp113260
                      (##structure-ref
                       _state102392_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp113260 _phi102393_))))
          (##structure-set!
           _block102396_
           (let ((__tmp113261
                  (##structure-ref
                   _block102396_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx102394_ __tmp113261))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state102387_)
        (##structure-set!
         _state102387_
         (let ((__tmp113264
                (lambda (_g113265_ _block102389_ _r102390_)
                  (let ()
                    (declare (not safe))
                    (cons _block102389_ _r102390_))))
               (__tmp113263
                (##structure-ref _state102387_ '4 gxc#meta-state::t '#f))
               (__tmp113262
                (##structure-ref _state102387_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp113264 __tmp113263 __tmp113262))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state102387_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state102339_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state102339_))
        (let ((__tmp113267
               (lambda (_block102341_ _r102342_)
                 (let* ((_block102343102352_ _block102341_)
                        (_E102345102356_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block102343102352_))))
                        (_K102346102364_
                         (lambda (_code102359_
                                  _n102360_
                                  _phi102361_
                                  _ctx102362_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code102359_))
                               _r102342_
                               (let ((__tmp113268
                                      (let ((__tmp113269
                                             (let ((__tmp113270
                                                    (let ((__tmp113271
                                                           (let ((__tmp113272
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp113273 (reverse _code102359_)))
                            (declare (not safe))
                            (cons '%#begin __tmp113273))))
                     (declare (not safe))
                     (cons __tmp113272 '()))))
              (declare (not safe))
              (cons _n102360_ __tmp113271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi102361_
                                                     __tmp113270))))
                                        (declare (not safe))
                                        (cons _ctx102362_ __tmp113269))))
                                 (declare (not safe))
                                 (cons __tmp113268 _r102342_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block102343102352_
                          'gxc#meta-state-block::t))
                       (let* ((_e102347102367_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102343102352_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx102370_ _e102347102367_)
                              (_e102348102372_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102343102352_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi102375_ _e102348102372_)
                              (_e102349102377_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102343102352_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n102380_ _e102349102377_)
                              (_e102350102382_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block102343102352_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code102385_ _e102350102382_))
                         (declare (not safe))
                         (_K102346102364_
                          _code102385_
                          _n102380_
                          _phi102375_
                          _ctx102370_))
                       (let () (declare (not safe)) (_E102345102356_))))))
              (__tmp113266
               (##structure-ref _state102339_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp113267 '() __tmp113266))))
    (define gxc#collect-expression-refs
      (lambda (_stx102335_)
        (let ((_ht102337_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx102335_ 'table: _ht102337_))
          _ht102337_)))
    (define gxc#collect-refs-ref%
      (lambda (_self102278_ _stx102279_)
        (let* ((_g102281102294_
                (lambda (_g102282102291_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102282102291_))))
               (_g102280102332_
                (lambda (_g102282102297_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102282102297_))
                      (let ((_e102286102299_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102282102297_))))
                        (let ((_hd102285102302_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102286102299_)))
                              (_tl102284102304_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102286102299_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102284102304_))
                              (let ((_e102289102307_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102284102304_))))
                                (let ((_hd102288102310_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102289102307_)))
                                      (_tl102287102312_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102289102307_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl102287102312_))
                                      ((lambda (_L102315_)
                                         (let* ((_bind102327_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L102315_)))
                                                (_eid102329_
                                                 (if _bind102327_
                                                     (##structure-ref
                                                      _bind102327_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L102315_)))))
                                           (let ((__tmp113274
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self102278_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp113274
                                              _eid102329_
                                              _eid102329_))))
                                       _hd102288102310_)
                                      (let ()
                                        (declare (not safe))
                                        (_g102281102294_ _g102282102297_)))))
                              (let ()
                                (declare (not safe))
                                (_g102281102294_ _g102282102297_)))))
                      (let ()
                        (declare (not safe))
                        (_g102281102294_ _g102282102297_))))))
          (declare (not safe))
          (_g102280102332_ _stx102279_))))
    (define gxc#collect-refs-setq%
      (lambda (_self102205_ _stx102206_)
        (let* ((_g102208102225_
                (lambda (_g102209102222_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102209102222_))))
               (_g102207102275_
                (lambda (_g102209102228_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102209102228_))
                      (let ((_e102214102230_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102209102228_))))
                        (let ((_hd102213102233_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102214102230_)))
                              (_tl102212102235_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102214102230_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102212102235_))
                              (let ((_e102217102238_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102212102235_))))
                                (let ((_hd102216102241_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102217102238_)))
                                      (_tl102215102243_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102217102238_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102215102243_))
                                      (let ((_e102220102246_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102215102243_))))
                                        (let ((_hd102219102249_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102220102246_)))
                                              (_tl102218102251_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102220102246_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102218102251_))
                                              ((lambda (_L102254_ _L102255_)
                                                 (let* ((_bind102270_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L102255_)))
                                                        (_eid102272_
                                                         (if _bind102270_
                                                             (##structure-ref
                                                              _bind102270_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L102255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp113275
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self102205_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp113275
                                                      _eid102272_
                                                      _eid102272_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self102205_
                                                      _L102254_))))
                                               _hd102219102249_
                                               _hd102216102241_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102208102225_
                                                 _g102209102228_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102208102225_ _g102209102228_)))))
                              (let ()
                                (declare (not safe))
                                (_g102208102225_ _g102209102228_)))))
                      (let ()
                        (declare (not safe))
                        (_g102208102225_ _g102209102228_))))))
          (declare (not safe))
          (_g102207102275_ _stx102206_))))
    (define gxc#find-runtime-begin%
      (lambda (_self102162_ _stx102163_)
        (let* ((_g102165102175_
                (lambda (_g102166102172_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102166102172_))))
               (_g102164102202_
                (lambda (_g102166102178_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102166102178_))
                      (let ((_e102170102180_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102166102178_))))
                        (let ((_hd102169102183_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102170102180_)))
                              (_tl102168102185_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102170102180_))))
                          ((lambda (_L102188_)
                             (let ((__tmp113276
                                    (lambda (_g102197102199_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self102162_
                                         _g102197102199_)))))
                               (declare (not safe))
                               (ormap1 __tmp113276 _L102188_)))
                           _tl102168102185_)))
                      (let ()
                        (declare (not safe))
                        (_g102165102175_ _g102166102178_))))))
          (declare (not safe))
          (_g102164102202_ _stx102163_))))
    (define gxc#count-values-single% (lambda (_self102159_ _stx102160_) '1))
    (define gxc#count-values-call%
      (lambda (_self102025_ _stx102026_)
        (let* ((___stx112363112364_ _stx102026_)
               (_g102029102058_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112363112364_)))))
          (let ((___kont112365112366_
                 (lambda (_L102126_ _L102127_)
                   (length (let ((__tmp113277
                                  (lambda (_g102148102151_ _g102149102153_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g102148102151_
                                            _g102149102153_)))))
                             (declare (not safe))
                             (foldr1 __tmp113277 '() _L102126_)))))
                (___kont112369112370_ (lambda () '#f)))
            (let ((___match112408112409_
                   (lambda (_e102035102070_
                            _hd102034102073_
                            _tl102033102075_
                            _e102038102078_
                            _hd102037102081_
                            _tl102036102083_
                            _e102041102086_
                            _hd102040102089_
                            _tl102039102091_
                            _e102044102094_
                            _hd102043102097_
                            _tl102042102099_
                            ___splice112367112368_
                            _target102045102102_
                            _tl102047102104_)
                     (letrec ((_loop102048102107_
                               (lambda (_hd102046102110_ _rand102052102112_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd102046102110_))
                                     (let ((_e102049102115_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd102046102110_))))
                                       (let ((_lp-tl102051102120_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e102049102115_)))
                                             (_lp-hd102050102118_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e102049102115_))))
                                         (let ((__tmp113278
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd102050102118_
                                                        _rand102052102112_))))
                                           (declare (not safe))
                                           (_loop102048102107_
                                            _lp-tl102051102120_
                                            __tmp113278))))
                                     (let ((_rand102053102123_
                                            (reverse _rand102052102112_)))
                                       (let ((_L102126_ _rand102053102123_)
                                             (_L102127_ _hd102043102097_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L102127_
                                                'values))
                                             (___kont112365112366_
                                              _L102126_
                                              _L102127_)
                                             (___kont112369112370_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop102048102107_ _target102045102102_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112363112364_))
                  (let ((_e102035102070_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112363112364_))))
                    (let ((_tl102033102075_
                           (let ()
                             (declare (not safe))
                             (##cdr _e102035102070_)))
                          (_hd102034102073_
                           (let ()
                             (declare (not safe))
                             (##car _e102035102070_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl102033102075_))
                          (let ((_e102038102078_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl102033102075_))))
                            (let ((_tl102036102083_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e102038102078_)))
                                  (_hd102037102081_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e102038102078_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd102037102081_))
                                  (let ((_e102041102086_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd102037102081_))))
                                    (let ((_tl102039102091_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e102041102086_)))
                                          (_hd102040102089_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e102041102086_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd102040102089_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd102040102089_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl102039102091_))
                                                  (let ((_e102044102094_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl102039102091_))))
                                                    (let ((_tl102042102099_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e102044102094_)))
                                                          (_hd102043102097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e102044102094_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl102042102099_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl102036102083_))
                      (let ((___splice112367112368_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl102036102083_ '0))))
                        (let ((_tl102047102104_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice112367112368_ '1)))
                              (_target102045102102_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice112367112368_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl102047102104_))
                              (___match112408112409_
                               _e102035102070_
                               _hd102034102073_
                               _tl102033102075_
                               _e102038102078_
                               _hd102037102081_
                               _tl102036102083_
                               _e102041102086_
                               _hd102040102089_
                               _tl102039102091_
                               _e102044102094_
                               _hd102043102097_
                               _tl102042102099_
                               ___splice112367112368_
                               _target102045102102_
                               _tl102047102104_)
                              (___kont112369112370_))))
                      (___kont112369112370_))
                  (___kont112369112370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112369112370_))
                                              (___kont112369112370_))
                                          (___kont112369112370_))))
                                  (___kont112369112370_))))
                          (___kont112369112370_))))
                  (___kont112369112370_)))))))
    (define gxc#count-values-if%
      (lambda (_self101928_ _stx101929_)
        (let* ((_g101931101952_
                (lambda (_g101932101949_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101932101949_))))
               (_g101930102022_
                (lambda (_g101932101955_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101932101955_))
                      (let ((_e101938101957_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101932101955_))))
                        (let ((_hd101937101960_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101938101957_)))
                              (_tl101936101962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101938101957_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101936101962_))
                              (let ((_e101941101965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101936101962_))))
                                (let ((_hd101940101968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101941101965_)))
                                      (_tl101939101970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101941101965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101939101970_))
                                      (let ((_e101944101973_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101939101970_))))
                                        (let ((_hd101943101976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101944101973_)))
                                              (_tl101942101978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101944101973_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl101942101978_))
                                              (let ((_e101947101981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl101942101978_))))
                                                (let ((_hd101946101984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e101947101981_)))
                                                      (_tl101945101986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e101947101981_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl101945101986_))
                                                      ((lambda (_L101989_
                                                                _L101990_
                                                                _L101991_)
                                                         (let ((_c1102008102010_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self101928_ _L101990_))))
                   (if _c1102008102010_
                       (let* ((_c1102013_ _c1102008102010_)
                              (_c2102014102016_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self101928_ _L101989_))))
                         (if _c2102014102016_
                             (let ((_c2102019_ _c2102014102016_))
                               (if (fx= _c1102013_ _c2102019_) _c1102013_ '#f))
                             '#f))
                       '#f)))
               _hd101946101984_
               _hd101943101976_
               _hd101940101968_)
              (let ()
                (declare (not safe))
                (_g101931101952_ _g101932101955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g101931101952_
                                                 _g101932101955_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101931101952_ _g101932101955_)))))
                              (let ()
                                (declare (not safe))
                                (_g101931101952_ _g101932101955_)))))
                      (let ()
                        (declare (not safe))
                        (_g101931101952_ _g101932101955_))))))
          (declare (not safe))
          (_g101930102022_ _stx101929_))))))
