(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1711709197)
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
        (letrec ((_hash-e109253_
                  (lambda (_id109255_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id109255_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e109253_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp110620 (list gxc#::void::t))
            (__tmp110619 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp110620
         '()
         __tmp110619
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args109249_
        (apply make-instance gxc#::collect-bindings::t _$args109249_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp110621
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
        (__make-promise __tmp110621)))
    (define gxc#apply-collect-bindings
      (lambda (_stx109241_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self109244_
                (let ((__obj110595
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj110595))
               (__tmp110622
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109244_ _stx109241_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp110622
           gxc#current-compile-method
           _self109244_))))
    (define gxc#::lift-modules::t
      (let ((__tmp110624 (list gxc#::void::t))
            (__tmp110623 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp110624
         '(modules)
         __tmp110623
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args109238_
        (apply make-instance gxc#::lift-modules::t _$args109238_)))
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
      (let ((__tmp110625
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
        (__make-promise __tmp110625)))
    (define gxc#apply-lift-modules__%
      (lambda (__109210_ _modules109207109212_ _stx109214_)
        (let ((_modules109217_
               (if (eq? _modules109207109212_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules109207109212_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self109219_
                  (let ((__obj110597
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj110597
                       _modules109217_
                       '1
                       '#f
                       '#f))
                    __obj110597))
                 (__tmp110626
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109219_ _stx109214_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp110626
             gxc#current-compile-method
             _self109219_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys109206109226_ . _args109228_)
        (apply gxc#apply-lift-modules__%
               _keys109206109226_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys109206109226_
                  'modules:
                  absent-value))
               _args109228_)))
    (define gxc#apply-lift-modules
      (lambda _args109208109234_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args109208109234_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp110628 (list)) (__tmp110627 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp110628
         '()
         __tmp110627
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args109202_
        (apply make-instance gxc#::find-runtime-code::t _$args109202_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp110629
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
        (__make-promise __tmp110629)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx109194_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self109197_
                (let ((__obj110599
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj110599))
               (__tmp110630
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109197_ _stx109194_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp110630
           gxc#current-compile-method
           _self109197_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp110632 (list gxc#::false::t))
            (__tmp110631 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp110632
         '()
         __tmp110631
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args109191_
        (apply make-instance gxc#::find-lambda-expression::t _$args109191_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp110633
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
        (__make-promise __tmp110633)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx109183_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self109186_
                (let ((__obj110601
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj110601))
               (__tmp110634
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109186_ _stx109183_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp110634
           gxc#current-compile-method
           _self109186_))))
    (define gxc#::count-values::t
      (let ((__tmp110636 (list gxc#::false-expression::t))
            (__tmp110635 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp110636
         '()
         __tmp110635
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args109180_
        (apply make-instance gxc#::count-values::t _$args109180_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp110637
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
        (__make-promise __tmp110637)))
    (define gxc#apply-count-values
      (lambda (_stx109172_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self109175_
                (let ((__obj110603
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj110603))
               (__tmp110638
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109175_ _stx109172_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp110638
           gxc#current-compile-method
           _self109175_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp110639 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp110639
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args109169_
        (apply make-instance gxc#::generate-runtime-empty::t _$args109169_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp110640
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
        (__make-promise __tmp110640)))
    (define gxc#::generate-loader::t
      (let ((__tmp110642 (list gxc#::generate-runtime-empty::t))
            (__tmp110641 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp110642
         '()
         __tmp110641
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args109165_
        (apply make-instance gxc#::generate-loader::t _$args109165_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp110643
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
        (__make-promise __tmp110643)))
    (define gxc#apply-generate-loader
      (lambda (_stx109157_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self109160_
                (let ((__obj110606
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj110606))
               (__tmp110644
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109160_ _stx109157_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp110644
           gxc#current-compile-method
           _self109160_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp110645 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp110645
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args109154_
        (apply make-instance gxc#::generate-runtime::t _$args109154_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp110646
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
        (__make-promise __tmp110646)))
    (define gxc#apply-generate-runtime
      (lambda (_stx109146_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self109149_
                (let ((__obj110608
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj110608))
               (__tmp110647
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109149_ _stx109146_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp110647
           gxc#current-compile-method
           _self109149_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp110649 (list gxc#::generate-runtime::t))
            (__tmp110648 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp110649
         '()
         __tmp110648
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args109143_
        (apply make-instance gxc#::generate-runtime-phi::t _$args109143_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp110650
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
        (__make-promise __tmp110650)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx109135_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self109138_
                (let ((__obj110610
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj110610))
               (__tmp110651
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109138_ _stx109135_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp110651
           gxc#current-compile-method
           _self109138_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp110652 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp110652
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args109132_
        (apply make-instance gxc#::collect-expression-refs::t _$args109132_)))
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
      (let ((__tmp110653
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
        (__make-promise __tmp110653)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (__109104_ _table109101109106_ _stx109108_)
        (let ((_table109111_
               (if (eq? _table109101109106_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table109101109106_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self109113_
                  (let ((__obj110612
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj110612
                       _table109111_
                       '1
                       '#f
                       '#f))
                    __obj110612))
                 (__tmp110654
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109113_ _stx109108_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp110654
             gxc#current-compile-method
             _self109113_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys109100109120_ . _args109122_)
        (apply gxc#apply-collect-expression-refs__%
               _keys109100109120_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109100109120_ 'table: absent-value))
               _args109122_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args109102109128_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args109102109128_)))
    (define gxc#::generate-meta::t
      (let ((__tmp110656 (list gxc#::void-expression::t))
            (__tmp110655 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp110656
         '(state)
         __tmp110655
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args109096_
        (apply make-instance gxc#::generate-meta::t _$args109096_)))
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
      (let ((__tmp110657
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
        (__make-promise __tmp110657)))
    (define gxc#apply-generate-meta__%
      (lambda (__109068_ _state109065109070_ _stx109072_)
        (let ((_state109075_
               (if (eq? _state109065109070_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state109065109070_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self109077_
                  (let ((__obj110614
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj110614
                       _state109075_
                       '1
                       '#f
                       '#f))
                    __obj110614))
                 (__tmp110658
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109077_ _stx109072_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp110658
             gxc#current-compile-method
             _self109077_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys109064109084_ . _args109086_)
        (apply gxc#apply-generate-meta__%
               _keys109064109084_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109064109084_ 'state: absent-value))
               _args109086_)))
    (define gxc#apply-generate-meta
      (lambda _args109066109092_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args109066109092_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp110660 (list)) (__tmp110659 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp110660
         '(state)
         __tmp110659
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args109060_
        (apply make-instance gxc#::generate-meta-phi::t _$args109060_)))
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
      (let ((__tmp110661
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
        (__make-promise __tmp110661)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (__109032_ _state109029109034_ _stx109036_)
        (let ((_state109039_
               (if (eq? _state109029109034_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state109029109034_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self109041_
                  (let ((__obj110616
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj110616
                       _state109039_
                       '1
                       '#f
                       '#f))
                    __obj110616))
                 (__tmp110662
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109041_ _stx109036_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp110662
             gxc#current-compile-method
             _self109041_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys109028109048_ . _args109050_)
        (apply gxc#apply-generate-meta-phi__%
               _keys109028109048_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109028109048_ 'state: absent-value))
               _args109050_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args109030109056_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args109030109056_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self108957_ _stx108958_)
        (let* ((_g108960108977_
                (lambda (_g108961108974_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108961108974_))))
               (_g108959109024_
                (lambda (_g108961108980_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108961108980_))
                      (let ((_e108966108982_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108961108980_))))
                        (let ((_hd108965108985_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108966108982_)))
                              (_tl108964108987_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108966108982_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl108964108987_))
                              (let ((_e108969108990_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl108964108987_))))
                                (let ((_hd108968108993_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108969108990_)))
                                      (_tl108967108995_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108969108990_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108967108995_))
                                      (let ((_e108972108998_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108967108995_))))
                                        (let ((_hd108971109001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108972108998_)))
                                              (_tl108970109003_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108972108998_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108970109003_))
                                              ((lambda (_L109006_ _L109007_)
                                                 (let ((__tmp110663
                                                        (lambda (_bind109022_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind109022_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind109022_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp110663
                                                    _L109007_)))
                                               _hd108971109001_
                                               _hd108968108993_)
                                              (let ()
                                                (declare (not safe))
                                                (_g108960108977_
                                                 _g108961108980_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108960108977_ _g108961108980_)))))
                              (let ()
                                (declare (not safe))
                                (_g108960108977_ _g108961108980_)))))
                      (let ()
                        (declare (not safe))
                        (_g108960108977_ _g108961108980_))))))
          (declare (not safe))
          (_g108959109024_ _stx108958_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self108889_ _stx108890_)
        (let* ((_g108892108909_
                (lambda (_g108893108906_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108893108906_))))
               (_g108891108954_
                (lambda (_g108893108912_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108893108912_))
                      (let ((_e108898108914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108893108912_))))
                        (let ((_hd108897108917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108898108914_)))
                              (_tl108896108919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108898108914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl108896108919_))
                              (let ((_e108901108922_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl108896108919_))))
                                (let ((_hd108900108925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108901108922_)))
                                      (_tl108899108927_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108901108922_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108899108927_))
                                      (let ((_e108904108930_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108899108927_))))
                                        (let ((_hd108903108933_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108904108930_)))
                                              (_tl108902108935_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108904108930_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108902108935_))
                                              ((lambda (_L108938_ _L108939_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L108939_
                                                    '#t)))
                                               _hd108903108933_
                                               _hd108900108925_)
                                              (let ()
                                                (declare (not safe))
                                                (_g108892108909_
                                                 _g108893108912_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108892108909_ _g108893108912_)))))
                              (let ()
                                (declare (not safe))
                                (_g108892108909_ _g108893108912_)))))
                      (let ()
                        (declare (not safe))
                        (_g108892108909_ _g108893108912_))))))
          (declare (not safe))
          (_g108891108954_ _stx108890_))))
    (define gxc#lift-modules-module%
      (lambda (_self108831_ _stx108832_)
        (let* ((_g108834108848_
                (lambda (_g108835108845_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108835108845_))))
               (_g108833108886_
                (lambda (_g108835108851_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108835108851_))
                      (let ((_e108840108853_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108835108851_))))
                        (let ((_hd108839108856_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108840108853_)))
                              (_tl108838108858_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108840108853_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl108838108858_))
                              (let ((_e108843108861_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl108838108858_))))
                                (let ((_hd108842108864_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108843108861_)))
                                      (_tl108841108866_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108843108861_))))
                                  ((lambda (_L108869_ _L108870_)
                                     (let ((_ctx108883_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L108870_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self108831_ 'modules))
                                        (cons _ctx108883_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self108831_
                                                        'modules)))))
                                       (let ((__tmp110664
                                              (lambda ()
                                                (let ((__tmp110665
                                                       (##structure-ref
                                                        _ctx108883_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self108831_
                                                   __tmp110665)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp110664
                                          gx#current-expander-context
                                          _ctx108883_))))
                                   _tl108841108866_
                                   _hd108842108864_)))
                              (let ()
                                (declare (not safe))
                                (_g108834108848_ _g108835108851_)))))
                      (let ()
                        (declare (not safe))
                        (_g108834108848_ _g108835108851_))))))
          (declare (not safe))
          (_g108833108886_ _stx108832_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls108787108789_ (gxc#current-compile-decls)))
          (if _decls108787108789_
              (let ((_decls108792_ _decls108787108789_))
                (let _lp108794_ ((_rest108796_ _decls108792_))
                  (let* ((_rest108797108805_ _rest108796_)
                         (_else108799108813_ (lambda () '#f))
                         (_K108801108819_
                          (lambda (_decls108816_ _decl108817_)
                            (if (equal? _decl108817_ '(not safe))
                                '#t
                                (if (equal? _decl108817_ '(safe))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp108794_ _decls108816_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest108797108805_))
                        (let ((_hd108802108822_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest108797108805_)))
                              (_tl108803108824_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest108797108805_))))
                          (let* ((_decl108827_ _hd108802108822_)
                                 (_decls108829_ _tl108803108824_))
                            (declare (not safe))
                            (_K108801108819_ _decls108829_ _decl108827_)))
                        (let () (declare (not safe)) (_else108799108813_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id108781_ _syntax?108782_)
        (let ((_eid108784_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id108781_))
                '1
                gx#binding::t
                '#f))
              (_ht108785_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (__interned-symbol? _eid108784_))
              '#!void
              (let ((__tmp110666
                     (let ((__tmp110667
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid108784_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp110667 _syntax?108782_))))
                (declare (not safe))
                (hash-put! _ht108785_ _eid108784_ __tmp110666))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1108774_ _id2108775_)
        (letrec ((_symbol-e108777_
                  (lambda (_id108779_)
                    (if (let () (declare (not safe)) (symbol? _id108779_))
                        _id108779_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id108779_))))))
          (eq? (let () (declare (not safe)) (_symbol-e108777_ _id1108774_))
               (let () (declare (not safe)) (_symbol-e108777_ _id2108775_))))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id108752_)
        (let ((_$e108754_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id108752_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id108752_))
                   '#f)))
          (if _$e108754_
              ((lambda (_bind108757_)
                 (let ((_eid108759_
                        (##structure-ref _bind108757_ '1 gx#binding::t '#f))
                       (_ht108760_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (__interned-symbol? _eid108759_))
                       _eid108759_
                       (let ((_$e108762_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht108760_ _eid108759_))))
                         (if _$e108762_
                             (values _$e108762_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind108757_
                                    'gx#local-binding::t))
                                 (let ((_gid108765_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid108759_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht108760_
                                      _eid108759_
                                      _gid108765_))
                                   _gid108765_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind108757_
                                        'gx#module-binding::t))
                                     (let ((_gid108772_
                                            (let ((_$e108767_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind108757_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e108767_
                                                  ((lambda (_ns108770_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns108770_
                                                        '"#"
                                                        _eid108759_)))
                                                   _$e108767_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid108759_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht108760_
                                          _eid108759_
                                          _gid108772_))
                                       _gid108772_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id108752_
                                        _eid108759_
                                        _bind108757_)))))))))
               _$e108754_)
              (if (let ((__tmp110668
                         (let () (declare (not safe)) (gx#stx-e _id108752_))))
                    (declare (not safe))
                    (__interned-symbol? __tmp110668))
                  (let () (declare (not safe)) (gx#stx-e _id108752_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id108752_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id108750_)
        (if (let () (declare (not safe)) (gx#identifier? _id108750_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id108750_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym108730_ _quote?108731_)
        (let* ((_ht108733_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e108735_
                (let ()
                  (declare (not safe))
                  (hash-get _ht108733_ _sym108730_))))
          (if _$e108735_
              (values _$e108735_)
              (let ((_g108738_
                     (if _quote?108731_
                         (let ((__tmp110669 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym108730_
                            '"__"
                            __tmp110669))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym108730_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht108733_ _sym108730_ _g108738_))
                _g108738_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym108743_)
        (let ((_quote?108745_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym108743_
           _quote?108745_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g110671_
        (let ((_g110670_ (let () (declare (not safe)) (##length _g110671_))))
          (cond ((let () (declare (not safe)) (##fx= _g110670_ 1))
                 (apply (lambda (_sym108743_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym108743_)))
                        _g110671_))
                ((let () (declare (not safe)) (##fx= _g110670_ 2))
                 (apply (lambda (_sym108747_ _quote?108748_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym108747_
                             _quote?108748_)))
                        _g110671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g110671_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id108727_)
        (let ((__tmp110672
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id108727_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp110672))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key108687_)
        (if (let () (declare (not safe)) (__interned-symbol? _key108687_))
            _key108687_
            (if (uninterned-symbol? _key108687_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key108687_))
                (let* ((_key108688108695_ _key108687_)
                       (_E108690108699_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key108688108695_))))
                       (_K108691108715_
                        (lambda (_mark108702_ _eid108703_)
                          (let ((_$e108705_
                                 (##structure-ref
                                  _mark108702_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e108705_
                                ((lambda (_ht108708_)
                                   (let ((_$e108710_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht108708_
                                             _eid108703_))))
                                     (if _$e108710_
                                         ((lambda (_id108713_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__interned-symbol?
                                                   _id108713_))
                                                _id108713_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id108713_))))
                                          _$e108710_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid108703_)))))
                                 _$e108705_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid108703_)))))))
                  (if (let () (declare (not safe)) (##pair? _key108688108695_))
                      (let ((_hd108692108718_
                             (let ()
                               (declare (not safe))
                               (##car _key108688108695_)))
                            (_tl108693108720_
                             (let ()
                               (declare (not safe))
                               (##cdr _key108688108695_))))
                        (let* ((_eid108723_ _hd108692108718_)
                               (_mark108725_ _tl108693108720_))
                          (declare (not safe))
                          (_K108691108715_ _mark108725_ _eid108723_)))
                      (let () (declare (not safe)) (_E108690108699_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top108674_)
        (if _top108674_
            (let ((_ns108676_
                   (##structure-ref
                    (let ((__tmp110673 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp110673))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi108677_ (gx#current-expander-phi)))
              (if _ns108676_
                  (if (fxpositive? _phi108677_)
                      (let ((__tmp110675 (number->string _phi108677_))
                            (__tmp110674
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _ns108676_
                         '"["
                         __tmp110675
                         '"]#_"
                         __tmp110674
                         '"_"))
                      (let ((__tmp110676
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _ns108676_ '"#_" __tmp110676 '"_")))
                  (if (fxpositive? _phi108677_)
                      (let ((__tmp110678 (number->string _phi108677_))
                            (__tmp110677
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp110678
                         '"]#_"
                         __tmp110677
                         '"_"))
                      (let ((__tmp110679
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp110679 '"_")))))
            (let ((__tmp110680 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp110680 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top108683_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top108683_))))
    (define gxc#generate-runtime-temporary
      (lambda _g110682_
        (let ((_g110681_ (let () (declare (not safe)) (##length _g110682_))))
          (cond ((let () (declare (not safe)) (##fx= _g110681_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g110682_))
                ((let () (declare (not safe)) (##fx= _g110681_ 1))
                 (apply (lambda (_top108685_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top108685_)))
                        _g110682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g110682_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self108670_ _stx108671_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self108517_ _stx108518_)
        (letrec ((_simplify108520_
                  (lambda (_body108568_)
                    (let _lp108570_ ((_rest108572_ _body108568_)
                                     (_r108573_ '()))
                      (let* ((_rest108574108582_ _rest108572_)
                             (_else108576108590_
                              (lambda () (reverse _r108573_)))
                             (_K108578108658_
                              (lambda (_rest108593_ _hd108594_)
                                (let* ((_hd108595108611_ _hd108594_)
                                       (_else108599108619_
                                        (lambda ()
                                          (let ((__tmp110683
                                                 (cons _hd108594_ _r108573_)))
                                            (declare (not safe))
                                            (_lp108570_
                                             _rest108593_
                                             __tmp110683)))))
                                  (let ((_K108607108648_
                                         (lambda (_exprs108646_)
                                           (let ((__tmp110684
                                                  (let ()
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     _rest108593_
                                                     _exprs108646_))))
                                             (declare (not safe))
                                             (_lp108570_
                                              __tmp110684
                                              _r108573_))))
                                        (_K108602108632_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest108593_))
                                               (let ((__tmp110685
                                                      (cons _hd108594_
                                                            _r108573_)))
                                                 (declare (not safe))
                                                 (_lp108570_
                                                  _rest108593_
                                                  __tmp110685))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp108570_
                                                  _rest108593_
                                                  _r108573_)))))
                                        (_K108601108624_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest108593_))
                                               (let ((__tmp110686
                                                      (cons _hd108594_
                                                            _r108573_)))
                                                 (declare (not safe))
                                                 (_lp108570_
                                                  _rest108593_
                                                  __tmp110686))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp108570_
                                                  _rest108593_
                                                  _r108573_))))))
                                    (let ((_try-match108598108627_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd108595108611_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K108601108624_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else108599108619_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd108595108611_))
                                          (let ((_tl108609108653_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd108595108611_)))
                                                (_hd108608108651_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd108595108611_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd108608108651_
                                                         'begin))
                                                (let ((_exprs108656_
                                                       _tl108609108653_))
                                                  (declare (not safe))
                                                  (_K108607108648_
                                                   _exprs108656_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd108608108651_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl108609108653_))
                                                        (let ((_tl108606108640_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl108609108653_))))
                  (if (let () (declare (not safe)) (##null? _tl108606108640_))
                      (let () (declare (not safe)) (_K108602108632_))
                      (let () (declare (not safe)) (_try-match108598108627_))))
                (let () (declare (not safe)) (_try-match108598108627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match108598108627_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match108598108627_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108574108582_))
                            (let ((_hd108579108661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108574108582_)))
                                  (_tl108580108663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108574108582_))))
                              (let* ((_hd108666_ _hd108579108661_)
                                     (_rest108668_ _tl108580108663_))
                                (declare (not safe))
                                (_K108578108658_ _rest108668_ _hd108666_)))
                            (let ()
                              (declare (not safe))
                              (_else108576108590_))))))))
          (let* ((_g108522108532_
                  (lambda (_g108523108529_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108523108529_))))
                 (_g108521108565_
                  (lambda (_g108523108535_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108523108535_))
                        (let ((_e108527108537_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108523108535_))))
                          (let ((_hd108526108540_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108527108537_)))
                                (_tl108525108542_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108527108537_))))
                            ((lambda (_L108545_)
                               (let* ((_body108560_
                                       (map (lambda (_g108555108557_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self108517_
                                                 _g108555108557_)))
                                            _L108545_))
                                      (_body108562_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify108520_ _body108560_))))
                                 (if (let ((__tmp110687 (length _body108562_)))
                                       (declare (not safe))
                                       (##fx= __tmp110687 '1))
                                     (car _body108562_)
                                     (cons 'begin _body108562_))))
                             _tl108525108542_)))
                        (let ()
                          (declare (not safe))
                          (_g108522108532_ _g108523108535_))))))
            (declare (not safe))
            (_g108521108565_ _stx108518_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self108478_ _stx108479_)
        (let* ((_g108481108491_
                (lambda (_g108482108488_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108482108488_))))
               (_g108480108514_
                (lambda (_g108482108494_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108482108494_))
                      (let ((_e108486108496_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108482108494_))))
                        (let ((_hd108485108499_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108486108496_)))
                              (_tl108484108501_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108486108496_))))
                          ((lambda (_L108504_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _L108504_))))
                           _tl108484108501_)))
                      (let ()
                        (declare (not safe))
                        (_g108481108491_ _g108482108494_))))))
          (declare (not safe))
          (_g108480108514_ _stx108479_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self108242_ _stx108243_)
        (let* ((___stx109278109279_ _stx108243_)
               (_g108247108299_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx109278109279_)))))
          (let ((___kont109280109281_
                 (lambda (_L108460_ _L108461_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self108242_ _L108460_))))
                (___kont109282109283_
                 (lambda (_L108408_ _L108409_ _L108410_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self108242_ _L108408_))))
                (___kont109286109287_
                 (lambda (_L108328_ _L108329_)
                   (let ((_decls108344_ (map gx#syntax->datum _L108329_)))
                     (let ((__tmp110690
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _decls108344_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self108242_
                                                   _L108328_))
                                                '())))))
                           (__tmp110688
                            (let ((__tmp110689 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (__foldr1 cons __tmp110689 _decls108344_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp110690
                        gxc#current-compile-decls
                        __tmp110688))))))
            (let* ((___match109333109334_
                    (lambda (_e108265108352_
                             _hd108264108355_
                             _tl108263108357_
                             _e108268108360_
                             _hd108267108363_
                             _tl108266108365_
                             _e108271108368_
                             _hd108270108371_
                             _tl108269108373_
                             ___splice109284109285_
                             _target108272108376_
                             _tl108274108378_)
                      (letrec ((_loop108275108381_
                                (lambda (_hd108273108384_ _param108279108386_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd108273108384_))
                                      (let ((_e108276108389_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd108273108384_))))
                                        (let ((_lp-tl108278108394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108276108389_)))
                                              (_lp-hd108277108392_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108276108389_))))
                                          (let ((__tmp110691
                                                 (cons _lp-hd108277108392_
                                                       _param108279108386_)))
                                            (declare (not safe))
                                            (_loop108275108381_
                                             _lp-tl108278108394_
                                             __tmp110691))))
                                      (let ((_param108280108397_
                                             (reverse _param108279108386_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108266108365_))
                                            (let ((_e108283108400_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108266108365_))))
                                              (let ((_tl108281108405_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108283108400_)))
                                                    (_hd108282108403_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108283108400_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108281108405_))
                                                    (let ((_L108408_
                                                           _hd108282108403_)
                                                          (_L108409_
                                                           _param108280108397_)
                                                          (_L108410_
                                                           _hd108270108371_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L108410_))
                       (let ((__tmp110692
                              (let ((__tmp110693
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L108410_))))
                                (declare (not safe))
                                (##memq __tmp110693 gxc#gambit-annotations))))
                         (declare (not safe))
                         (not __tmp110692)))
                  (___kont109282109283_ _L108408_ _L108409_ _L108410_)
                  (___kont109286109287_ _hd108282108403_ _hd108267108363_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108247108299_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g108247108299_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop108275108381_ _target108272108376_ '())))))
                   (___match109307109308_
                    (lambda (_e108253108436_
                             _hd108252108439_
                             _tl108251108441_
                             _e108256108444_
                             _hd108255108447_
                             _tl108254108449_
                             _e108259108452_
                             _hd108258108455_
                             _tl108257108457_)
                      (let ((_L108460_ _hd108258108455_)
                            (_L108461_ _hd108255108447_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L108461_))
                            (___kont109280109281_ _L108460_ _L108461_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd108255108447_))
                                (let ((_e108271108368_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd108255108447_))))
                                  (let ((_tl108269108373_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108271108368_)))
                                        (_hd108270108371_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108271108368_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl108269108373_))
                                        (let ((___splice109284109285_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl108269108373_
                                                  '0))))
                                          (let ((_tl108274108378_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice109284109285_
                                                    '1)))
                                                (_target108272108376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice109284109285_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108274108378_))
                                                (___match109333109334_
                                                 _e108253108436_
                                                 _hd108252108439_
                                                 _tl108251108441_
                                                 _e108256108444_
                                                 _hd108255108447_
                                                 _tl108254108449_
                                                 _e108271108368_
                                                 _hd108270108371_
                                                 _tl108269108373_
                                                 ___splice109284109285_
                                                 _target108272108376_
                                                 _tl108274108378_)
                                                (___kont109286109287_
                                                 _hd108258108455_
                                                 _hd108255108447_))))
                                        (___kont109286109287_
                                         _hd108258108455_
                                         _hd108255108447_))))
                                (___kont109286109287_
                                 _hd108258108455_
                                 _hd108255108447_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx109278109279_))
                  (let ((_e108253108436_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx109278109279_))))
                    (let ((_tl108251108441_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108253108436_)))
                          (_hd108252108439_
                           (let ()
                             (declare (not safe))
                             (##car _e108253108436_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108251108441_))
                          (let ((_e108256108444_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108251108441_))))
                            (let ((_tl108254108449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108256108444_)))
                                  (_hd108255108447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108256108444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl108254108449_))
                                  (let ((_e108259108452_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl108254108449_))))
                                    (let ((_tl108257108457_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108259108452_)))
                                          (_hd108258108455_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108259108452_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108257108457_))
                                          (___match109307109308_
                                           _e108253108436_
                                           _hd108252108439_
                                           _tl108251108441_
                                           _e108256108444_
                                           _hd108255108447_
                                           _tl108254108449_
                                           _e108259108452_
                                           _hd108258108455_
                                           _tl108257108457_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd108255108447_))
                                              (let ((_e108271108368_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd108255108447_))))
                                                (let ((_tl108269108373_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108271108368_)))
                                                      (_hd108270108371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108271108368_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl108269108373_))
                                                      (let ((___splice109284109285_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl108269108373_ '0))))
                (let ((_tl108274108378_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice109284109285_ '1)))
                      (_target108272108376_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice109284109285_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108274108378_))
                      (___match109333109334_
                       _e108253108436_
                       _hd108252108439_
                       _tl108251108441_
                       _e108256108444_
                       _hd108255108447_
                       _tl108254108449_
                       _e108271108368_
                       _hd108270108371_
                       _tl108269108373_
                       ___splice109284109285_
                       _target108272108376_
                       _tl108274108378_)
                      (let () (declare (not safe)) (_g108247108299_)))))
              (let () (declare (not safe)) (_g108247108299_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108247108299_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd108255108447_))
                                      (let ((_e108271108368_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd108255108447_))))
                                        (let ((_tl108269108373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108271108368_)))
                                              (_hd108270108371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108271108368_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl108269108373_))
                                              (let ((___splice109284109285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl108269108373_
                                                        '0))))
                                                (let ((_tl108274108378_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice109284109285_
                                                          '1)))
                                                      (_target108272108376_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice109284109285_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl108274108378_))
                                                      (___match109333109334_
                                                       _e108253108436_
                                                       _hd108252108439_
                                                       _tl108251108441_
                                                       _e108256108444_
                                                       _hd108255108447_
                                                       _tl108254108449_
                                                       _e108271108368_
                                                       _hd108270108371_
                                                       _tl108269108373_
                                                       ___splice109284109285_
                                                       _target108272108376_
                                                       _tl108274108378_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g108247108299_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g108247108299_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108247108299_))))))
                          (let () (declare (not safe)) (_g108247108299_)))))
                  (let () (declare (not safe)) (_g108247108299_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self108201_ _stx108202_)
        (let* ((_g108204108214_
                (lambda (_g108205108211_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108205108211_))))
               (_g108203108239_
                (lambda (_g108205108217_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108205108217_))
                      (let ((_e108209108219_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108205108217_))))
                        (let ((_hd108208108222_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108209108219_)))
                              (_tl108207108224_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108209108219_))))
                          ((lambda (_L108227_)
                             (let ((_decls108237_
                                    (map gx#syntax->datum _L108227_)))
                               (gxc#current-compile-decls
                                (let ((__tmp110694
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (__foldr1 cons __tmp110694 _decls108237_)))
                               (cons 'declare _decls108237_)))
                           _tl108207108224_)))
                      (let ()
                        (declare (not safe))
                        (_g108204108214_ _g108205108217_))))))
          (declare (not safe))
          (_g108203108239_ _stx108202_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self107947_ _stx107948_)
        (let* ((_g107950107967_
                (lambda (_g107951107964_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107951107964_))))
               (_g107949108198_
                (lambda (_g107951107970_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107951107970_))
                      (let ((_e107956107972_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107951107970_))))
                        (let ((_hd107955107975_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107956107972_)))
                              (_tl107954107977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107956107972_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107954107977_))
                              (let ((_e107959107980_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107954107977_))))
                                (let ((_hd107958107983_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107959107980_)))
                                      (_tl107957107985_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107959107980_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107957107985_))
                                      (let ((_e107962107988_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107957107985_))))
                                        (let ((_hd107961107991_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107962107988_)))
                                              (_tl107960107993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107962107988_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107960107993_))
                                              ((lambda (_L107996_ _L107997_)
                                                 (let* ((___stx109386109387_
                                                         _L107997_)
                                                        (_g108014108028_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx109386109387_)))))
                                                   (let ((___kont109388109389_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self107947_
                                                               _L107996_))))
                                                         (___kont109390109391_
                                                          (lambda (_L108160_)
                                                            (let ((_eid108169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L108160_))))
                      (let ((_lambda-expr108170108172_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L107996_))))
                        (if _lambda-expr108170108172_
                            (let* ((_lambda-expr108175_
                                    _lambda-expr108170108172_)
                                   (__tmp110695
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp110695
                               _lambda-expr108175_
                               _eid108169_))
                            '#f))
                      (cons 'define
                            (cons _eid108169_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _self107947_
                                           _L107996_))
                                        '()))))))
                 (___kont109392109393_
                  (lambda ()
                    (let* ((_tmp108035_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body108144_
                            (let _lp108037_ ((_rest108039_ _L107997_)
                                             (_k108040_ '0)
                                             (_r108041_ '()))
                              (let* ((___stx109356109357_ _rest108039_)
                                     (_g108046108063_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx109356109357_)))))
                                (let ((___kont109358109359_
                                       (lambda (_L108131_)
                                         (let ((__tmp110696
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _k108040_ '1))))
                                           (declare (not safe))
                                           (_lp108037_
                                            _L108131_
                                            __tmp110696
                                            _r108041_))))
                                      (___kont109360109361_
                                       (lambda (_L108104_ _L108105_)
                                         (let ((__tmp110698
                                                (let ()
                                                  (declare (not safe))
                                                  (##fx+ _k108040_ '1)))
                                               (__tmp110697
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _L108105_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values-ref
                                   _tmp108035_
                                   _k108040_
                                   _L108104_))
                                '())))
              _r108041_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_lp108037_
                                            _L108104_
                                            __tmp110698
                                            __tmp110697))))
                                      (___kont109362109363_
                                       (lambda (_L108075_)
                                         (let ((__tmp110699
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _L108075_))
                          (cons (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-values->list
                                   _tmp108035_
                                   _k108040_))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp110699
                                            _r108041_))))
                                      (___kont109364109365_
                                       (lambda () (reverse _r108041_))))
                                  (let ((_g108044108091_
                                         (lambda ()
                                           (let ((_L108075_
                                                  ___stx109356109357_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L108075_))
                                                 (___kont109362109363_
                                                  _L108075_)
                                                 (___kont109364109365_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx109356109357_))
                                        (let ((_e108051108120_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx109356109357_))))
                                          (let ((_tl108049108125_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108051108120_)))
                                                (_hd108050108123_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108051108120_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd108050108123_))
                                                (let ((_e108052108128_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108050108123_))))
                                                  (if (equal? _e108052108128_
                                                              '#f)
                                                      (___kont109358109359_
                                                       _tl108049108125_)
                                                      (___kont109360109361_
                                                       _tl108049108125_
                                                       _hd108050108123_)))
                                                (___kont109360109361_
                                                 _tl108049108125_
                                                 _hd108050108123_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108044108091_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _tmp108035_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self107947_
                                                       _L107996_))
                                                    '())))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-check-values
                                           _tmp108035_
                                           _L107997_
                                           _L107996_))
                                        _body108144_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx109386109387_))
                                                         (let ((_e108018108182_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx109386109387_))))
                   (let ((_tl108016108187_
                          (let ()
                            (declare (not safe))
                            (##cdr _e108018108182_)))
                         (_hd108017108185_
                          (let ()
                            (declare (not safe))
                            (##car _e108018108182_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd108017108185_))
                         (let ((_e108019108190_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd108017108185_))))
                           (if (equal? _e108019108190_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl108016108187_))
                                   (___kont109388109389_)
                                   (___kont109392109393_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl108016108187_))
                                   (___kont109390109391_ _hd108017108185_)
                                   (___kont109392109393_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108016108187_))
                             (___kont109390109391_ _hd108017108185_)
                             (___kont109392109393_)))))
                 (___kont109392109393_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd107961107991_
                                               _hd107958107983_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107950107967_
                                                 _g107951107970_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107950107967_ _g107951107970_)))))
                              (let ()
                                (declare (not safe))
                                (_g107950107967_ _g107951107970_)))))
                      (let ()
                        (declare (not safe))
                        (_g107950107967_ _g107951107970_))))))
          (declare (not safe))
          (_g107949108198_ _stx107948_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals107923_ _hd107924_ _expr107925_)
        (let ((_$e107927_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr107925_))))
          (if _$e107927_
              ((lambda (_count107930_)
                 (let ((_len107932_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd107924_)))
                       (_cmp107933_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd107924_))
                            fx=
                            fx>=)))
                   (if (or (let () (declare (not safe)) (##fx= _len107932_ '0))
                           (_cmp107933_ _count107930_ _len107932_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr107925_
                          _hd107924_)))))
               _$e107927_)
              (let* ((_len107938_
                      (let () (declare (not safe)) (gx#stx-length _hd107924_)))
                     (_cmp107940_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd107924_))
                          '##fx=
                          '##fx>=))
                     (_errmsg107942_
                      (let ((__tmp110701
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _hd107924_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp110700 (number->string _len107938_)))
                        (declare (not safe))
                        (##string-append __tmp110701 __tmp110700 '" values")))
                     (_count107944_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp110702
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd107924_))))
                           (declare (not safe))
                           (not __tmp110702))
                         (let () (declare (not safe)) (##fx= _len107938_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _count107944_
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-values-count
                                                     _vals107923_))
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#current-compile-decls-unsafe?))
                          (cons _cmp107940_
                                (cons _count107944_ (cons _len107938_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _cmp107940_
                                                        (cons _count107944_
                                                              (cons _len107938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _errmsg107942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _count107944_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var107918_)
        (letrec ((_generate-inline107920_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _var107918_ '()))
                                (cons (cons '##vector-length
                                            (cons _var107918_ '()))
                                      (cons '1 '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline107920_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_generate-inline107920_))
                                      '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var107911_ _i107912_ _rest107913_)
        (letrec ((_generate-inline107915_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (##fx= _i107912_ '0))
                             (let ((__tmp110703
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest107913_))))
                               (declare (not safe))
                               (not __tmp110703)))
                        (cons 'if
                              (cons (cons '##values? (cons _var107911_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _var107911_
                                                      (cons '0 '())))
                                          (cons _var107911_ '()))))
                        (cons '##vector-ref
                              (cons _var107911_ (cons _i107912_ '())))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline107915_))
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (let ()
                                        (declare (not safe))
                                        (_generate-inline107915_))
                                      '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var107908_ _i107909_)
        (if (let () (declare (not safe)) (##fx= _i107909_ '0))
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (cons 'if
                      (cons (cons '##values? (cons _var107908_ '()))
                            (cons (cons '##vector->list (cons _var107908_ '()))
                                  (cons (cons 'list (cons _var107908_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _var107908_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _var107908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _var107908_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _i107909_ '1))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (cons 'if
                          (cons (cons '##values? (cons _var107908_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _var107908_ '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _var107908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list (cons _var107908_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _var107908_ '()))
                                (cons _i107909_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _var107908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _i107909_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self107840_ _stx107841_)
        (let* ((_g107843107860_
                (lambda (_g107844107857_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107844107857_))))
               (_g107842107905_
                (lambda (_g107844107863_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107844107863_))
                      (let ((_e107849107865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107844107863_))))
                        (let ((_hd107848107868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107849107865_)))
                              (_tl107847107870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107849107865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107847107870_))
                              (let ((_e107852107873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107847107870_))))
                                (let ((_hd107851107876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107852107873_)))
                                      (_tl107850107878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107852107873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107850107878_))
                                      (let ((_e107855107881_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107850107878_))))
                                        (let ((_hd107854107884_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107855107881_)))
                                              (_tl107853107886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107855107881_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107853107886_))
                                              ((lambda (_L107889_ _L107890_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self107840_
                                                    _L107890_
                                                    _L107889_)))
                                               _hd107854107884_
                                               _hd107851107876_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107843107860_
                                                 _g107844107863_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107843107860_ _g107844107863_)))))
                              (let ()
                                (declare (not safe))
                                (_g107843107860_ _g107844107863_)))))
                      (let ()
                        (declare (not safe))
                        (_g107843107860_ _g107844107863_))))))
          (declare (not safe))
          (_g107842107905_ _stx107841_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self107799_ _hd107800_ _body107801_)
        (let* ((_hd107803_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd107800_)))
               (_body107805_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self107799_ _body107801_)))
               (_body107837_
                (let* ((_body107806107814_ _body107805_)
                       (_else107808107822_ (lambda () (cons _body107805_ '())))
                       (_K107810107827_
                        (lambda (_exprs107825_) _exprs107825_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body107806107814_))
                      (let ((_hd107811107830_
                             (let ()
                               (declare (not safe))
                               (##car _body107806107814_)))
                            (_tl107812107832_
                             (let ()
                               (declare (not safe))
                               (##cdr _body107806107814_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd107811107830_ 'begin))
                            (let ((_exprs107835_ _tl107812107832_))
                              (declare (not safe))
                              (_K107810107827_ _exprs107835_))
                            (let ()
                              (declare (not safe))
                              (_else107808107822_))))
                      (let () (declare (not safe)) (_else107808107822_))))))
          (cons 'lambda (cons _hd107803_ _body107837_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd107797_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd107797_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self106339_ _stx106340_)
        (letrec ((_dispatch-case?106342_
                  (lambda (_hd107027_ _body107028_)
                    (let* ((_form107030_
                            (cons _hd107027_ (cons _body107028_ '())))
                           (___stx109418109419_ _form107030_)
                           (_g107035107192_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx109418109419_)))))
                      (let ((___kont109420109421_
                             (lambda (_L107717_ _L107718_ _L107719_) '#t))
                            (___kont109426109427_
                             (lambda (_L107505_
                                      _L107506_
                                      _L107507_
                                      _L107508_
                                      _L107509_
                                      _L107510_)
                               '#t))
                            (___kont109432109433_
                             (lambda (_L107300_ _L107301_ _L107302_ _L107303_)
                               '#t))
                            (___kont109434109435_ (lambda () '#f)))
                        (let* ((___match109559109560_
                                (lambda (_e107154107204_
                                         _hd107153107207_
                                         _tl107152107209_
                                         _e107157107212_
                                         _hd107156107215_
                                         _tl107155107217_
                                         _e107160107220_
                                         _hd107159107223_
                                         _tl107158107225_
                                         _e107163107228_
                                         _hd107162107231_
                                         _tl107161107233_
                                         _e107166107236_
                                         _hd107165107239_
                                         _tl107164107241_
                                         _e107169107244_
                                         _hd107168107247_
                                         _tl107167107249_
                                         _e107172107252_
                                         _hd107171107255_
                                         _tl107170107257_
                                         _e107175107260_
                                         _hd107174107263_
                                         _tl107173107265_
                                         _e107178107268_
                                         _hd107177107271_
                                         _tl107176107273_
                                         _e107181107276_
                                         _hd107180107279_
                                         _tl107179107281_
                                         _e107184107284_
                                         _hd107183107287_
                                         _tl107182107289_
                                         _e107187107292_
                                         _hd107186107295_
                                         _tl107185107297_)
                                  (let ((_L107300_ _hd107186107295_)
                                        (_L107301_ _hd107177107271_)
                                        (_L107302_ _hd107168107247_)
                                        (_L107303_ _hd107153107207_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L107303_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L107302_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L107303_
                                                _L107300_))
                                             (let ((__tmp110704
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L107301_
                                                       _L107303_))))
                                               (declare (not safe))
                                               (not __tmp110704)))
                                        (___kont109432109433_
                                         _L107300_
                                         _L107301_
                                         _L107302_
                                         _L107303_)
                                        (___kont109434109435_)))))
                               (___match109531109532_
                                (lambda (_e107154107204_
                                         _hd107153107207_
                                         _tl107152107209_
                                         _e107157107212_
                                         _hd107156107215_
                                         _tl107155107217_
                                         _e107160107220_
                                         _hd107159107223_
                                         _tl107158107225_
                                         _e107163107228_
                                         _hd107162107231_
                                         _tl107161107233_
                                         _e107166107236_
                                         _hd107165107239_
                                         _tl107164107241_
                                         _e107169107244_
                                         _hd107168107247_
                                         _tl107167107249_
                                         _e107172107252_
                                         _hd107171107255_
                                         _tl107170107257_
                                         _e107175107260_
                                         _hd107174107263_
                                         _tl107173107265_
                                         _e107178107268_
                                         _hd107177107271_
                                         _tl107176107273_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107170107257_))
                                      (let ((_e107181107276_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107170107257_))))
                                        (let ((_tl107179107281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107181107276_)))
                                              (_hd107180107279_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107181107276_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd107180107279_))
                                              (let ((_e107184107284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd107180107279_))))
                                                (let ((_tl107182107289_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107184107284_)))
                                                      (_hd107183107287_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107184107284_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd107183107287_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd107183107287_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107182107289_))
                      (let ((_e107187107292_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107182107289_))))
                        (let ((_tl107185107297_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107187107292_)))
                              (_hd107186107295_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107187107292_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl107185107297_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl107179107281_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107155107217_))
                                      (___match109559109560_
                                       _e107154107204_
                                       _hd107153107207_
                                       _tl107152107209_
                                       _e107157107212_
                                       _hd107156107215_
                                       _tl107155107217_
                                       _e107160107220_
                                       _hd107159107223_
                                       _tl107158107225_
                                       _e107163107228_
                                       _hd107162107231_
                                       _tl107161107233_
                                       _e107166107236_
                                       _hd107165107239_
                                       _tl107164107241_
                                       _e107169107244_
                                       _hd107168107247_
                                       _tl107167107249_
                                       _e107172107252_
                                       _hd107171107255_
                                       _tl107170107257_
                                       _e107175107260_
                                       _hd107174107263_
                                       _tl107173107265_
                                       _e107178107268_
                                       _hd107177107271_
                                       _tl107176107273_
                                       _e107181107276_
                                       _hd107180107279_
                                       _tl107179107281_
                                       _e107184107284_
                                       _hd107183107287_
                                       _tl107182107289_
                                       _e107187107292_
                                       _hd107186107295_
                                       _tl107185107297_)
                                      (___kont109434109435_))
                                  (___kont109434109435_))
                              (___kont109434109435_))))
                      (___kont109434109435_))
                  (___kont109434109435_))
              (___kont109434109435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont109434109435_))))
                                      (___kont109434109435_))))
                               (___match109461109462_
                                (lambda (_e107090107345_
                                         _hd107089107348_
                                         _tl107088107350_
                                         ___splice109428109429_
                                         _target107091107353_
                                         _tl107093107355_)
                                  (letrec ((_loop107094107358_
                                            (lambda (_hd107092107361_
                                                     _arg107098107363_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107092107361_))
                                                  (let ((_e107095107366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107092107361_))))
                                                    (let ((_lp-tl107097107371_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107095107366_)))
                                                          (_lp-hd107096107369_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107095107366_))))
                                                      (let ((__tmp110705
                                                             (cons _lp-hd107096107369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _arg107098107363_)))
                (declare (not safe))
                (_loop107094107358_ _lp-tl107097107371_ __tmp110705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107099107374_
                                                         (reverse _arg107098107363_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107088107350_))
                                                        (let ((_e107102107377_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107088107350_))))
                  (let ((_tl107100107382_
                         (let () (declare (not safe)) (##cdr _e107102107377_)))
                        (_hd107101107380_
                         (let ()
                           (declare (not safe))
                           (##car _e107102107377_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107101107380_))
                        (let ((_e107105107385_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107101107380_))))
                          (let ((_tl107103107390_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107105107385_)))
                                (_hd107104107388_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107105107385_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107104107388_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107104107388_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107103107390_))
                                        (let ((_e107108107393_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107103107390_))))
                                          (let ((_tl107106107398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107108107393_)))
                                                (_hd107107107396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107108107393_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107107107396_))
                                                (let ((_e107111107401_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107107107396_))))
                                                  (let ((_tl107109107406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107111107401_)))
                                                        (_hd107110107404_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107111107401_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107110107404_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107110107404_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107109107406_))
                        (let ((_e107114107409_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107109107406_))))
                          (let ((_tl107112107414_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107114107409_)))
                                (_hd107113107412_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107114107409_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107112107414_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl107106107398_))
                                    (let ((_e107117107417_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl107106107398_))))
                                      (let ((_tl107115107422_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e107117107417_)))
                                            (_hd107116107420_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e107117107417_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd107116107420_))
                                            (let ((_e107120107425_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd107116107420_))))
                                              (let ((_tl107118107430_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107120107425_)))
                                                    (_hd107119107428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107120107425_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd107119107428_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd107119107428_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107118107430_))
                                                            (let ((_e107123107433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107118107430_))))
                      (let ((_tl107121107438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107123107433_)))
                            (_hd107122107436_
                             (let ()
                               (declare (not safe))
                               (##car _e107123107433_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107121107438_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl107115107422_))
                                (if (let ((__tmp110706
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _tl107115107422_))))
                                      (declare (not safe))
                                      (##fx>= __tmp110706 '1))
                                    (let ((___splice109430109431_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107115107422_
                                              '1))))
                                      (let ((_tl107126107443_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice109430109431_
                                                '1)))
                                            (_target107124107441_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice109430109431_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107126107443_))
                                            (let ((_e107135107446_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107126107443_))))
                                              (let ((_tl107133107451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107135107446_)))
                                                    (_hd107134107449_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107135107446_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd107134107449_))
                                                    (let ((_e107138107454_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd107134107449_))))
                                                      (let ((_tl107136107459_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e107138107454_)))
                    (_hd107137107457_
                     (let () (declare (not safe)) (##car _e107138107454_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd107137107457_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd107137107457_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl107136107459_))
                            (let ((_e107141107462_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl107136107459_))))
                              (let ((_tl107139107467_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107141107462_)))
                                    (_hd107140107465_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107141107462_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl107139107467_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl107133107451_))
                                        (letrec ((_loop107127107470_
                                                  (lambda (_hd107125107473_
                                                           _xarg107131107475_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107125107473_))
                                                        (let ((_e107128107478_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107125107473_))))
                  (let ((_lp-tl107130107483_
                         (let () (declare (not safe)) (##cdr _e107128107478_)))
                        (_lp-hd107129107481_
                         (let ()
                           (declare (not safe))
                           (##car _e107128107478_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd107129107481_))
                        (let ((_e107144107486_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd107129107481_))))
                          (let ((_tl107142107491_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107144107486_)))
                                (_hd107143107489_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107144107486_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107143107489_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd107143107489_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107142107491_))
                                        (let ((_e107147107494_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107142107491_))))
                                          (let ((_tl107145107499_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107147107494_)))
                                                (_hd107146107497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107147107494_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107145107499_))
                                                (let ((__tmp110707
                                                       (cons _hd107146107497_
                                                             _xarg107131107475_)))
                                                  (declare (not safe))
                                                  (_loop107127107470_
                                                   _lp-tl107130107483_
                                                   __tmp110707))
                                                (___match109531109532_
                                                 _e107090107345_
                                                 _hd107089107348_
                                                 _tl107088107350_
                                                 _e107102107377_
                                                 _hd107101107380_
                                                 _tl107100107382_
                                                 _e107105107385_
                                                 _hd107104107388_
                                                 _tl107103107390_
                                                 _e107108107393_
                                                 _hd107107107396_
                                                 _tl107106107398_
                                                 _e107111107401_
                                                 _hd107110107404_
                                                 _tl107109107406_
                                                 _e107114107409_
                                                 _hd107113107412_
                                                 _tl107112107414_
                                                 _e107117107417_
                                                 _hd107116107420_
                                                 _tl107115107422_
                                                 _e107120107425_
                                                 _hd107119107428_
                                                 _tl107118107430_
                                                 _e107123107433_
                                                 _hd107122107436_
                                                 _tl107121107438_))))
                                        (___match109531109532_
                                         _e107090107345_
                                         _hd107089107348_
                                         _tl107088107350_
                                         _e107102107377_
                                         _hd107101107380_
                                         _tl107100107382_
                                         _e107105107385_
                                         _hd107104107388_
                                         _tl107103107390_
                                         _e107108107393_
                                         _hd107107107396_
                                         _tl107106107398_
                                         _e107111107401_
                                         _hd107110107404_
                                         _tl107109107406_
                                         _e107114107409_
                                         _hd107113107412_
                                         _tl107112107414_
                                         _e107117107417_
                                         _hd107116107420_
                                         _tl107115107422_
                                         _e107120107425_
                                         _hd107119107428_
                                         _tl107118107430_
                                         _e107123107433_
                                         _hd107122107436_
                                         _tl107121107438_))
                                    (___match109531109532_
                                     _e107090107345_
                                     _hd107089107348_
                                     _tl107088107350_
                                     _e107102107377_
                                     _hd107101107380_
                                     _tl107100107382_
                                     _e107105107385_
                                     _hd107104107388_
                                     _tl107103107390_
                                     _e107108107393_
                                     _hd107107107396_
                                     _tl107106107398_
                                     _e107111107401_
                                     _hd107110107404_
                                     _tl107109107406_
                                     _e107114107409_
                                     _hd107113107412_
                                     _tl107112107414_
                                     _e107117107417_
                                     _hd107116107420_
                                     _tl107115107422_
                                     _e107120107425_
                                     _hd107119107428_
                                     _tl107118107430_
                                     _e107123107433_
                                     _hd107122107436_
                                     _tl107121107438_))
                                (___match109531109532_
                                 _e107090107345_
                                 _hd107089107348_
                                 _tl107088107350_
                                 _e107102107377_
                                 _hd107101107380_
                                 _tl107100107382_
                                 _e107105107385_
                                 _hd107104107388_
                                 _tl107103107390_
                                 _e107108107393_
                                 _hd107107107396_
                                 _tl107106107398_
                                 _e107111107401_
                                 _hd107110107404_
                                 _tl107109107406_
                                 _e107114107409_
                                 _hd107113107412_
                                 _tl107112107414_
                                 _e107117107417_
                                 _hd107116107420_
                                 _tl107115107422_
                                 _e107120107425_
                                 _hd107119107428_
                                 _tl107118107430_
                                 _e107123107433_
                                 _hd107122107436_
                                 _tl107121107438_))))
                        (___match109531109532_
                         _e107090107345_
                         _hd107089107348_
                         _tl107088107350_
                         _e107102107377_
                         _hd107101107380_
                         _tl107100107382_
                         _e107105107385_
                         _hd107104107388_
                         _tl107103107390_
                         _e107108107393_
                         _hd107107107396_
                         _tl107106107398_
                         _e107111107401_
                         _hd107110107404_
                         _tl107109107406_
                         _e107114107409_
                         _hd107113107412_
                         _tl107112107414_
                         _e107117107417_
                         _hd107116107420_
                         _tl107115107422_
                         _e107120107425_
                         _hd107119107428_
                         _tl107118107430_
                         _e107123107433_
                         _hd107122107436_
                         _tl107121107438_))))
                (let ((_xarg107132107502_ (reverse _xarg107131107475_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl107100107382_))
                      (let ((_L107505_ _hd107140107465_)
                            (_L107506_ _xarg107132107502_)
                            (_L107507_ _hd107122107436_)
                            (_L107508_ _hd107113107412_)
                            (_L107509_ _tl107093107355_)
                            (_L107510_ _arg107099107374_))
                        (if (and (let ((__tmp110708
                                        (let ((__tmp110709
                                               (lambda (_g107553107556_
                                                        _g107554107558_)
                                                 (cons _g107553107556_
                                                       _g107554107558_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp110709
                                           '()
                                           _L107510_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp110708))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L107509_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L107508_ 'apply))
                                 (let ((__tmp110712
                                        (length (let ((__tmp110713
                                                       (lambda (_g107560107563_
                                                                _g107561107565_)
                                                         (cons _g107560107563_
                                                               _g107561107565_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp110713
                                                   '()
                                                   _L107510_))))
                                       (__tmp110710
                                        (length (let ((__tmp110711
                                                       (lambda (_g107567107570_
                                                                _g107568107572_)
                                                         (cons _g107567107570_
                                                               _g107568107572_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp110711
                                                   '()
                                                   _L107506_)))))
                                   (declare (not safe))
                                   (##fx= __tmp110712 __tmp110710))
                                 (let ((__tmp110716
                                        (let ((__tmp110717
                                               (lambda (_g107574107577_
                                                        _g107575107579_)
                                                 (cons _g107574107577_
                                                       _g107575107579_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp110717
                                           '()
                                           _L107510_)))
                                       (__tmp110714
                                        (let ((__tmp110715
                                               (lambda (_g107581107584_
                                                        _g107582107586_)
                                                 (cons _g107581107584_
                                                       _g107582107586_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp110715
                                           '()
                                           _L107506_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp110716
                                    __tmp110714))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L107509_ _L107505_))
                                 (let ((__tmp110718
                                        (let ((__tmp110722
                                               (lambda (_g107588107590_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g107588107590_
                                                    _L107507_))))
                                              (__tmp110719
                                               (let ((__tmp110721
                                                      (lambda (_g107592107595_
                                                               _g107593107597_)
                                                        (cons _g107592107595_
                                                              _g107593107597_)))
                                                     (__tmp110720
                                                      (cons _L107509_ '())))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp110721
                                                  __tmp110720
                                                  _L107510_))))
                                          (declare (not safe))
                                          (__find __tmp110722 __tmp110719))))
                                   (declare (not safe))
                                   (not __tmp110718)))
                            (___kont109426109427_
                             _L107505_
                             _L107506_
                             _L107507_
                             _L107508_
                             _L107509_
                             _L107510_)
                            (___match109531109532_
                             _e107090107345_
                             _hd107089107348_
                             _tl107088107350_
                             _e107102107377_
                             _hd107101107380_
                             _tl107100107382_
                             _e107105107385_
                             _hd107104107388_
                             _tl107103107390_
                             _e107108107393_
                             _hd107107107396_
                             _tl107106107398_
                             _e107111107401_
                             _hd107110107404_
                             _tl107109107406_
                             _e107114107409_
                             _hd107113107412_
                             _tl107112107414_
                             _e107117107417_
                             _hd107116107420_
                             _tl107115107422_
                             _e107120107425_
                             _hd107119107428_
                             _tl107118107430_
                             _e107123107433_
                             _hd107122107436_
                             _tl107121107438_)))
                      (___match109531109532_
                       _e107090107345_
                       _hd107089107348_
                       _tl107088107350_
                       _e107102107377_
                       _hd107101107380_
                       _tl107100107382_
                       _e107105107385_
                       _hd107104107388_
                       _tl107103107390_
                       _e107108107393_
                       _hd107107107396_
                       _tl107106107398_
                       _e107111107401_
                       _hd107110107404_
                       _tl107109107406_
                       _e107114107409_
                       _hd107113107412_
                       _tl107112107414_
                       _e107117107417_
                       _hd107116107420_
                       _tl107115107422_
                       _e107120107425_
                       _hd107119107428_
                       _tl107118107430_
                       _e107123107433_
                       _hd107122107436_
                       _tl107121107438_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop107127107470_
                                             _target107124107441_
                                             '())))
                                        (___match109531109532_
                                         _e107090107345_
                                         _hd107089107348_
                                         _tl107088107350_
                                         _e107102107377_
                                         _hd107101107380_
                                         _tl107100107382_
                                         _e107105107385_
                                         _hd107104107388_
                                         _tl107103107390_
                                         _e107108107393_
                                         _hd107107107396_
                                         _tl107106107398_
                                         _e107111107401_
                                         _hd107110107404_
                                         _tl107109107406_
                                         _e107114107409_
                                         _hd107113107412_
                                         _tl107112107414_
                                         _e107117107417_
                                         _hd107116107420_
                                         _tl107115107422_
                                         _e107120107425_
                                         _hd107119107428_
                                         _tl107118107430_
                                         _e107123107433_
                                         _hd107122107436_
                                         _tl107121107438_))
                                    (___match109531109532_
                                     _e107090107345_
                                     _hd107089107348_
                                     _tl107088107350_
                                     _e107102107377_
                                     _hd107101107380_
                                     _tl107100107382_
                                     _e107105107385_
                                     _hd107104107388_
                                     _tl107103107390_
                                     _e107108107393_
                                     _hd107107107396_
                                     _tl107106107398_
                                     _e107111107401_
                                     _hd107110107404_
                                     _tl107109107406_
                                     _e107114107409_
                                     _hd107113107412_
                                     _tl107112107414_
                                     _e107117107417_
                                     _hd107116107420_
                                     _tl107115107422_
                                     _e107120107425_
                                     _hd107119107428_
                                     _tl107118107430_
                                     _e107123107433_
                                     _hd107122107436_
                                     _tl107121107438_))))
                            (___match109531109532_
                             _e107090107345_
                             _hd107089107348_
                             _tl107088107350_
                             _e107102107377_
                             _hd107101107380_
                             _tl107100107382_
                             _e107105107385_
                             _hd107104107388_
                             _tl107103107390_
                             _e107108107393_
                             _hd107107107396_
                             _tl107106107398_
                             _e107111107401_
                             _hd107110107404_
                             _tl107109107406_
                             _e107114107409_
                             _hd107113107412_
                             _tl107112107414_
                             _e107117107417_
                             _hd107116107420_
                             _tl107115107422_
                             _e107120107425_
                             _hd107119107428_
                             _tl107118107430_
                             _e107123107433_
                             _hd107122107436_
                             _tl107121107438_))
                        (___match109531109532_
                         _e107090107345_
                         _hd107089107348_
                         _tl107088107350_
                         _e107102107377_
                         _hd107101107380_
                         _tl107100107382_
                         _e107105107385_
                         _hd107104107388_
                         _tl107103107390_
                         _e107108107393_
                         _hd107107107396_
                         _tl107106107398_
                         _e107111107401_
                         _hd107110107404_
                         _tl107109107406_
                         _e107114107409_
                         _hd107113107412_
                         _tl107112107414_
                         _e107117107417_
                         _hd107116107420_
                         _tl107115107422_
                         _e107120107425_
                         _hd107119107428_
                         _tl107118107430_
                         _e107123107433_
                         _hd107122107436_
                         _tl107121107438_))
                    (___match109531109532_
                     _e107090107345_
                     _hd107089107348_
                     _tl107088107350_
                     _e107102107377_
                     _hd107101107380_
                     _tl107100107382_
                     _e107105107385_
                     _hd107104107388_
                     _tl107103107390_
                     _e107108107393_
                     _hd107107107396_
                     _tl107106107398_
                     _e107111107401_
                     _hd107110107404_
                     _tl107109107406_
                     _e107114107409_
                     _hd107113107412_
                     _tl107112107414_
                     _e107117107417_
                     _hd107116107420_
                     _tl107115107422_
                     _e107120107425_
                     _hd107119107428_
                     _tl107118107430_
                     _e107123107433_
                     _hd107122107436_
                     _tl107121107438_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match109531109532_
                                                     _e107090107345_
                                                     _hd107089107348_
                                                     _tl107088107350_
                                                     _e107102107377_
                                                     _hd107101107380_
                                                     _tl107100107382_
                                                     _e107105107385_
                                                     _hd107104107388_
                                                     _tl107103107390_
                                                     _e107108107393_
                                                     _hd107107107396_
                                                     _tl107106107398_
                                                     _e107111107401_
                                                     _hd107110107404_
                                                     _tl107109107406_
                                                     _e107114107409_
                                                     _hd107113107412_
                                                     _tl107112107414_
                                                     _e107117107417_
                                                     _hd107116107420_
                                                     _tl107115107422_
                                                     _e107120107425_
                                                     _hd107119107428_
                                                     _tl107118107430_
                                                     _e107123107433_
                                                     _hd107122107436_
                                                     _tl107121107438_))))
                                            (___match109531109532_
                                             _e107090107345_
                                             _hd107089107348_
                                             _tl107088107350_
                                             _e107102107377_
                                             _hd107101107380_
                                             _tl107100107382_
                                             _e107105107385_
                                             _hd107104107388_
                                             _tl107103107390_
                                             _e107108107393_
                                             _hd107107107396_
                                             _tl107106107398_
                                             _e107111107401_
                                             _hd107110107404_
                                             _tl107109107406_
                                             _e107114107409_
                                             _hd107113107412_
                                             _tl107112107414_
                                             _e107117107417_
                                             _hd107116107420_
                                             _tl107115107422_
                                             _e107120107425_
                                             _hd107119107428_
                                             _tl107118107430_
                                             _e107123107433_
                                             _hd107122107436_
                                             _tl107121107438_))))
                                    (___match109531109532_
                                     _e107090107345_
                                     _hd107089107348_
                                     _tl107088107350_
                                     _e107102107377_
                                     _hd107101107380_
                                     _tl107100107382_
                                     _e107105107385_
                                     _hd107104107388_
                                     _tl107103107390_
                                     _e107108107393_
                                     _hd107107107396_
                                     _tl107106107398_
                                     _e107111107401_
                                     _hd107110107404_
                                     _tl107109107406_
                                     _e107114107409_
                                     _hd107113107412_
                                     _tl107112107414_
                                     _e107117107417_
                                     _hd107116107420_
                                     _tl107115107422_
                                     _e107120107425_
                                     _hd107119107428_
                                     _tl107118107430_
                                     _e107123107433_
                                     _hd107122107436_
                                     _tl107121107438_))
                                (___match109531109532_
                                 _e107090107345_
                                 _hd107089107348_
                                 _tl107088107350_
                                 _e107102107377_
                                 _hd107101107380_
                                 _tl107100107382_
                                 _e107105107385_
                                 _hd107104107388_
                                 _tl107103107390_
                                 _e107108107393_
                                 _hd107107107396_
                                 _tl107106107398_
                                 _e107111107401_
                                 _hd107110107404_
                                 _tl107109107406_
                                 _e107114107409_
                                 _hd107113107412_
                                 _tl107112107414_
                                 _e107117107417_
                                 _hd107116107420_
                                 _tl107115107422_
                                 _e107120107425_
                                 _hd107119107428_
                                 _tl107118107430_
                                 _e107123107433_
                                 _hd107122107436_
                                 _tl107121107438_))
                            (___kont109434109435_))))
                    (___kont109434109435_))
                (___kont109434109435_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont109434109435_))))
                                            (___kont109434109435_))))
                                    (___kont109434109435_))
                                (___kont109434109435_))))
                        (___kont109434109435_))
                    (___kont109434109435_))
                (___kont109434109435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont109434109435_))))
                                        (___kont109434109435_))
                                    (___kont109434109435_))
                                (___kont109434109435_))))
                        (___kont109434109435_))))
                (___kont109434109435_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107094107358_
                                       _target107091107353_
                                       '())))))
                               (___match109449109450_
                                (lambda (_e107042107605_
                                         _hd107041107608_
                                         _tl107040107610_
                                         ___splice109422109423_
                                         _target107043107613_
                                         _tl107045107615_)
                                  (letrec ((_loop107046107618_
                                            (lambda (_hd107044107621_
                                                     _arg107050107623_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107044107621_))
                                                  (let ((_e107047107626_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107044107621_))))
                                                    (let ((_lp-tl107049107631_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107047107626_)))
                                                          (_lp-hd107048107629_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107047107626_))))
                                                      (let ((__tmp110723
                                                             (cons _lp-hd107048107629_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _arg107050107623_)))
                (declare (not safe))
                (_loop107046107618_ _lp-tl107049107631_ __tmp110723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107051107634_
                                                         (reverse _arg107050107623_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107040107610_))
                                                        (let ((_e107054107637_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107040107610_))))
                  (let ((_tl107052107642_
                         (let () (declare (not safe)) (##cdr _e107054107637_)))
                        (_hd107053107640_
                         (let ()
                           (declare (not safe))
                           (##car _e107054107637_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107053107640_))
                        (let ((_e107057107645_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107053107640_))))
                          (let ((_tl107055107650_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107057107645_)))
                                (_hd107056107648_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107057107645_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107056107648_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107056107648_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107055107650_))
                                        (let ((_e107060107653_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107055107650_))))
                                          (let ((_tl107058107658_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107060107653_)))
                                                (_hd107059107656_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107060107653_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107059107656_))
                                                (let ((_e107063107661_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107059107656_))))
                                                  (let ((_tl107061107666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107063107661_)))
                                                        (_hd107062107664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107063107661_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107062107664_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107062107664_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107061107666_))
                        (let ((_e107066107669_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107061107666_))))
                          (let ((_tl107064107674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107066107669_)))
                                (_hd107065107672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107066107669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107064107674_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl107058107658_))
                                    (let ((___splice109424109425_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107058107658_
                                              '0))))
                                      (let ((_tl107069107679_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice109424109425_
                                                '1)))
                                            (_target107067107677_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice109424109425_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl107069107679_))
                                            (letrec ((_loop107070107682_
                                                      (lambda (_hd107068107685_
                                                               _xarg107074107687_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd107068107685_))
                                                            (let ((_e107071107690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd107068107685_))))
                      (let ((_lp-tl107073107695_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107071107690_)))
                            (_lp-hd107072107693_
                             (let ()
                               (declare (not safe))
                               (##car _e107071107690_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd107072107693_))
                            (let ((_e107078107698_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd107072107693_))))
                              (let ((_tl107076107703_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107078107698_)))
                                    (_hd107077107701_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107078107698_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd107077107701_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd107077107701_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107076107703_))
                                            (let ((_e107081107706_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107076107703_))))
                                              (let ((_tl107079107711_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107081107706_)))
                                                    (_hd107080107709_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107081107706_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl107079107711_))
                                                    (let ((__tmp110724
                                                           (cons _hd107080107709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg107074107687_)))
              (declare (not safe))
              (_loop107070107682_ _lp-tl107073107695_ __tmp110724))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match109461109462_
                                                     _e107042107605_
                                                     _hd107041107608_
                                                     _tl107040107610_
                                                     ___splice109422109423_
                                                     _target107043107613_
                                                     _tl107045107615_))))
                                            (___match109461109462_
                                             _e107042107605_
                                             _hd107041107608_
                                             _tl107040107610_
                                             ___splice109422109423_
                                             _target107043107613_
                                             _tl107045107615_))
                                        (___match109461109462_
                                         _e107042107605_
                                         _hd107041107608_
                                         _tl107040107610_
                                         ___splice109422109423_
                                         _target107043107613_
                                         _tl107045107615_))
                                    (___match109461109462_
                                     _e107042107605_
                                     _hd107041107608_
                                     _tl107040107610_
                                     ___splice109422109423_
                                     _target107043107613_
                                     _tl107045107615_))))
                            (___match109461109462_
                             _e107042107605_
                             _hd107041107608_
                             _tl107040107610_
                             ___splice109422109423_
                             _target107043107613_
                             _tl107045107615_))))
                    (let ((_xarg107075107714_ (reverse _xarg107074107687_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl107052107642_))
                          (let ((_L107717_ _xarg107075107714_)
                                (_L107718_ _hd107065107672_)
                                (_L107719_ _arg107051107634_))
                            (if (and (let ((__tmp110725
                                            (let ((__tmp110726
                                                   (lambda (_g107747107750_
                                                            _g107748107752_)
                                                     (cons _g107747107750_
                                                           _g107748107752_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp110726
                                               '()
                                               _L107719_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp110725))
                                     (let ((__tmp110729
                                            (length (let ((__tmp110730
                                                           (lambda (_g107754107757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g107755107759_)
                     (cons _g107754107757_ _g107755107759_))))
              (declare (not safe))
              (__foldr1 __tmp110730 '() _L107719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp110727
                                            (length (let ((__tmp110728
                                                           (lambda (_g107761107764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g107762107766_)
                     (cons _g107761107764_ _g107762107766_))))
              (declare (not safe))
              (__foldr1 __tmp110728 '() _L107717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp110729 __tmp110727))
                                     (let ((__tmp110733
                                            (let ((__tmp110734
                                                   (lambda (_g107768107771_
                                                            _g107769107773_)
                                                     (cons _g107768107771_
                                                           _g107769107773_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp110734
                                               '()
                                               _L107719_)))
                                           (__tmp110731
                                            (let ((__tmp110732
                                                   (lambda (_g107775107778_
                                                            _g107776107780_)
                                                     (cons _g107775107778_
                                                           _g107776107780_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp110732
                                               '()
                                               _L107717_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp110733
                                        __tmp110731))
                                     (let ((__tmp110735
                                            (let ((__tmp110738
                                                   (lambda (_g107782107784_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g107782107784_
                                                        _L107718_))))
                                                  (__tmp110736
                                                   (let ((__tmp110737
                                                          (lambda (_g107786107789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g107787107791_)
                    (cons _g107786107789_ _g107787107791_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp110737
                                                      '()
                                                      _L107719_))))
                                              (declare (not safe))
                                              (__find __tmp110738
                                                      __tmp110736))))
                                       (declare (not safe))
                                       (not __tmp110735)))
                                (___kont109420109421_
                                 _L107717_
                                 _L107718_
                                 _L107719_)
                                (___match109461109462_
                                 _e107042107605_
                                 _hd107041107608_
                                 _tl107040107610_
                                 ___splice109422109423_
                                 _target107043107613_
                                 _tl107045107615_)))
                          (___match109461109462_
                           _e107042107605_
                           _hd107041107608_
                           _tl107040107610_
                           ___splice109422109423_
                           _target107043107613_
                           _tl107045107615_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop107070107682_
                                                 _target107067107677_
                                                 '())))
                                            (___match109461109462_
                                             _e107042107605_
                                             _hd107041107608_
                                             _tl107040107610_
                                             ___splice109422109423_
                                             _target107043107613_
                                             _tl107045107615_))))
                                    (___match109461109462_
                                     _e107042107605_
                                     _hd107041107608_
                                     _tl107040107610_
                                     ___splice109422109423_
                                     _target107043107613_
                                     _tl107045107615_))
                                (___match109461109462_
                                 _e107042107605_
                                 _hd107041107608_
                                 _tl107040107610_
                                 ___splice109422109423_
                                 _target107043107613_
                                 _tl107045107615_))))
                        (___match109461109462_
                         _e107042107605_
                         _hd107041107608_
                         _tl107040107610_
                         ___splice109422109423_
                         _target107043107613_
                         _tl107045107615_))
                    (___match109461109462_
                     _e107042107605_
                     _hd107041107608_
                     _tl107040107610_
                     ___splice109422109423_
                     _target107043107613_
                     _tl107045107615_))
                (___match109461109462_
                 _e107042107605_
                 _hd107041107608_
                 _tl107040107610_
                 ___splice109422109423_
                 _target107043107613_
                 _tl107045107615_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match109461109462_
                                                 _e107042107605_
                                                 _hd107041107608_
                                                 _tl107040107610_
                                                 ___splice109422109423_
                                                 _target107043107613_
                                                 _tl107045107615_))))
                                        (___match109461109462_
                                         _e107042107605_
                                         _hd107041107608_
                                         _tl107040107610_
                                         ___splice109422109423_
                                         _target107043107613_
                                         _tl107045107615_))
                                    (___match109461109462_
                                     _e107042107605_
                                     _hd107041107608_
                                     _tl107040107610_
                                     ___splice109422109423_
                                     _target107043107613_
                                     _tl107045107615_))
                                (___match109461109462_
                                 _e107042107605_
                                 _hd107041107608_
                                 _tl107040107610_
                                 ___splice109422109423_
                                 _target107043107613_
                                 _tl107045107615_))))
                        (___match109461109462_
                         _e107042107605_
                         _hd107041107608_
                         _tl107040107610_
                         ___splice109422109423_
                         _target107043107613_
                         _tl107045107615_))))
                (___match109461109462_
                 _e107042107605_
                 _hd107041107608_
                 _tl107040107610_
                 ___splice109422109423_
                 _target107043107613_
                 _tl107045107615_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107046107618_
                                       _target107043107613_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx109418109419_))
                              (let ((_e107042107605_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx109418109419_))))
                                (let ((_tl107040107610_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107042107605_)))
                                      (_hd107041107608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107042107605_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd107041107608_))
                                      (let ((___splice109422109423_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd107041107608_
                                                '0))))
                                        (let ((_tl107045107615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice109422109423_
                                                  '1)))
                                              (_target107043107613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice109422109423_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107045107615_))
                                              (___match109449109450_
                                               _e107042107605_
                                               _hd107041107608_
                                               _tl107040107610_
                                               ___splice109422109423_
                                               _target107043107613_
                                               _tl107045107615_)
                                              (___match109461109462_
                                               _e107042107605_
                                               _hd107041107608_
                                               _tl107040107610_
                                               ___splice109422109423_
                                               _target107043107613_
                                               _tl107045107615_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107040107610_))
                                          (let ((_e107157107212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107040107610_))))
                                            (let ((_tl107155107217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107157107212_)))
                                                  (_hd107156107215_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107157107212_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107156107215_))
                                                  (let ((_e107160107220_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107156107215_))))
                                                    (let ((_tl107158107225_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107160107220_)))
                                                          (_hd107159107223_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107160107220_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd107159107223_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd107159107223_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl107158107225_))
                          (let ((_e107163107228_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl107158107225_))))
                            (let ((_tl107161107233_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107163107228_)))
                                  (_hd107162107231_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107163107228_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd107162107231_))
                                  (let ((_e107166107236_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd107162107231_))))
                                    (let ((_tl107164107241_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e107166107236_)))
                                          (_hd107165107239_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e107166107236_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd107165107239_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd107165107239_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl107164107241_))
                                                  (let ((_e107169107244_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl107164107241_))))
                                                    (let ((_tl107167107249_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107169107244_)))
                                                          (_hd107168107247_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107169107244_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107167107249_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107161107233_))
                      (let ((_e107172107252_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107161107233_))))
                        (let ((_tl107170107257_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107172107252_)))
                              (_hd107171107255_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107172107252_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd107171107255_))
                              (let ((_e107175107260_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd107171107255_))))
                                (let ((_tl107173107265_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107175107260_)))
                                      (_hd107174107263_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107175107260_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd107174107263_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd107174107263_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl107173107265_))
                                              (let ((_e107178107268_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl107173107265_))))
                                                (let ((_tl107176107273_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107178107268_)))
                                                      (_hd107177107271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107178107268_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107176107273_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl107170107257_))
                                                          (let ((_e107181107276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl107170107257_))))
                    (let ((_tl107179107281_
                           (let ()
                             (declare (not safe))
                             (##cdr _e107181107276_)))
                          (_hd107180107279_
                           (let ()
                             (declare (not safe))
                             (##car _e107181107276_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd107180107279_))
                          (let ((_e107184107284_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd107180107279_))))
                            (let ((_tl107182107289_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107184107284_)))
                                  (_hd107183107287_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107184107284_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd107183107287_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd107183107287_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107182107289_))
                                          (let ((_e107187107292_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107182107289_))))
                                            (let ((_tl107185107297_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107187107292_)))
                                                  (_hd107186107295_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107187107292_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl107185107297_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107179107281_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107155107217_))
                                                          (___match109559109560_
                                                           _e107042107605_
                                                           _hd107041107608_
                                                           _tl107040107610_
                                                           _e107157107212_
                                                           _hd107156107215_
                                                           _tl107155107217_
                                                           _e107160107220_
                                                           _hd107159107223_
                                                           _tl107158107225_
                                                           _e107163107228_
                                                           _hd107162107231_
                                                           _tl107161107233_
                                                           _e107166107236_
                                                           _hd107165107239_
                                                           _tl107164107241_
                                                           _e107169107244_
                                                           _hd107168107247_
                                                           _tl107167107249_
                                                           _e107172107252_
                                                           _hd107171107255_
                                                           _tl107170107257_
                                                           _e107175107260_
                                                           _hd107174107263_
                                                           _tl107173107265_
                                                           _e107178107268_
                                                           _hd107177107271_
                                                           _tl107176107273_
                                                           _e107181107276_
                                                           _hd107180107279_
                                                           _tl107179107281_
                                                           _e107184107284_
                                                           _hd107183107287_
                                                           _tl107182107289_
                                                           _e107187107292_
                                                           _hd107186107295_
                                                           _tl107185107297_)
                                                          (___kont109434109435_))
                                                      (___kont109434109435_))
                                                  (___kont109434109435_))))
                                          (___kont109434109435_))
                                      (___kont109434109435_))
                                  (___kont109434109435_))))
                          (___kont109434109435_))))
                  (___kont109434109435_))
              (___kont109434109435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont109434109435_))
                                          (___kont109434109435_))
                                      (___kont109434109435_))))
                              (___kont109434109435_))))
                      (___kont109434109435_))
                  (___kont109434109435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont109434109435_))
                                              (___kont109434109435_))
                                          (___kont109434109435_))))
                                  (___kont109434109435_))))
                          (___kont109434109435_))
                      (___kont109434109435_))
                  (___kont109434109435_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont109434109435_))))
                                          (___kont109434109435_)))))
                              (___kont109434109435_)))))))
                 (_dispatch-case-e106343_
                  (lambda (_hd106491_ _body106492_)
                    (let* ((_form106494_
                            (cons _hd106491_ (cons _body106492_ '())))
                           (___stx109562109563_ _form106494_)
                           (_g106498106622_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx109562109563_)))))
                      (let ((___kont109564109565_
                             (lambda (_L106993_ _L106994_ _L106995_)
                               (let ((__tmp110739
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _L106994_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106339_ __tmp110739))))
                            (___kont109570109571_
                             (lambda (_L106841_ _L106842_ _L106843_ _L106844_)
                               (let ((__tmp110740
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _L106841_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106339_ __tmp110740))))
                            (___kont109574109575_
                             (lambda (_L106707_ _L106708_ _L106709_)
                               (let ((__tmp110741
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _L106707_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self106339_
                                  __tmp110741)))))
                        (let* ((___match109671109672_
                                (lambda (_e106590106627_
                                         _hd106589106630_
                                         _tl106588106632_
                                         _e106593106635_
                                         _hd106592106638_
                                         _tl106591106640_
                                         _e106596106643_
                                         _hd106595106646_
                                         _tl106594106648_
                                         _e106599106651_
                                         _hd106598106654_
                                         _tl106597106656_
                                         _e106602106659_
                                         _hd106601106662_
                                         _tl106600106664_
                                         _e106605106667_
                                         _hd106604106670_
                                         _tl106603106672_
                                         _e106608106675_
                                         _hd106607106678_
                                         _tl106606106680_
                                         _e106611106683_
                                         _hd106610106686_
                                         _tl106609106688_
                                         _e106614106691_
                                         _hd106613106694_
                                         _tl106612106696_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106606106680_))
                                      (let ((_e106617106699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106606106680_))))
                                        (let ((_tl106615106704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106617106699_)))
                                              (_hd106616106702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106617106699_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106615106704_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl106591106640_))
                                                  (___kont109574109575_
                                                   _hd106613106694_
                                                   _hd106604106670_
                                                   _hd106589106630_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g106498106622_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g106498106622_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106498106622_)))))
                               (___match109601109602_
                                (lambda (_e106551106745_
                                         _hd106550106748_
                                         _tl106549106750_
                                         ___splice109572109573_
                                         _target106552106753_
                                         _tl106554106755_)
                                  (letrec ((_loop106555106758_
                                            (lambda (_hd106553106761_
                                                     _arg106559106763_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd106553106761_))
                                                  (let ((_e106556106766_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd106553106761_))))
                                                    (let ((_lp-tl106558106771_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e106556106766_)))
                                                          (_lp-hd106557106769_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e106556106766_))))
                                                      (let ((__tmp110742
                                                             (cons _lp-hd106557106769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _arg106559106763_)))
                (declare (not safe))
                (_loop106555106758_ _lp-tl106558106771_ __tmp110742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg106560106774_
                                                         (reverse _arg106559106763_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106549106750_))
                                                        (let ((_e106563106777_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106549106750_))))
                  (let ((_tl106561106782_
                         (let () (declare (not safe)) (##cdr _e106563106777_)))
                        (_hd106562106780_
                         (let ()
                           (declare (not safe))
                           (##car _e106563106777_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd106562106780_))
                        (let ((_e106566106785_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd106562106780_))))
                          (let ((_tl106564106790_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106566106785_)))
                                (_hd106565106788_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106566106785_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd106565106788_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd106565106788_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106564106790_))
                                        (let ((_e106569106793_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106564106790_))))
                                          (let ((_tl106567106798_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106569106793_)))
                                                (_hd106568106796_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106569106793_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd106568106796_))
                                                (let ((_e106572106801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd106568106796_))))
                                                  (let ((_tl106570106806_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106572106801_)))
                                                        (_hd106571106804_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106572106801_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd106571106804_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd106571106804_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl106570106806_))
                        (let ((_e106575106809_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl106570106806_))))
                          (let ((_tl106573106814_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106575106809_)))
                                (_hd106574106812_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106575106809_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl106573106814_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl106567106798_))
                                    (let ((_e106578106817_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl106567106798_))))
                                      (let ((_tl106576106822_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e106578106817_)))
                                            (_hd106577106820_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e106578106817_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd106577106820_))
                                            (let ((_e106581106825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd106577106820_))))
                                              (let ((_tl106579106830_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e106581106825_)))
                                                    (_hd106580106828_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e106581106825_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd106580106828_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd106580106828_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl106579106830_))
                                                            (let ((_e106584106833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl106579106830_))))
                      (let ((_tl106582106838_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106584106833_)))
                            (_hd106583106836_
                             (let ()
                               (declare (not safe))
                               (##car _e106584106833_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl106582106838_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl106561106782_))
                                (___kont109570109571_
                                 _hd106583106836_
                                 _hd106574106812_
                                 _tl106554106755_
                                 _arg106560106774_)
                                (___match109671109672_
                                 _e106551106745_
                                 _hd106550106748_
                                 _tl106549106750_
                                 _e106563106777_
                                 _hd106562106780_
                                 _tl106561106782_
                                 _e106566106785_
                                 _hd106565106788_
                                 _tl106564106790_
                                 _e106569106793_
                                 _hd106568106796_
                                 _tl106567106798_
                                 _e106572106801_
                                 _hd106571106804_
                                 _tl106570106806_
                                 _e106575106809_
                                 _hd106574106812_
                                 _tl106573106814_
                                 _e106578106817_
                                 _hd106577106820_
                                 _tl106576106822_
                                 _e106581106825_
                                 _hd106580106828_
                                 _tl106579106830_
                                 _e106584106833_
                                 _hd106583106836_
                                 _tl106582106838_))
                            (let () (declare (not safe)) (_g106498106622_)))))
                    (let () (declare (not safe)) (_g106498106622_)))
                (let () (declare (not safe)) (_g106498106622_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g106498106622_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g106498106622_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g106498106622_)))
                                (let ()
                                  (declare (not safe))
                                  (_g106498106622_)))))
                        (let () (declare (not safe)) (_g106498106622_)))
                    (let () (declare (not safe)) (_g106498106622_)))
                (let () (declare (not safe)) (_g106498106622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106498106622_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106498106622_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g106498106622_)))
                                (let ()
                                  (declare (not safe))
                                  (_g106498106622_)))))
                        (let () (declare (not safe)) (_g106498106622_)))))
                (let () (declare (not safe)) (_g106498106622_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop106555106758_
                                       _target106552106753_
                                       '())))))
                               (___match109589109590_
                                (lambda (_e106505106881_
                                         _hd106504106884_
                                         _tl106503106886_
                                         ___splice109566109567_
                                         _target106506106889_
                                         _tl106508106891_)
                                  (letrec ((_loop106509106894_
                                            (lambda (_hd106507106897_
                                                     _arg106513106899_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd106507106897_))
                                                  (let ((_e106510106902_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd106507106897_))))
                                                    (let ((_lp-tl106512106907_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e106510106902_)))
                                                          (_lp-hd106511106905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e106510106902_))))
                                                      (let ((__tmp110743
                                                             (cons _lp-hd106511106905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _arg106513106899_)))
                (declare (not safe))
                (_loop106509106894_ _lp-tl106512106907_ __tmp110743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg106514106910_
                                                         (reverse _arg106513106899_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl106503106886_))
                                                        (let ((_e106517106913_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl106503106886_))))
                  (let ((_tl106515106918_
                         (let () (declare (not safe)) (##cdr _e106517106913_)))
                        (_hd106516106916_
                         (let ()
                           (declare (not safe))
                           (##car _e106517106913_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd106516106916_))
                        (let ((_e106520106921_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd106516106916_))))
                          (let ((_tl106518106926_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106520106921_)))
                                (_hd106519106924_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106520106921_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd106519106924_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd106519106924_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106518106926_))
                                        (let ((_e106523106929_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106518106926_))))
                                          (let ((_tl106521106934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106523106929_)))
                                                (_hd106522106932_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106523106929_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd106522106932_))
                                                (let ((_e106526106937_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd106522106932_))))
                                                  (let ((_tl106524106942_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106526106937_)))
                                                        (_hd106525106940_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106526106937_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd106525106940_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd106525106940_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl106524106942_))
                        (let ((_e106529106945_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl106524106942_))))
                          (let ((_tl106527106950_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106529106945_)))
                                (_hd106528106948_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106529106945_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl106527106950_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl106521106934_))
                                    (let ((___splice109568109569_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl106521106934_
                                              '0))))
                                      (let ((_tl106532106955_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice109568109569_
                                                '1)))
                                            (_target106530106953_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice109568109569_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl106532106955_))
                                            (letrec ((_loop106533106958_
                                                      (lambda (_hd106531106961_
                                                               _xarg106537106963_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd106531106961_))
                                                            (let ((_e106534106966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd106531106961_))))
                      (let ((_lp-tl106536106971_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106534106966_)))
                            (_lp-hd106535106969_
                             (let ()
                               (declare (not safe))
                               (##car _e106534106966_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd106535106969_))
                            (let ((_e106541106974_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd106535106969_))))
                              (let ((_tl106539106979_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e106541106974_)))
                                    (_hd106540106977_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e106541106974_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd106540106977_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd106540106977_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl106539106979_))
                                            (let ((_e106544106982_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl106539106979_))))
                                              (let ((_tl106542106987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e106544106982_)))
                                                    (_hd106543106985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e106544106982_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl106542106987_))
                                                    (let ((__tmp110744
                                                           (cons _hd106543106985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg106537106963_)))
              (declare (not safe))
              (_loop106533106958_ _lp-tl106536106971_ __tmp110744))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match109601109602_
                                                     _e106505106881_
                                                     _hd106504106884_
                                                     _tl106503106886_
                                                     ___splice109566109567_
                                                     _target106506106889_
                                                     _tl106508106891_))))
                                            (___match109601109602_
                                             _e106505106881_
                                             _hd106504106884_
                                             _tl106503106886_
                                             ___splice109566109567_
                                             _target106506106889_
                                             _tl106508106891_))
                                        (___match109601109602_
                                         _e106505106881_
                                         _hd106504106884_
                                         _tl106503106886_
                                         ___splice109566109567_
                                         _target106506106889_
                                         _tl106508106891_))
                                    (___match109601109602_
                                     _e106505106881_
                                     _hd106504106884_
                                     _tl106503106886_
                                     ___splice109566109567_
                                     _target106506106889_
                                     _tl106508106891_))))
                            (___match109601109602_
                             _e106505106881_
                             _hd106504106884_
                             _tl106503106886_
                             ___splice109566109567_
                             _target106506106889_
                             _tl106508106891_))))
                    (let ((_xarg106538106990_ (reverse _xarg106537106963_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl106515106918_))
                          (___kont109564109565_
                           _xarg106538106990_
                           _hd106528106948_
                           _arg106514106910_)
                          (___match109601109602_
                           _e106505106881_
                           _hd106504106884_
                           _tl106503106886_
                           ___splice109566109567_
                           _target106506106889_
                           _tl106508106891_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop106533106958_
                                                 _target106530106953_
                                                 '())))
                                            (___match109601109602_
                                             _e106505106881_
                                             _hd106504106884_
                                             _tl106503106886_
                                             ___splice109566109567_
                                             _target106506106889_
                                             _tl106508106891_))))
                                    (___match109601109602_
                                     _e106505106881_
                                     _hd106504106884_
                                     _tl106503106886_
                                     ___splice109566109567_
                                     _target106506106889_
                                     _tl106508106891_))
                                (___match109601109602_
                                 _e106505106881_
                                 _hd106504106884_
                                 _tl106503106886_
                                 ___splice109566109567_
                                 _target106506106889_
                                 _tl106508106891_))))
                        (___match109601109602_
                         _e106505106881_
                         _hd106504106884_
                         _tl106503106886_
                         ___splice109566109567_
                         _target106506106889_
                         _tl106508106891_))
                    (___match109601109602_
                     _e106505106881_
                     _hd106504106884_
                     _tl106503106886_
                     ___splice109566109567_
                     _target106506106889_
                     _tl106508106891_))
                (___match109601109602_
                 _e106505106881_
                 _hd106504106884_
                 _tl106503106886_
                 ___splice109566109567_
                 _target106506106889_
                 _tl106508106891_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match109601109602_
                                                 _e106505106881_
                                                 _hd106504106884_
                                                 _tl106503106886_
                                                 ___splice109566109567_
                                                 _target106506106889_
                                                 _tl106508106891_))))
                                        (___match109601109602_
                                         _e106505106881_
                                         _hd106504106884_
                                         _tl106503106886_
                                         ___splice109566109567_
                                         _target106506106889_
                                         _tl106508106891_))
                                    (___match109601109602_
                                     _e106505106881_
                                     _hd106504106884_
                                     _tl106503106886_
                                     ___splice109566109567_
                                     _target106506106889_
                                     _tl106508106891_))
                                (___match109601109602_
                                 _e106505106881_
                                 _hd106504106884_
                                 _tl106503106886_
                                 ___splice109566109567_
                                 _target106506106889_
                                 _tl106508106891_))))
                        (___match109601109602_
                         _e106505106881_
                         _hd106504106884_
                         _tl106503106886_
                         ___splice109566109567_
                         _target106506106889_
                         _tl106508106891_))))
                (___match109601109602_
                 _e106505106881_
                 _hd106504106884_
                 _tl106503106886_
                 ___splice109566109567_
                 _target106506106889_
                 _tl106508106891_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop106509106894_
                                       _target106506106889_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx109562109563_))
                              (let ((_e106505106881_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx109562109563_))))
                                (let ((_tl106503106886_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106505106881_)))
                                      (_hd106504106884_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106505106881_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd106504106884_))
                                      (let ((___splice109566109567_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd106504106884_
                                                '0))))
                                        (let ((_tl106508106891_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice109566109567_
                                                  '1)))
                                              (_target106506106889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice109566109567_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106508106891_))
                                              (___match109589109590_
                                               _e106505106881_
                                               _hd106504106884_
                                               _tl106503106886_
                                               ___splice109566109567_
                                               _target106506106889_
                                               _tl106508106891_)
                                              (___match109601109602_
                                               _e106505106881_
                                               _hd106504106884_
                                               _tl106503106886_
                                               ___splice109566109567_
                                               _target106506106889_
                                               _tl106508106891_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl106503106886_))
                                          (let ((_e106593106635_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl106503106886_))))
                                            (let ((_tl106591106640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e106593106635_)))
                                                  (_hd106592106638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e106593106635_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd106592106638_))
                                                  (let ((_e106596106643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd106592106638_))))
                                                    (let ((_tl106594106648_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e106596106643_)))
                                                          (_hd106595106646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e106596106643_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd106595106646_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd106595106646_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl106594106648_))
                          (let ((_e106599106651_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl106594106648_))))
                            (let ((_tl106597106656_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e106599106651_)))
                                  (_hd106598106654_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e106599106651_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd106598106654_))
                                  (let ((_e106602106659_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd106598106654_))))
                                    (let ((_tl106600106664_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e106602106659_)))
                                          (_hd106601106662_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e106602106659_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd106601106662_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd106601106662_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl106600106664_))
                                                  (let ((_e106605106667_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl106600106664_))))
                                                    (let ((_tl106603106672_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e106605106667_)))
                                                          (_hd106604106670_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e106605106667_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl106603106672_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl106597106656_))
                      (let ((_e106608106675_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl106597106656_))))
                        (let ((_tl106606106680_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106608106675_)))
                              (_hd106607106678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106608106675_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd106607106678_))
                              (let ((_e106611106683_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd106607106678_))))
                                (let ((_tl106609106688_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106611106683_)))
                                      (_hd106610106686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106611106683_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd106610106686_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd106610106686_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106609106688_))
                                              (let ((_e106614106691_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106609106688_))))
                                                (let ((_tl106612106696_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106614106691_)))
                                                      (_hd106613106694_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106614106691_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106612106696_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl106606106680_))
                                                          (let ((_e106617106699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl106606106680_))))
                    (let ((_tl106615106704_
                           (let ()
                             (declare (not safe))
                             (##cdr _e106617106699_)))
                          (_hd106616106702_
                           (let ()
                             (declare (not safe))
                             (##car _e106617106699_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl106615106704_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl106591106640_))
                              (___kont109574109575_
                               _hd106613106694_
                               _hd106604106670_
                               _hd106504106884_)
                              (let () (declare (not safe)) (_g106498106622_)))
                          (let () (declare (not safe)) (_g106498106622_)))))
                  (let () (declare (not safe)) (_g106498106622_)))
              (let () (declare (not safe)) (_g106498106622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106498106622_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g106498106622_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g106498106622_)))))
                              (let ()
                                (declare (not safe))
                                (_g106498106622_)))))
                      (let () (declare (not safe)) (_g106498106622_)))
                  (let () (declare (not safe)) (_g106498106622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g106498106622_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g106498106622_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g106498106622_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g106498106622_)))))
                          (let () (declare (not safe)) (_g106498106622_)))
                      (let () (declare (not safe)) (_g106498106622_)))
                  (let () (declare (not safe)) (_g106498106622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g106498106622_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g106498106622_))))))
                              (let ()
                                (declare (not safe))
                                (_g106498106622_))))))))
                 (_generate1106344_
                  (lambda (_args106479_ _arglen106480_ _hd106481_ _body106482_)
                    (let* ((_len106484_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd106481_)))
                           (_condition106486_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd106481_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (cons '##fx=
                                          (cons _arglen106480_
                                                (cons _len106484_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _arglen106480_ (cons _len106484_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _len106484_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (cons '##fx>=
                                              (cons _arglen106480_
                                                    (cons _len106484_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _arglen106480_ (cons _len106484_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_dispatch106488_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?106342_
                                   _hd106481_
                                   _body106482_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e106343_
                                   _hd106481_
                                   _body106482_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self106339_
                                   _hd106481_
                                   _body106482_)))))
                      (cons _condition106486_
                            (cons (cons 'apply
                                        (cons _dispatch106488_
                                              (cons _args106479_ '())))
                                  '()))))))
          (let* ((_g106346106374_
                  (lambda (_g106347106371_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106347106371_))))
                 (_g106345106476_
                  (lambda (_g106347106377_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106347106377_))
                        (let ((_e106352106379_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106347106377_))))
                          (let ((_hd106351106382_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106352106379_)))
                                (_tl106350106384_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106352106379_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl106350106384_))
                                (let ((_g110745_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl106350106384_
                                          '0))))
                                  (begin
                                    (let ((_g110746_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g110745_)
                                                 (##vector-length _g110745_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g110746_ 2)))
                                          (error "Context expects 2 values"
                                                 _g110746_)))
                                    (let ((_target106353106387_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g110745_ 0)))
                                          (_tl106355106389_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g110745_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl106355106389_))
                                          (letrec ((_loop106356106392_
                                                    (lambda (_hd106354106395_
                                                             _body106360106397_
                                                             _hd106361106399_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd106354106395_))
                                                          (let ((_e106357106402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd106354106395_))))
                    (let ((_lp-hd106358106405_
                           (let ()
                             (declare (not safe))
                             (##car _e106357106402_)))
                          (_lp-tl106359106407_
                           (let ()
                             (declare (not safe))
                             (##cdr _e106357106402_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd106358106405_))
                          (let ((_e106366106410_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd106358106405_))))
                            (let ((_hd106365106413_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e106366106410_)))
                                  (_tl106364106415_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e106366106410_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl106364106415_))
                                  (let ((_e106369106418_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl106364106415_))))
                                    (let ((_hd106368106421_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e106369106418_)))
                                          (_tl106367106423_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e106369106418_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl106367106423_))
                                          (let ((__tmp110748
                                                 (cons _hd106368106421_
                                                       _body106360106397_))
                                                (__tmp110747
                                                 (cons _hd106365106413_
                                                       _hd106361106399_)))
                                            (declare (not safe))
                                            (_loop106356106392_
                                             _lp-tl106359106407_
                                             __tmp110748
                                             __tmp110747))
                                          (let ()
                                            (declare (not safe))
                                            (_g106346106374_
                                             _g106347106377_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g106346106374_ _g106347106377_)))))
                          (let ()
                            (declare (not safe))
                            (_g106346106374_ _g106347106377_)))))
                  (let ((_body106362106426_ (reverse _body106360106397_))
                        (_hd106363106428_ (reverse _hd106361106399_)))
                    ((lambda (_L106431_ _L106432_)
                       (let ((_args106451_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen106452_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name106453_
                              (let ((_$e106448_
                                     (let ((__tmp110749
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp110749 _stx106340_))))
                                (if _$e106448_
                                    _$e106448_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _args106451_
                                     (cons (cons 'let
                                                 (cons (cons (cons _arglen106452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (let ()
                                       (declare (not safe))
                                       (gxc#current-compile-decls-unsafe?))
                                     (cons '##length (cons _args106451_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _args106451_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp110753
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _name106453_
                                                                (cons _args106451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp110750
                                  (map (lambda (_g106454106457_
                                                _g106455106459_)
                                         (let ()
                                           (declare (not safe))
                                           (_generate1106344_
                                            _args106451_
                                            _arglen106452_
                                            _g106454106457_
                                            _g106455106459_)))
                                       (let ((__tmp110751
                                              (lambda (_g106461106464_
                                                       _g106462106466_)
                                                (cons _g106461106464_
                                                      _g106462106466_))))
                                         (declare (not safe))
                                         (__foldr1 __tmp110751 '() _L106432_))
                                       (let ((__tmp110752
                                              (lambda (_g106468106471_
                                                       _g106469106473_)
                                                (cons _g106468106471_
                                                      _g106469106473_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp110752
                                          '()
                                          _L106431_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp110753 __tmp110750)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _body106362106426_
                     _hd106363106428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop106356106392_
                                               _target106353106387_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g106346106374_
                                             _g106347106377_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g106346106374_ _g106347106377_)))))
                        (let ()
                          (declare (not safe))
                          (_g106346106374_ _g106347106377_))))))
            (declare (not safe))
            (_g106345106476_ _stx106340_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self105610_ _stx105611_ _compiled-body?105612_)
        (letrec ((_generate-simple105614_
                  (lambda (_hd106324_ _body106325_)
                    (let ((__tmp110754
                           (let ((__tmp110755
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self105610_
                                     'let
                                     _hd106324_
                                     _body106325_
                                     _compiled-body?105612_))))
                             (declare (not safe))
                             (_coalesce-let*105616_ __tmp110755))))
                      (declare (not safe))
                      (_coalesce-boolean105615_ __tmp110754))))
                 (_coalesce-boolean105615_
                  (lambda (_code106185_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code106186106212_ _code106185_)
                               (_else106188106220_ (lambda () _code106185_))
                               (_K106190106257_
                                (lambda (_expr2106223_
                                         _expr1106224_
                                         _id106225_)
                                  (let* ((_expr2106226106234_ _expr2106223_)
                                         (_else106228106242_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _expr1106224_
                                                        (cons _expr2106223_
                                                              '())))))
                                         (_K106230106247_
                                          (lambda (_exprs106245_)
                                            (cons 'or
                                                  (cons _expr1106224_
                                                        _exprs106245_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2106226106234_))
                                        (let ((_hd106231106250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2106226106234_)))
                                              (_tl106232106252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2106226106234_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd106231106250_ 'or))
                                              (let ((_exprs106255_
                                                     _tl106232106252_))
                                                (declare (not safe))
                                                (_K106230106247_
                                                 _exprs106255_))
                                              (let ()
                                                (declare (not safe))
                                                (_else106228106242_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else106228106242_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code106186106212_))
                              (let ((_hd106191106260_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code106186106212_)))
                                    (_tl106192106262_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code106186106212_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd106191106260_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl106192106262_))
                                        (let ((_hd106193106265_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl106192106262_)))
                                              (_tl106194106267_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl106192106262_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd106193106265_))
                                              (let ((_hd106205106270_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd106193106265_)))
                                                    (_tl106206106272_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd106193106265_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd106205106270_))
                                                    (let ((_hd106207106275_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd106205106270_)))
                                                          (_tl106208106277_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd106205106270_))))
                                                      (let ((_id106280_
                                                             _hd106207106275_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl106208106277_))
                                                            (let ((_hd106209106282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl106208106277_)))
                          (_tl106210106284_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl106208106277_))))
                      (let ((_expr1106287_ _hd106209106282_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl106210106284_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl106206106272_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl106194106267_))
                                    (let ((_hd106195106289_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl106194106267_)))
                                          (_tl106196106291_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl106194106267_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd106195106289_))
                                          (let ((_hd106197106294_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd106195106289_)))
                                                (_tl106198106296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd106195106289_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd106197106294_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl106198106296_))
                                                    (let ((_hd106199106299_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl106198106296_)))
                                                          (_tl106200106301_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl106198106296_))))
                                                      (if ((lambda (_g106303106305_)
                                                             (eq? _g106303106305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _id106280_))
                   _hd106199106299_)
                  (if (let () (declare (not safe)) (##pair? _tl106200106301_))
                      (let ((_hd106201106308_
                             (let ()
                               (declare (not safe))
                               (##car _tl106200106301_)))
                            (_tl106202106310_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl106200106301_))))
                        (if ((lambda (_g106312106314_)
                               (eq? _g106312106314_ _id106280_))
                             _hd106201106308_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl106202106310_))
                                (let ((_hd106203106317_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl106202106310_)))
                                      (_tl106204106319_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl106202106310_))))
                                  (let ((_expr2106322_ _hd106203106317_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl106204106319_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl106196106291_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106190106257_
                                               _expr2106322_
                                               _expr1106287_
                                               _id106280_))
                                            (let ()
                                              (declare (not safe))
                                              (_else106188106220_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else106188106220_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else106188106220_)))
                            (let ()
                              (declare (not safe))
                              (_else106188106220_))))
                      (let () (declare (not safe)) (_else106188106220_)))
                  (let () (declare (not safe)) (_else106188106220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106188106220_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else106188106220_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else106188106220_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else106188106220_)))
                                (let ()
                                  (declare (not safe))
                                  (_else106188106220_)))
                            (let ()
                              (declare (not safe))
                              (_else106188106220_)))))
                    (let () (declare (not safe)) (_else106188106220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106188106220_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else106188106220_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else106188106220_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else106188106220_))))
                              (let ()
                                (declare (not safe))
                                (_else106188106220_))))
                        _code106185_)))
                 (_coalesce-let*105616_
                  (lambda (_code105918_)
                    (let* ((_code105919105983_ _code105918_)
                           (_else105923105991_ (lambda () _code105918_)))
                      (let ((_K105965106136_
                             (lambda (_body106132_ _expr106133_ _id106134_)
                               (cons 'let
                                     (cons (cons (cons _id106134_
                                                       (cons _expr106133_ '()))
                                                 '())
                                           _body106132_))))
                            (_K105942106061_
                             (lambda (_body106055_
                                      _expr2106056_
                                      _id2106057_
                                      _expr1106058_
                                      _id1106059_)
                               (cons 'let*
                                     (cons (cons (cons _id1106059_
                                                       (cons _expr1106058_
                                                             '()))
                                                 (cons (cons _id2106057_
                                                             (cons _expr2106056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _body106055_))))
                            (_K105925106000_
                             (lambda (_body105995_
                                      _bind105996_
                                      _expr1105997_
                                      _id1105998_)
                               (cons 'let*
                                     (cons (cons (cons _id1105998_
                                                       (cons _expr1105997_
                                                             '()))
                                                 _bind105996_)
                                           _body105995_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code105919105983_))
                            (let ((_tl105967106141_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code105919105983_)))
                                  (_hd105966106139_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code105919105983_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd105966106139_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl105967106141_))
                                      (let ((_tl105969106146_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl105967106141_)))
                                            (_hd105968106144_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl105967106141_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd105968106144_))
                                            (let ((_tl105977106151_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd105968106144_)))
                                                  (_hd105976106149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd105968106144_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd105976106149_))
                                                  (let ((_tl105979106156_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd105976106149_)))
                                                        (_hd105978106154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd105976106149_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl105979106156_))
                                                        (let ((_tl105981106163_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl105979106156_)))
                      (_hd105980106161_
                       (let () (declare (not safe)) (##car _tl105979106156_))))
                  (if (let () (declare (not safe)) (##null? _tl105981106163_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl105977106151_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl105969106146_))
                              (let ((_tl105971106170_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl105969106146_)))
                                    (_hd105970106168_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl105969106146_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd105970106168_))
                                    (let ((_tl105973106175_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd105970106168_)))
                                          (_hd105972106173_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd105970106168_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd105972106173_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl105973106175_))
                                              (let ((_tl105975106180_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl105973106175_)))
                                                    (_hd105974106178_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl105973106175_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd105974106178_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl105971106170_))
                                                        (let ((_id106159_
                                                               _hd105978106154_)
                                                              (_expr106166_
                                                               _hd105980106161_)
                                                              (_body106183_
                                                               _tl105975106180_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K105965106136_
                                                             _body106183_
                                                             _expr106166_
                                                             _id106159_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else105923105991_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd105974106178_))
                                                        (let ((_tl105954106110_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd105974106178_)))
                      (_hd105953106108_
                       (let () (declare (not safe)) (##car _hd105974106178_))))
                  (if (let () (declare (not safe)) (##pair? _hd105953106108_))
                      (let ((_tl105956106115_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd105953106108_)))
                            (_hd105955106113_
                             (let ()
                               (declare (not safe))
                               (##car _hd105953106108_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl105956106115_))
                            (let ((_tl105958106122_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl105956106115_)))
                                  (_hd105957106120_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl105956106115_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl105958106122_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl105954106110_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl105971106170_))
                                          (let ((_id1106084_ _hd105978106154_)
                                                (_expr1106091_
                                                 _hd105980106161_)
                                                (_id2106118_ _hd105955106113_)
                                                (_expr2106125_
                                                 _hd105957106120_)
                                                (_body106127_
                                                 _tl105975106180_))
                                            (let ()
                                              (declare (not safe))
                                              (_K105942106061_
                                               _body106127_
                                               _expr2106125_
                                               _id2106118_
                                               _expr1106091_
                                               _id1106084_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else105923105991_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else105923105991_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else105923105991_))))
                            (let ()
                              (declare (not safe))
                              (_else105923105991_))))
                      (let () (declare (not safe)) (_else105923105991_))))
                (let () (declare (not safe)) (_else105923105991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else105923105991_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd105972106173_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl105973106175_))
                                                  (let ((_tl105935106044_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl105973106175_)))
                                                        (_hd105934106042_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl105973106175_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl105971106170_))
                                                        (let ((_id1106023_
                                                               _hd105978106154_)
                                                              (_expr1106030_
                                                               _hd105980106161_)
                                                              (_bind106047_
                                                               _hd105934106042_)
                                                              (_body106049_
                                                               _tl105935106044_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K105925106000_
                                                             _body106049_
                                                             _bind106047_
                                                             _expr1106030_
                                                             _id1106023_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else105923105991_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else105923105991_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else105923105991_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else105923105991_))))
                              (let ()
                                (declare (not safe))
                                (_else105923105991_)))
                          (let () (declare (not safe)) (_else105923105991_)))
                      (let () (declare (not safe)) (_else105923105991_))))
                (let () (declare (not safe)) (_else105923105991_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else105923105991_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else105923105991_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else105923105991_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else105923105991_))))
                            (let ()
                              (declare (not safe))
                              (_else105923105991_)))))))
                 (_generate-values105617_
                  (lambda (_hd105731_ _body105732_)
                    (let _lp105734_ ((_rest105736_ _hd105731_)
                                     (_bind105737_ '())
                                     (_check105738_ '())
                                     (_post105739_ '()))
                      (let* ((___stx109873109874_ _rest105736_)
                             (_g105742105753_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx109873109874_)))))
                        (let ((___kont109875109876_
                               (lambda (_L105780_ _L105781_)
                                 (let* ((___stx109829109830_ _L105781_)
                                        (_g105796105821_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx109829109830_)))))
                                   (let ((___kont109831109832_
                                          (lambda (_L105894_ _L105895_)
                                            (let ((_eid105909_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L105895_)))
                                                  (_expr105910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105610_
                                                      _L105894_))))
                                              (let ((__tmp110756
                                                     (cons (cons _eid105909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr105910_ '()))
                   _bind105737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp105734_
                                                 _L105780_
                                                 __tmp110756
                                                 _check105738_
                                                 _post105739_)))))
                                         (___kont109833109834_
                                          (lambda (_L105842_ _L105843_)
                                            (let* ((_vals105856_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values105858_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals105856_
                                                       _L105843_
                                                       _L105842_)))
                                                   (_refs105860_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals105856_
                                                       _L105843_)))
                                                   (_expr105862_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self105610_
                                                       _L105842_))))
                                              (let ((__tmp110759
                                                     (cons (cons _vals105856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr105862_ '()))
                   _bind105737_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp110758
                                                     (cons _check-values105858_
                                                           _check105738_))
                                                    (__tmp110757
                                                     (cons _refs105860_
                                                           _post105739_)))
                                                (declare (not safe))
                                                (_lp105734_
                                                 _L105780_
                                                 __tmp110759
                                                 __tmp110758
                                                 __tmp110757))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx109829109830_))
                                         (let ((_e105802105870_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx109829109830_))))
                                           (let ((_tl105800105875_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e105802105870_)))
                                                 (_hd105801105873_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e105802105870_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd105801105873_))
                                                 (let ((_e105805105878_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd105801105873_))))
                                                   (let ((_tl105803105883_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105805105878_)))
                                                         (_hd105804105881_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105805105878_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105803105883_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105800105875_))
                     (let ((_e105808105886_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105800105875_))))
                       (let ((_tl105806105891_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105808105886_)))
                             (_hd105807105889_
                              (let ()
                                (declare (not safe))
                                (##car _e105808105886_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105806105891_))
                             (___kont109831109832_
                              _hd105807105889_
                              _hd105804105881_)
                             (let () (declare (not safe)) (_g105796105821_)))))
                     (let () (declare (not safe)) (_g105796105821_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl105800105875_))
                     (let ((_e105816105834_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105800105875_))))
                       (let ((_tl105814105839_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105816105834_)))
                             (_hd105815105837_
                              (let ()
                                (declare (not safe))
                                (##car _e105816105834_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105814105839_))
                             (___kont109833109834_
                              _hd105815105837_
                              _hd105801105873_)
                             (let () (declare (not safe)) (_g105796105821_)))))
                     (let () (declare (not safe)) (_g105796105821_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105800105875_))
                                                     (let ((_e105816105834_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105800105875_))))
                                                       (let ((_tl105814105839_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105816105834_)))
                     (_hd105815105837_
                      (let () (declare (not safe)) (##car _e105816105834_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105814105839_))
                     (___kont109833109834_ _hd105815105837_ _hd105801105873_)
                     (let () (declare (not safe)) (_g105796105821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105796105821_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g105796105821_)))))))
                              (___kont109877109878_
                               (lambda ()
                                 (let* ((_body105760_
                                         (if _compiled-body?105612_
                                             _body105732_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self105610_
                                                _body105732_))))
                                        (_body105762_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post105618_
                                            _post105739_
                                            _body105760_)))
                                        (_body105764_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check105619_
                                            _check105738_
                                            _body105762_))))
                                   (cons 'let
                                         (cons (reverse _bind105737_)
                                               (cons _body105764_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx109873109874_))
                              (let ((_e105748105772_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx109873109874_))))
                                (let ((_tl105746105777_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105748105772_)))
                                      (_hd105747105775_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105748105772_))))
                                  (___kont109875109876_
                                   _tl105746105777_
                                   _hd105747105775_)))
                              (___kont109877109878_)))))))
                 (_generate-values-post105618_
                  (lambda (_post105690_ _body105691_)
                    (let _lp105693_ ((_rest105695_ _post105690_)
                                     (_body105696_ _body105691_))
                      (let* ((_rest105697105705_ _rest105695_)
                             (_else105699105713_ (lambda () _body105696_))
                             (_K105701105719_
                              (lambda (_rest105716_ _bind105717_)
                                (let ((__tmp110760
                                       (cons 'let
                                             (cons _bind105717_
                                                   (cons _body105696_ '())))))
                                  (declare (not safe))
                                  (_lp105693_ _rest105716_ __tmp110760)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest105697105705_))
                            (let ((_hd105702105722_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest105697105705_)))
                                  (_tl105703105724_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest105697105705_))))
                              (let* ((_bind105727_ _hd105702105722_)
                                     (_rest105729_ _tl105703105724_))
                                (declare (not safe))
                                (_K105701105719_ _rest105729_ _bind105727_)))
                            (let ()
                              (declare (not safe))
                              (_else105699105713_)))))))
                 (_generate-values-check105619_
                  (lambda (_check105687_ _body105688_)
                    (cons 'begin
                          (let ((__tmp110762 (cons _body105688_ '()))
                                (__tmp110761 (reverse _check105687_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp110762 __tmp110761))))))
          (let* ((_g105621105638_
                  (lambda (_g105622105635_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105622105635_))))
                 (_g105620105684_
                  (lambda (_g105622105641_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105622105641_))
                        (let ((_e105627105643_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105622105641_))))
                          (let ((_hd105626105646_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105627105643_)))
                                (_tl105625105648_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105627105643_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105625105648_))
                                (let ((_e105630105651_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105625105648_))))
                                  (let ((_hd105629105654_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105630105651_)))
                                        (_tl105628105656_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105630105651_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105628105656_))
                                        (let ((_e105633105659_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105628105656_))))
                                          (let ((_hd105632105662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105633105659_)))
                                                (_tl105631105664_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105633105659_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl105631105664_))
                                                ((lambda (_L105667_ _L105668_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L105668_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple105614_
                                                          _L105668_
                                                          _L105667_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values105617_
                                                          _L105668_
                                                          _L105667_))))
                                                 _hd105632105662_
                                                 _hd105629105654_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105621105638_
                                                   _g105622105641_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105621105638_ _g105622105641_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105621105638_ _g105622105641_)))))
                        (let ()
                          (declare (not safe))
                          (_g105621105638_ _g105622105641_))))))
            (declare (not safe))
            (_g105620105684_ _stx105611_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self106330_ _stx106331_)
        (let ((_compiled-body?106333_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self106330_
           _stx106331_
           _compiled-body?106333_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g110764_
        (let ((_g110763_ (let () (declare (not safe)) (##length _g110764_))))
          (cond ((let () (declare (not safe)) (##fx= _g110763_ 2))
                 (apply (lambda (_self106330_ _stx106331_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self106330_
                             _stx106331_)))
                        _g110764_))
                ((let () (declare (not safe)) (##fx= _g110763_ 3))
                 (apply (lambda (_self106335_
                                 _stx106336_
                                 _compiled-body?106337_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self106335_
                             _stx106336_
                             _compiled-body?106337_)))
                        _g110764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g110764_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals105504_ _hd105505_)
        (let _lp105507_ ((_rest105509_ _hd105505_)
                         (_k105510_ '0)
                         (_r105511_ '()))
          (let* ((___stx109887109888_ _rest105509_)
                 (_g105516105533_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx109887109888_)))))
            (let ((___kont109889109890_
                   (lambda (_L105596_)
                     (let ((__tmp110765
                            (let ()
                              (declare (not safe))
                              (##fx+ _k105510_ '1))))
                       (declare (not safe))
                       (_lp105507_ _L105596_ __tmp110765 _r105511_))))
                  (___kont109891109892_
                   (lambda (_L105569_ _L105570_)
                     (let ((__tmp110767
                            (let () (declare (not safe)) (##fx+ _k105510_ '1)))
                           (__tmp110766
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _L105570_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values-ref
                                                 _vals105504_
                                                 _k105510_
                                                 _L105569_))
                                              '()))
                                  _r105511_)))
                       (declare (not safe))
                       (_lp105507_ _L105569_ __tmp110767 __tmp110766))))
                  (___kont109893109894_
                   (lambda (_L105545_)
                     (let ((__tmp110768
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _L105545_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#generate-runtime-values->list
                                                 _vals105504_
                                                 _k105510_))
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp110768 _r105511_))))
                  (___kont109895109896_ (lambda () (reverse _r105511_))))
              (let ((_g105514105556_
                     (lambda ()
                       (let ((_L105545_ ___stx109887109888_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L105545_))
                             (___kont109893109894_ _L105545_)
                             (___kont109895109896_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx109887109888_))
                    (let ((_e105521105585_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx109887109888_))))
                      (let ((_tl105519105590_
                             (let ()
                               (declare (not safe))
                               (##cdr _e105521105585_)))
                            (_hd105520105588_
                             (let ()
                               (declare (not safe))
                               (##car _e105521105585_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd105520105588_))
                            (let ((_e105522105593_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd105520105588_))))
                              (if (equal? _e105522105593_ '#f)
                                  (___kont109889109890_ _tl105519105590_)
                                  (___kont109891109892_
                                   _tl105519105590_
                                   _hd105520105588_)))
                            (___kont109891109892_
                             _tl105519105590_
                             _hd105520105588_))))
                    (let () (declare (not safe)) (_g105514105556_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self105183_ _stx105184_ _compiled-body?105185_)
        (letrec ((_generate-simple105187_
                  (lambda (_hd105489_ _body105490_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self105183_
                       'letrec
                       _hd105489_
                       _body105490_
                       _compiled-body?105185_))))
                 (_generate-values105188_
                  (lambda (_hd105268_ _body105269_)
                    (let _lp105271_ ((_rest105273_ _hd105268_)
                                     (_bind105274_ '())
                                     (_check105275_ '())
                                     (_post105276_ '()))
                      (let* ((___stx109961109962_ _rest105273_)
                             (_g105279105290_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx109961109962_)))))
                        (let ((___kont109963109964_
                               (lambda (_L105317_ _L105318_)
                                 (let* ((___stx109917109918_ _L105318_)
                                        (_g105333105358_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx109917109918_)))))
                                   (let ((___kont109919109920_
                                          (lambda (_L105465_ _L105466_)
                                            (let ((_eid105480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L105466_)))
                                                  (_expr105481_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105183_
                                                      _L105465_))))
                                              (let ((__tmp110769
                                                     (cons (cons _eid105480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _expr105481_ '()))
                   _bind105274_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp105271_
                                                 _L105317_
                                                 __tmp110769
                                                 _check105275_
                                                 _post105276_)))))
                                         (___kont109921109922_
                                          (lambda (_L105379_ _L105380_)
                                            (let* ((_vals105393_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values105395_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals105393_
                                                       _L105380_
                                                       _L105379_)))
                                                   (_refs105397_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals105393_
                                                       _L105380_)))
                                                   (_expr105399_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self105183_
                                                       _L105379_))))
                                              (let ((__tmp110772
                                                     (let ((__tmp110774
                                                            (cons (cons _vals105393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons _expr105399_ '()))
                          _bind105274_))
                   (__tmp110773
                    (map (lambda (_e105401105403_)
                           (let* ((_g105405105414_ _e105401105403_)
                                  (_E105407105418_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g105405105414_))))
                                  (_K105408105423_
                                   (lambda (_eid105421_)
                                     (cons _eid105421_ (cons '#!void '())))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g105405105414_))
                                 (let ((_hd105409105426_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g105405105414_)))
                                       (_tl105410105428_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g105405105414_))))
                                   (let ((_eid105431_ _hd105409105426_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl105410105428_))
                                         (let ((_tl105412105433_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl105410105428_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl105412105433_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K105408105423_ _eid105431_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E105407105418_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E105407105418_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E105407105418_)))))
                         _refs105397_)))
               (declare (not safe))
               (__foldl1 cons __tmp110774 __tmp110773)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp110771
                                                     (cons _check-values105395_
                                                           _check105275_))
                                                    (__tmp110770
                                                     (let ()
                                                       (declare (not safe))
                                                       (__foldl1
                                                        cons
                                                        _refs105397_
                                                        _post105276_))))
                                                (declare (not safe))
                                                (_lp105271_
                                                 _L105317_
                                                 __tmp110772
                                                 __tmp110771
                                                 __tmp110770))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx109917109918_))
                                         (let ((_e105339105441_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx109917109918_))))
                                           (let ((_tl105337105446_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e105339105441_)))
                                                 (_hd105338105444_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e105339105441_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd105338105444_))
                                                 (let ((_e105342105449_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd105338105444_))))
                                                   (let ((_tl105340105454_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105342105449_)))
                                                         (_hd105341105452_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105342105449_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105340105454_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105337105446_))
                     (let ((_e105345105457_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105337105446_))))
                       (let ((_tl105343105462_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105345105457_)))
                             (_hd105344105460_
                              (let ()
                                (declare (not safe))
                                (##car _e105345105457_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105343105462_))
                             (___kont109919109920_
                              _hd105344105460_
                              _hd105341105452_)
                             (let () (declare (not safe)) (_g105333105358_)))))
                     (let () (declare (not safe)) (_g105333105358_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl105337105446_))
                     (let ((_e105353105371_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105337105446_))))
                       (let ((_tl105351105376_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105353105371_)))
                             (_hd105352105374_
                              (let ()
                                (declare (not safe))
                                (##car _e105353105371_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105351105376_))
                             (___kont109921109922_
                              _hd105352105374_
                              _hd105338105444_)
                             (let () (declare (not safe)) (_g105333105358_)))))
                     (let () (declare (not safe)) (_g105333105358_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105337105446_))
                                                     (let ((_e105353105371_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105337105446_))))
                                                       (let ((_tl105351105376_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105353105371_)))
                     (_hd105352105374_
                      (let () (declare (not safe)) (##car _e105353105371_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105351105376_))
                     (___kont109921109922_ _hd105352105374_ _hd105338105444_)
                     (let () (declare (not safe)) (_g105333105358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105333105358_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g105333105358_)))))))
                              (___kont109965109966_
                               (lambda ()
                                 (let* ((_body105297_
                                         (if _compiled-body?105185_
                                             _body105269_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self105183_
                                                _body105269_))))
                                        (_body105299_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post105190_
                                            _post105276_
                                            _body105297_)))
                                        (_body105301_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check105189_
                                            _check105275_
                                            _body105299_))))
                                   (cons 'letrec
                                         (cons (reverse _bind105274_)
                                               (cons _body105301_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx109961109962_))
                              (let ((_e105285105309_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx109961109962_))))
                                (let ((_tl105283105314_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105285105309_)))
                                      (_hd105284105312_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105285105309_))))
                                  (___kont109963109964_
                                   _tl105283105314_
                                   _hd105284105312_)))
                              (___kont109965109966_)))))))
                 (_generate-values-check105189_
                  (lambda (_check105265_ _body105266_)
                    (cons 'begin
                          (let ((__tmp110776 (cons _body105266_ '()))
                                (__tmp110775 (reverse _check105265_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp110776 __tmp110775)))))
                 (_generate-values-post105190_
                  (lambda (_post105258_ _body105259_)
                    (cons 'begin
                          (let ((__tmp110780 (cons _body105259_ '()))
                                (__tmp110777
                                 (let ((__tmp110779
                                        (lambda (_g105260105262_)
                                          (cons 'set! _g105260105262_)))
                                       (__tmp110778 (reverse _post105258_)))
                                   (declare (not safe))
                                   (##map __tmp110779 __tmp110778))))
                            (declare (not safe))
                            (__foldr1 cons __tmp110780 __tmp110777))))))
          (let* ((_g105192105209_
                  (lambda (_g105193105206_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105193105206_))))
                 (_g105191105255_
                  (lambda (_g105193105212_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105193105212_))
                        (let ((_e105198105214_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105193105212_))))
                          (let ((_hd105197105217_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105198105214_)))
                                (_tl105196105219_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105198105214_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105196105219_))
                                (let ((_e105201105222_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105196105219_))))
                                  (let ((_hd105200105225_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105201105222_)))
                                        (_tl105199105227_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105201105222_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105199105227_))
                                        (let ((_e105204105230_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105199105227_))))
                                          (let ((_hd105203105233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105204105230_)))
                                                (_tl105202105235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105204105230_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl105202105235_))
                                                ((lambda (_L105238_ _L105239_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L105239_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple105187_
                                                          _L105239_
                                                          _L105238_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values105188_
                                                          _L105239_
                                                          _L105238_))))
                                                 _hd105203105233_
                                                 _hd105200105225_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105192105209_
                                                   _g105193105212_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105192105209_ _g105193105212_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105192105209_ _g105193105212_)))))
                        (let ()
                          (declare (not safe))
                          (_g105192105209_ _g105193105212_))))))
            (declare (not safe))
            (_g105191105255_ _stx105184_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self105495_ _stx105496_)
        (let ((_compiled-body?105498_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self105495_
           _stx105496_
           _compiled-body?105498_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g110782_
        (let ((_g110781_ (let () (declare (not safe)) (##length _g110782_))))
          (cond ((let () (declare (not safe)) (##fx= _g110781_ 2))
                 (apply (lambda (_self105495_ _stx105496_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self105495_
                             _stx105496_)))
                        _g110782_))
                ((let () (declare (not safe)) (##fx= _g110781_ 3))
                 (apply (lambda (_self105500_
                                 _stx105501_
                                 _compiled-body?105502_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self105500_
                             _stx105501_
                             _compiled-body?105502_)))
                        _g110782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g110782_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self104764_ _stx104765_)
        (letrec ((_generate-values104767_
                  (lambda (_hd105010_ _body105011_)
                    (let _lp105013_ ((_rest105015_ _hd105010_)
                                     (_bind105016_ '()))
                      (let* ((_rest105017105025_ _rest105015_)
                             (_else105019105036_
                              (lambda ()
                                (let ((_bind105033_ (reverse _bind105016_))
                                      (_body105034_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self104764_
                                          _body105011_))))
                                  (cons 'letrec*
                                        (cons _bind105033_
                                              (cons _body105034_ '()))))))
                             (_K105021105170_
                              (lambda (_rest105039_ _hd-bind105040_)
                                (let* ((___stx109975109976_ _hd-bind105040_)
                                       (_g105043105068_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx109975109976_)))))
                                  (let ((___kont109977109978_
                                         (lambda (_L105149_ _L105150_)
                                           (let ((_eid105164_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L105150_)))
                                                 (_expr105165_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self104764_
                                                     _L105149_))))
                                             (let ((__tmp110783
                                                    (cons (cons _eid105164_
                                                                (cons _expr105165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _bind105016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp105013_
                                                _rest105039_
                                                __tmp110783)))))
                                        (___kont109979109980_
                                         (lambda (_L105089_ _L105090_)
                                           (let* ((_vals105109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp105111_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values105113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp105111_
                                                      _L105090_
                                                      _L105089_)))
                                                  (_refs105115_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals105109_
                                                      _L105090_)))
                                                  (_expr105117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self104764_
                                                      _L105089_))))
                                             (let ((__tmp110784
                                                    (let ((__tmp110785
                                                           (cons (cons _vals105109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'let
                                           (cons (cons (cons _tmp105111_
                                                             (cons _expr105117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _check-values105113_
                                                       (cons _tmp105111_
                                                             '()))))
                                     '()))
                         _bind105016_)))
              (declare (not safe))
              (__foldl1 cons __tmp110785 _refs105115_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp105013_
                                                _rest105039_
                                                __tmp110784))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx109975109976_))
                                        (let ((_e105049105125_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx109975109976_))))
                                          (let ((_tl105047105130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105049105125_)))
                                                (_hd105048105128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105049105125_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd105048105128_))
                                                (let ((_e105052105133_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd105048105128_))))
                                                  (let ((_tl105050105138_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105052105133_)))
                                                        (_hd105051105136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105052105133_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105050105138_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl105047105130_))
                                                            (let ((_e105055105141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl105047105130_))))
                      (let ((_tl105053105146_
                             (let ()
                               (declare (not safe))
                               (##cdr _e105055105141_)))
                            (_hd105054105144_
                             (let ()
                               (declare (not safe))
                               (##car _e105055105141_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl105053105146_))
                            (___kont109977109978_
                             _hd105054105144_
                             _hd105051105136_)
                            (let () (declare (not safe)) (_g105043105068_)))))
                    (let () (declare (not safe)) (_g105043105068_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl105047105130_))
                    (let ((_e105063105081_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl105047105130_))))
                      (let ((_tl105061105086_
                             (let ()
                               (declare (not safe))
                               (##cdr _e105063105081_)))
                            (_hd105062105084_
                             (let ()
                               (declare (not safe))
                               (##car _e105063105081_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl105061105086_))
                            (___kont109979109980_
                             _hd105062105084_
                             _hd105048105128_)
                            (let () (declare (not safe)) (_g105043105068_)))))
                    (let () (declare (not safe)) (_g105043105068_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl105047105130_))
                                                    (let ((_e105063105081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl105047105130_))))
                                                      (let ((_tl105061105086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e105063105081_)))
                    (_hd105062105084_
                     (let () (declare (not safe)) (##car _e105063105081_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl105061105086_))
                    (___kont109979109980_ _hd105062105084_ _hd105048105128_)
                    (let () (declare (not safe)) (_g105043105068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g105043105068_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105043105068_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest105017105025_))
                            (let ((_hd105022105173_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest105017105025_)))
                                  (_tl105023105175_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest105017105025_))))
                              (let* ((_hd-bind105178_ _hd105022105173_)
                                     (_rest105180_ _tl105023105175_))
                                (declare (not safe))
                                (_K105021105170_
                                 _rest105180_
                                 _hd-bind105178_)))
                            (let ()
                              (declare (not safe))
                              (_else105019105036_)))))))
                 (_generate-letrec?104768_
                  (lambda (_hd104900_)
                    (let _lp104902_ ((_rest104904_ _hd104900_))
                      (let* ((_rest104905104913_ _rest104904_)
                             (_else104907104921_ (lambda () '#t))
                             (_K104909104998_
                              (lambda (_rest104924_ _hd-bind104925_)
                                (let* ((_g104927104944_
                                        (lambda (_g104928104941_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g104928104941_))))
                                       (_g104926104995_
                                        (lambda (_g104928104947_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g104928104947_))
                                              (let ((_e104933104949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g104928104947_))))
                                                (let ((_hd104932104952_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e104933104949_)))
                                                      (_tl104931104954_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e104933104949_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd104932104952_))
                                                      (let ((_e104936104957_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd104932104952_))))
                (let ((_hd104935104960_
                       (let () (declare (not safe)) (##car _e104936104957_)))
                      (_tl104934104962_
                       (let () (declare (not safe)) (##cdr _e104936104957_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl104934104962_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl104931104954_))
                          (let ((_e104939104965_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl104931104954_))))
                            (let ((_hd104938104968_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104939104965_)))
                                  (_tl104937104970_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104939104965_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl104937104970_))
                                  ((lambda (_L104973_ _L104974_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?104769_ _L104973_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp104902_ _rest104924_))
                                         '#f))
                                   _hd104938104968_
                                   _hd104935104960_)
                                  (let ()
                                    (declare (not safe))
                                    (_g104927104944_ _g104928104947_)))))
                          (let ()
                            (declare (not safe))
                            (_g104927104944_ _g104928104947_)))
                      (let ()
                        (declare (not safe))
                        (_g104927104944_ _g104928104947_)))))
              (let ()
                (declare (not safe))
                (_g104927104944_ _g104928104947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g104927104944_
                                                 _g104928104947_))))))
                                  (declare (not safe))
                                  (_g104926104995_ _hd-bind104925_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104905104913_))
                            (let ((_hd104910105001_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104905104913_)))
                                  (_tl104911105003_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104905104913_))))
                              (let* ((_hd-bind105006_ _hd104910105001_)
                                     (_rest105008_ _tl104911105003_))
                                (declare (not safe))
                                (_K104909104998_
                                 _rest105008_
                                 _hd-bind105006_)))
                            (let ()
                              (declare (not safe))
                              (_else104907104921_)))))))
                 (_is-lambda-expr?104769_
                  (lambda (_expr104837_)
                    (let* ((___stx110019110020_ _expr104837_)
                           (_g104840104854_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx110019110020_)))))
                      (let ((___kont110021110022_
                             (lambda (_L104882_ _L104883_) '#t))
                            (___kont110023110024_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx110019110020_))
                            (let ((_e104846104866_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx110019110020_))))
                              (let ((_tl104844104871_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e104846104866_)))
                                    (_hd104845104869_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e104846104866_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd104845104869_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd104845104869_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl104844104871_))
                                            (let ((_e104849104874_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl104844104871_))))
                                              (let ((_tl104847104879_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e104849104874_)))
                                                    (_hd104848104877_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e104849104874_))))
                                                (___kont110021110022_
                                                 _tl104847104879_
                                                 _hd104848104877_)))
                                            (___kont110023110024_))
                                        (___kont110023110024_))
                                    (___kont110023110024_))))
                            (___kont110023110024_)))))))
          (let* ((_g104771104788_
                  (lambda (_g104772104785_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104772104785_))))
                 (_g104770104834_
                  (lambda (_g104772104791_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104772104791_))
                        (let ((_e104777104793_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104772104791_))))
                          (let ((_hd104776104796_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104777104793_)))
                                (_tl104775104798_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104777104793_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104775104798_))
                                (let ((_e104780104801_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104775104798_))))
                                  (let ((_hd104779104804_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104780104801_)))
                                        (_tl104778104806_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104780104801_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104778104806_))
                                        (let ((_e104783104809_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104778104806_))))
                                          (let ((_hd104782104812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104783104809_)))
                                                (_tl104781104814_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104783104809_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104781104814_))
                                                ((lambda (_L104817_ _L104818_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L104818_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?104768_
                                                              _L104818_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self104764_
                                                              'letrec
                                                              _L104818_
                                                              _L104817_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self104764_
                                                              'letrec*
                                                              _L104818_
                                                              _L104817_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values104767_
                                                          _L104818_
                                                          _L104817_))))
                                                 _hd104782104812_
                                                 _hd104779104804_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104771104788_
                                                   _g104772104791_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104771104788_ _g104772104791_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104771104788_ _g104772104791_)))))
                        (let ()
                          (declare (not safe))
                          (_g104771104788_ _g104772104791_))))))
            (declare (not safe))
            (_g104770104834_ _stx104765_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd104701_)
        (let _lp104703_ ((_rest104705_ _hd104701_))
          (let* ((_rest104706104722_ _rest104705_)
                 (_else104709104730_ (lambda () '#f)))
            (let ((_K104712104743_
                   (lambda (_rest104741_)
                     (let () (declare (not safe)) (_lp104703_ _rest104741_))))
                  (_K104711104735_ (lambda () '#t)))
              (let ((_try-match104708104738_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest104706104722_))
                           (let () (declare (not safe)) (_K104711104735_))
                           (let ()
                             (declare (not safe))
                             (_else104709104730_))))))
                (if (let () (declare (not safe)) (##pair? _rest104706104722_))
                    (let ((_tl104714104748_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest104706104722_)))
                          (_hd104713104746_
                           (let ()
                             (declare (not safe))
                             (##car _rest104706104722_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd104713104746_))
                          (let ((_tl104716104753_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd104713104746_)))
                                (_hd104715104751_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd104713104746_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd104715104751_))
                                (let ((_tl104720104756_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd104715104751_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl104720104756_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl104716104753_))
                                          (let ((_tl104718104759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl104716104753_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl104718104759_))
                                                (let ((_rest104762_
                                                       _tl104714104748_))
                                                  (declare (not safe))
                                                  (_lp104703_ _rest104762_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else104709104730_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else104709104730_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else104709104730_))))
                                (let ()
                                  (declare (not safe))
                                  (_else104709104730_))))
                          (let () (declare (not safe)) (_else104709104730_))))
                    (let ()
                      (declare (not safe))
                      (_try-match104708104738_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self104612_
               _form104613_
               _hd104614_
               _body104615_
               _compiled-body?104616_)
        (letrec ((_generate1104618_
                  (lambda (_bind104657_)
                    (let* ((_bind104658104669_ _bind104657_)
                           (_E104660104673_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind104658104669_))))
                           (_K104661104679_
                            (lambda (_expr104676_ _id104677_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _id104677_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self104612_
                                             _expr104676_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind104658104669_))
                          (let ((_hd104662104682_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind104658104669_)))
                                (_tl104663104684_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind104658104669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd104662104682_))
                                (let ((_hd104666104687_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd104662104682_)))
                                      (_tl104667104689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd104662104682_))))
                                  (let ((_id104692_ _hd104666104687_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl104667104689_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl104663104684_))
                                            (let ((_hd104664104694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl104663104684_)))
                                                  (_tl104665104696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl104663104684_))))
                                              (let ((_expr104699_
                                                     _hd104664104694_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl104665104696_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K104661104679_
                                                       _expr104699_
                                                       _id104692_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E104660104673_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E104660104673_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E104660104673_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E104660104673_))))
                          (let () (declare (not safe)) (_E104660104673_)))))))
          (let* ((_bind104620_ (map _generate1104618_ _hd104614_))
                 (_body104622_
                  (if _compiled-body?104616_
                      _body104615_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self104612_ _body104615_))))
                 (_body104654_
                  (let* ((_body104623104631_ _body104622_)
                         (_else104625104639_
                          (lambda () (cons _body104622_ '())))
                         (_K104627104644_
                          (lambda (_exprs104642_) _exprs104642_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body104623104631_))
                        (let ((_hd104628104647_
                               (let ()
                                 (declare (not safe))
                                 (##car _body104623104631_)))
                              (_tl104629104649_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body104623104631_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd104628104647_ 'begin))
                              (let ((_exprs104652_ _tl104629104649_))
                                (declare (not safe))
                                (_K104627104644_ _exprs104652_))
                              (let ()
                                (declare (not safe))
                                (_else104625104639_))))
                        (let () (declare (not safe)) (_else104625104639_))))))
            (cons _form104613_ (cons _bind104620_ _body104654_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self104519_ _stx104520_)
        (letrec ((_generate1104522_
                  (lambda (_datum104574_)
                    (if (or (let () (declare (not safe)) (null? _datum104574_))
                            (let ()
                              (declare (not safe))
                              (__interned-symbol? _datum104574_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum104574_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum104574_)))
                        _datum104574_
                        (if (uninterned-symbol? _datum104574_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum104574_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum104574_))
                                (cons (let ((__tmp110786 (car _datum104574_)))
                                        (declare (not safe))
                                        (_generate1104522_ __tmp110786))
                                      (let ((__tmp110787 (cdr _datum104574_)))
                                        (declare (not safe))
                                        (_generate1104522_ __tmp110787)))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum104574_))
                                    (box (let ((__tmp110788
                                                (unbox _datum104574_)))
                                           (declare (not safe))
                                           (_generate1104522_ __tmp110788)))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum104574_))
                                        (vector-map
                                         _generate1104522_
                                         _datum104574_)
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (s8vector? _datum104574_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum104574_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s16vector? _datum104574_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u16vector? _datum104574_))
                                                (let ()
                                                  (declare (not safe))
                                                  (s32vector? _datum104574_))
                                                (let ()
                                                  (declare (not safe))
                                                  (u32vector? _datum104574_))
                                                (s64vector? _datum104574_)
                                                (u64vector? _datum104574_)
                                                (let ()
                                                  (declare (not safe))
                                                  (f32vector? _datum104574_))
                                                (let ()
                                                  (declare (not safe))
                                                  (f64vector? _datum104574_)))
                                            _datum104574_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx104520_)))))))))))
          (let* ((_g104524104537_
                  (lambda (_g104525104534_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104525104534_))))
                 (_g104523104571_
                  (lambda (_g104525104540_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104525104540_))
                        (let ((_e104529104542_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104525104540_))))
                          (let ((_hd104528104545_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104529104542_)))
                                (_tl104527104547_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104529104542_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104527104547_))
                                (let ((_e104532104550_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104527104547_))))
                                  (let ((_hd104531104553_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104532104550_)))
                                        (_tl104530104555_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104532104550_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl104530104555_))
                                        ((lambda (_L104558_)
                                           (cons 'quote
                                                 (cons (let ((__tmp110789
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _L104558_))))
                 (declare (not safe))
                 (_generate1104522_ __tmp110789))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd104531104553_)
                                        (let ()
                                          (declare (not safe))
                                          (_g104524104537_ _g104525104540_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104524104537_ _g104525104540_)))))
                        (let ()
                          (declare (not safe))
                          (_g104524104537_ _g104525104540_))))))
            (declare (not safe))
            (_g104523104571_ _stx104520_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self103960_ _stx103961_)
        (letrec ((_compile-call103963_
                  (lambda (_rator104252_ _rands104253_)
                    (let ((_rator104259_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self103960_ _rator104252_)))
                          (_rands104260_
                           (map (lambda (_g104254104256_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self103960_
                                     _g104254104256_)))
                                _rands104253_)))
                      (let* ((___stx110066110067_ _rator104259_)
                             (_g104263104315_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx110066110067_)))))
                        (let ((___kont110068110069_
                               (lambda (_L104439_
                                        _L104440_
                                        _L104441_
                                        _L104442_)
                                 (if (let ((__tmp110792 (length _rands104260_))
                                           (__tmp110790
                                            (length (let ((__tmp110791
                                                           (lambda (_g104478104481_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g104479104483_)
                     (cons _g104478104481_ _g104479104483_))))
              (declare (not safe))
              (__foldr1 __tmp110791 '() _L104441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp110792 __tmp110790))
                                     (let* ((_id104486_ _L104442_)
                                            (_args104495_
                                             (let ((__tmp110793
                                                    (lambda (_g104487104490_
                                                             _g104488104492_)
                                                      (cons _g104487104490_
                                                            _g104488104492_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp110793
                                                '()
                                                _L104441_)))
                                            (_body104504_
                                             (let ((__tmp110794
                                                    (lambda (_g104496104499_
                                                             _g104497104501_)
                                                      (cons _g104496104499_
                                                            _g104497104501_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp110794
                                                '()
                                                _L104440_)))
                                            (_init104506_
                                             (map list
                                                  _args104495_
                                                  _rands104260_)))
                                       (cons 'let
                                             (cons _id104486_
                                                   (cons _init104506_
                                                         _body104504_))))
                                     (let ((__tmp110795
                                            (let ((__tmp110796
                                                   (lambda (_g104508104511_
                                                            _g104509104513_)
                                                     (cons _g104508104511_
                                                           _g104509104513_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp110796
                                               '()
                                               _L104441_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx103961_
                                        __tmp110795
                                        _rands104260_)))))
                              (___kont110074110075_
                               (lambda () (cons _rator104259_ _rands104260_))))
                          (let ((___match110133110134_
                                 (lambda (_e104271104327_
                                          _hd104270104330_
                                          _tl104269104332_
                                          _e104274104335_
                                          _hd104273104338_
                                          _tl104272104340_
                                          _e104277104343_
                                          _hd104276104346_
                                          _tl104275104348_
                                          _e104280104351_
                                          _hd104279104354_
                                          _tl104278104356_
                                          _e104283104359_
                                          _hd104282104362_
                                          _tl104281104364_
                                          _e104286104367_
                                          _hd104285104370_
                                          _tl104284104372_
                                          _e104289104375_
                                          _hd104288104378_
                                          _tl104287104380_
                                          ___splice110070110071_
                                          _target104290104383_
                                          _tl104292104385_)
                                   (letrec ((_loop104293104388_
                                             (lambda (_hd104291104391_
                                                      _arg104297104393_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd104291104391_))
                                                   (let ((_e104294104396_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd104291104391_))))
                                                     (let ((_lp-tl104296104401_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e104294104396_)))
                                                           (_lp-hd104295104399_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e104294104396_))))
                                                       (let ((__tmp110797
                                                              (cons _lp-hd104295104399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _arg104297104393_)))
                 (declare (not safe))
                 (_loop104293104388_ _lp-tl104296104401_ __tmp110797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg104298104404_
                                                          (reverse _arg104297104393_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl104287104380_))
                                                         (let ((___splice110072110073_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl104287104380_ '0))))
                   (let ((_tl104301104409_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice110072110073_ '1)))
                         (_target104299104407_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice110072110073_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl104301104409_))
                         (letrec ((_loop104302104412_
                                   (lambda (_hd104300104415_
                                            _body104306104417_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd104300104415_))
                                         (let ((_e104303104420_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd104300104415_))))
                                           (let ((_lp-tl104305104425_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e104303104420_)))
                                                 (_lp-hd104304104423_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e104303104420_))))
                                             (let ((__tmp110798
                                                    (cons _lp-hd104304104423_
                                                          _body104306104417_)))
                                               (declare (not safe))
                                               (_loop104302104412_
                                                _lp-tl104305104425_
                                                __tmp110798))))
                                         (let ((_body104307104428_
                                                (reverse _body104306104417_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl104281104364_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl104275104348_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl104272104340_))
                                                       (let ((_e104310104431_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl104272104340_))))
                 (let ((_tl104308104436_
                        (let () (declare (not safe)) (##cdr _e104310104431_)))
                       (_hd104309104434_
                        (let () (declare (not safe)) (##car _e104310104431_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl104308104436_))
                       (let ((_L104439_ _hd104309104434_)
                             (_L104440_ _body104307104428_)
                             (_L104441_ _arg104298104404_)
                             (_L104442_ _hd104279104354_))
                         (if (eq? _L104442_ _L104439_)
                             (___kont110068110069_
                              _L104439_
                              _L104440_
                              _L104441_
                              _L104442_)
                             (___kont110074110075_)))
                       (___kont110074110075_))))
               (___kont110074110075_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110074110075_))
                                               (___kont110074110075_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop104302104412_ _target104299104407_ '())))
                         (___kont110074110075_))))
                 (___kont110074110075_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop104293104388_
                                        _target104290104383_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx110066110067_))
                                (let ((_e104271104327_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx110066110067_))))
                                  (let ((_tl104269104332_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104271104327_)))
                                        (_hd104270104330_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104271104327_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd104270104330_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd104270104330_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104269104332_))
                                                (let ((_e104274104335_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104269104332_))))
                                                  (let ((_tl104272104340_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104274104335_)))
                                                        (_hd104273104338_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104274104335_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd104273104338_))
                                                        (let ((_e104277104343_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd104273104338_))))
                  (let ((_tl104275104348_
                         (let () (declare (not safe)) (##cdr _e104277104343_)))
                        (_hd104276104346_
                         (let ()
                           (declare (not safe))
                           (##car _e104277104343_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd104276104346_))
                        (let ((_e104280104351_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd104276104346_))))
                          (let ((_tl104278104356_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104280104351_)))
                                (_hd104279104354_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104280104351_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104278104356_))
                                (let ((_e104283104359_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104278104356_))))
                                  (let ((_tl104281104364_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104283104359_)))
                                        (_hd104282104362_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104283104359_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd104282104362_))
                                        (let ((_e104286104367_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd104282104362_))))
                                          (let ((_tl104284104372_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104286104367_)))
                                                (_hd104285104370_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104286104367_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd104285104370_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd104285104370_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl104284104372_))
                                                        (let ((_e104289104375_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl104284104372_))))
                  (let ((_tl104287104380_
                         (let () (declare (not safe)) (##cdr _e104289104375_)))
                        (_hd104288104378_
                         (let ()
                           (declare (not safe))
                           (##car _e104289104375_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd104288104378_))
                        (let ((___splice110070110071_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd104288104378_
                                  '0))))
                          (let ((_tl104292104385_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice110070110071_ '1)))
                                (_target104290104383_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice110070110071_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl104292104385_))
                                (___match110133110134_
                                 _e104271104327_
                                 _hd104270104330_
                                 _tl104269104332_
                                 _e104274104335_
                                 _hd104273104338_
                                 _tl104272104340_
                                 _e104277104343_
                                 _hd104276104346_
                                 _tl104275104348_
                                 _e104280104351_
                                 _hd104279104354_
                                 _tl104278104356_
                                 _e104283104359_
                                 _hd104282104362_
                                 _tl104281104364_
                                 _e104286104367_
                                 _hd104285104370_
                                 _tl104284104372_
                                 _e104289104375_
                                 _hd104288104378_
                                 _tl104287104380_
                                 ___splice110070110071_
                                 _target104290104383_
                                 _tl104292104385_)
                                (___kont110074110075_))))
                        (___kont110074110075_))))
                (___kont110074110075_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont110074110075_))
                                                (___kont110074110075_))))
                                        (___kont110074110075_))))
                                (___kont110074110075_))))
                        (___kont110074110075_))))
                (___kont110074110075_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont110074110075_))
                                            (___kont110074110075_))
                                        (___kont110074110075_))))
                                (___kont110074110075_)))))))))
          (let* ((_g103965103988_
                  (lambda (_g103966103985_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103966103985_))))
                 (_g103964104249_
                  (lambda (_g103966103991_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103966103991_))
                        (let ((_e103971103993_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103966103991_))))
                          (let ((_hd103970103996_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103971103993_)))
                                (_tl103969103998_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103971103993_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl103969103998_))
                                (let ((_e103974104001_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl103969103998_))))
                                  (let ((_hd103973104004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e103974104001_)))
                                        (_tl103972104006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e103974104001_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl103972104006_))
                                        (let ((_g110799_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl103972104006_
                                                  '0))))
                                          (begin
                                            (let ((_g110800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g110799_)
                                                         (##vector-length
                                                          _g110799_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g110800_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g110800_)))
                                            (let ((_target103975104009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g110799_
                                                      0)))
                                                  (_tl103977104011_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g110799_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl103977104011_))
                                                  (letrec ((_loop103978104014_
                                                            (lambda (_hd103976104017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _rand103982104019_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd103976104017_))
                          (let ((_e103979104022_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd103976104017_))))
                            (let ((_lp-hd103980104025_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103979104022_)))
                                  (_lp-tl103981104027_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103979104022_))))
                              (let ((__tmp110801
                                     (cons _lp-hd103980104025_
                                           _rand103982104019_)))
                                (declare (not safe))
                                (_loop103978104014_
                                 _lp-tl103981104027_
                                 __tmp110801))))
                          (let ((_rand103983104030_
                                 (reverse _rand103982104019_)))
                            ((lambda (_L104033_ _L104034_)
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls-unsafe?))
                                   (let ((__tmp110802
                                          (let ((__tmp110803
                                                 (lambda (_g104051104054_
                                                          _g104052104056_)
                                                   (cons _g104051104054_
                                                         _g104052104056_))))
                                            (declare (not safe))
                                            (__foldr1
                                             __tmp110803
                                             '()
                                             _L104033_))))
                                     (declare (not safe))
                                     (_compile-call103963_
                                      _L104034_
                                      __tmp110802))
                                   (let* ((___stx110182110183_ _L104034_)
                                          (_g104060104072_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx110182110183_)))))
                                     (let ((___kont110184110185_
                                            (lambda ()
                                              (let ((_f104109_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self103960_
                                                        _L104034_))))
                                                (if (and (let ((__tmp110804
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _f104109_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp110804))
                 (let ((__tmp110805
                        (let ()
                          (declare (not safe))
                          (##memq _f104109_ gxc#checked-primitives))))
                   (declare (not safe))
                   (not __tmp110805)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _lp104111_ ((_rest104114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (reverse (let ((__tmp110811
                                              (lambda (_g104231104234_
                                                       _g104232104236_)
                                                (cons _g104231104234_
                                                      _g104232104236_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp110811
                                          '()
                                          _L104033_))))
                             (_bind104116_ '())
                             (_args104117_ '()))
              (let* ((_rest104118104126_ _rest104114_)
                     (_else104120104134_
                      (lambda ()
                        (cons 'let
                              (cons _bind104116_
                                    (cons '(declare (not safe))
                                          (cons (cons _f104109_ _args104117_)
                                                '()))))))
                     (_K104122104220_
                      (lambda (_rest104137_ _e104138_)
                        (let* ((___stx110136110137_ _e104138_)
                               (_g104143104161_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     ___stx110136110137_)))))
                          (let ((___kont110138110139_
                                 (lambda ()
                                   (let ((__tmp110806
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0 _e104138_))
                                                _args104117_)))
                                     (declare (not safe))
                                     (_lp104111_
                                      _rest104137_
                                      _bind104116_
                                      __tmp110806))))
                                (___kont110140110141_
                                 (lambda ()
                                   (let ((__tmp110807
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__0 _e104138_))
                                                _args104117_)))
                                     (declare (not safe))
                                     (_lp104111_
                                      _rest104137_
                                      _bind104116_
                                      __tmp110807))))
                                (___kont110142110143_
                                 (lambda ()
                                   (let ((_tmp104168_
                                          (let ((__tmp110808
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp110808))))
                                     (let ((__tmp110810
                                            (cons (cons _tmp104168_
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e104138_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _bind104116_))
                                           (__tmp110809
                                            (cons _tmp104168_ _args104117_)))
                                       (declare (not safe))
                                       (_lp104111_
                                        _rest104137_
                                        __tmp110810
                                        __tmp110809))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx110136110137_))
                                (let ((_e104147104199_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx110136110137_))))
                                  (let ((_tl104145104204_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104147104199_)))
                                        (_hd104146104202_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104147104199_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd104146104202_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd104146104202_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104145104204_))
                                                (let ((_e104150104207_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104145104204_))))
                                                  (let ((_tl104148104212_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104150104207_)))
                                                        (_hd104149104210_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104150104207_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl104148104212_))
                                                        (___kont110138110139_)
                                                        (___kont110142110143_))))
                                                (___kont110142110143_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _hd104146104202_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl104145104204_))
                                                    (let ((_e104156104184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl104145104204_))))
                                                      (let ((_tl104154104189_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e104156104184_)))
                    (_hd104155104187_
                     (let () (declare (not safe)) (##car _e104156104184_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl104154104189_))
                    (___kont110140110141_)
                    (___kont110142110143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont110142110143_))
                                                (___kont110142110143_)))
                                        (___kont110142110143_))))
                                (___kont110142110143_)))))))
                (if (let () (declare (not safe)) (##pair? _rest104118104126_))
                    (let ((_hd104123104223_
                           (let ()
                             (declare (not safe))
                             (##car _rest104118104126_)))
                          (_tl104124104225_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest104118104126_))))
                      (let* ((_e104228_ _hd104123104223_)
                             (_rest104230_ _tl104124104225_))
                        (declare (not safe))
                        (_K104122104220_ _rest104230_ _e104228_)))
                    (let () (declare (not safe)) (_else104120104134_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp110812
                                                           (let ((__tmp110813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g104238104241_ _g104239104243_)
                            (cons _g104238104241_ _g104239104243_))))
                     (declare (not safe))
                     (__foldr1 __tmp110813 '() _L104033_))))
              (declare (not safe))
              (_compile-call103963_ _L104034_ __tmp110812))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont110186110187_
                                            (lambda ()
                                              (let ((__tmp110814
                                                     (let ((__tmp110815
                                                            (lambda (_g104078104081_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g104079104083_)
                      (cons _g104078104081_ _g104079104083_))))
               (declare (not safe))
               (__foldr1 __tmp110815 '() _L104033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_compile-call103963_
                                                 _L104034_
                                                 __tmp110814)))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx110182110183_))
                                           (let ((_e104064104091_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx110182110183_))))
                                             (let ((_tl104062104096_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e104064104091_)))
                                                   (_hd104063104094_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e104064104091_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _hd104063104094_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _hd104063104094_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl104062104096_))
                                                           (let ((_e104067104099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl104062104096_))))
                     (let ((_tl104065104104_
                            (let ()
                              (declare (not safe))
                              (##cdr _e104067104099_)))
                           (_hd104066104102_
                            (let ()
                              (declare (not safe))
                              (##car _e104067104099_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl104065104104_))
                           (___kont110184110185_)
                           (___kont110186110187_))))
                   (___kont110186110187_))
               (___kont110186110187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110186110187_))))
                                           (___kont110186110187_))))))
                             _rand103983104030_
                             _hd103973104004_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop103978104014_
                                                       _target103975104009_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g103965103988_
                                                     _g103966103991_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g103965103988_ _g103966103991_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g103965103988_ _g103966103991_)))))
                        (let ()
                          (declare (not safe))
                          (_g103965103988_ _g103966103991_))))))
            (declare (not safe))
            (_g103964104249_ _stx103961_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self103703_ _stx103704_)
        (let* ((___stx110254110255_ _stx103704_)
               (_g103707103736_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx110254110255_)))))
          (let ((___kont110256110257_
                 (lambda (_L103804_ _L103805_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self103703_ _stx103704_))
                       (let ((_f103827_
                              (let ((__tmp110816
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _L103805_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self103703_ __tmp110816))))
                         (let _lp103829_ ((_rest103832_
                                           (reverse (let ((__tmp110822
                                                           (lambda (_g103949103952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g103950103954_)
                     (cons _g103949103952_ _g103950103954_))))
              (declare (not safe))
              (__foldr1 __tmp110822 '() _L103804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_bind103834_ '())
                                          (_args103835_ '()))
                           (let* ((_rest103836103844_ _rest103832_)
                                  (_else103838103852_
                                   (lambda ()
                                     (cons 'let
                                           (cons _bind103834_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _f103827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _args103835_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_K103840103938_
                                   (lambda (_rest103855_ _e103856_)
                                     (let* ((___stx110208110209_ _e103856_)
                                            (_g103861103879_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx110208110209_)))))
                                       (let ((___kont110210110211_
                                              (lambda ()
                                                (let ((__tmp110817
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _e103856_))
                     _args103835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp103829_
                                                   _rest103855_
                                                   _bind103834_
                                                   __tmp110817))))
                                             (___kont110212110213_
                                              (lambda ()
                                                (let ((__tmp110818
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__0 _e103856_))
                     _args103835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp103829_
                                                   _rest103855_
                                                   _bind103834_
                                                   __tmp110818))))
                                             (___kont110214110215_
                                              (lambda ()
                                                (let ((_tmp103886_
                                                       (let ((__tmp110819
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp110819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp110821
                                                         (cons (cons _tmp103886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__0 _e103856_))
                                   '()))
                       _bind103834_))
                (__tmp110820 (cons _tmp103886_ _args103835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp103829_
                                                     _rest103855_
                                                     __tmp110821
                                                     __tmp110820))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx110208110209_))
                                             (let ((_e103865103917_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx110208110209_))))
                                               (let ((_tl103863103922_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e103865103917_)))
                                                     (_hd103864103920_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e103865103917_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd103864103920_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd103864103920_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl103863103922_))
                     (let ((_e103868103925_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl103863103922_))))
                       (let ((_tl103866103930_
                              (let ()
                                (declare (not safe))
                                (##cdr _e103868103925_)))
                             (_hd103867103928_
                              (let ()
                                (declare (not safe))
                                (##car _e103868103925_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl103866103930_))
                             (___kont110210110211_)
                             (___kont110214110215_))))
                     (___kont110214110215_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd103864103920_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl103863103922_))
                         (let ((_e103874103902_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl103863103922_))))
                           (let ((_tl103872103907_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e103874103902_)))
                                 (_hd103873103905_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e103874103902_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl103872103907_))
                                 (___kont110212110213_)
                                 (___kont110214110215_))))
                         (___kont110214110215_))
                     (___kont110214110215_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110214110215_))))
                                             (___kont110214110215_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest103836103844_))
                                 (let ((_hd103841103941_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest103836103844_)))
                                       (_tl103842103943_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest103836103844_))))
                                   (let* ((_e103946_ _hd103841103941_)
                                          (_rest103948_ _tl103842103943_))
                                     (declare (not safe))
                                     (_K103840103938_ _rest103948_ _e103946_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else103838103852_)))))))))
                (___kont110260110261_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self103703_ _stx103704_)))))
            (let ((___match110299110300_
                   (lambda (_e103713103748_
                            _hd103712103751_
                            _tl103711103753_
                            _e103716103756_
                            _hd103715103759_
                            _tl103714103761_
                            _e103719103764_
                            _hd103718103767_
                            _tl103717103769_
                            _e103722103772_
                            _hd103721103775_
                            _tl103720103777_
                            ___splice110258110259_
                            _target103723103780_
                            _tl103725103782_)
                     (letrec ((_loop103726103785_
                               (lambda (_hd103724103788_ _rand103730103790_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103724103788_))
                                     (let ((_e103727103793_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103724103788_))))
                                       (let ((_lp-tl103729103798_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103727103793_)))
                                             (_lp-hd103728103796_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103727103793_))))
                                         (let ((__tmp110823
                                                (cons _lp-hd103728103796_
                                                      _rand103730103790_)))
                                           (declare (not safe))
                                           (_loop103726103785_
                                            _lp-tl103729103798_
                                            __tmp110823))))
                                     (let ((_rand103731103801_
                                            (reverse _rand103730103790_)))
                                       (___kont110256110257_
                                        _rand103731103801_
                                        _hd103721103775_))))))
                       (let ()
                         (declare (not safe))
                         (_loop103726103785_ _target103723103780_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx110254110255_))
                  (let ((_e103713103748_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx110254110255_))))
                    (let ((_tl103711103753_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103713103748_)))
                          (_hd103712103751_
                           (let ()
                             (declare (not safe))
                             (##car _e103713103748_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103711103753_))
                          (let ((_e103716103756_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103711103753_))))
                            (let ((_tl103714103761_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103716103756_)))
                                  (_hd103715103759_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103716103756_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103715103759_))
                                  (let ((_e103719103764_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103715103759_))))
                                    (let ((_tl103717103769_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103719103764_)))
                                          (_hd103718103767_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103719103764_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103718103767_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103718103767_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103717103769_))
                                                  (let ((_e103722103772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103717103769_))))
                                                    (let ((_tl103720103777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103722103772_)))
                                                          (_hd103721103775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103722103772_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103720103777_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103714103761_))
                      (let ((___splice110258110259_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103714103761_ '0))))
                        (let ((_tl103725103782_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice110258110259_ '1)))
                              (_target103723103780_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice110258110259_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103725103782_))
                              (___match110299110300_
                               _e103713103748_
                               _hd103712103751_
                               _tl103711103753_
                               _e103716103756_
                               _hd103715103759_
                               _tl103714103761_
                               _e103719103764_
                               _hd103718103767_
                               _tl103717103769_
                               _e103722103772_
                               _hd103721103775_
                               _tl103720103777_
                               ___splice110258110259_
                               _target103723103780_
                               _tl103725103782_)
                              (___kont110260110261_))))
                      (___kont110260110261_))
                  (___kont110260110261_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont110260110261_))
                                              (___kont110260110261_))
                                          (___kont110260110261_))))
                                  (___kont110260110261_))))
                          (___kont110260110261_))))
                  (___kont110260110261_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_self103515_ _stx103516_)
        (letrec ((_simplify103518_
                  (lambda (_code103603_)
                    (let* ((_code103604103622_ _code103603_)
                           (_else103606103630_ (lambda () _code103603_))
                           (_K103608103666_
                            (lambda (_expr103633_ _test103634_)
                              (let* ((_expr103635103643_ _expr103633_)
                                     (_else103637103651_
                                      (lambda ()
                                        (cons 'and
                                              (cons _test103634_
                                                    (cons _expr103633_ '())))))
                                     (_K103639103656_
                                      (lambda (_exprs103654_)
                                        (cons 'and
                                              (cons _test103634_
                                                    _exprs103654_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr103635103643_))
                                    (let ((_hd103640103659_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr103635103643_)))
                                          (_tl103641103661_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr103635103643_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd103640103659_ 'and))
                                          (let ((_exprs103664_
                                                 _tl103641103661_))
                                            (declare (not safe))
                                            (_K103639103656_ _exprs103664_))
                                          (let ()
                                            (declare (not safe))
                                            (_else103637103651_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else103637103651_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code103604103622_))
                          (let ((_hd103609103669_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code103604103622_)))
                                (_tl103610103671_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code103604103622_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd103609103669_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl103610103671_))
                                    (let ((_hd103611103674_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl103610103671_)))
                                          (_tl103612103676_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl103610103671_))))
                                      (let ((_test103679_ _hd103611103674_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl103612103676_))
                                            (let ((_hd103613103681_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl103612103676_)))
                                                  (_tl103614103683_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl103612103676_))))
                                              (let ((_expr103686_
                                                     _hd103613103681_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl103614103683_))
                                                    (let ((_hd103615103688_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl103614103683_)))
                                                          (_tl103616103690_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl103614103683_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd103615103688_))
                                                          (let ((_hd103617103693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd103615103688_)))
                        (_tl103618103695_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd103615103688_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd103617103693_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl103618103695_))
                            (let ((_hd103619103698_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl103618103695_)))
                                  (_tl103620103700_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl103618103695_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd103619103698_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl103620103700_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl103616103690_))
                                          (let ()
                                            (declare (not safe))
                                            (_K103608103666_
                                             _expr103686_
                                             _test103679_))
                                          (let ()
                                            (declare (not safe))
                                            (_else103606103630_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else103606103630_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else103606103630_))))
                            (let () (declare (not safe)) (_else103606103630_)))
                        (let () (declare (not safe)) (_else103606103630_))))
                  (let () (declare (not safe)) (_else103606103630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else103606103630_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else103606103630_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else103606103630_)))
                                (let ()
                                  (declare (not safe))
                                  (_else103606103630_))))
                          (let ()
                            (declare (not safe))
                            (_else103606103630_)))))))
          (let* ((_g103520103541_
                  (lambda (_g103521103538_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g103521103538_))))
                 (_g103519103600_
                  (lambda (_g103521103544_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g103521103544_))
                        (let ((_e103527103546_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g103521103544_))))
                          (let ((_hd103526103549_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e103527103546_)))
                                (_tl103525103551_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e103527103546_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl103525103551_))
                                (let ((_e103530103554_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl103525103551_))))
                                  (let ((_hd103529103557_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e103530103554_)))
                                        (_tl103528103559_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e103530103554_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl103528103559_))
                                        (let ((_e103533103562_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl103528103559_))))
                                          (let ((_hd103532103565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e103533103562_)))
                                                (_tl103531103567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e103533103562_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl103531103567_))
                                                (let ((_e103536103570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl103531103567_))))
                                                  (let ((_hd103535103573_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e103536103570_)))
                                                        (_tl103534103575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e103536103570_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl103534103575_))
                                                        ((lambda (_L103578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L103579_
                          _L103580_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp110824
                              (cons 'if
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self103515_
                                             _L103580_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self103515_
                                                   _L103579_))
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _self103515_
                                                         _L103578_))
                                                      '()))))))
                         (declare (not safe))
                         (_simplify103518_ __tmp110824))
                       (cons 'if
                             (cons (let ((__tmp110825
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self103515_
                                               _L103580_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp110825
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _self103515_
                                            _L103579_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self103515_
                                                  _L103578_))
                                               '()))))))
                 _hd103535103573_
                 _hd103532103565_
                 _hd103529103557_)
                (let ()
                  (declare (not safe))
                  (_g103520103541_ _g103521103544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g103520103541_
                                                   _g103521103544_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g103520103541_ _g103521103544_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g103520103541_ _g103521103544_)))))
                        (let ()
                          (declare (not safe))
                          (_g103520103541_ _g103521103544_))))))
            (declare (not safe))
            (_g103519103600_ _stx103516_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self103463_ _stx103464_)
        (let* ((_g103466103479_
                (lambda (_g103467103476_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103467103476_))))
               (_g103465103512_
                (lambda (_g103467103482_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103467103482_))
                      (let ((_e103471103484_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103467103482_))))
                        (let ((_hd103470103487_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103471103484_)))
                              (_tl103469103489_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103471103484_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103469103489_))
                              (let ((_e103474103492_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103469103489_))))
                                (let ((_hd103473103495_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103474103492_)))
                                      (_tl103472103497_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103474103492_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl103472103497_))
                                      ((lambda (_L103500_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L103500_)))
                                       _hd103473103495_)
                                      (let ()
                                        (declare (not safe))
                                        (_g103466103479_ _g103467103482_)))))
                              (let ()
                                (declare (not safe))
                                (_g103466103479_ _g103467103482_)))))
                      (let ()
                        (declare (not safe))
                        (_g103466103479_ _g103467103482_))))))
          (declare (not safe))
          (_g103465103512_ _stx103464_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self103395_ _stx103396_)
        (let* ((_g103398103415_
                (lambda (_g103399103412_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103399103412_))))
               (_g103397103460_
                (lambda (_g103399103418_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103399103418_))
                      (let ((_e103404103420_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103399103418_))))
                        (let ((_hd103403103423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103404103420_)))
                              (_tl103402103425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103404103420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103402103425_))
                              (let ((_e103407103428_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103402103425_))))
                                (let ((_hd103406103431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103407103428_)))
                                      (_tl103405103433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103407103428_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103405103433_))
                                      (let ((_e103410103436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103405103433_))))
                                        (let ((_hd103409103439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103410103436_)))
                                              (_tl103408103441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103410103436_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103408103441_))
                                              ((lambda (_L103444_ _L103445_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _L103445_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self103395_ _L103444_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd103409103439_
                                               _hd103406103431_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103398103415_
                                                 _g103399103418_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103398103415_ _g103399103418_)))))
                              (let ()
                                (declare (not safe))
                                (_g103398103415_ _g103399103418_)))))
                      (let ()
                        (declare (not safe))
                        (_g103398103415_ _g103399103418_))))))
          (declare (not safe))
          (_g103397103460_ _stx103396_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self103206_ _stx103207_)
        (let* ((_g103209103226_
                (lambda (_g103210103223_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103210103223_))))
               (_g103208103392_
                (lambda (_g103210103229_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103210103229_))
                      (let ((_e103215103231_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103210103229_))))
                        (let ((_hd103214103234_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103215103231_)))
                              (_tl103213103236_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103215103231_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103213103236_))
                              (let ((_e103218103239_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103213103236_))))
                                (let ((_hd103217103242_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103218103239_)))
                                      (_tl103216103244_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103218103239_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103216103244_))
                                      (let ((_e103221103247_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103216103244_))))
                                        (let ((_hd103220103250_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103221103247_)))
                                              (_tl103219103252_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103221103247_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103219103252_))
                                              ((lambda (_L103255_ _L103256_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _self103206_ _L103255_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103206_ _L103256_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp103271_ ((_rest103274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _L103256_ (cons _L103255_ '())))
                              (_bind103276_ '())
                              (_args103277_ '()))
               (let* ((_rest103278103286_ _rest103274_)
                      (_else103280103294_
                       (lambda ()
                         (cons 'let
                               (cons _bind103276_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _args103277_)
                                                 '()))))))
                      (_K103282103380_
                       (lambda (_rest103297_ _e103298_)
                         (let* ((___stx110302110303_ _e103298_)
                                (_g103303103321_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx110302110303_)))))
                           (let ((___kont110304110305_
                                  (lambda ()
                                    (let ((__tmp110826
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _e103298_))
                                                 _args103277_)))
                                      (declare (not safe))
                                      (_lp103271_
                                       _rest103297_
                                       _bind103276_
                                       __tmp110826))))
                                 (___kont110306110307_
                                  (lambda ()
                                    (let ((__tmp110827
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _e103298_))
                                                 _args103277_)))
                                      (declare (not safe))
                                      (_lp103271_
                                       _rest103297_
                                       _bind103276_
                                       __tmp110827))))
                                 (___kont110308110309_
                                  (lambda ()
                                    (let ((_tmp103328_
                                           (let ((__tmp110828
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp110828))))
                                      (let ((__tmp110830
                                             (cons (cons _tmp103328_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _e103298_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _bind103276_))
                                            (__tmp110829
                                             (cons _tmp103328_ _args103277_)))
                                        (declare (not safe))
                                        (_lp103271_
                                         _rest103297_
                                         __tmp110830
                                         __tmp110829))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx110302110303_))
                                 (let ((_e103307103359_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx110302110303_))))
                                   (let ((_tl103305103364_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e103307103359_)))
                                         (_hd103306103362_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e103307103359_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd103306103362_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd103306103362_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl103305103364_))
                                                 (let ((_e103310103367_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl103305103364_))))
                                                   (let ((_tl103308103372_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e103310103367_)))
                                                         (_hd103309103370_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e103310103367_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl103308103372_))
                                                         (___kont110304110305_)
                                                         (___kont110308110309_))))
                                                 (___kont110308110309_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd103306103362_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl103305103364_))
                                                     (let ((_e103316103344_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl103305103364_))))
                                                       (let ((_tl103314103349_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e103316103344_)))
                     (_hd103315103347_
                      (let () (declare (not safe)) (##car _e103316103344_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl103314103349_))
                     (___kont110306110307_)
                     (___kont110308110309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110308110309_))
                                                 (___kont110308110309_)))
                                         (___kont110308110309_))))
                                 (___kont110308110309_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest103278103286_))
                     (let ((_hd103283103383_
                            (let ()
                              (declare (not safe))
                              (##car _rest103278103286_)))
                           (_tl103284103385_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest103278103286_))))
                       (let* ((_e103388_ _hd103283103383_)
                              (_rest103390_ _tl103284103385_))
                         (declare (not safe))
                         (_K103282103380_ _rest103390_ _e103388_)))
                     (let () (declare (not safe)) (_else103280103294_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd103220103250_
                                               _hd103217103242_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103209103226_
                                                 _g103210103229_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103209103226_ _g103210103229_)))))
                              (let ()
                                (declare (not safe))
                                (_g103209103226_ _g103210103229_)))))
                      (let ()
                        (declare (not safe))
                        (_g103209103226_ _g103210103229_))))))
          (declare (not safe))
          (_g103208103392_ _stx103207_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self103017_ _stx103018_)
        (let* ((_g103020103037_
                (lambda (_g103021103034_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103021103034_))))
               (_g103019103203_
                (lambda (_g103021103040_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103021103040_))
                      (let ((_e103026103042_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103021103040_))))
                        (let ((_hd103025103045_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103026103042_)))
                              (_tl103024103047_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103026103042_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103024103047_))
                              (let ((_e103029103050_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103024103047_))))
                                (let ((_hd103028103053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103029103050_)))
                                      (_tl103027103055_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103029103050_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103027103055_))
                                      (let ((_e103032103058_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103027103055_))))
                                        (let ((_hd103031103061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103032103058_)))
                                              (_tl103030103063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103032103058_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103030103063_))
                                              ((lambda (_L103066_ _L103067_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _self103017_ _L103066_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103017_ _L103067_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp103082_ ((_rest103085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _L103067_ (cons _L103066_ '())))
                              (_bind103087_ '())
                              (_args103088_ '()))
               (let* ((_rest103089103097_ _rest103085_)
                      (_else103091103105_
                       (lambda ()
                         (cons 'let
                               (cons _bind103087_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _args103088_)
                                                 '()))))))
                      (_K103093103191_
                       (lambda (_rest103108_ _e103109_)
                         (let* ((___stx110348110349_ _e103109_)
                                (_g103114103132_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx110348110349_)))))
                           (let ((___kont110350110351_
                                  (lambda ()
                                    (let ((__tmp110831
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _e103109_))
                                                 _args103088_)))
                                      (declare (not safe))
                                      (_lp103082_
                                       _rest103108_
                                       _bind103087_
                                       __tmp110831))))
                                 (___kont110352110353_
                                  (lambda ()
                                    (let ((__tmp110832
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__0
                                                    _e103109_))
                                                 _args103088_)))
                                      (declare (not safe))
                                      (_lp103082_
                                       _rest103108_
                                       _bind103087_
                                       __tmp110832))))
                                 (___kont110354110355_
                                  (lambda ()
                                    (let ((_tmp103139_
                                           (let ((__tmp110833
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp110833))))
                                      (let ((__tmp110835
                                             (cons (cons _tmp103139_
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#compile-e__0 _e103109_))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _bind103087_))
                                            (__tmp110834
                                             (cons _tmp103139_ _args103088_)))
                                        (declare (not safe))
                                        (_lp103082_
                                         _rest103108_
                                         __tmp110835
                                         __tmp110834))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx110348110349_))
                                 (let ((_e103118103170_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx110348110349_))))
                                   (let ((_tl103116103175_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e103118103170_)))
                                         (_hd103117103173_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e103118103170_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd103117103173_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd103117103173_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl103116103175_))
                                                 (let ((_e103121103178_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl103116103175_))))
                                                   (let ((_tl103119103183_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e103121103178_)))
                                                         (_hd103120103181_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e103121103178_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl103119103183_))
                                                         (___kont110350110351_)
                                                         (___kont110354110355_))))
                                                 (___kont110354110355_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd103117103173_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl103116103175_))
                                                     (let ((_e103127103155_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl103116103175_))))
                                                       (let ((_tl103125103160_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e103127103155_)))
                     (_hd103126103158_
                      (let () (declare (not safe)) (##car _e103127103155_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl103125103160_))
                     (___kont110352110353_)
                     (___kont110354110355_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110354110355_))
                                                 (___kont110354110355_)))
                                         (___kont110354110355_))))
                                 (___kont110354110355_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest103089103097_))
                     (let ((_hd103094103194_
                            (let ()
                              (declare (not safe))
                              (##car _rest103089103097_)))
                           (_tl103095103196_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest103089103097_))))
                       (let* ((_e103199_ _hd103094103194_)
                              (_rest103201_ _tl103095103196_))
                         (declare (not safe))
                         (_K103093103191_ _rest103201_ _e103199_)))
                     (let () (declare (not safe)) (_else103091103105_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd103031103061_
                                               _hd103028103053_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103020103037_
                                                 _g103021103040_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103020103037_ _g103021103040_)))))
                              (let ()
                                (declare (not safe))
                                (_g103020103037_ _g103021103040_)))))
                      (let ()
                        (declare (not safe))
                        (_g103020103037_ _g103021103040_))))))
          (declare (not safe))
          (_g103019103203_ _stx103018_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self102933_ _stx102934_)
        (let* ((_g102936102957_
                (lambda (_g102937102954_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102937102954_))))
               (_g102935103014_
                (lambda (_g102937102960_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102937102960_))
                      (let ((_e102943102962_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102937102960_))))
                        (let ((_hd102942102965_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102943102962_)))
                              (_tl102941102967_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102943102962_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102941102967_))
                              (let ((_e102946102970_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102941102967_))))
                                (let ((_hd102945102973_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102946102970_)))
                                      (_tl102944102975_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102946102970_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102944102975_))
                                      (let ((_e102949102978_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102944102975_))))
                                        (let ((_hd102948102981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102949102978_)))
                                              (_tl102947102983_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102949102978_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102947102983_))
                                              (let ((_e102952102986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102947102983_))))
                                                (let ((_hd102951102989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102952102986_)))
                                                      (_tl102950102991_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102952102986_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl102950102991_))
                                                      ((lambda (_L102994_
                                                                _L102995_
                                                                _L102996_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _self102933_ _L102994_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1 _self102933_ _L102995_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _self102933_
                                            _L102996_))
                                         (cons ''#f '()))))))
               _hd102951102989_
               _hd102948102981_
               _hd102945102973_)
              (let ()
                (declare (not safe))
                (_g102936102957_ _g102937102960_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102936102957_
                                                 _g102937102960_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102936102957_ _g102937102960_)))))
                              (let ()
                                (declare (not safe))
                                (_g102936102957_ _g102937102960_)))))
                      (let ()
                        (declare (not safe))
                        (_g102936102957_ _g102937102960_))))))
          (declare (not safe))
          (_g102935103014_ _stx102934_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self102833_ _stx102834_)
        (let* ((_g102836102861_
                (lambda (_g102837102858_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102837102858_))))
               (_g102835102930_
                (lambda (_g102837102864_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102837102864_))
                      (let ((_e102844102866_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102837102864_))))
                        (let ((_hd102843102869_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102844102866_)))
                              (_tl102842102871_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102844102866_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102842102871_))
                              (let ((_e102847102874_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102842102871_))))
                                (let ((_hd102846102877_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102847102874_)))
                                      (_tl102845102879_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102847102874_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102845102879_))
                                      (let ((_e102850102882_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102845102879_))))
                                        (let ((_hd102849102885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102850102882_)))
                                              (_tl102848102887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102850102882_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102848102887_))
                                              (let ((_e102853102890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102848102887_))))
                                                (let ((_hd102852102893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102853102890_)))
                                                      (_tl102851102895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102853102890_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl102851102895_))
                                                      (let ((_e102856102898_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl102851102895_))))
                (let ((_hd102855102901_
                       (let () (declare (not safe)) (##car _e102856102898_)))
                      (_tl102854102903_
                       (let () (declare (not safe)) (##cdr _e102856102898_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl102854102903_))
                      ((lambda (_L102906_ _L102907_ _L102908_ _L102909_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102833_
                                        _L102907_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self102833_
                                              _L102906_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102833_
                                                    _L102908_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self102833_
                                                          _L102909_))
                                                       (cons ''#f '())))))))
                       _hd102855102901_
                       _hd102852102893_
                       _hd102849102885_
                       _hd102846102877_)
                      (let ()
                        (declare (not safe))
                        (_g102836102861_ _g102837102864_)))))
              (let ()
                (declare (not safe))
                (_g102836102861_ _g102837102864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102836102861_
                                                 _g102837102864_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102836102861_ _g102837102864_)))))
                              (let ()
                                (declare (not safe))
                                (_g102836102861_ _g102837102864_)))))
                      (let ()
                        (declare (not safe))
                        (_g102836102861_ _g102837102864_))))))
          (declare (not safe))
          (_g102835102930_ _stx102834_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self102749_ _stx102750_)
        (let* ((_g102752102773_
                (lambda (_g102753102770_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102753102770_))))
               (_g102751102830_
                (lambda (_g102753102776_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102753102776_))
                      (let ((_e102759102778_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102753102776_))))
                        (let ((_hd102758102781_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102759102778_)))
                              (_tl102757102783_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102759102778_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102757102783_))
                              (let ((_e102762102786_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102757102783_))))
                                (let ((_hd102761102789_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102762102786_)))
                                      (_tl102760102791_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102762102786_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102760102791_))
                                      (let ((_e102765102794_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102760102791_))))
                                        (let ((_hd102764102797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102765102794_)))
                                              (_tl102763102799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102765102794_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102763102799_))
                                              (let ((_e102768102802_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102763102799_))))
                                                (let ((_hd102767102805_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102768102802_)))
                                                      (_tl102766102807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102768102802_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl102766102807_))
                                                      ((lambda (_L102810_
                                                                _L102811_
                                                                _L102812_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _self102749_ _L102810_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1 _self102749_ _L102811_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _self102749_
                                            _L102812_))
                                         (cons ''#f '()))))))
               _hd102767102805_
               _hd102764102797_
               _hd102761102789_)
              (let ()
                (declare (not safe))
                (_g102752102773_ _g102753102776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102752102773_
                                                 _g102753102776_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102752102773_ _g102753102776_)))))
                              (let ()
                                (declare (not safe))
                                (_g102752102773_ _g102753102776_)))))
                      (let ()
                        (declare (not safe))
                        (_g102752102773_ _g102753102776_))))))
          (declare (not safe))
          (_g102751102830_ _stx102750_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self102649_ _stx102650_)
        (let* ((_g102652102677_
                (lambda (_g102653102674_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102653102674_))))
               (_g102651102746_
                (lambda (_g102653102680_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102653102680_))
                      (let ((_e102660102682_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102653102680_))))
                        (let ((_hd102659102685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102660102682_)))
                              (_tl102658102687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102660102682_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102658102687_))
                              (let ((_e102663102690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102658102687_))))
                                (let ((_hd102662102693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102663102690_)))
                                      (_tl102661102695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102663102690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102661102695_))
                                      (let ((_e102666102698_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102661102695_))))
                                        (let ((_hd102665102701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102666102698_)))
                                              (_tl102664102703_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102666102698_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102664102703_))
                                              (let ((_e102669102706_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102664102703_))))
                                                (let ((_hd102668102709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102669102706_)))
                                                      (_tl102667102711_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102669102706_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl102667102711_))
                                                      (let ((_e102672102714_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl102667102711_))))
                (let ((_hd102671102717_
                       (let () (declare (not safe)) (##car _e102672102714_)))
                      (_tl102670102719_
                       (let () (declare (not safe)) (##cdr _e102672102714_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl102670102719_))
                      ((lambda (_L102722_ _L102723_ _L102724_ _L102725_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _self102649_
                                        _L102723_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self102649_
                                              _L102722_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self102649_
                                                    _L102724_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _self102649_
                                                          _L102725_))
                                                       (cons ''#f '())))))))
                       _hd102671102717_
                       _hd102668102709_
                       _hd102665102701_
                       _hd102662102693_)
                      (let ()
                        (declare (not safe))
                        (_g102652102677_ _g102653102680_)))))
              (let ()
                (declare (not safe))
                (_g102652102677_ _g102653102680_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102652102677_
                                                 _g102653102680_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102652102677_ _g102653102680_)))))
                              (let ()
                                (declare (not safe))
                                (_g102652102677_ _g102653102680_)))))
                      (let ()
                        (declare (not safe))
                        (_g102652102677_ _g102653102680_))))))
          (declare (not safe))
          (_g102651102746_ _stx102650_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self102444_ _stx102445_)
        (let* ((_g102447102468_
                (lambda (_g102448102465_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102448102465_))))
               (_g102446102646_
                (lambda (_g102448102471_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102448102471_))
                      (let ((_e102454102473_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102448102471_))))
                        (let ((_hd102453102476_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102454102473_)))
                              (_tl102452102478_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102454102473_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102452102478_))
                              (let ((_e102457102481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102452102478_))))
                                (let ((_hd102456102484_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102457102481_)))
                                      (_tl102455102486_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102457102481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102455102486_))
                                      (let ((_e102460102489_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102455102486_))))
                                        (let ((_hd102459102492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102460102489_)))
                                              (_tl102458102494_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102460102489_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102458102494_))
                                              (let ((_e102463102497_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102458102494_))))
                                                (let ((_hd102462102500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102463102497_)))
                                                      (_tl102461102502_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102463102497_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl102461102502_))
                                                      ((lambda (_L102505_
                                                                _L102506_
                                                                _L102507_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (cons '##unchecked-structure-ref
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1 _self102444_ _L102505_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self102444_
                                          _L102506_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _lp102525_ ((_rest102528_
                                       (cons _L102506_ (cons _L102505_ '())))
                                      (_bind102530_ '())
                                      (_args102531_ '()))
                       (let* ((_rest102532102540_ _rest102528_)
                              (_else102534102548_
                               (lambda ()
                                 (cons 'let
                                       (cons _bind102530_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp110836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp110836 _args102531_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_K102536102634_
                               (lambda (_rest102551_ _e102552_)
                                 (let* ((___stx110394110395_ _e102552_)
                                        (_g102557102575_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx110394110395_)))))
                                   (let ((___kont110396110397_
                                          (lambda ()
                                            (let ((__tmp110837
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e102552_))
                                                         _args102531_)))
                                              (declare (not safe))
                                              (_lp102525_
                                               _rest102551_
                                               _bind102530_
                                               __tmp110837))))
                                         (___kont110398110399_
                                          (lambda ()
                                            (let ((__tmp110838
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e102552_))
                                                         _args102531_)))
                                              (declare (not safe))
                                              (_lp102525_
                                               _rest102551_
                                               _bind102530_
                                               __tmp110838))))
                                         (___kont110400110401_
                                          (lambda ()
                                            (let ((_tmp102582_
                                                   (let ((__tmp110839
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp110839))))
                                              (let ((__tmp110841
                                                     (cons (cons _tmp102582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__0 _e102552_))
                               '()))
                   _bind102530_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp110840
                                                     (cons _tmp102582_
                                                           _args102531_)))
                                                (declare (not safe))
                                                (_lp102525_
                                                 _rest102551_
                                                 __tmp110841
                                                 __tmp110840))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx110394110395_))
                                         (let ((_e102561102613_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx110394110395_))))
                                           (let ((_tl102559102618_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e102561102613_)))
                                                 (_hd102560102616_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e102561102613_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd102560102616_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd102560102616_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl102559102618_))
                                                         (let ((_e102564102621_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl102559102618_))))
                   (let ((_tl102562102626_
                          (let ()
                            (declare (not safe))
                            (##cdr _e102564102621_)))
                         (_hd102563102624_
                          (let ()
                            (declare (not safe))
                            (##car _e102564102621_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl102562102626_))
                         (___kont110396110397_)
                         (___kont110400110401_))))
                 (___kont110400110401_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd102560102616_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl102559102618_))
                     (let ((_e102570102598_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl102559102618_))))
                       (let ((_tl102568102603_
                              (let ()
                                (declare (not safe))
                                (##cdr _e102570102598_)))
                             (_hd102569102601_
                              (let ()
                                (declare (not safe))
                                (##car _e102570102598_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl102568102603_))
                             (___kont110398110399_)
                             (___kont110400110401_))))
                     (___kont110400110401_))
                 (___kont110400110401_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont110400110401_))))
                                         (___kont110400110401_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest102532102540_))
                             (let ((_hd102537102637_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest102532102540_)))
                                   (_tl102538102639_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest102532102540_))))
                               (let* ((_e102642_ _hd102537102637_)
                                      (_rest102644_ _tl102538102639_))
                                 (declare (not safe))
                                 (_K102536102634_ _rest102644_ _e102642_)))
                             (let ()
                               (declare (not safe))
                               (_else102534102548_)))))))
               _hd102462102500_
               _hd102459102492_
               _hd102456102484_)
              (let ()
                (declare (not safe))
                (_g102447102468_ _g102448102471_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102447102468_
                                                 _g102448102471_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102447102468_ _g102448102471_)))))
                              (let ()
                                (declare (not safe))
                                (_g102447102468_ _g102448102471_)))))
                      (let ()
                        (declare (not safe))
                        (_g102447102468_ _g102448102471_))))))
          (declare (not safe))
          (_g102446102646_ _stx102445_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self102223_ _stx102224_)
        (let* ((_g102226102251_
                (lambda (_g102227102248_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102227102248_))))
               (_g102225102441_
                (lambda (_g102227102254_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102227102254_))
                      (let ((_e102234102256_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102227102254_))))
                        (let ((_hd102233102259_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102234102256_)))
                              (_tl102232102261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102234102256_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102232102261_))
                              (let ((_e102237102264_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102232102261_))))
                                (let ((_hd102236102267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102237102264_)))
                                      (_tl102235102269_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102237102264_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102235102269_))
                                      (let ((_e102240102272_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102235102269_))))
                                        (let ((_hd102239102275_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102240102272_)))
                                              (_tl102238102277_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102240102272_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102238102277_))
                                              (let ((_e102243102280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102238102277_))))
                                                (let ((_hd102242102283_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102243102280_)))
                                                      (_tl102241102285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102243102280_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl102241102285_))
                                                      (let ((_e102246102288_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl102241102285_))))
                (let ((_hd102245102291_
                       (let () (declare (not safe)) (##car _e102246102288_)))
                      (_tl102244102293_
                       (let () (declare (not safe)) (##cdr _e102246102288_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl102244102293_))
                      ((lambda (_L102296_ _L102297_ _L102298_ _L102299_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _self102223_
                                            _L102297_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _self102223_
                                                  _L102296_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self102223_
                                                        _L102298_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _lp102320_ ((_rest102323_
                                               (cons _L102298_
                                                     (cons _L102296_
                                                           (cons _L102297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_bind102325_ '())
                                              (_args102326_ '()))
                               (let* ((_rest102327102335_ _rest102323_)
                                      (_else102329102343_
                                       (lambda ()
                                         (cons 'let
                                               (cons _bind102325_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp110842 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp110842 _args102326_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_K102331102429_
                                       (lambda (_rest102346_ _e102347_)
                                         (let* ((___stx110440110441_ _e102347_)
                                                (_g102352102370_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx110440110441_)))))
                                           (let ((___kont110442110443_
                                                  (lambda ()
                                                    (let ((__tmp110843
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _e102347_))
                         _args102326_)))
              (declare (not safe))
              (_lp102320_ _rest102346_ _bind102325_ __tmp110843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont110444110445_
                                                  (lambda ()
                                                    (let ((__tmp110844
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _e102347_))
                         _args102326_)))
              (declare (not safe))
              (_lp102320_ _rest102346_ _bind102325_ __tmp110844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont110446110447_
                                                  (lambda ()
                                                    (let ((_tmp102377_
                                                           (let ((__tmp110845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp110845))))
              (let ((__tmp110847
                     (cons (cons _tmp102377_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__0 _e102347_))
                                       '()))
                           _bind102325_))
                    (__tmp110846 (cons _tmp102377_ _args102326_)))
                (declare (not safe))
                (_lp102320_ _rest102346_ __tmp110847 __tmp110846))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx110440110441_))
                                                 (let ((_e102356102408_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx110440110441_))))
                                                   (let ((_tl102354102413_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e102356102408_)))
                                                         (_hd102355102411_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e102356102408_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd102355102411_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd102355102411_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl102354102413_))
                         (let ((_e102359102416_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl102354102413_))))
                           (let ((_tl102357102421_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e102359102416_)))
                                 (_hd102358102419_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e102359102416_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl102357102421_))
                                 (___kont110442110443_)
                                 (___kont110446110447_))))
                         (___kont110446110447_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd102355102411_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl102354102413_))
                             (let ((_e102365102393_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl102354102413_))))
                               (let ((_tl102363102398_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e102365102393_)))
                                     (_hd102364102396_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e102365102393_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl102363102398_))
                                     (___kont110444110445_)
                                     (___kont110446110447_))))
                             (___kont110446110447_))
                         (___kont110446110447_)))
                 (___kont110446110447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont110446110447_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest102327102335_))
                                     (let ((_hd102332102432_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest102327102335_)))
                                           (_tl102333102434_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest102327102335_))))
                                       (let* ((_e102437_ _hd102332102432_)
                                              (_rest102439_ _tl102333102434_))
                                         (declare (not safe))
                                         (_K102331102429_
                                          _rest102439_
                                          _e102437_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else102329102343_)))))))
                       _hd102245102291_
                       _hd102242102283_
                       _hd102239102275_
                       _hd102236102267_)
                      (let ()
                        (declare (not safe))
                        (_g102226102251_ _g102227102254_)))))
              (let ()
                (declare (not safe))
                (_g102226102251_ _g102227102254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102226102251_
                                                 _g102227102254_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102226102251_ _g102227102254_)))))
                              (let ()
                                (declare (not safe))
                                (_g102226102251_ _g102227102254_)))))
                      (let ()
                        (declare (not safe))
                        (_g102226102251_ _g102227102254_))))))
          (declare (not safe))
          (_g102225102441_ _stx102224_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self102076_ _stx102077_)
        (letrec ((_import-set-template102079_
                  (lambda (_in102175_ _phi102176_)
                    (let ((_iphi102178_
                           (fx+ _phi102176_
                                (##direct-structure-ref
                                 _in102175_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports102179_
                           (##structure-ref
                            (##direct-structure-ref
                             _in102175_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp102181_ ((_rest102183_ _imports102179_)
                                       (_r102184_ '()))
                        (let* ((_rest102185102193_ _rest102183_)
                               (_else102187102201_ (lambda () _r102184_))
                               (_K102189102211_
                                (lambda (_rest102204_ _in102205_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in102205_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _iphi102178_))
                                          (let ((__tmp110848
                                                 (cons _in102205_ _r102184_)))
                                            (declare (not safe))
                                            (_lp102181_
                                             _rest102204_
                                             __tmp110848))
                                          (let ()
                                            (declare (not safe))
                                            (_lp102181_
                                             _rest102204_
                                             _r102184_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in102205_
                                             'gx#module-import::t))
                                          (let ((_iphi102207_
                                                 (fx+ _phi102176_
                                                      (##direct-structure-ref
                                                       _in102205_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _iphi102207_))
                                                (let ((__tmp110849
                                                       (cons (##direct-structure-ref
                                                              (##direct-structure-ref
                                                               _in102205_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              '1
                                                              gx#module-export::t
                                                              '#f)
                                                             _r102184_)))
                                                  (declare (not safe))
                                                  (_lp102181_
                                                   _rest102204_
                                                   __tmp110849))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp102181_
                                                   _rest102204_
                                                   _r102184_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in102205_
                                                 'gx#import-set::t))
                                              (let ((_xphi102209_
                                                     (fx+ _iphi102178_
                                                          (##direct-structure-ref
                                                           _in102205_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero? _xphi102209_))
                                                    (let ((__tmp110850
                                                           (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in102205_
                          '1
                          gx#import-set::t
                          '#f)
                         _r102184_)))
              (declare (not safe))
              (_lp102181_ _rest102204_ __tmp110850))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _xphi102209_))
                                                        (let ((__tmp110851
                                                               (let ((__tmp110852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template102079_
                                 _in102205_
                                 _iphi102178_))))
                         (declare (not safe))
                         (__foldl1 cons _r102184_ __tmp110852))))
                  (declare (not safe))
                  (_lp102181_ _rest102204_ __tmp110851))
                (let ()
                  (declare (not safe))
                  (_lp102181_ _rest102204_ _r102184_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp102181_
                                                 _rest102204_
                                                 _r102184_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest102185102193_))
                              (let ((_hd102190102214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest102185102193_)))
                                    (_tl102191102216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest102185102193_))))
                                (let* ((_in102219_ _hd102190102214_)
                                       (_rest102221_ _tl102191102216_))
                                  (declare (not safe))
                                  (_K102189102211_ _rest102221_ _in102219_)))
                              (let ()
                                (declare (not safe))
                                (_else102187102201_)))))))))
          (let* ((_g102081102091_
                  (lambda (_g102082102088_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102082102088_))))
                 (_g102080102172_
                  (lambda (_g102082102094_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102082102094_))
                        (let ((_e102086102096_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102082102094_))))
                          (let ((_hd102085102099_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102086102096_)))
                                (_tl102084102101_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102086102096_))))
                            ((lambda (_L102104_)
                               (let ((_ht102115_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp102117_ ((_rest102119_ _L102104_)
                                                  (_loads102120_ '()))
                                   (letrec ((_K102122_
                                             (lambda (_ctx102165_ _rest102166_)
                                               (let ((_id102168_
                                                      (##structure-ref
                                                       _ctx102165_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht102115_
                                                        _id102168_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp102117_
                                                        _rest102166_
                                                        _loads102120_))
                                                     (let ((_rt102170_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id102168_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht102115_
                                                          _id102168_
                                                          _rt102170_))
                                                       (let ((__tmp110853
                                                              (cons _rt102170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _loads102120_)))
                 (declare (not safe))
                 (_lp102117_ _rest102166_ __tmp110853))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest102123102131_ _rest102119_)
                                            (_else102125102143_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp110855
                                                            (lambda (_g102138102140_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g102138102140_)))
                   (__tmp110854 (reverse _loads102120_)))
               (declare (not safe))
               (##map __tmp110855 __tmp110854)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_K102127102153_
                                             (lambda (_rest102146_ _in102147_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in102147_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K102122_
                                                      _in102147_
                                                      _rest102146_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in102147_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _in102147_
                             '3
                             gx#module-import::t
                             '#f))
                   (let ((__tmp110856
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in102147_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K102122_ __tmp110856 _rest102146_))
                   (let ()
                     (declare (not safe))
                     (_lp102117_ _rest102146_ _loads102120_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in102147_
                      'gx#import-set::t))
                   (let ((_phi102149_
                          (##direct-structure-ref
                           _in102147_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _phi102149_)
                         (let ((__tmp110857
                                (##direct-structure-ref
                                 _in102147_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K102122_ __tmp110857 _rest102146_))
                         (if (fxpositive? _phi102149_)
                             (let* ((_deps102151_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template102079_
                                        _in102147_
                                        '0)))
                                    (__tmp110858
                                     (let ()
                                       (declare (not safe))
                                       (__foldl1
                                        cons
                                        _rest102146_
                                        _deps102151_))))
                               (declare (not safe))
                               (_lp102117_ __tmp110858 _loads102120_))
                             (let ()
                               (declare (not safe))
                               (_lp102117_ _rest102146_ _loads102120_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx102077_
                      _in102147_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest102123102131_))
                                           (let ((_hd102128102156_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest102123102131_)))
                                                 (_tl102129102158_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest102123102131_))))
                                             (let* ((_in102161_
                                                     _hd102128102156_)
                                                    (_rest102163_
                                                     _tl102129102158_))
                                               (declare (not safe))
                                               (_K102127102153_
                                                _rest102163_
                                                _in102161_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else102125102143_))))))))
                             _tl102084102101_)))
                        (let ()
                          (declare (not safe))
                          (_g102081102091_ _g102082102094_))))))
            (declare (not safe))
            (_g102080102172_ _stx102077_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self101891_ _stx101892_)
        (letrec ((_add-lift!101894_
                  (lambda (_expr102074_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (cons _expr102074_ (unbox (gxc#current-compile-lift))))))
                 (_generate-syntax-quote101895_
                  (lambda (_id102071_ _marks102072_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _id102071_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _marks102072_
                                                        '()))))))))
                 (_generate-simple101896_
                  (lambda (_stxq102066_)
                    (let ((_gid102068_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid102069_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq102066_))))
                      (let ((__tmp110859
                             (cons 'define
                                   (cons _gid102068_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (_generate-syntax-quote101895_
                                                  _qid102069_
                                                  ''()))
                                               '())))))
                        (declare (not safe))
                        (_add-lift!101894_ __tmp110859))
                      (let ((__tmp110860 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp110860 _stxq102066_ _gid102068_))
                      _gid102068_)))
                 (_generate-serialized101897_
                  (lambda (_stxq102056_ _marks102057_)
                    (let* ((_mark-refs102059_
                            (map _generate-mark101898_ _marks102057_))
                           (_gid102061_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid102063_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq102056_))))
                      (let ((__tmp110861
                             (cons 'define
                                   (cons _gid102061_
                                         (cons (let ((__tmp110862
                                                      (cons 'list
                                                            _mark-refs102059_)))
                                                 (declare (not safe))
                                                 (_generate-syntax-quote101895_
                                                  _qid102063_
                                                  __tmp110862))
                                               '())))))
                        (declare (not safe))
                        (_add-lift!101894_ __tmp110861))
                      (let ((__tmp110863 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp110863 _stxq102056_ _gid102061_))
                      _gid102061_)))
                 (_generate-mark101898_
                  (lambda (_mark102042_)
                    (let ((_$e102044_
                           (let ((__tmp110864 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp110864 _mark102042_))))
                      (if _$e102044_
                          (values _$e102044_)
                          (let* ((_gid102047_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr102049_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark101899_ _mark102042_)))
                                 (_ctx102051_
                                  (let ((__tmp110865
                                         (##structure-ref
                                          _mark102042_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp110865)))
                                 (_ctx-ref102053_
                                  (if (eq? _ctx102051_
                                           (gx#current-expander-context))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_context-ref101900_ _ctx102051_))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            (let ((__tmp110866 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp110866 _mark102042_ _gid102047_))
                            (let ((__tmp110867
                                   (cons 'define
                                         (cons _gid102047_
                                               (cons (cons 'gx#core-deserialize-mark
                                                           (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _repr102049_ '()))
                         (cons _ctx-ref102053_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                              (declare (not safe))
                              (_add-lift!101894_ __tmp110867))
                            _gid102047_)))))
                 (_serialize-mark101899_
                  (lambda (_mark101989_)
                    (letrec ((_quote-e101991_
                              (lambda (_sym102040_)
                                (if (let ()
                                      (declare (not safe))
                                      (__interned-symbol? _sym102040_))
                                    _sym102040_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym102040_))))))
                      (let* ((_mark101992102001_ _mark101989_)
                             (_E101994102005_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark101992102001_))))
                             (_K101995102017_
                              (lambda (_trace102008_
                                       _phi102009_
                                       _ctx102010_
                                       _subst102011_)
                                (let ((_subs102013_
                                       (if _subst102011_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _subst102011_))
                                           '())))
                                  (cons _phi102009_
                                        (map (lambda (_pair102015_)
                                               (cons (let ((__tmp110868
                                                            (car _pair102015_)))
                                                       (declare (not safe))
                                                       (_quote-e101991_
                                                        __tmp110868))
                                                     (let ((__tmp110869
                                                            (cdr _pair102015_)))
                                                       (declare (not safe))
                                                       (_quote-e101991_
                                                        __tmp110869))))
                                             _subs102013_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark101992102001_
                               'gx#expander-mark::t))
                            (let* ((_e101996102020_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark101992102001_
                                       '1
                                       '#f
                                       '#f)))
                                   (_subst102023_ _e101996102020_)
                                   (_e101997102025_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark101992102001_
                                       '2
                                       '#f
                                       '#f)))
                                   (_ctx102028_ _e101997102025_)
                                   (_e101998102030_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark101992102001_
                                       '3
                                       '#f
                                       '#f)))
                                   (_phi102033_ _e101998102030_)
                                   (_e101999102035_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark101992102001_
                                       '4
                                       '#f
                                       '#f)))
                                   (_trace102038_ _e101999102035_))
                              (declare (not safe))
                              (_K101995102017_
                               _trace102038_
                               _phi102033_
                               _ctx102028_
                               _subst102023_))
                            (let ()
                              (declare (not safe))
                              (_E101994102005_)))))))
                 (_context-ref101900_
                  (lambda (_ctx101976_)
                    (if (let ((__tmp110870
                               (##structure-ref
                                _ctx101976_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp110870
                           'gx#module-context::t))
                        (let ((_ctx-ref101978_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested101902_ _ctx101976_)))
                              (_ctx-origin101979_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin101901_ _ctx101976_)))
                              (_origin101980_
                               (let ((__tmp110871
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin101901_ __tmp110871))))
                          (if (eq? _origin101980_ _ctx-origin101979_)
                              (let ((_ref101982_
                                     (let ((__tmp110872
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested101902_
                                        __tmp110872))))
                                (let _lp101984_ ((_ref101986_
                                                  (cdr _ref101982_))
                                                 (_ctx-ref101987_
                                                  (cdr _ctx-ref101978_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref101986_))
                                           (eq? (car _ref101986_)
                                                (car _ctx-ref101987_)))
                                      (let ((__tmp110874 (cdr _ref101986_))
                                            (__tmp110873
                                             (cdr _ctx-ref101987_)))
                                        (declare (not safe))
                                        (_lp101984_ __tmp110874 __tmp110873))
                                      (cons '#f _ctx-ref101987_))))
                              _ctx-ref101978_))
                        (let ((__tmp110875
                               (##structure-ref
                                _ctx101976_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp110875)))))
                 (_context-ref-origin101901_
                  (lambda (_ctx101968_)
                    (let _lp101970_ ((_ctx101972_ _ctx101968_))
                      (let ((_super101974_
                             (##structure-ref
                              _ctx101972_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super101974_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp101970_ _super101974_))
                            _ctx101972_)))))
                 (_context-ref-nested101902_
                  (lambda (_ctx101959_)
                    (let _lp101961_ ((_ctx101963_ _ctx101959_) (_r101964_ '()))
                      (let ((_super101966_
                             (##structure-ref
                              _ctx101963_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super101966_
                               'gx#module-context::t))
                            (let ((__tmp110876
                                   (cons (car (##structure-ref
                                               _ctx101963_
                                               '7
                                               gx#module-context::t
                                               '#f))
                                         _r101964_)))
                              (declare (not safe))
                              (_lp101961_ _super101966_ __tmp110876))
                            (cons (let ((__tmp110877
                                         (##structure-ref
                                          _ctx101963_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp110877))
                                  _r101964_)))))))
          (let* ((_g101904101917_
                  (lambda (_g101905101914_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101905101914_))))
                 (_g101903101956_
                  (lambda (_g101905101920_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101905101920_))
                        (let ((_e101909101922_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101905101920_))))
                          (let ((_hd101908101925_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101909101922_)))
                                (_tl101907101927_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101909101922_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl101907101927_))
                                (let ((_e101912101930_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl101907101927_))))
                                  (let ((_hd101911101933_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101912101930_)))
                                        (_tl101910101935_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101912101930_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl101910101935_))
                                        ((lambda (_L101938_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L101938_))
                                               (let ((_$e101951_
                                                      (let ((__tmp110878
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp110878
                                                         _L101938_))))
                                                 (if _$e101951_
                                                     (values _$e101951_)
                                                     (let ((_marks101954_
                                                            (##direct-structure-ref
                                                             _L101938_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks101954_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple101896_
                                                              _L101938_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized101897_
                                                              _L101938_
                                                              _marks101954_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L101938_))))
                                         _hd101911101933_)
                                        (let ()
                                          (declare (not safe))
                                          (_g101904101917_ _g101905101920_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101904101917_ _g101905101920_)))))
                        (let ()
                          (declare (not safe))
                          (_g101904101917_ _g101905101920_))))))
            (declare (not safe))
            (_g101903101956_ _stx101892_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self101823_ _stx101824_)
        (let* ((_g101826101843_
                (lambda (_g101827101840_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101827101840_))))
               (_g101825101888_
                (lambda (_g101827101846_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101827101846_))
                      (let ((_e101832101848_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101827101846_))))
                        (let ((_hd101831101851_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101832101848_)))
                              (_tl101830101853_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101832101848_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101830101853_))
                              (let ((_e101835101856_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101830101853_))))
                                (let ((_hd101834101859_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101835101856_)))
                                      (_tl101833101861_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101835101856_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101833101861_))
                                      (let ((_e101838101864_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101833101861_))))
                                        (let ((_hd101837101867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101838101864_)))
                                              (_tl101836101869_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101838101864_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101836101869_))
                                              ((lambda (_L101872_ _L101873_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L101873_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self101823_ _L101872_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd101837101867_
                                               _hd101834101859_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101826101843_
                                                 _g101827101846_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101826101843_ _g101827101846_)))))
                              (let ()
                                (declare (not safe))
                                (_g101826101843_ _g101827101846_)))))
                      (let ()
                        (declare (not safe))
                        (_g101826101843_ _g101827101846_))))))
          (declare (not safe))
          (_g101825101888_ _stx101824_))))
    (define gxc#generate-meta-begin%
      (lambda (_self101772_ _stx101773_)
        (let* ((_g101775101785_
                (lambda (_g101776101782_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101776101782_))))
               (_g101774101820_
                (lambda (_g101776101788_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101776101788_))
                      (let ((_e101780101790_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101776101788_))))
                        (let ((_hd101779101793_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101780101790_)))
                              (_tl101778101795_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101780101790_))))
                          ((lambda (_L101798_)
                             (let* ((_c-body101812_
                                     (map (lambda (_g101807101809_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self101772_
                                               _g101807101809_)))
                                          _L101798_))
                                    (_c-body101817_
                                     (filter (lambda (_$obj101814_)
                                               (let ((__tmp110879
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj101814_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp110879)))
                                             _c-body101812_)))
                               (cons '%#begin _c-body101817_)))
                           _tl101778101795_)))
                      (let ()
                        (declare (not safe))
                        (_g101775101785_ _g101776101788_))))))
          (declare (not safe))
          (_g101774101820_ _stx101773_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self101680_ _stx101681_)
        (let* ((_g101683101693_
                (lambda (_g101684101690_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101684101690_))))
               (_g101682101769_
                (lambda (_g101684101696_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101684101696_))
                      (let ((_e101688101698_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101684101696_))))
                        (let ((_hd101687101701_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101688101698_)))
                              (_tl101686101703_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101688101698_))))
                          ((lambda (_L101706_)
                             (let* ((_phi101716_
                                     (let ((__tmp110880
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (##fx+ __tmp110880 '1)))
                                    (_block101718_
                                     (let ((__tmp110881
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self101680_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp110881
                                        _phi101716_)))
                                    (_compiled101721_
                                     (let ((__tmp110882
                                            (lambda ()
                                              (let ((__tmp110884
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _L101706_))
                                                    (__tmp110883
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self101680_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp110884
                                                 'state:
                                                 __tmp110883)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp110882
                                        gx#current-expander-phi
                                        _phi101716_))))
                               (let* ((_g101724101734_
                                       (lambda (_g101725101731_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g101725101731_))))
                                      (_g101723101766_
                                       (lambda (_g101725101737_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g101725101737_))
                                             (let ((_e101729101739_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g101725101737_))))
                                               (let ((_hd101728101742_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e101729101739_)))
                                                     (_tl101727101744_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e101729101739_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd101728101742_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd101728101742_))
                                                         ((lambda (_L101747_)
                                                            (let ((_c-body101764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj101761_)
                                     (let ((__tmp110885
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj101761_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp110885)))
                                   _L101747_)))
                      (if _block101718_
                          (cons '%#begin-syntax
                                (cons (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'load-module
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _block101718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _c-body101764_))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body101764_))
                              '#!void
                              (cons '%#begin-syntax _c-body101764_)))))
                  _tl101727101744_)
                 (let ()
                   (declare (not safe))
                   (_g101724101734_ _g101725101737_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g101724101734_
                                                        _g101725101737_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g101724101734_
                                                _g101725101737_))))))
                                 (declare (not safe))
                                 (_g101723101766_ _compiled101721_))))
                           _tl101686101703_)))
                      (let ()
                        (declare (not safe))
                        (_g101683101693_ _g101684101696_))))))
          (declare (not safe))
          (_g101682101769_ _stx101681_))))
    (define gxc#generate-meta-module%
      (lambda (_self101611_ _stx101612_)
        (let ((__tmp110886
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self101611_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp110886))
        (let* ((_g101614101628_
                (lambda (_g101615101625_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101615101625_))))
               (_g101613101677_
                (lambda (_g101615101631_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101615101631_))
                      (let ((_e101620101633_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101615101631_))))
                        (let ((_hd101619101636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101620101633_)))
                              (_tl101618101638_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101620101633_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101618101638_))
                              (let ((_e101623101641_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101618101638_))))
                                (let ((_hd101622101644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101623101641_)))
                                      (_tl101621101646_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101623101641_))))
                                  ((lambda (_L101649_ _L101650_)
                                     (let ((_key101663_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L101650_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (__interned-symbol? _key101663_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx101612_
                                              _L101650_
                                              _key101663_)))
                                       (let* ((_ctx101665_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L101650_)))
                                              (_code101668_
                                               (let ((__tmp110887
                                                      (lambda ()
                                                        (let ((__tmp110888
                                                               (##structure-ref
                                                                _ctx101665_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self101611_
                                                           __tmp110888)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp110887
                                                  gx#current-expander-context
                                                  _ctx101665_)))
                                              (_rt101670_
                                               (let ((__tmp110889
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp110889
                                                  _ctx101665_)))
                                              (_loader101672_
                                               (if _rt101670_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _rt101670_ '())) '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_modid101674_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L101650_))))
                                         (let ((__tmp110890
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self101611_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp110890))
                                         (cons '%#module
                                               (cons _modid101674_
                                                     (cons _code101668_
                                                           _loader101672_))))))
                                   _tl101621101646_
                                   _hd101622101644_)))
                              (let ()
                                (declare (not safe))
                                (_g101614101628_ _g101615101631_)))))
                      (let ()
                        (declare (not safe))
                        (_g101614101628_ _g101615101631_))))))
          (declare (not safe))
          (_g101613101677_ _stx101612_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx101601_ _context-chain101602_)
        (let _lp101604_ ((_ctx101606_ _ctx101601_) (_path101607_ '()))
          (let ((_super101609_
                 (##structure-ref _ctx101606_ '3 gx#phi-context::t '#f)))
            (if (memq _super101609_ _context-chain101602_)
                (let ((__tmp110891
                       (let ((__tmp110892
                              (car (##structure-ref
                                    _ctx101606_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp110892 _path101607_))))
                  (declare (not safe))
                  (cons '#f __tmp110891))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super101609_
                       'gx#module-context::t))
                    (let ((__tmp110893
                           (cons (car (##structure-ref
                                       _ctx101606_
                                       '7
                                       gx#module-context::t
                                       '#f))
                                 _path101607_)))
                      (declare (not safe))
                      (_lp101604_ _super101609_ __tmp110893))
                    (cons (let ((__tmp110894
                                 (##structure-ref
                                  _ctx101606_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp110894))
                          _path101607_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp101596_ ((_ctx101598_ (gx#current-expander-context))
                         (_r101599_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx101598_ 'gx#module-context::t))
              (let ((__tmp110896
                     (##structure-ref _ctx101598_ '3 gx#phi-context::t '#f))
                    (__tmp110895 (cons _ctx101598_ _r101599_)))
                (declare (not safe))
                (_lp101596_ __tmp110896 __tmp110895))
              _r101599_))))
    (define gxc#generate-meta-import%
      (lambda (_self101365_ _stx101366_)
        (letrec* ((_context-chain101368_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec101369_
                   (lambda (_in101532_)
                     (let* ((_in101533101545_ _in101532_)
                            (_E101535101549_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in101533101545_))))
                            (_K101536101559_
                             (lambda (_phi101552_
                                      _name101553_
                                      _src-name101554_
                                      _src-phi101555_
                                      _src-key101556_
                                      _src-ctx101557_)
                               (cons _phi101552_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _name101553_))
                                           (cons _src-phi101555_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _src-name101554_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in101533101545_
                              'gx#module-import::t))
                           (let ((_e101537101562_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in101533101545_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e101537101562_
                                    'gx#module-export::t))
                                 (let* ((_e101540101565_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e101537101562_
                                            '1
                                            '#f
                                            '#f)))
                                        (_src-ctx101568_ _e101540101565_)
                                        (_e101541101570_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e101537101562_
                                            '2
                                            '#f
                                            '#f)))
                                        (_src-key101573_ _e101541101570_)
                                        (_e101542101575_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e101537101562_
                                            '3
                                            '#f
                                            '#f)))
                                        (_src-phi101578_ _e101542101575_)
                                        (_e101543101580_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e101537101562_
                                            '4
                                            '#f
                                            '#f)))
                                        (_src-name101583_ _e101543101580_)
                                        (_e101538101585_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in101533101545_
                                            '2
                                            '#f
                                            '#f)))
                                        (_name101588_ _e101538101585_)
                                        (_e101539101590_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in101533101545_
                                            '3
                                            '#f
                                            '#f)))
                                        (_phi101593_ _e101539101590_))
                                   (declare (not safe))
                                   (_K101536101559_
                                    _phi101593_
                                    _name101588_
                                    _src-name101583_
                                    _src-phi101578_
                                    _src-key101573_
                                    _src-ctx101568_))
                                 (let ()
                                   (declare (not safe))
                                   (_E101535101549_))))
                           (let () (declare (not safe)) (_E101535101549_))))))
                  (_make-import-path101370_
                   (lambda (_ctx101530_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx101530_
                        _context-chain101368_))))
                  (_make-import-spec-in101371_
                   (lambda (_ctx101527_ _in101528_)
                     (cons 'spec:
                           (cons (let ()
                                   (declare (not safe))
                                   (_make-import-path101370_ _ctx101527_))
                                 (reverse _in101528_))))))
          (let ((__tmp110897
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self101365_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp110897))
          (let* ((_g101373101383_
                  (lambda (_g101374101380_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101374101380_))))
                 (_g101372101524_
                  (lambda (_g101374101386_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101374101386_))
                        (let ((_e101378101388_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101374101386_))))
                          (let ((_hd101377101391_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101378101388_)))
                                (_tl101376101393_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101378101388_))))
                            ((lambda (_L101396_)
                               (let _lp101407_ ((_rest101409_ _L101396_)
                                                (_current-src101410_ '#f)
                                                (_current-in101411_ '())
                                                (_r101412_ '()))
                                 (let* ((_rest101413101421_ _rest101409_)
                                        (_else101415101431_
                                         (lambda ()
                                           (let ((_r101429_
                                                  (if _current-src101410_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (_make-import-spec-in101371_
                                                               _current-src101410_
                                                               _current-in101411_))
                                                            _r101412_)
                                                      _r101412_)))
                                             (cons '%#import
                                                   (reverse _r101429_)))))
                                        (_K101417101512_
                                         (lambda (_rest101434_ _in101435_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in101435_
                                                  'gx#module-import::t))
                                               (let* ((_in101436101443_
                                                       _in101435_)
                                                      (_E101438101447_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in101436101443_))))
              (_K101439101452_
               (lambda (_src-ctx101450_)
                 (if (eq? _current-src101410_ _src-ctx101450_)
                     (let ((__tmp110898
                            (cons (let ()
                                    (declare (not safe))
                                    (_make-import-spec101369_ _in101435_))
                                  _current-in101411_)))
                       (declare (not safe))
                       (_lp101407_
                        _rest101434_
                        _current-src101410_
                        __tmp110898
                        _r101412_))
                     (if _current-src101410_
                         (let ((__tmp110900
                                (cons (let ()
                                        (declare (not safe))
                                        (_make-import-spec101369_ _in101435_))
                                      '()))
                               (__tmp110899
                                (cons (let ()
                                        (declare (not safe))
                                        (_make-import-spec-in101371_
                                         _current-src101410_
                                         _current-in101411_))
                                      _r101412_)))
                           (declare (not safe))
                           (_lp101407_
                            _rest101434_
                            _src-ctx101450_
                            __tmp110900
                            __tmp110899))
                         (let ((__tmp110901
                                (cons (let ()
                                        (declare (not safe))
                                        (_make-import-spec101369_ _in101435_))
                                      '())))
                           (declare (not safe))
                           (_lp101407_
                            _rest101434_
                            _src-ctx101450_
                            __tmp110901
                            _r101412_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in101436101443_
                                                        'gx#module-import::t))
                                                     (let ((_e101440101455_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in101436101443_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e101440101455_
                                                              'gx#module-export::t))
                                                           (let* ((_e101441101458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e101440101455_
                              '1
                              '#f
                              '#f)))
                          (_src-ctx101461_ _e101441101458_))
                     (declare (not safe))
                     (_K101439101452_ _src-ctx101461_))
                   (let () (declare (not safe)) (_E101438101447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E101438101447_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in101435_
                                                      'gx#import-set::t))
                                                   (let* ((_phi101463_
                                                           (##direct-structure-ref
                                                            _in101435_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src101465_
                                                           (##direct-structure-ref
                                                            _in101435_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in101505_
                                                           (let* ((_g101466101475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path101370_ _src101465_)))
                          (_E101469101479_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g101466101475_)))))
                     (let ((_K101471101495_
                            (lambda (_path101493_) _path101493_))
                           (_K101470101485_
                            (lambda (_path101483_) (cons 'in: _path101483_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g101466101475_))
                           (let ((_tl101473101500_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g101466101475_)))
                                 (_hd101472101498_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g101466101475_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl101473101500_))
                                 (let ((_path101503_ _hd101472101498_))
                                   (declare (not safe))
                                   (_K101471101495_ _path101503_))
                                 (let ((_path101488_ _g101466101475_))
                                   (declare (not safe))
                                   (_K101470101485_ _path101488_))))
                           (let ((_path101488_ _g101466101475_))
                             (declare (not safe))
                             (_K101470101485_ _path101488_))))))
                  (_r101507_
                   (if _current-src101410_
                       (cons (let ()
                               (declare (not safe))
                               (_make-import-spec-in101371_
                                _current-src101410_
                                _current-in101411_))
                             _r101412_)
                       _r101412_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp110902
                                                            (cons (if (fxzero? _phi101463_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _src-in101505_
                              (cons 'phi:
                                    (cons _phi101463_
                                          (cons _src-in101505_ '()))))
                          _r101507_)))
               (declare (not safe))
               (_lp101407_ _rest101434_ '#f '() __tmp110902)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in101435_
                                                          'gx#module-context::t))
                                                       (let* ((_r101510_
                                                               (if _current-src101410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (_make-import-spec-in101371_
                                    _current-src101410_
                                    _current-in101411_))
                                 _r101412_)
                           _r101412_))
                      (__tmp110903
                       (cons (cons 'runtime:
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path101370_ _in101435_)))
                             _r101510_)))
                 (declare (not safe))
                 (_lp101407_ _rest101434_ '#f '() __tmp110903))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest101413101421_))
                                       (let ((_hd101418101515_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest101413101421_)))
                                             (_tl101419101517_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest101413101421_))))
                                         (let* ((_in101520_ _hd101418101515_)
                                                (_rest101522_
                                                 _tl101419101517_))
                                           (declare (not safe))
                                           (_K101417101512_
                                            _rest101522_
                                            _in101520_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else101415101431_))))))
                             _tl101376101393_)))
                        (let ()
                          (declare (not safe))
                          (_g101373101383_ _g101374101386_))))))
            (declare (not safe))
            (_g101372101524_ _stx101366_)))))
    (define gxc#generate-meta-export%
      (lambda (_self101175_ _stx101176_)
        (letrec* ((_context-chain101178_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path101179_
                   (lambda (_ctx101363_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx101363_
                        _context-chain101178_)))))
          (let* ((_g101181101191_
                  (lambda (_g101182101188_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101182101188_))))
                 (_g101180101360_
                  (lambda (_g101182101194_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101182101194_))
                        (let ((_e101186101196_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101182101194_))))
                          (let ((_hd101185101199_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101186101196_)))
                                (_tl101184101201_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101186101196_))))
                            ((lambda (_L101204_)
                               (let _lp101215_ ((_rest101217_ _L101204_)
                                                (_r101218_ '()))
                                 (let* ((_rest101219101227_ _rest101217_)
                                        (_else101221101235_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _r101218_))))
                                        (_K101223101348_
                                         (lambda (_rest101238_ _out101239_)
                                           (let* ((_out101240101253_
                                                   _out101239_)
                                                  (_E101243101257_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out101240101253_)))))
                                             (let ((_K101247101327_
                                                    (lambda (_name101323_
                                                             _phi101324_
                                                             _key101325_)
                                                      (let ((__tmp110904
                                                             (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _phi101324_
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _key101325_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-identifier-key
                                                      _name101323_))
                                                   '()))))
                           _r101218_)))
                (declare (not safe))
                (_lp101215_ _rest101238_ __tmp110904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K101244101307_
                                                    (lambda (_phi101261_
                                                             _src101262_)
                                                      (let* ((_out101302_
                                                              (if _src101262_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_g101263101272_
                                              (let ()
                                                (declare (not safe))
                                                (_make-import-path101179_
                                                 _src101262_)))
                                             (_E101266101276_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _g101263101272_)))))
                                        (let ((_K101268101292_
                                               (lambda (_path101290_)
                                                 _path101290_))
                                              (_K101267101282_
                                               (lambda (_path101280_)
                                                 (cons 'in: _path101280_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _g101263101272_))
                                              (let ((_tl101270101297_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _g101263101272_)))
                                                    (_hd101269101295_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _g101263101272_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl101270101297_))
                                                    (let ((_path101300_
                                                           _hd101269101295_))
                                                      (declare (not safe))
                                                      (_K101268101292_
                                                       _path101300_))
                                                    (let ((_path101285_
                                                           _g101263101272_))
                                                      (declare (not safe))
                                                      (_K101267101282_
                                                       _path101285_))))
                                              (let ((_path101285_
                                                     _g101263101272_))
                                                (declare (not safe))
                                                (_K101267101282_
                                                 _path101285_)))))
                                      '()))
                          '#t))
                     (_out101304_
                      (if (fxzero? _phi101261_)
                          _out101302_
                          (cons 'phi:
                                (cons _phi101261_ (cons _out101302_ '()))))))
                (let ((__tmp110905 (cons _out101304_ _r101218_)))
                  (declare (not safe))
                  (_lp101215_ _rest101238_ __tmp110905))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match101242101320_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out101240101253_
                                                               'gx#export-set::t))
                                                            (let* ((_e101245101310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out101240101253_
                               '1
                               '#f
                               '#f)))
                           (_e101246101315_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out101240101253_
                               '2
                               '#f
                               '#f))))
                      (let ((_src101313_ _e101245101310_)
                            (_phi101318_ _e101246101315_))
                        (let ()
                          (declare (not safe))
                          (_K101244101307_ _phi101318_ _src101313_))))
                    (let () (declare (not safe)) (_E101243101257_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out101240101253_
                                                        'gx#module-export::t))
                                                     (let* ((_e101248101330_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out101240101253_
                        '1
                        '#f
                        '#f)))
                    (_e101249101333_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101240101253_
                        '2
                        '#f
                        '#f)))
                    (_e101250101338_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101240101253_
                        '3
                        '#f
                        '#f)))
                    (_e101251101343_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101240101253_
                        '4
                        '#f
                        '#f))))
               (let ((_key101336_ _e101249101333_)
                     (_phi101341_ _e101250101338_)
                     (_name101346_ _e101251101343_))
                 (let ()
                   (declare (not safe))
                   (_K101247101327_ _name101346_ _phi101341_ _key101336_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match101242101320_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest101219101227_))
                                       (let ((_hd101224101351_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest101219101227_)))
                                             (_tl101225101353_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest101219101227_))))
                                         (let* ((_out101356_ _hd101224101351_)
                                                (_rest101358_
                                                 _tl101225101353_))
                                           (declare (not safe))
                                           (_K101223101348_
                                            _rest101358_
                                            _out101356_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else101221101235_))))))
                             _tl101184101201_)))
                        (let ()
                          (declare (not safe))
                          (_g101181101191_ _g101182101194_))))))
            (declare (not safe))
            (_g101180101360_ _stx101176_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self101136_ _stx101137_)
        (let ((__tmp110906
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self101136_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp110906))
        (let* ((_g101139101149_
                (lambda (_g101140101146_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101140101146_))))
               (_g101138101172_
                (lambda (_g101140101152_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101140101152_))
                      (let ((_e101144101154_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101140101152_))))
                        (let ((_hd101143101157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101144101154_)))
                              (_tl101142101159_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101144101154_))))
                          ((lambda (_L101162_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _L101162_)))
                           _tl101142101159_)))
                      (let ()
                        (declare (not safe))
                        (_g101139101149_ _g101140101152_))))))
          (declare (not safe))
          (_g101138101172_ _stx101137_))))
    (define gxc#generate-meta-extern%
      (lambda (_self101007_ _stx101008_)
        (letrec ((_generate1101010_
                  (lambda (_id101131_ _eid101132_)
                    (let ((_eid101134_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid101132_))))
                      (if (let ()
                            (declare (not safe))
                            (__interned-symbol? _eid101134_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx101008_
                             _eid101134_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _id101131_))
                            (cons _eid101134_ '()))))))
          (let* ((_g101012101040_
                  (lambda (_g101013101037_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101013101037_))))
                 (_g101011101128_
                  (lambda (_g101013101043_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101013101043_))
                        (let ((_e101018101045_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101013101043_))))
                          (let ((_hd101017101048_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101018101045_)))
                                (_tl101016101050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101018101045_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl101016101050_))
                                (let ((_g110907_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl101016101050_
                                          '0))))
                                  (begin
                                    (let ((_g110908_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g110907_)
                                                 (##vector-length _g110907_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g110908_ 2)))
                                          (error "Context expects 2 values"
                                                 _g110908_)))
                                    (let ((_target101019101053_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g110907_ 0)))
                                          (_tl101021101055_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g110907_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl101021101055_))
                                          (letrec ((_loop101022101058_
                                                    (lambda (_hd101020101061_
                                                             _eid101026101063_
                                                             _id101027101065_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd101020101061_))
                                                          (let ((_e101023101068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd101020101061_))))
                    (let ((_lp-hd101024101071_
                           (let ()
                             (declare (not safe))
                             (##car _e101023101068_)))
                          (_lp-tl101025101073_
                           (let ()
                             (declare (not safe))
                             (##cdr _e101023101068_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd101024101071_))
                          (let ((_e101032101076_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd101024101071_))))
                            (let ((_hd101031101079_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e101032101076_)))
                                  (_tl101030101081_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e101032101076_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl101030101081_))
                                  (let ((_e101035101084_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl101030101081_))))
                                    (let ((_hd101034101087_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101035101084_)))
                                          (_tl101033101089_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101035101084_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl101033101089_))
                                          (let ((__tmp110910
                                                 (cons _hd101034101087_
                                                       _eid101026101063_))
                                                (__tmp110909
                                                 (cons _hd101031101079_
                                                       _id101027101065_)))
                                            (declare (not safe))
                                            (_loop101022101058_
                                             _lp-tl101025101073_
                                             __tmp110910
                                             __tmp110909))
                                          (let ()
                                            (declare (not safe))
                                            (_g101012101040_
                                             _g101013101043_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g101012101040_ _g101013101043_)))))
                          (let ()
                            (declare (not safe))
                            (_g101012101040_ _g101013101043_)))))
                  (let ((_eid101028101092_ (reverse _eid101026101063_))
                        (_id101029101094_ (reverse _id101027101065_)))
                    ((lambda (_L101097_ _L101098_)
                       (cons '%#extern
                             (map _generate1101010_
                                  (let ((__tmp110911
                                         (lambda (_g101113101116_
                                                  _g101114101118_)
                                           (cons _g101113101116_
                                                 _g101114101118_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp110911 '() _L101098_))
                                  (let ((__tmp110912
                                         (lambda (_g101120101123_
                                                  _g101121101125_)
                                           (cons _g101120101123_
                                                 _g101121101125_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp110912 '() _L101097_)))))
                     _eid101028101092_
                     _id101029101094_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop101022101058_
                                               _target101019101053_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g101012101040_
                                             _g101013101043_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g101012101040_ _g101013101043_)))))
                        (let ()
                          (declare (not safe))
                          (_g101012101040_ _g101013101043_))))))
            (declare (not safe))
            (_g101011101128_ _stx101008_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self100797_ _stx100798_)
        (letrec ((_generate1100800_
                  (lambda (_id101002_)
                    (let ((_eid101004_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id101002_)))
                          (_ident101005_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id101002_))))
                      (cons '%#define-runtime
                            (cons _ident101005_ (cons _eid101004_ '()))))))
                 (_generate*100801_
                  (lambda (_all100970_)
                    (let* ((_all100971100979_ _all100970_)
                           (_else100973100987_
                            (lambda () (cons '%#begin _all100970_)))
                           (_K100975100992_
                            (lambda (_one100990_) _one100990_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all100971100979_))
                          (let ((_hd100976100995_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all100971100979_)))
                                (_tl100977100997_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all100971100979_))))
                            (let ((_one101000_ _hd100976100995_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl100977100997_))
                                  (let ()
                                    (declare (not safe))
                                    (_K100975100992_ _one101000_))
                                  (let ()
                                    (declare (not safe))
                                    (_else100973100987_)))))
                          (let ()
                            (declare (not safe))
                            (_else100973100987_)))))))
          (let* ((_g100803100820_
                  (lambda (_g100804100817_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g100804100817_))))
                 (_g100802100967_
                  (lambda (_g100804100823_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g100804100823_))
                        (let ((_e100809100825_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g100804100823_))))
                          (let ((_hd100808100828_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e100809100825_)))
                                (_tl100807100830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e100809100825_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl100807100830_))
                                (let ((_e100812100833_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl100807100830_))))
                                  (let ((_hd100811100836_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e100812100833_)))
                                        (_tl100810100838_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e100812100833_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl100810100838_))
                                        (let ((_e100815100841_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl100810100838_))))
                                          (let ((_hd100814100844_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e100815100841_)))
                                                (_tl100813100846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e100815100841_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl100813100846_))
                                                ((lambda (_L100849_ _L100850_)
                                                   (let _lp100866_ ((_rest100868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L100850_)
                            (_r100869_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx110517110518_
                                                             _rest100868_)
                                                            (_g100874100891_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx110517110518_)))))
               (let ((___kont110519110520_
                      (lambda (_L100954_)
                        (let ()
                          (declare (not safe))
                          (_lp100866_ _L100954_ _r100869_))))
                     (___kont110521110522_
                      (lambda (_L100927_ _L100928_)
                        (let ((__tmp110913
                               (cons (let ()
                                       (declare (not safe))
                                       (_generate1100800_ _L100928_))
                                     _r100869_)))
                          (declare (not safe))
                          (_lp100866_ _L100927_ __tmp110913))))
                     (___kont110523110524_
                      (lambda (_L100903_)
                        (let ((__tmp110914
                               (let ((__tmp110915
                                      (cons (let ()
                                              (declare (not safe))
                                              (_generate1100800_ _L100903_))
                                            '())))
                                 (declare (not safe))
                                 (__foldl1 cons __tmp110915 _r100869_))))
                          (declare (not safe))
                          (_generate*100801_ __tmp110914))))
                     (___kont110525110526_
                      (lambda ()
                        (let ((__tmp110916 (reverse _r100869_)))
                          (declare (not safe))
                          (_generate*100801_ __tmp110916)))))
                 (let ((_g100872100914_
                        (lambda ()
                          (let ((_L100903_ ___stx110517110518_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L100903_))
                                (___kont110523110524_ _L100903_)
                                (___kont110525110526_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx110517110518_))
                       (let ((_e100879100943_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx110517110518_))))
                         (let ((_tl100877100948_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e100879100943_)))
                               (_hd100878100946_
                                (let ()
                                  (declare (not safe))
                                  (##car _e100879100943_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd100878100946_))
                               (let ((_e100880100951_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd100878100946_))))
                                 (if (equal? _e100880100951_ '#f)
                                     (___kont110519110520_ _tl100877100948_)
                                     (___kont110521110522_
                                      _tl100877100948_
                                      _hd100878100946_)))
                               (___kont110521110522_
                                _tl100877100948_
                                _hd100878100946_))))
                       (let () (declare (not safe)) (_g100872100914_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd100814100844_
                                                 _hd100811100836_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g100803100820_
                                                   _g100804100823_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g100803100820_ _g100804100823_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g100803100820_ _g100804100823_)))))
                        (let ()
                          (declare (not safe))
                          (_g100803100820_ _g100804100823_))))))
            (declare (not safe))
            (_g100802100967_ _stx100798_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self100694_ _stx100695_)
        (let* ((_g100697100714_
                (lambda (_g100698100711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100698100711_))))
               (_g100696100794_
                (lambda (_g100698100717_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100698100717_))
                      (let ((_e100703100719_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100698100717_))))
                        (let ((_hd100702100722_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100703100719_)))
                              (_tl100701100724_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100703100719_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100701100724_))
                              (let ((_e100706100727_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100701100724_))))
                                (let ((_hd100705100730_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100706100727_)))
                                      (_tl100704100732_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100706100727_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100704100732_))
                                      (let ((_e100709100735_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100704100732_))))
                                        (let ((_hd100708100738_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100709100735_)))
                                              (_tl100707100740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100709100735_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100707100740_))
                                              ((lambda (_L100743_ _L100744_)
                                                 (let* ((_eid100759_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L100744_)))
                                                        (_phi100761_
                                                         (let ((__tmp110917
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (##fx+ __tmp110917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '1)))
                (_block100763_
                 (let ((__tmp110918
                        (let ()
                          (declare (not safe))
                          (slot-ref__0 _self100694_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp110918 _phi100761_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g100766100773_
                                                           (lambda (_g100767100770_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g100767100770_))))
                  (_g100765100791_
                   (lambda (_g100767100776_)
                     ((lambda (_L100778_)
                        (let ()
                          (let ((__tmp110920
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self100694_ 'state)))
                                (__tmp110919
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          '%#define-runtime))
                                       (cons _L100778_ (cons _L100743_ '())))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp110920
                             _phi100761_
                             __tmp110919))))
                      _g100767100776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g100765100791_
                                                      _eid100759_))
                                                   (if _block100763_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _block100763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _L100744_))
                                             (cons _eid100759_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _L100744_))
                           (cons _eid100759_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd100708100738_
                                               _hd100705100730_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100697100714_
                                                 _g100698100717_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100697100714_ _g100698100717_)))))
                              (let ()
                                (declare (not safe))
                                (_g100697100714_ _g100698100717_)))))
                      (let ()
                        (declare (not safe))
                        (_g100697100714_ _g100698100717_))))))
          (declare (not safe))
          (_g100696100794_ _stx100695_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self100626_ _stx100627_)
        (let* ((_g100629100646_
                (lambda (_g100630100643_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100630100643_))))
               (_g100628100691_
                (lambda (_g100630100649_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100630100649_))
                      (let ((_e100635100651_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100630100649_))))
                        (let ((_hd100634100654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100635100651_)))
                              (_tl100633100656_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100635100651_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100633100656_))
                              (let ((_e100638100659_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100633100656_))))
                                (let ((_hd100637100662_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100638100659_)))
                                      (_tl100636100664_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100638100659_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100636100664_))
                                      (let ((_e100641100667_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100636100664_))))
                                        (let ((_hd100640100670_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100641100667_)))
                                              (_tl100639100672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100641100667_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100639100672_))
                                              ((lambda (_L100675_ _L100676_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _L100676_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _L100675_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd100640100670_
                                               _hd100637100662_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100629100646_
                                                 _g100630100649_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100629100646_ _g100630100649_)))))
                              (let ()
                                (declare (not safe))
                                (_g100629100646_ _g100630100649_)))))
                      (let ()
                        (declare (not safe))
                        (_g100629100646_ _g100630100649_))))))
          (declare (not safe))
          (_g100628100691_ _stx100627_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self100623_ _stx100624_)
        (let ((__tmp110922
               (let () (declare (not safe)) (slot-ref__0 _self100623_ 'state)))
              (__tmp110921 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp110922 __tmp110921 _stx100624_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self100623_ _stx100624_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self100620_ _stx100621_)
        (let ((__tmp110924
               (let () (declare (not safe)) (slot-ref__0 _self100620_ 'state)))
              (__tmp110923 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp110924 __tmp110923 _stx100621_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp110926 (list)) (__tmp110925 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp110926
         '(src n open blocks)
         __tmp110925
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args100617_
        (apply make-instance gxc#meta-state::t _$args100617_)))
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
      (lambda (_self100614_ _ctx100615_)
        (if (let ((__tmp110927
                   (let ()
                     (declare (not safe))
                     (##structure-length _self100614_))))
              (declare (not safe))
              (##fx< '4 __tmp110927))
            (begin
              (let ((__tmp110928
                     (let ((__tmp110929
                            (##structure-ref
                             _ctx100615_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp110929))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self100614_
                 __tmp110928
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set! _self100614_ '1 '2 '#f '#f))
              (let ((__tmp110930
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self100614_
                 __tmp110930
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set! _self100614_ '() '4 '#f '#f))
              '#!void)
            (let ((__tmp110931
                   (let ()
                     (declare (not safe))
                     (##vector-length _self100614_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self100614_
                     '4
                     __tmp110931)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp110933 (list)) (__tmp110932 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp110933
         '(ctx phi n code)
         __tmp110932
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args100489_
        (apply make-instance gxc#meta-state-block::t _$args100489_)))
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
      (lambda (_state100448_ _phi100449_)
        (let* ((_state100450100458_ _state100448_)
               (_E100452100462_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state100450100458_))))
               (_K100453100471_
                (lambda (_open100465_ _n100466_ _src100467_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open100465_ _phi100449_))
                      '#f
                      (let ((_block-ref100469_
                             (let ((__tmp110934 (number->string _n100466_)))
                               (declare (not safe))
                               (##string-append
                                _src100467_
                                '"~"
                                __tmp110934))))
                        (##structure-set!
                         _state100448_
                         (let () (declare (not safe)) (##fx+ _n100466_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp110935
                               (let ((__tmp110936
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp110936
                                  _phi100449_
                                  _n100466_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open100465_ _phi100449_ __tmp110935))
                        _block-ref100469_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state100450100458_
                 'gxc#meta-state::t))
              (let* ((_e100454100474_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state100450100458_
                         '1
                         '#f
                         '#f)))
                     (_src100477_ _e100454100474_)
                     (_e100455100479_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state100450100458_
                         '2
                         '#f
                         '#f)))
                     (_n100482_ _e100455100479_)
                     (_e100456100484_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state100450100458_
                         '3
                         '#f
                         '#f)))
                     (_open100487_ _e100456100484_))
                (declare (not safe))
                (_K100453100471_ _open100487_ _n100482_ _src100477_))
              (let () (declare (not safe)) (_E100452100462_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state100442_ _phi100443_ _stx100444_)
        (let ((_block100446_
               (let ((__tmp110937
                      (##structure-ref
                       _state100442_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp110937 _phi100443_))))
          (##structure-set!
           _block100446_
           (cons _stx100444_
                 (##structure-ref
                  _block100446_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state100436_)
        (##structure-set!
         _state100436_
         (let ((__tmp110940
                (lambda (__100438_ _block100439_ _r100440_)
                  (cons _block100439_ _r100440_)))
               (__tmp110939
                (##structure-ref _state100436_ '4 gxc#meta-state::t '#f))
               (__tmp110938
                (##structure-ref _state100436_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp110940 __tmp110939 __tmp110938))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state100436_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state100388_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state100388_))
        (let ((__tmp110942
               (lambda (_block100390_ _r100391_)
                 (let* ((_block100392100401_ _block100390_)
                        (_E100394100405_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block100392100401_))))
                        (_K100395100413_
                         (lambda (_code100408_
                                  _n100409_
                                  _phi100410_
                                  _ctx100411_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code100408_))
                               _r100391_
                               (cons (cons _ctx100411_
                                           (cons _phi100410_
                                                 (cons _n100409_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _code100408_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _r100391_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block100392100401_
                          'gxc#meta-state-block::t))
                       (let* ((_e100396100416_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block100392100401_
                                  '1
                                  '#f
                                  '#f)))
                              (_ctx100419_ _e100396100416_)
                              (_e100397100421_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block100392100401_
                                  '2
                                  '#f
                                  '#f)))
                              (_phi100424_ _e100397100421_)
                              (_e100398100426_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block100392100401_
                                  '3
                                  '#f
                                  '#f)))
                              (_n100429_ _e100398100426_)
                              (_e100399100431_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block100392100401_
                                  '4
                                  '#f
                                  '#f)))
                              (_code100434_ _e100399100431_))
                         (declare (not safe))
                         (_K100395100413_
                          _code100434_
                          _n100429_
                          _phi100424_
                          _ctx100419_))
                       (let () (declare (not safe)) (_E100394100405_))))))
              (__tmp110941
               (##structure-ref _state100388_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp110942 '() __tmp110941))))
    (define gxc#collect-expression-refs
      (lambda (_stx100384_)
        (let ((_ht100386_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx100384_ 'table: _ht100386_))
          _ht100386_)))
    (define gxc#collect-refs-ref%
      (lambda (_self100327_ _stx100328_)
        (let* ((_g100330100343_
                (lambda (_g100331100340_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100331100340_))))
               (_g100329100381_
                (lambda (_g100331100346_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100331100346_))
                      (let ((_e100335100348_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100331100346_))))
                        (let ((_hd100334100351_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100335100348_)))
                              (_tl100333100353_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100335100348_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100333100353_))
                              (let ((_e100338100356_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100333100353_))))
                                (let ((_hd100337100359_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100338100356_)))
                                      (_tl100336100361_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100338100356_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl100336100361_))
                                      ((lambda (_L100364_)
                                         (let* ((_bind100376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L100364_)))
                                                (_eid100378_
                                                 (if _bind100376_
                                                     (##structure-ref
                                                      _bind100376_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L100364_)))))
                                           (let ((__tmp110943
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self100327_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp110943
                                              _eid100378_
                                              _eid100378_))))
                                       _hd100337100359_)
                                      (let ()
                                        (declare (not safe))
                                        (_g100330100343_ _g100331100346_)))))
                              (let ()
                                (declare (not safe))
                                (_g100330100343_ _g100331100346_)))))
                      (let ()
                        (declare (not safe))
                        (_g100330100343_ _g100331100346_))))))
          (declare (not safe))
          (_g100329100381_ _stx100328_))))
    (define gxc#collect-refs-setq%
      (lambda (_self100254_ _stx100255_)
        (let* ((_g100257100274_
                (lambda (_g100258100271_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100258100271_))))
               (_g100256100324_
                (lambda (_g100258100277_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100258100277_))
                      (let ((_e100263100279_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100258100277_))))
                        (let ((_hd100262100282_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100263100279_)))
                              (_tl100261100284_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100263100279_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100261100284_))
                              (let ((_e100266100287_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100261100284_))))
                                (let ((_hd100265100290_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100266100287_)))
                                      (_tl100264100292_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100266100287_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100264100292_))
                                      (let ((_e100269100295_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100264100292_))))
                                        (let ((_hd100268100298_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100269100295_)))
                                              (_tl100267100300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100269100295_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100267100300_))
                                              ((lambda (_L100303_ _L100304_)
                                                 (let* ((_bind100319_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L100304_)))
                                                        (_eid100321_
                                                         (if _bind100319_
                                                             (##structure-ref
                                                              _bind100319_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L100304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp110944
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self100254_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp110944
                                                      _eid100321_
                                                      _eid100321_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self100254_
                                                      _L100303_))))
                                               _hd100268100298_
                                               _hd100265100290_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100257100274_
                                                 _g100258100277_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100257100274_ _g100258100277_)))))
                              (let ()
                                (declare (not safe))
                                (_g100257100274_ _g100258100277_)))))
                      (let ()
                        (declare (not safe))
                        (_g100257100274_ _g100258100277_))))))
          (declare (not safe))
          (_g100256100324_ _stx100255_))))
    (define gxc#find-runtime-begin%
      (lambda (_self100211_ _stx100212_)
        (let* ((_g100214100224_
                (lambda (_g100215100221_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100215100221_))))
               (_g100213100251_
                (lambda (_g100215100227_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100215100227_))
                      (let ((_e100219100229_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100215100227_))))
                        (let ((_hd100218100232_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100219100229_)))
                              (_tl100217100234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100219100229_))))
                          ((lambda (_L100237_)
                             (let ((__tmp110945
                                    (lambda (_g100246100248_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self100211_
                                         _g100246100248_)))))
                               (declare (not safe))
                               (__ormap1 __tmp110945 _L100237_)))
                           _tl100217100234_)))
                      (let ()
                        (declare (not safe))
                        (_g100214100224_ _g100215100227_))))))
          (declare (not safe))
          (_g100213100251_ _stx100212_))))
    (define gxc#count-values-single% (lambda (_self100208_ _stx100209_) '1))
    (define gxc#count-values-call%
      (lambda (_self100074_ _stx100075_)
        (let* ((___stx110547110548_ _stx100075_)
               (_g100078100107_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx110547110548_)))))
          (let ((___kont110549110550_
                 (lambda (_L100175_ _L100176_)
                   (length (let ((__tmp110946
                                  (lambda (_g100197100200_ _g100198100202_)
                                    (cons _g100197100200_ _g100198100202_))))
                             (declare (not safe))
                             (__foldr1 __tmp110946 '() _L100175_)))))
                (___kont110553110554_ (lambda () '#f)))
            (let ((___match110592110593_
                   (lambda (_e100084100119_
                            _hd100083100122_
                            _tl100082100124_
                            _e100087100127_
                            _hd100086100130_
                            _tl100085100132_
                            _e100090100135_
                            _hd100089100138_
                            _tl100088100140_
                            _e100093100143_
                            _hd100092100146_
                            _tl100091100148_
                            ___splice110551110552_
                            _target100094100151_
                            _tl100096100153_)
                     (letrec ((_loop100097100156_
                               (lambda (_hd100095100159_ _rand100101100161_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd100095100159_))
                                     (let ((_e100098100164_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd100095100159_))))
                                       (let ((_lp-tl100100100169_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e100098100164_)))
                                             (_lp-hd100099100167_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e100098100164_))))
                                         (let ((__tmp110947
                                                (cons _lp-hd100099100167_
                                                      _rand100101100161_)))
                                           (declare (not safe))
                                           (_loop100097100156_
                                            _lp-tl100100100169_
                                            __tmp110947))))
                                     (let ((_rand100102100172_
                                            (reverse _rand100101100161_)))
                                       (let ((_L100175_ _rand100102100172_)
                                             (_L100176_ _hd100092100146_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L100176_
                                                'values))
                                             (___kont110549110550_
                                              _L100175_
                                              _L100176_)
                                             (___kont110553110554_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop100097100156_ _target100094100151_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx110547110548_))
                  (let ((_e100084100119_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx110547110548_))))
                    (let ((_tl100082100124_
                           (let ()
                             (declare (not safe))
                             (##cdr _e100084100119_)))
                          (_hd100083100122_
                           (let ()
                             (declare (not safe))
                             (##car _e100084100119_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl100082100124_))
                          (let ((_e100087100127_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl100082100124_))))
                            (let ((_tl100085100132_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e100087100127_)))
                                  (_hd100086100130_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e100087100127_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd100086100130_))
                                  (let ((_e100090100135_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd100086100130_))))
                                    (let ((_tl100088100140_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e100090100135_)))
                                          (_hd100089100138_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e100090100135_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd100089100138_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd100089100138_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl100088100140_))
                                                  (let ((_e100093100143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl100088100140_))))
                                                    (let ((_tl100091100148_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e100093100143_)))
                                                          (_hd100092100146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e100093100143_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl100091100148_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl100085100132_))
                      (let ((___splice110551110552_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl100085100132_ '0))))
                        (let ((_tl100096100153_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice110551110552_ '1)))
                              (_target100094100151_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice110551110552_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl100096100153_))
                              (___match110592110593_
                               _e100084100119_
                               _hd100083100122_
                               _tl100082100124_
                               _e100087100127_
                               _hd100086100130_
                               _tl100085100132_
                               _e100090100135_
                               _hd100089100138_
                               _tl100088100140_
                               _e100093100143_
                               _hd100092100146_
                               _tl100091100148_
                               ___splice110551110552_
                               _target100094100151_
                               _tl100096100153_)
                              (___kont110553110554_))))
                      (___kont110553110554_))
                  (___kont110553110554_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont110553110554_))
                                              (___kont110553110554_))
                                          (___kont110553110554_))))
                                  (___kont110553110554_))))
                          (___kont110553110554_))))
                  (___kont110553110554_)))))))
    (define gxc#count-values-if%
      (lambda (_self99977_ _stx99978_)
        (let* ((_g99980100001_
                (lambda (_g9998199998_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g9998199998_))))
               (_g99979100071_
                (lambda (_g99981100004_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g99981100004_))
                      (let ((_e99987100006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g99981100004_))))
                        (let ((_hd99986100009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e99987100006_)))
                              (_tl99985100011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e99987100006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl99985100011_))
                              (let ((_e99990100014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl99985100011_))))
                                (let ((_hd99989100017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e99990100014_)))
                                      (_tl99988100019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e99990100014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl99988100019_))
                                      (let ((_e99993100022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl99988100019_))))
                                        (let ((_hd99992100025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e99993100022_)))
                                              (_tl99991100027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e99993100022_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl99991100027_))
                                              (let ((_e99996100030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl99991100027_))))
                                                (let ((_hd99995100033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e99996100030_)))
                                                      (_tl99994100035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e99996100030_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl99994100035_))
                                                      ((lambda (_L100038_
                                                                _L100039_
                                                                _L100040_)
                                                         (let ((_c1100057100059_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self99977_ _L100039_))))
                   (if _c1100057100059_
                       (let* ((_c1100062_ _c1100057100059_)
                              (_c2100063100065_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self99977_ _L100038_))))
                         (if _c2100063100065_
                             (let ((_c2100068_ _c2100063100065_))
                               (if (fx= _c1100062_ _c2100068_) _c1100062_ '#f))
                             '#f))
                       '#f)))
               _hd99995100033_
               _hd99992100025_
               _hd99989100017_)
              (let () (declare (not safe)) (_g99980100001_ _g99981100004_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g99980100001_
                                                 _g99981100004_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g99980100001_ _g99981100004_)))))
                              (let ()
                                (declare (not safe))
                                (_g99980100001_ _g99981100004_)))))
                      (let ()
                        (declare (not safe))
                        (_g99980100001_ _g99981100004_))))))
          (declare (not safe))
          (_g99979100071_ _stx99978_))))))
