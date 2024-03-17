(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710715076)
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
        (letrec ((_hash-e112497_
                  (lambda (_id112499_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112499_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112497_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp113855 (list gxc#::void::t))
            (__tmp113853
             (let ((__tmp113854
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113854 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp113855
         '()
         __tmp113853
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112493_
        (apply make-instance gxc#::collect-bindings::t _$args112493_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp113856
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
        (make-promise __tmp113856)))
    (define gxc#apply-collect-bindings
      (lambda (_stx112485_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112488_
                (let ((__obj113829
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj113829))
               (__tmp113857
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112488_ _stx112485_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113857
           gxc#current-compile-method
           _self112488_))))
    (define gxc#::lift-modules::t
      (let ((__tmp113860 (list gxc#::void::t))
            (__tmp113858
             (let ((__tmp113859
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113859 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp113860
         '(modules)
         __tmp113858
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112482_
        (apply make-instance gxc#::lift-modules::t _$args112482_)))
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
      (let ((__tmp113861
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
        (make-promise __tmp113861)))
    (define gxc#apply-lift-modules__%
      (lambda (_g113862_ _modules112453112456_ _stx112458_)
        (let ((_modules112461_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112453112456_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112453112456_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112463_
                  (let ((__obj113831
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113831
                       _modules112461_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj113831))
                 (__tmp113863
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112463_ _stx112458_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113863
             gxc#current-compile-method
             _self112463_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112452112470_ . _args112472_)
        (apply gxc#apply-lift-modules__%
               _keys112452112470_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112452112470_
                  'modules:
                  absent-value))
               _args112472_)))
    (define gxc#apply-lift-modules
      (lambda _args112454112478_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112454112478_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp113866 (list))
            (__tmp113864
             (let ((__tmp113865
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113865 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp113866
         '()
         __tmp113864
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112448_
        (apply make-instance gxc#::find-runtime-code::t _$args112448_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp113867
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
        (make-promise __tmp113867)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx112440_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112443_
                (let ((__obj113833
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj113833))
               (__tmp113868
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112443_ _stx112440_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113868
           gxc#current-compile-method
           _self112443_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp113871 (list gxc#::false::t))
            (__tmp113869
             (let ((__tmp113870
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113870 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp113871
         '()
         __tmp113869
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112437_
        (apply make-instance gxc#::find-lambda-expression::t _$args112437_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp113872
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
        (make-promise __tmp113872)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx112429_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112432_
                (let ((__obj113835
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj113835))
               (__tmp113873
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112432_ _stx112429_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113873
           gxc#current-compile-method
           _self112432_))))
    (define gxc#::count-values::t
      (let ((__tmp113876 (list gxc#::false-expression::t))
            (__tmp113874
             (let ((__tmp113875
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113875 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp113876
         '()
         __tmp113874
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112426_
        (apply make-instance gxc#::count-values::t _$args112426_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp113877
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
        (make-promise __tmp113877)))
    (define gxc#apply-count-values
      (lambda (_stx112418_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112421_
                (let ((__obj113837
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj113837))
               (__tmp113878
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112421_ _stx112418_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113878
           gxc#current-compile-method
           _self112421_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp113879 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp113879
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112415_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112415_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp113880
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
        (make-promise __tmp113880)))
    (define gxc#::generate-loader::t
      (let ((__tmp113883 (list gxc#::generate-runtime-empty::t))
            (__tmp113881
             (let ((__tmp113882
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113882 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp113883
         '()
         __tmp113881
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112411_
        (apply make-instance gxc#::generate-loader::t _$args112411_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp113884
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
        (make-promise __tmp113884)))
    (define gxc#apply-generate-loader
      (lambda (_stx112403_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112406_
                (let ((__obj113840
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj113840))
               (__tmp113885
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112406_ _stx112403_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113885
           gxc#current-compile-method
           _self112406_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp113886 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp113886
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112400_
        (apply make-instance gxc#::generate-runtime::t _$args112400_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp113887
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
        (make-promise __tmp113887)))
    (define gxc#apply-generate-runtime
      (lambda (_stx112392_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112395_
                (let ((__obj113842
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj113842))
               (__tmp113888
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112395_ _stx112392_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113888
           gxc#current-compile-method
           _self112395_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp113891 (list gxc#::generate-runtime::t))
            (__tmp113889
             (let ((__tmp113890
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113890 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp113891
         '()
         __tmp113889
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112389_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112389_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp113892
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
        (make-promise __tmp113892)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx112381_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112384_
                (let ((__obj113844
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj113844))
               (__tmp113893
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112384_ _stx112381_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113893
           gxc#current-compile-method
           _self112384_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp113894 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp113894
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112378_
        (apply make-instance gxc#::collect-expression-refs::t _$args112378_)))
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
      (let ((__tmp113895
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
        (make-promise __tmp113895)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_g113896_ _table112349112352_ _stx112354_)
        (let ((_table112357_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112349112352_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112349112352_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112359_
                  (let ((__obj113846
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113846
                       _table112357_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj113846))
                 (__tmp113897
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112359_ _stx112354_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113897
             gxc#current-compile-method
             _self112359_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112348112366_ . _args112368_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112348112366_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112348112366_ 'table: absent-value))
               _args112368_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112350112374_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112350112374_)))
    (define gxc#::generate-meta::t
      (let ((__tmp113900 (list gxc#::void-expression::t))
            (__tmp113898
             (let ((__tmp113899
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113899 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp113900
         '(state)
         __tmp113898
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112344_
        (apply make-instance gxc#::generate-meta::t _$args112344_)))
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
      (let ((__tmp113901
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
        (make-promise __tmp113901)))
    (define gxc#apply-generate-meta__%
      (lambda (_g113902_ _state112315112318_ _stx112320_)
        (let ((_state112323_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112315112318_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112315112318_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112325_
                  (let ((__obj113848
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113848
                       _state112323_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj113848))
                 (__tmp113903
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112325_ _stx112320_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113903
             gxc#current-compile-method
             _self112325_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112314112332_ . _args112334_)
        (apply gxc#apply-generate-meta__%
               _keys112314112332_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112314112332_ 'state: absent-value))
               _args112334_)))
    (define gxc#apply-generate-meta
      (lambda _args112316112340_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112316112340_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp113906 (list))
            (__tmp113904
             (let ((__tmp113905
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113905 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp113906
         '(state)
         __tmp113904
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112310_
        (apply make-instance gxc#::generate-meta-phi::t _$args112310_)))
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
      (let ((__tmp113907
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
        (make-promise __tmp113907)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_g113908_ _state112281112284_ _stx112286_)
        (let ((_state112289_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112281112284_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112281112284_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112291_
                  (let ((__obj113850
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113850
                       _state112289_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj113850))
                 (__tmp113909
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112291_ _stx112286_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113909
             gxc#current-compile-method
             _self112291_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112280112298_ . _args112300_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112280112298_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112280112298_ 'state: absent-value))
               _args112300_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112282112306_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112282112306_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112209_ _stx112210_)
        (let* ((_g112212112229_
                (lambda (_g112213112226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112213112226_))))
               (_g112211112276_
                (lambda (_g112213112232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112213112232_))
                      (let ((_e112218112234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112213112232_))))
                        (let ((_hd112217112237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112218112234_)))
                              (_tl112216112239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112218112234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112216112239_))
                              (let ((_e112221112242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112216112239_))))
                                (let ((_hd112220112245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112221112242_)))
                                      (_tl112219112247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112221112242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112219112247_))
                                      (let ((_e112224112250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112219112247_))))
                                        (let ((_hd112223112253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112224112250_)))
                                              (_tl112222112255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112224112250_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112222112255_))
                                              ((lambda (_L112258_ _L112259_)
                                                 (let ((__tmp113910
                                                        (lambda (_bind112274_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112274_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112274_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp113910
                                                    _L112259_)))
                                               _hd112223112253_
                                               _hd112220112245_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112212112229_
                                                 _g112213112232_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112212112229_ _g112213112232_)))))
                              (let ()
                                (declare (not safe))
                                (_g112212112229_ _g112213112232_)))))
                      (let ()
                        (declare (not safe))
                        (_g112212112229_ _g112213112232_))))))
          (declare (not safe))
          (_g112211112276_ _stx112210_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112141_ _stx112142_)
        (let* ((_g112144112161_
                (lambda (_g112145112158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112145112158_))))
               (_g112143112206_
                (lambda (_g112145112164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112145112164_))
                      (let ((_e112150112166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112145112164_))))
                        (let ((_hd112149112169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112150112166_)))
                              (_tl112148112171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112150112166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112148112171_))
                              (let ((_e112153112174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112148112171_))))
                                (let ((_hd112152112177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112153112174_)))
                                      (_tl112151112179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112153112174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112151112179_))
                                      (let ((_e112156112182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112151112179_))))
                                        (let ((_hd112155112185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112156112182_)))
                                              (_tl112154112187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112156112182_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112154112187_))
                                              ((lambda (_L112190_ _L112191_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112191_
                                                    '#t)))
                                               _hd112155112185_
                                               _hd112152112177_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112144112161_
                                                 _g112145112164_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112144112161_ _g112145112164_)))))
                              (let ()
                                (declare (not safe))
                                (_g112144112161_ _g112145112164_)))))
                      (let ()
                        (declare (not safe))
                        (_g112144112161_ _g112145112164_))))))
          (declare (not safe))
          (_g112143112206_ _stx112142_))))
    (define gxc#lift-modules-module%
      (lambda (_self112083_ _stx112084_)
        (let* ((_g112086112100_
                (lambda (_g112087112097_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112087112097_))))
               (_g112085112138_
                (lambda (_g112087112103_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112087112103_))
                      (let ((_e112092112105_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112087112103_))))
                        (let ((_hd112091112108_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112092112105_)))
                              (_tl112090112110_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112092112105_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112090112110_))
                              (let ((_e112095112113_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112090112110_))))
                                (let ((_hd112094112116_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112095112113_)))
                                      (_tl112093112118_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112095112113_))))
                                  ((lambda (_L112121_ _L112122_)
                                     (let ((_ctx112135_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112122_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112083_ 'modules))
                                        (let ((__tmp113911
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112083_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112135_ __tmp113911)))
                                       (let ((__tmp113912
                                              (lambda ()
                                                (let ((__tmp113913
                                                       (##structure-ref
                                                        _ctx112135_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112083_
                                                   __tmp113913)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp113912
                                          gx#current-expander-context
                                          _ctx112135_))))
                                   _tl112093112118_
                                   _hd112094112116_)))
                              (let ()
                                (declare (not safe))
                                (_g112086112100_ _g112087112103_)))))
                      (let ()
                        (declare (not safe))
                        (_g112086112100_ _g112087112103_))))))
          (declare (not safe))
          (_g112085112138_ _stx112084_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112039112041_ (gxc#current-compile-decls)))
          (if _decls112039112041_
              (let ((_decls112044_ _decls112039112041_))
                (let _lp112046_ ((_rest112048_ _decls112044_))
                  (let* ((_rest112049112057_ _rest112048_)
                         (_else112051112065_ (lambda () '#f))
                         (_K112053112071_
                          (lambda (_decls112068_ _decl112069_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112069_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112069_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112046_ _decls112068_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112049112057_))
                        (let ((_hd112054112074_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112049112057_)))
                              (_tl112055112076_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112049112057_))))
                          (let* ((_decl112079_ _hd112054112074_)
                                 (_decls112081_ _tl112055112076_))
                            (declare (not safe))
                            (_K112053112071_ _decls112081_ _decl112079_)))
                        (let () (declare (not safe)) (_else112051112065_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112033_ _syntax?112034_)
        (let ((_eid112036_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112033_))
                '1
                gx#binding::t
                '#f))
              (_ht112037_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _eid112036_))
              '#!void
              (let ((__tmp113914
                     (let ((__tmp113915
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112036_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp113915 _syntax?112034_))))
                (declare (not safe))
                (hash-put! _ht112037_ _eid112036_ __tmp113914))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112026_ _id2112027_)
        (letrec ((_symbol-e112029_
                  (lambda (_id112031_)
                    (if (let () (declare (not safe)) (symbol? _id112031_))
                        _id112031_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112031_))))))
          (let ((__tmp113917
                 (let () (declare (not safe)) (_symbol-e112029_ _id1112026_)))
                (__tmp113916
                 (let () (declare (not safe)) (_symbol-e112029_ _id2112027_))))
            (declare (not safe))
            (eq? __tmp113917 __tmp113916)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112004_)
        (let ((_$e112006_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112004_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112004_))
                   '#f)))
          (if _$e112006_
              ((lambda (_bind112009_)
                 (let ((_eid112011_
                        (##structure-ref _bind112009_ '1 gx#binding::t '#f))
                       (_ht112012_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _eid112011_))
                       _eid112011_
                       (let ((_$e112014_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112012_ _eid112011_))))
                         (if _$e112014_
                             (values _$e112014_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112009_
                                    'gx#local-binding::t))
                                 (let ((_gid112017_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112011_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112012_
                                      _eid112011_
                                      _gid112017_))
                                   _gid112017_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112009_
                                        'gx#module-binding::t))
                                     (let ((_gid112024_
                                            (let ((_$e112019_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112009_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112019_
                                                  ((lambda (_ns112022_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112022_
                                                        '"#"
                                                        _eid112011_)))
                                                   _$e112019_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112011_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112012_
                                          _eid112011_
                                          _gid112024_))
                                       _gid112024_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112004_
                                        _eid112011_
                                        _bind112009_)))))))))
               _$e112006_)
              (if (let ((__tmp113918
                         (let () (declare (not safe)) (gx#stx-e _id112004_))))
                    (declare (not safe))
                    (interned-symbol? __tmp113918))
                  (let () (declare (not safe)) (gx#stx-e _id112004_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112004_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112002_)
        (if (let () (declare (not safe)) (gx#identifier? _id112002_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112002_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym111982_ _quote?111983_)
        (let* ((_ht111985_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e111987_
                (let ()
                  (declare (not safe))
                  (hash-get _ht111985_ _sym111982_))))
          (if _$e111987_
              (values _$e111987_)
              (let ((_g111990_
                     (if _quote?111983_
                         (let ((__tmp113919 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym111982_
                            '"__"
                            __tmp113919))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym111982_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht111985_ _sym111982_ _g111990_))
                _g111990_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym111995_)
        (let ((_quote?111997_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym111995_
           _quote?111997_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g113921_
        (let ((_g113920_ (let () (declare (not safe)) (##length _g113921_))))
          (cond ((let () (declare (not safe)) (##fx= _g113920_ 1))
                 (apply (lambda (_sym111995_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym111995_)))
                        _g113921_))
                ((let () (declare (not safe)) (##fx= _g113920_ 2))
                 (apply (lambda (_sym111999_ _quote?112000_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym111999_
                             _quote?112000_)))
                        _g113921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g113921_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id111979_)
        (let ((__tmp113922
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id111979_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp113922))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key111939_)
        (if (let () (declare (not safe)) (interned-symbol? _key111939_))
            _key111939_
            (if (uninterned-symbol? _key111939_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key111939_))
                (let* ((_key111940111947_ _key111939_)
                       (_E111942111951_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key111940111947_))))
                       (_K111943111967_
                        (lambda (_mark111954_ _eid111955_)
                          (let ((_$e111957_
                                 (##structure-ref
                                  _mark111954_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e111957_
                                ((lambda (_ht111960_)
                                   (let ((_$e111962_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht111960_
                                             _eid111955_))))
                                     (if _$e111962_
                                         ((lambda (_id111965_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _id111965_))
                                                _id111965_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id111965_))))
                                          _$e111962_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid111955_)))))
                                 _$e111957_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid111955_)))))))
                  (if (let () (declare (not safe)) (##pair? _key111940111947_))
                      (let ((_hd111944111970_
                             (let ()
                               (declare (not safe))
                               (##car _key111940111947_)))
                            (_tl111945111972_
                             (let ()
                               (declare (not safe))
                               (##cdr _key111940111947_))))
                        (let* ((_eid111975_ _hd111944111970_)
                               (_mark111977_ _tl111945111972_))
                          (declare (not safe))
                          (_K111943111967_ _mark111977_ _eid111975_)))
                      (let () (declare (not safe)) (_E111942111951_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top111926_)
        (if _top111926_
            (let ((_ns111928_
                   (##structure-ref
                    (let ((__tmp113924 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp113924))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi111929_ (gx#current-expander-phi)))
              (if _ns111928_
                  (if (fxpositive? _phi111929_)
                      (let ((__tmp113930 (number->string _phi111929_))
                            (__tmp113929 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns111928_
                         '"["
                         __tmp113930
                         '"]#_"
                         __tmp113929
                         '"_"))
                      (let ((__tmp113928 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns111928_ '"#_" __tmp113928 '"_")))
                  (if (fxpositive? _phi111929_)
                      (let ((__tmp113927 (number->string _phi111929_))
                            (__tmp113926 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp113927
                         '"]#_"
                         __tmp113926
                         '"_"))
                      (let ((__tmp113925 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp113925 '"_")))))
            (let ((__tmp113923 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp113923 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top111935_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top111935_))))
    (define gxc#generate-runtime-temporary
      (lambda _g113932_
        (let ((_g113931_ (let () (declare (not safe)) (##length _g113932_))))
          (cond ((let () (declare (not safe)) (##fx= _g113931_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g113932_))
                ((let () (declare (not safe)) (##fx= _g113931_ 1))
                 (apply (lambda (_top111937_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top111937_)))
                        _g113932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g113932_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self111922_ _stx111923_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self111769_ _stx111770_)
        (letrec ((_simplify111772_
                  (lambda (_body111820_)
                    (let _lp111822_ ((_rest111824_ _body111820_)
                                     (_r111825_ '()))
                      (let* ((_rest111826111834_ _rest111824_)
                             (_else111828111842_
                              (lambda () (reverse _r111825_)))
                             (_K111830111910_
                              (lambda (_rest111845_ _hd111846_)
                                (let* ((_hd111847111863_ _hd111846_)
                                       (_else111851111871_
                                        (lambda ()
                                          (let ((__tmp113933
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd111846_
                                                         _r111825_))))
                                            (declare (not safe))
                                            (_lp111822_
                                             _rest111845_
                                             __tmp113933)))))
                                  (let ((_K111859111900_
                                         (lambda (_exprs111898_)
                                           (let ((__tmp113934
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest111845_
                                                            _exprs111898_))))
                                             (declare (not safe))
                                             (_lp111822_
                                              __tmp113934
                                              _r111825_))))
                                        (_K111854111884_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest111845_))
                                               (let ((__tmp113935
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd111846_
                                                              _r111825_))))
                                                 (declare (not safe))
                                                 (_lp111822_
                                                  _rest111845_
                                                  __tmp113935))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp111822_
                                                  _rest111845_
                                                  _r111825_)))))
                                        (_K111853111876_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest111845_))
                                               (let ((__tmp113936
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd111846_
                                                              _r111825_))))
                                                 (declare (not safe))
                                                 (_lp111822_
                                                  _rest111845_
                                                  __tmp113936))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp111822_
                                                  _rest111845_
                                                  _r111825_))))))
                                    (let ((_try-match111850111879_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd111847111863_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K111853111876_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else111851111871_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd111847111863_))
                                          (let ((_tl111861111905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd111847111863_)))
                                                (_hd111860111903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd111847111863_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd111860111903_
                                                         'begin))
                                                (let ((_exprs111908_
                                                       _tl111861111905_))
                                                  (declare (not safe))
                                                  (_K111859111900_
                                                   _exprs111908_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd111860111903_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl111861111905_))
                                                        (let ((_tl111858111892_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl111861111905_))))
                  (if (let () (declare (not safe)) (##null? _tl111858111892_))
                      (let () (declare (not safe)) (_K111854111884_))
                      (let () (declare (not safe)) (_try-match111850111879_))))
                (let () (declare (not safe)) (_try-match111850111879_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match111850111879_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match111850111879_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest111826111834_))
                            (let ((_hd111831111913_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest111826111834_)))
                                  (_tl111832111915_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest111826111834_))))
                              (let* ((_hd111918_ _hd111831111913_)
                                     (_rest111920_ _tl111832111915_))
                                (declare (not safe))
                                (_K111830111910_ _rest111920_ _hd111918_)))
                            (let ()
                              (declare (not safe))
                              (_else111828111842_))))))))
          (let* ((_g111774111784_
                  (lambda (_g111775111781_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g111775111781_))))
                 (_g111773111817_
                  (lambda (_g111775111787_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g111775111787_))
                        (let ((_e111779111789_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g111775111787_))))
                          (let ((_hd111778111792_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e111779111789_)))
                                (_tl111777111794_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e111779111789_))))
                            ((lambda (_L111797_)
                               (let* ((_body111812_
                                       (map (lambda (_g111807111809_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self111769_
                                                 _g111807111809_)))
                                            _L111797_))
                                      (_body111814_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify111772_ _body111812_))))
                                 (if (fx= (length _body111814_) '1)
                                     (car _body111814_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body111814_)))))
                             _tl111777111794_)))
                        (let ()
                          (declare (not safe))
                          (_g111774111784_ _g111775111787_))))))
            (declare (not safe))
            (_g111773111817_ _stx111770_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self111730_ _stx111731_)
        (let* ((_g111733111743_
                (lambda (_g111734111740_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111734111740_))))
               (_g111732111766_
                (lambda (_g111734111746_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111734111746_))
                      (let ((_e111738111748_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111734111746_))))
                        (let ((_hd111737111751_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111738111748_)))
                              (_tl111736111753_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111738111748_))))
                          ((lambda (_L111756_)
                             (let ((__tmp113937
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L111756_))))
                               (declare (not safe))
                               (cons 'begin __tmp113937)))
                           _tl111736111753_)))
                      (let ()
                        (declare (not safe))
                        (_g111733111743_ _g111734111746_))))))
          (declare (not safe))
          (_g111732111766_ _stx111731_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111494_ _stx111495_)
        (let* ((___stx112522112523_ _stx111495_)
               (_g111499111551_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112522112523_)))))
          (let ((___kont112524112525_
                 (lambda (_L111712_ _L111713_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111494_ _L111712_))))
                (___kont112526112527_
                 (lambda (_L111660_ _L111661_ _L111662_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111494_ _L111660_))))
                (___kont112530112531_
                 (lambda (_L111580_ _L111581_)
                   (let ((_decls111596_ (map gx#syntax->datum _L111581_)))
                     (let ((__tmp113940
                            (lambda ()
                              (let ((__tmp113941
                                     (let ((__tmp113944
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111596_)))
                                           (__tmp113942
                                            (let ((__tmp113943
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111494_
                                                      _L111580_))))
                                              (declare (not safe))
                                              (cons __tmp113943 '()))))
                                       (declare (not safe))
                                       (cons __tmp113944 __tmp113942))))
                                (declare (not safe))
                                (cons 'begin __tmp113941))))
                           (__tmp113938
                            (let ((__tmp113939 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp113939 _decls111596_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp113940
                        gxc#current-compile-decls
                        __tmp113938))))))
            (let* ((___match112577112578_
                    (lambda (_e111517111604_
                             _hd111516111607_
                             _tl111515111609_
                             _e111520111612_
                             _hd111519111615_
                             _tl111518111617_
                             _e111523111620_
                             _hd111522111623_
                             _tl111521111625_
                             ___splice112528112529_
                             _target111524111628_
                             _tl111526111630_)
                      (letrec ((_loop111527111633_
                                (lambda (_hd111525111636_ _param111531111638_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111525111636_))
                                      (let ((_e111528111641_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111525111636_))))
                                        (let ((_lp-tl111530111646_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111528111641_)))
                                              (_lp-hd111529111644_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111528111641_))))
                                          (let ((__tmp113946
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111529111644_
                                                         _param111531111638_))))
                                            (declare (not safe))
                                            (_loop111527111633_
                                             _lp-tl111530111646_
                                             __tmp113946))))
                                      (let ((_param111532111649_
                                             (reverse _param111531111638_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111518111617_))
                                            (let ((_e111535111652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111518111617_))))
                                              (let ((_tl111533111657_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111535111652_)))
                                                    (_hd111534111655_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111535111652_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111533111657_))
                                                    (let ((_L111660_
                                                           _hd111534111655_)
                                                          (_L111661_
                                                           _param111532111649_)
                                                          (_L111662_
                                                           _hd111522111623_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L111662_))
                       (let ((__tmp113945
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L111662_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp113945)))
                  (___kont112526112527_ _L111660_ _L111661_ _L111662_)
                  (___kont112530112531_ _hd111534111655_ _hd111519111615_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111499111551_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111499111551_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111527111633_ _target111524111628_ '())))))
                   (___match112551112552_
                    (lambda (_e111505111688_
                             _hd111504111691_
                             _tl111503111693_
                             _e111508111696_
                             _hd111507111699_
                             _tl111506111701_
                             _e111511111704_
                             _hd111510111707_
                             _tl111509111709_)
                      (let ((_L111712_ _hd111510111707_)
                            (_L111713_ _hd111507111699_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L111713_))
                            (___kont112524112525_ _L111712_ _L111713_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111507111699_))
                                (let ((_e111523111620_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111507111699_))))
                                  (let ((_tl111521111625_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111523111620_)))
                                        (_hd111522111623_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111523111620_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111521111625_))
                                        (let ((___splice112528112529_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111521111625_
                                                  '0))))
                                          (let ((_tl111526111630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112528112529_
                                                    '1)))
                                                (_target111524111628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112528112529_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111526111630_))
                                                (___match112577112578_
                                                 _e111505111688_
                                                 _hd111504111691_
                                                 _tl111503111693_
                                                 _e111508111696_
                                                 _hd111507111699_
                                                 _tl111506111701_
                                                 _e111523111620_
                                                 _hd111522111623_
                                                 _tl111521111625_
                                                 ___splice112528112529_
                                                 _target111524111628_
                                                 _tl111526111630_)
                                                (___kont112530112531_
                                                 _hd111510111707_
                                                 _hd111507111699_))))
                                        (___kont112530112531_
                                         _hd111510111707_
                                         _hd111507111699_))))
                                (___kont112530112531_
                                 _hd111510111707_
                                 _hd111507111699_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112522112523_))
                  (let ((_e111505111688_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112522112523_))))
                    (let ((_tl111503111693_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111505111688_)))
                          (_hd111504111691_
                           (let ()
                             (declare (not safe))
                             (##car _e111505111688_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111503111693_))
                          (let ((_e111508111696_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111503111693_))))
                            (let ((_tl111506111701_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111508111696_)))
                                  (_hd111507111699_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111508111696_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111506111701_))
                                  (let ((_e111511111704_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111506111701_))))
                                    (let ((_tl111509111709_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111511111704_)))
                                          (_hd111510111707_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111511111704_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111509111709_))
                                          (___match112551112552_
                                           _e111505111688_
                                           _hd111504111691_
                                           _tl111503111693_
                                           _e111508111696_
                                           _hd111507111699_
                                           _tl111506111701_
                                           _e111511111704_
                                           _hd111510111707_
                                           _tl111509111709_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111507111699_))
                                              (let ((_e111523111620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111507111699_))))
                                                (let ((_tl111521111625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111523111620_)))
                                                      (_hd111522111623_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111523111620_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111521111625_))
                                                      (let ((___splice112528112529_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111521111625_ '0))))
                (let ((_tl111526111630_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112528112529_ '1)))
                      (_target111524111628_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112528112529_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111526111630_))
                      (___match112577112578_
                       _e111505111688_
                       _hd111504111691_
                       _tl111503111693_
                       _e111508111696_
                       _hd111507111699_
                       _tl111506111701_
                       _e111523111620_
                       _hd111522111623_
                       _tl111521111625_
                       ___splice112528112529_
                       _target111524111628_
                       _tl111526111630_)
                      (let () (declare (not safe)) (_g111499111551_)))))
              (let () (declare (not safe)) (_g111499111551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111499111551_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111507111699_))
                                      (let ((_e111523111620_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111507111699_))))
                                        (let ((_tl111521111625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111523111620_)))
                                              (_hd111522111623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111523111620_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111521111625_))
                                              (let ((___splice112528112529_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111521111625_
                                                        '0))))
                                                (let ((_tl111526111630_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112528112529_
                                                          '1)))
                                                      (_target111524111628_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112528112529_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111526111630_))
                                                      (___match112577112578_
                                                       _e111505111688_
                                                       _hd111504111691_
                                                       _tl111503111693_
                                                       _e111508111696_
                                                       _hd111507111699_
                                                       _tl111506111701_
                                                       _e111523111620_
                                                       _hd111522111623_
                                                       _tl111521111625_
                                                       ___splice112528112529_
                                                       _target111524111628_
                                                       _tl111526111630_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111499111551_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111499111551_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111499111551_))))))
                          (let () (declare (not safe)) (_g111499111551_)))))
                  (let () (declare (not safe)) (_g111499111551_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111453_ _stx111454_)
        (let* ((_g111456111466_
                (lambda (_g111457111463_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111457111463_))))
               (_g111455111491_
                (lambda (_g111457111469_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111457111469_))
                      (let ((_e111461111471_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111457111469_))))
                        (let ((_hd111460111474_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111461111471_)))
                              (_tl111459111476_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111461111471_))))
                          ((lambda (_L111479_)
                             (let ((_decls111489_
                                    (map gx#syntax->datum _L111479_)))
                               (gxc#current-compile-decls
                                (let ((__tmp113947
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp113947 _decls111489_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111489_))))
                           _tl111459111476_)))
                      (let ()
                        (declare (not safe))
                        (_g111456111466_ _g111457111469_))))))
          (declare (not safe))
          (_g111455111491_ _stx111454_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111199_ _stx111200_)
        (let* ((_g111202111219_
                (lambda (_g111203111216_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111203111216_))))
               (_g111201111450_
                (lambda (_g111203111222_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111203111222_))
                      (let ((_e111208111224_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111203111222_))))
                        (let ((_hd111207111227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111208111224_)))
                              (_tl111206111229_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111208111224_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111206111229_))
                              (let ((_e111211111232_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111206111229_))))
                                (let ((_hd111210111235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111211111232_)))
                                      (_tl111209111237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111211111232_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111209111237_))
                                      (let ((_e111214111240_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111209111237_))))
                                        (let ((_hd111213111243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111214111240_)))
                                              (_tl111212111245_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111214111240_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111212111245_))
                                              ((lambda (_L111248_ _L111249_)
                                                 (let* ((___stx112630112631_
                                                         _L111249_)
                                                        (_g111266111280_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx112630112631_)))))
                                                   (let ((___kont112632112633_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111199_
                                                               _L111248_))))
                                                         (___kont112634112635_
                                                          (lambda (_L111412_)
                                                            (let ((_eid111421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111412_))))
                      (let ((_lambda-expr111422111424_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111248_))))
                        (if _lambda-expr111422111424_
                            (let* ((_lambda-expr111427_
                                    _lambda-expr111422111424_)
                                   (__tmp113948
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp113948
                               _lambda-expr111427_
                               _eid111421_))
                            '#f))
                      (let ((__tmp113949
                             (let ((__tmp113950
                                    (let ((__tmp113951
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111199_
                                              _L111248_))))
                                      (declare (not safe))
                                      (cons __tmp113951 '()))))
                               (declare (not safe))
                               (cons _eid111421_ __tmp113950))))
                        (declare (not safe))
                        (cons 'define __tmp113949)))))
                 (___kont112636112637_
                  (lambda ()
                    (let* ((_tmp111287_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111396_
                            (let _lp111289_ ((_rest111291_ _L111249_)
                                             (_k111292_ '0)
                                             (_r111293_ '()))
                              (let* ((___stx112600112601_ _rest111291_)
                                     (_g111298111315_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112600112601_)))))
                                (let ((___kont112602112603_
                                       (lambda (_L111383_)
                                         (let ((__tmp113952
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111292_ '1))))
                                           (declare (not safe))
                                           (_lp111289_
                                            _L111383_
                                            __tmp113952
                                            _r111293_))))
                                      (___kont112604112605_
                                       (lambda (_L111356_ _L111357_)
                                         (let ((__tmp113959
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111292_ '1)))
                                               (__tmp113953
                                                (let ((__tmp113954
                                                       (let ((__tmp113955
                                                              (let ((__tmp113958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111357_)))
                            (__tmp113956
                             (let ((__tmp113957
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111287_
                                       _k111292_
                                       _L111356_))))
                               (declare (not safe))
                               (cons __tmp113957 '()))))
                        (declare (not safe))
                        (cons __tmp113958 __tmp113956))))
                 (declare (not safe))
                 (cons 'define __tmp113955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113954
                                                        _r111293_))))
                                           (declare (not safe))
                                           (_lp111289_
                                            _L111356_
                                            __tmp113959
                                            __tmp113953))))
                                      (___kont112606112607_
                                       (lambda (_L111327_)
                                         (let ((__tmp113960
                                                (let ((__tmp113961
                                                       (let ((__tmp113962
                                                              (let ((__tmp113965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111327_)))
                            (__tmp113963
                             (let ((__tmp113964
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111287_
                                       _k111292_))))
                               (declare (not safe))
                               (cons __tmp113964 '()))))
                        (declare (not safe))
                        (cons __tmp113965 __tmp113963))))
                 (declare (not safe))
                 (cons 'define __tmp113962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113961 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp113960
                                                   _r111293_))))
                                      (___kont112608112609_
                                       (lambda () (reverse _r111293_))))
                                  (let ((_g111296111343_
                                         (lambda ()
                                           (let ((_L111327_
                                                  ___stx112600112601_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111327_))
                                                 (___kont112606112607_
                                                  _L111327_)
                                                 (___kont112608112609_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112600112601_))
                                        (let ((_e111303111372_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112600112601_))))
                                          (let ((_tl111301111377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111303111372_)))
                                                (_hd111302111375_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111303111372_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111302111375_))
                                                (let ((_e111304111380_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111302111375_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111304111380_
                                                                '#f))
                                                      (___kont112602112603_
                                                       _tl111301111377_)
                                                      (___kont112604112605_
                                                       _tl111301111377_
                                                       _hd111302111375_)))
                                                (___kont112604112605_
                                                 _tl111301111377_
                                                 _hd111302111375_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111296111343_)))))))))
                      (let ((__tmp113966
                             (let ((__tmp113969
                                    (let ((__tmp113970
                                           (let ((__tmp113971
                                                  (let ((__tmp113972
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111199_
                                                            _L111248_))))
                                                    (declare (not safe))
                                                    (cons __tmp113972 '()))))
                                             (declare (not safe))
                                             (cons _tmp111287_ __tmp113971))))
                                      (declare (not safe))
                                      (cons 'define __tmp113970)))
                                   (__tmp113967
                                    (let ((__tmp113968
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111287_
                                              _L111249_
                                              _L111248_))))
                                      (declare (not safe))
                                      (cons __tmp113968 _body111396_))))
                               (declare (not safe))
                               (cons __tmp113969 __tmp113967))))
                        (declare (not safe))
                        (cons 'begin __tmp113966))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx112630112631_))
                                                         (let ((_e111270111434_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx112630112631_))))
                   (let ((_tl111268111439_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111270111434_)))
                         (_hd111269111437_
                          (let ()
                            (declare (not safe))
                            (##car _e111270111434_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111269111437_))
                         (let ((_e111271111442_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111269111437_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111271111442_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111268111439_))
                                   (___kont112632112633_)
                                   (___kont112636112637_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111268111439_))
                                   (___kont112634112635_ _hd111269111437_)
                                   (___kont112636112637_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111268111439_))
                             (___kont112634112635_ _hd111269111437_)
                             (___kont112636112637_)))))
                 (___kont112636112637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111213111243_
                                               _hd111210111235_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111202111219_
                                                 _g111203111222_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111202111219_ _g111203111222_)))))
                              (let ()
                                (declare (not safe))
                                (_g111202111219_ _g111203111222_)))))
                      (let ()
                        (declare (not safe))
                        (_g111202111219_ _g111203111222_))))))
          (declare (not safe))
          (_g111201111450_ _stx111200_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111175_ _hd111176_ _expr111177_)
        (let ((_$e111179_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111177_))))
          (if _$e111179_
              ((lambda (_count111182_)
                 (let ((_len111184_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111176_)))
                       (_cmp111185_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111176_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111184_ '0)
                           (_cmp111185_ _count111182_ _len111184_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111177_
                          _hd111176_)))))
               _$e111179_)
              (let* ((_len111190_
                      (let () (declare (not safe)) (gx#stx-length _hd111176_)))
                     (_cmp111192_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111176_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111194_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111176_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111190_)
                       '" values"))
                     (_count111196_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp113996
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111176_))))
                           (declare (not safe))
                           (not __tmp113996))
                         (fx= _len111190_ '0))
                    '#!void
                    (let ((__tmp113973
                           (let ((__tmp113992
                                  (let ((__tmp113993
                                         (let ((__tmp113994
                                                (let ((__tmp113995
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111175_))))
                                                  (declare (not safe))
                                                  (cons __tmp113995 '()))))
                                           (declare (not safe))
                                           (cons _count111196_ __tmp113994))))
                                    (declare (not safe))
                                    (cons __tmp113993 '())))
                                 (__tmp113974
                                  (let ((__tmp113975
                                         (let ((__tmp113976
                                                (let ((__tmp113981
                                                       (let ((__tmp113982
                                                              (let ((__tmp113983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp113990
                                        (let ((__tmp113991
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111190_ '()))))
                                          (declare (not safe))
                                          (cons _count111196_ __tmp113991))))
                                   (declare (not safe))
                                   (cons _cmp111192_ __tmp113990))
                                 (let ((__tmp113984
                                        (let ((__tmp113985
                                               (let ((__tmp113986
                                                      (let ((__tmp113987
                                                             (let ((__tmp113988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp113989
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111190_ '()))))
                              (declare (not safe))
                              (cons _count111196_ __tmp113989))))
                       (declare (not safe))
                       (cons _cmp111192_ __tmp113988))))
                (declare (not safe))
                (cons __tmp113987 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp113986))))
                                          (declare (not safe))
                                          (cons '() __tmp113985))))
                                   (declare (not safe))
                                   (cons 'let __tmp113984)))))
                        (declare (not safe))
                        (cons __tmp113983 '()))))
                 (declare (not safe))
                 (cons 'not __tmp113982)))
              (__tmp113977
               (let ((__tmp113978
                      (let ((__tmp113979
                             (let ((__tmp113980
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111196_ '()))))
                               (declare (not safe))
                               (cons _errmsg111194_ __tmp113980))))
                        (declare (not safe))
                        (cons 'error __tmp113979))))
                 (declare (not safe))
                 (cons __tmp113978 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp113981
                                                        __tmp113977))))
                                           (declare (not safe))
                                           (cons 'if __tmp113976))))
                                    (declare (not safe))
                                    (cons __tmp113975 '()))))
                             (declare (not safe))
                             (cons __tmp113992 __tmp113974))))
                      (declare (not safe))
                      (cons 'let __tmp113973))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111170_)
        (letrec ((_generate-inline111172_
                  (lambda ()
                    (let ((__tmp113997
                           (let ((__tmp114002
                                  (let ((__tmp114003
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111170_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114003)))
                                 (__tmp113998
                                  (let ((__tmp114000
                                         (let ((__tmp114001
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111170_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114001)))
                                        (__tmp113999
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114000 __tmp113999))))
                             (declare (not safe))
                             (cons __tmp114002 __tmp113998))))
                      (declare (not safe))
                      (cons 'if __tmp113997)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111172_))
              (let ((__tmp114004
                     (let ((__tmp114005
                            (let ((__tmp114006
                                   (let ((__tmp114007
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111172_))))
                                     (declare (not safe))
                                     (cons __tmp114007 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114006))))
                       (declare (not safe))
                       (cons '() __tmp114005))))
                (declare (not safe))
                (cons 'let __tmp114004))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111163_ _i111164_ _rest111165_)
        (letrec ((_generate-inline111167_
                  (lambda ()
                    (if (and (fx= _i111164_ '0)
                             (let ((__tmp114018
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111165_))))
                               (declare (not safe))
                               (not __tmp114018)))
                        (let ((__tmp114010
                               (let ((__tmp114016
                                      (let ((__tmp114017
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111163_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114017)))
                                     (__tmp114011
                                      (let ((__tmp114013
                                             (let ((__tmp114014
                                                    (let ((__tmp114015
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111163_
                                                            __tmp114015))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114014)))
                                            (__tmp114012
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111163_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114013 __tmp114012))))
                                 (declare (not safe))
                                 (cons __tmp114016 __tmp114011))))
                          (declare (not safe))
                          (cons 'if __tmp114010))
                        (let ((__tmp114008
                               (let ((__tmp114009
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111164_ '()))))
                                 (declare (not safe))
                                 (cons _var111163_ __tmp114009))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114008))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111167_))
              (let ((__tmp114019
                     (let ((__tmp114020
                            (let ((__tmp114021
                                   (let ((__tmp114022
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111167_))))
                                     (declare (not safe))
                                     (cons __tmp114022 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114021))))
                       (declare (not safe))
                       (cons '() __tmp114020))))
                (declare (not safe))
                (cons 'let __tmp114019))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111160_ _i111161_)
        (if (fx= _i111161_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114070
                       (let ((__tmp114077
                              (let ((__tmp114078
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111160_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114078)))
                             (__tmp114071
                              (let ((__tmp114075
                                     (let ((__tmp114076
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111160_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114076)))
                                    (__tmp114072
                                     (let ((__tmp114073
                                            (let ((__tmp114074
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111160_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114074))))
                                       (declare (not safe))
                                       (cons __tmp114073 '()))))
                                (declare (not safe))
                                (cons __tmp114075 __tmp114072))))
                         (declare (not safe))
                         (cons __tmp114077 __tmp114071))))
                  (declare (not safe))
                  (cons 'if __tmp114070))
                (let ((__tmp114057
                       (let ((__tmp114058
                              (let ((__tmp114059
                                     (let ((__tmp114060
                                            (let ((__tmp114061
                                                   (let ((__tmp114068
                                                          (let ((__tmp114069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111160_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114069)))
                 (__tmp114062
                  (let ((__tmp114066
                         (let ((__tmp114067
                                (let ()
                                  (declare (not safe))
                                  (cons _var111160_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114067)))
                        (__tmp114063
                         (let ((__tmp114064
                                (let ((__tmp114065
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111160_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114065))))
                           (declare (not safe))
                           (cons __tmp114064 '()))))
                    (declare (not safe))
                    (cons __tmp114066 __tmp114063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114068
                                                           __tmp114062))))
                                              (declare (not safe))
                                              (cons 'if __tmp114061))))
                                       (declare (not safe))
                                       (cons __tmp114060 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114059))))
                         (declare (not safe))
                         (cons '() __tmp114058))))
                  (declare (not safe))
                  (cons 'let __tmp114057)))
            (if (fx= _i111161_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114048
                           (let ((__tmp114055
                                  (let ((__tmp114056
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111160_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114056)))
                                 (__tmp114049
                                  (let ((__tmp114051
                                         (let ((__tmp114052
                                                (let ((__tmp114053
                                                       (let ((__tmp114054
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111160_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114053 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114052)))
                                        (__tmp114050
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114051 __tmp114050))))
                             (declare (not safe))
                             (cons __tmp114055 __tmp114049))))
                      (declare (not safe))
                      (cons 'if __tmp114048))
                    (let ((__tmp114035
                           (let ((__tmp114036
                                  (let ((__tmp114037
                                         (let ((__tmp114038
                                                (let ((__tmp114039
                                                       (let ((__tmp114046
                                                              (let ((__tmp114047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111160_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114047)))
                     (__tmp114040
                      (let ((__tmp114042
                             (let ((__tmp114043
                                    (let ((__tmp114044
                                           (let ((__tmp114045
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111160_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114045))))
                                      (declare (not safe))
                                      (cons __tmp114044 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114043)))
                            (__tmp114041
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114042 __tmp114041))))
                 (declare (not safe))
                 (cons __tmp114046 __tmp114040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114039))))
                                           (declare (not safe))
                                           (cons __tmp114038 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114037))))
                             (declare (not safe))
                             (cons '() __tmp114036))))
                      (declare (not safe))
                      (cons 'let __tmp114035)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114031
                           (let ((__tmp114033
                                  (let ((__tmp114034
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111160_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114034)))
                                 (__tmp114032
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111161_ '()))))
                             (declare (not safe))
                             (cons __tmp114033 __tmp114032))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114031))
                    (let ((__tmp114023
                           (let ((__tmp114024
                                  (let ((__tmp114025
                                         (let ((__tmp114026
                                                (let ((__tmp114027
                                                       (let ((__tmp114029
                                                              (let ((__tmp114030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111160_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114030)))
                     (__tmp114028
                      (let () (declare (not safe)) (cons _i111161_ '()))))
                 (declare (not safe))
                 (cons __tmp114029 __tmp114028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114027))))
                                           (declare (not safe))
                                           (cons __tmp114026 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114025))))
                             (declare (not safe))
                             (cons '() __tmp114024))))
                      (declare (not safe))
                      (cons 'let __tmp114023)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111092_ _stx111093_)
        (let* ((_g111095111112_
                (lambda (_g111096111109_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111096111109_))))
               (_g111094111157_
                (lambda (_g111096111115_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111096111115_))
                      (let ((_e111101111117_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111096111115_))))
                        (let ((_hd111100111120_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111101111117_)))
                              (_tl111099111122_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111101111117_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111099111122_))
                              (let ((_e111104111125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111099111122_))))
                                (let ((_hd111103111128_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111104111125_)))
                                      (_tl111102111130_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111104111125_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111102111130_))
                                      (let ((_e111107111133_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111102111130_))))
                                        (let ((_hd111106111136_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111107111133_)))
                                              (_tl111105111138_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111107111133_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111105111138_))
                                              ((lambda (_L111141_ _L111142_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111092_
                                                    _L111142_
                                                    _L111141_)))
                                               _hd111106111136_
                                               _hd111103111128_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111095111112_
                                                 _g111096111115_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111095111112_ _g111096111115_)))))
                              (let ()
                                (declare (not safe))
                                (_g111095111112_ _g111096111115_)))))
                      (let ()
                        (declare (not safe))
                        (_g111095111112_ _g111096111115_))))))
          (declare (not safe))
          (_g111094111157_ _stx111093_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111051_ _hd111052_ _body111053_)
        (let* ((_hd111055_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111052_)))
               (_body111057_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111051_ _body111053_)))
               (_body111089_
                (let* ((_body111058111066_ _body111057_)
                       (_else111060111074_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111057_ '()))))
                       (_K111062111079_
                        (lambda (_exprs111077_) _exprs111077_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111058111066_))
                      (let ((_hd111063111082_
                             (let ()
                               (declare (not safe))
                               (##car _body111058111066_)))
                            (_tl111064111084_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111058111066_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111063111082_ 'begin))
                            (let ((_exprs111087_ _tl111064111084_))
                              (declare (not safe))
                              (_K111062111079_ _exprs111087_))
                            (let ()
                              (declare (not safe))
                              (_else111060111074_))))
                      (let () (declare (not safe)) (_else111060111074_))))))
          (let ((__tmp114079
                 (let () (declare (not safe)) (cons _hd111055_ _body111089_))))
            (declare (not safe))
            (cons 'lambda __tmp114079)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111049_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111049_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109591_ _stx109592_)
        (letrec ((_dispatch-case?109594_
                  (lambda (_hd110279_ _body110280_)
                    (let* ((_form110282_
                            (let ((__tmp114080
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110280_ '()))))
                              (declare (not safe))
                              (cons _hd110279_ __tmp114080)))
                           (___stx112662112663_ _form110282_)
                           (_g110287110444_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx112662112663_)))))
                      (let ((___kont112664112665_
                             (lambda (_L110969_ _L110970_ _L110971_) '#t))
                            (___kont112670112671_
                             (lambda (_L110757_
                                      _L110758_
                                      _L110759_
                                      _L110760_
                                      _L110761_
                                      _L110762_)
                               '#t))
                            (___kont112676112677_
                             (lambda (_L110552_ _L110553_ _L110554_ _L110555_)
                               '#t))
                            (___kont112678112679_ (lambda () '#f)))
                        (let* ((___match112803112804_
                                (lambda (_e110406110456_
                                         _hd110405110459_
                                         _tl110404110461_
                                         _e110409110464_
                                         _hd110408110467_
                                         _tl110407110469_
                                         _e110412110472_
                                         _hd110411110475_
                                         _tl110410110477_
                                         _e110415110480_
                                         _hd110414110483_
                                         _tl110413110485_
                                         _e110418110488_
                                         _hd110417110491_
                                         _tl110416110493_
                                         _e110421110496_
                                         _hd110420110499_
                                         _tl110419110501_
                                         _e110424110504_
                                         _hd110423110507_
                                         _tl110422110509_
                                         _e110427110512_
                                         _hd110426110515_
                                         _tl110425110517_
                                         _e110430110520_
                                         _hd110429110523_
                                         _tl110428110525_
                                         _e110433110528_
                                         _hd110432110531_
                                         _tl110431110533_
                                         _e110436110536_
                                         _hd110435110539_
                                         _tl110434110541_
                                         _e110439110544_
                                         _hd110438110547_
                                         _tl110437110549_)
                                  (let ((_L110552_ _hd110438110547_)
                                        (_L110553_ _hd110429110523_)
                                        (_L110554_ _hd110420110499_)
                                        (_L110555_ _hd110405110459_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110555_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110554_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110555_
                                                _L110552_))
                                             (let ((__tmp114081
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110553_
                                                       _L110555_))))
                                               (declare (not safe))
                                               (not __tmp114081)))
                                        (___kont112676112677_
                                         _L110552_
                                         _L110553_
                                         _L110554_
                                         _L110555_)
                                        (___kont112678112679_)))))
                               (___match112775112776_
                                (lambda (_e110406110456_
                                         _hd110405110459_
                                         _tl110404110461_
                                         _e110409110464_
                                         _hd110408110467_
                                         _tl110407110469_
                                         _e110412110472_
                                         _hd110411110475_
                                         _tl110410110477_
                                         _e110415110480_
                                         _hd110414110483_
                                         _tl110413110485_
                                         _e110418110488_
                                         _hd110417110491_
                                         _tl110416110493_
                                         _e110421110496_
                                         _hd110420110499_
                                         _tl110419110501_
                                         _e110424110504_
                                         _hd110423110507_
                                         _tl110422110509_
                                         _e110427110512_
                                         _hd110426110515_
                                         _tl110425110517_
                                         _e110430110520_
                                         _hd110429110523_
                                         _tl110428110525_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110422110509_))
                                      (let ((_e110433110528_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110422110509_))))
                                        (let ((_tl110431110533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110433110528_)))
                                              (_hd110432110531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110433110528_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110432110531_))
                                              (let ((_e110436110536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110432110531_))))
                                                (let ((_tl110434110541_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110436110536_)))
                                                      (_hd110435110539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110436110536_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110435110539_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110435110539_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110434110541_))
                      (let ((_e110439110544_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110434110541_))))
                        (let ((_tl110437110549_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110439110544_)))
                              (_hd110438110547_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110439110544_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110437110549_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110431110533_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110407110469_))
                                      (___match112803112804_
                                       _e110406110456_
                                       _hd110405110459_
                                       _tl110404110461_
                                       _e110409110464_
                                       _hd110408110467_
                                       _tl110407110469_
                                       _e110412110472_
                                       _hd110411110475_
                                       _tl110410110477_
                                       _e110415110480_
                                       _hd110414110483_
                                       _tl110413110485_
                                       _e110418110488_
                                       _hd110417110491_
                                       _tl110416110493_
                                       _e110421110496_
                                       _hd110420110499_
                                       _tl110419110501_
                                       _e110424110504_
                                       _hd110423110507_
                                       _tl110422110509_
                                       _e110427110512_
                                       _hd110426110515_
                                       _tl110425110517_
                                       _e110430110520_
                                       _hd110429110523_
                                       _tl110428110525_
                                       _e110433110528_
                                       _hd110432110531_
                                       _tl110431110533_
                                       _e110436110536_
                                       _hd110435110539_
                                       _tl110434110541_
                                       _e110439110544_
                                       _hd110438110547_
                                       _tl110437110549_)
                                      (___kont112678112679_))
                                  (___kont112678112679_))
                              (___kont112678112679_))))
                      (___kont112678112679_))
                  (___kont112678112679_))
              (___kont112678112679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112678112679_))))
                                      (___kont112678112679_))))
                               (___match112705112706_
                                (lambda (_e110342110597_
                                         _hd110341110600_
                                         _tl110340110602_
                                         ___splice112672112673_
                                         _target110343110605_
                                         _tl110345110607_)
                                  (letrec ((_loop110346110610_
                                            (lambda (_hd110344110613_
                                                     _arg110350110615_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110344110613_))
                                                  (let ((_e110347110618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110344110613_))))
                                                    (let ((_lp-tl110349110623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110347110618_)))
                                                          (_lp-hd110348110621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110347110618_))))
                                                      (let ((__tmp114096
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110348110621_ _arg110350110615_))))
                (declare (not safe))
                (_loop110346110610_ _lp-tl110349110623_ __tmp114096))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110351110626_
                                                         (reverse _arg110350110615_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110340110602_))
                                                        (let ((_e110354110629_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110340110602_))))
                  (let ((_tl110352110634_
                         (let () (declare (not safe)) (##cdr _e110354110629_)))
                        (_hd110353110632_
                         (let ()
                           (declare (not safe))
                           (##car _e110354110629_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110353110632_))
                        (let ((_e110357110637_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110353110632_))))
                          (let ((_tl110355110642_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110357110637_)))
                                (_hd110356110640_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110357110637_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110356110640_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110356110640_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110355110642_))
                                        (let ((_e110360110645_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110355110642_))))
                                          (let ((_tl110358110650_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110360110645_)))
                                                (_hd110359110648_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110360110645_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110359110648_))
                                                (let ((_e110363110653_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110359110648_))))
                                                  (let ((_tl110361110658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110363110653_)))
                                                        (_hd110362110656_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110363110653_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110362110656_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110362110656_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110361110658_))
                        (let ((_e110366110661_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110361110658_))))
                          (let ((_tl110364110666_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110366110661_)))
                                (_hd110365110664_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110366110661_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110364110666_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110358110650_))
                                    (let ((_e110369110669_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110358110650_))))
                                      (let ((_tl110367110674_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110369110669_)))
                                            (_hd110368110672_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110369110669_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110368110672_))
                                            (let ((_e110372110677_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110368110672_))))
                                              (let ((_tl110370110682_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110372110677_)))
                                                    (_hd110371110680_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110372110677_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110371110680_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110371110680_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110370110682_))
                                                            (let ((_e110375110685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110370110682_))))
                      (let ((_tl110373110690_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110375110685_)))
                            (_hd110374110688_
                             (let ()
                               (declare (not safe))
                               (##car _e110375110685_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110373110690_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110367110674_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110367110674_))
                                          '1)
                                    (let ((___splice112674112675_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110367110674_
                                              '1))))
                                      (let ((_tl110378110695_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112674112675_
                                                '1)))
                                            (_target110376110693_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112674112675_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110378110695_))
                                            (let ((_e110387110698_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110378110695_))))
                                              (let ((_tl110385110703_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110387110698_)))
                                                    (_hd110386110701_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110387110698_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110386110701_))
                                                    (let ((_e110390110706_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110386110701_))))
                                                      (let ((_tl110388110711_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110390110706_)))
                    (_hd110389110709_
                     (let () (declare (not safe)) (##car _e110390110706_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110389110709_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110389110709_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110388110711_))
                            (let ((_e110393110714_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110388110711_))))
                              (let ((_tl110391110719_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110393110714_)))
                                    (_hd110392110717_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110393110714_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110391110719_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110385110703_))
                                        (letrec ((_loop110379110722_
                                                  (lambda (_hd110377110725_
                                                           _xarg110383110727_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110377110725_))
                                                        (let ((_e110380110730_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110377110725_))))
                  (let ((_lp-tl110382110735_
                         (let () (declare (not safe)) (##cdr _e110380110730_)))
                        (_lp-hd110381110733_
                         (let ()
                           (declare (not safe))
                           (##car _e110380110730_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110381110733_))
                        (let ((_e110396110738_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110381110733_))))
                          (let ((_tl110394110743_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110396110738_)))
                                (_hd110395110741_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110396110738_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110395110741_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110395110741_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110394110743_))
                                        (let ((_e110399110746_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110394110743_))))
                                          (let ((_tl110397110751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110399110746_)))
                                                (_hd110398110749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110399110746_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110397110751_))
                                                (let ((__tmp114095
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110398110749_
                                                               _xarg110383110727_))))
                                                  (declare (not safe))
                                                  (_loop110379110722_
                                                   _lp-tl110382110735_
                                                   __tmp114095))
                                                (___match112775112776_
                                                 _e110342110597_
                                                 _hd110341110600_
                                                 _tl110340110602_
                                                 _e110354110629_
                                                 _hd110353110632_
                                                 _tl110352110634_
                                                 _e110357110637_
                                                 _hd110356110640_
                                                 _tl110355110642_
                                                 _e110360110645_
                                                 _hd110359110648_
                                                 _tl110358110650_
                                                 _e110363110653_
                                                 _hd110362110656_
                                                 _tl110361110658_
                                                 _e110366110661_
                                                 _hd110365110664_
                                                 _tl110364110666_
                                                 _e110369110669_
                                                 _hd110368110672_
                                                 _tl110367110674_
                                                 _e110372110677_
                                                 _hd110371110680_
                                                 _tl110370110682_
                                                 _e110375110685_
                                                 _hd110374110688_
                                                 _tl110373110690_))))
                                        (___match112775112776_
                                         _e110342110597_
                                         _hd110341110600_
                                         _tl110340110602_
                                         _e110354110629_
                                         _hd110353110632_
                                         _tl110352110634_
                                         _e110357110637_
                                         _hd110356110640_
                                         _tl110355110642_
                                         _e110360110645_
                                         _hd110359110648_
                                         _tl110358110650_
                                         _e110363110653_
                                         _hd110362110656_
                                         _tl110361110658_
                                         _e110366110661_
                                         _hd110365110664_
                                         _tl110364110666_
                                         _e110369110669_
                                         _hd110368110672_
                                         _tl110367110674_
                                         _e110372110677_
                                         _hd110371110680_
                                         _tl110370110682_
                                         _e110375110685_
                                         _hd110374110688_
                                         _tl110373110690_))
                                    (___match112775112776_
                                     _e110342110597_
                                     _hd110341110600_
                                     _tl110340110602_
                                     _e110354110629_
                                     _hd110353110632_
                                     _tl110352110634_
                                     _e110357110637_
                                     _hd110356110640_
                                     _tl110355110642_
                                     _e110360110645_
                                     _hd110359110648_
                                     _tl110358110650_
                                     _e110363110653_
                                     _hd110362110656_
                                     _tl110361110658_
                                     _e110366110661_
                                     _hd110365110664_
                                     _tl110364110666_
                                     _e110369110669_
                                     _hd110368110672_
                                     _tl110367110674_
                                     _e110372110677_
                                     _hd110371110680_
                                     _tl110370110682_
                                     _e110375110685_
                                     _hd110374110688_
                                     _tl110373110690_))
                                (___match112775112776_
                                 _e110342110597_
                                 _hd110341110600_
                                 _tl110340110602_
                                 _e110354110629_
                                 _hd110353110632_
                                 _tl110352110634_
                                 _e110357110637_
                                 _hd110356110640_
                                 _tl110355110642_
                                 _e110360110645_
                                 _hd110359110648_
                                 _tl110358110650_
                                 _e110363110653_
                                 _hd110362110656_
                                 _tl110361110658_
                                 _e110366110661_
                                 _hd110365110664_
                                 _tl110364110666_
                                 _e110369110669_
                                 _hd110368110672_
                                 _tl110367110674_
                                 _e110372110677_
                                 _hd110371110680_
                                 _tl110370110682_
                                 _e110375110685_
                                 _hd110374110688_
                                 _tl110373110690_))))
                        (___match112775112776_
                         _e110342110597_
                         _hd110341110600_
                         _tl110340110602_
                         _e110354110629_
                         _hd110353110632_
                         _tl110352110634_
                         _e110357110637_
                         _hd110356110640_
                         _tl110355110642_
                         _e110360110645_
                         _hd110359110648_
                         _tl110358110650_
                         _e110363110653_
                         _hd110362110656_
                         _tl110361110658_
                         _e110366110661_
                         _hd110365110664_
                         _tl110364110666_
                         _e110369110669_
                         _hd110368110672_
                         _tl110367110674_
                         _e110372110677_
                         _hd110371110680_
                         _tl110370110682_
                         _e110375110685_
                         _hd110374110688_
                         _tl110373110690_))))
                (let ((_xarg110384110754_ (reverse _xarg110383110727_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110352110634_))
                      (let ((_L110757_ _hd110392110717_)
                            (_L110758_ _xarg110384110754_)
                            (_L110759_ _hd110374110688_)
                            (_L110760_ _hd110365110664_)
                            (_L110761_ _tl110345110607_)
                            (_L110762_ _arg110351110626_))
                        (if (and (let ((__tmp114093
                                        (let ((__tmp114094
                                               (lambda (_g110805110808_
                                                        _g110806110810_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110805110808_
                                                         _g110806110810_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114094 '() _L110762_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114093))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L110761_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L110760_ 'apply))
                                 (fx= (length (let ((__tmp114091
                                                     (lambda (_g110812110815_
                                                              _g110813110817_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110812110815_
                                                               _g110813110817_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114091
                                                        '()
                                                        _L110762_)))
                                      (length (let ((__tmp114092
                                                     (lambda (_g110819110822_
                                                              _g110820110824_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110819110822_
                                                               _g110820110824_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114092
                                                        '()
                                                        _L110758_))))
                                 (let ((__tmp114089
                                        (let ((__tmp114090
                                               (lambda (_g110826110829_
                                                        _g110827110831_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110826110829_
                                                         _g110827110831_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114090 '() _L110762_)))
                                       (__tmp114087
                                        (let ((__tmp114088
                                               (lambda (_g110833110836_
                                                        _g110834110838_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110833110836_
                                                         _g110834110838_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114088 '() _L110758_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114089
                                            __tmp114087))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L110761_ _L110757_))
                                 (let ((__tmp114082
                                        (let ((__tmp114086
                                               (lambda (_g110840110842_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g110840110842_
                                                    _L110759_))))
                                              (__tmp114083
                                               (let ((__tmp114085
                                                      (lambda (_g110844110847_
                                                               _g110845110849_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g110844110847_
                                                                _g110845110849_))))
                                                     (__tmp114084
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L110761_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114085
                                                         __tmp114084
                                                         _L110762_))))
                                          (declare (not safe))
                                          (find __tmp114086 __tmp114083))))
                                   (declare (not safe))
                                   (not __tmp114082)))
                            (___kont112670112671_
                             _L110757_
                             _L110758_
                             _L110759_
                             _L110760_
                             _L110761_
                             _L110762_)
                            (___match112775112776_
                             _e110342110597_
                             _hd110341110600_
                             _tl110340110602_
                             _e110354110629_
                             _hd110353110632_
                             _tl110352110634_
                             _e110357110637_
                             _hd110356110640_
                             _tl110355110642_
                             _e110360110645_
                             _hd110359110648_
                             _tl110358110650_
                             _e110363110653_
                             _hd110362110656_
                             _tl110361110658_
                             _e110366110661_
                             _hd110365110664_
                             _tl110364110666_
                             _e110369110669_
                             _hd110368110672_
                             _tl110367110674_
                             _e110372110677_
                             _hd110371110680_
                             _tl110370110682_
                             _e110375110685_
                             _hd110374110688_
                             _tl110373110690_)))
                      (___match112775112776_
                       _e110342110597_
                       _hd110341110600_
                       _tl110340110602_
                       _e110354110629_
                       _hd110353110632_
                       _tl110352110634_
                       _e110357110637_
                       _hd110356110640_
                       _tl110355110642_
                       _e110360110645_
                       _hd110359110648_
                       _tl110358110650_
                       _e110363110653_
                       _hd110362110656_
                       _tl110361110658_
                       _e110366110661_
                       _hd110365110664_
                       _tl110364110666_
                       _e110369110669_
                       _hd110368110672_
                       _tl110367110674_
                       _e110372110677_
                       _hd110371110680_
                       _tl110370110682_
                       _e110375110685_
                       _hd110374110688_
                       _tl110373110690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110379110722_
                                             _target110376110693_
                                             '())))
                                        (___match112775112776_
                                         _e110342110597_
                                         _hd110341110600_
                                         _tl110340110602_
                                         _e110354110629_
                                         _hd110353110632_
                                         _tl110352110634_
                                         _e110357110637_
                                         _hd110356110640_
                                         _tl110355110642_
                                         _e110360110645_
                                         _hd110359110648_
                                         _tl110358110650_
                                         _e110363110653_
                                         _hd110362110656_
                                         _tl110361110658_
                                         _e110366110661_
                                         _hd110365110664_
                                         _tl110364110666_
                                         _e110369110669_
                                         _hd110368110672_
                                         _tl110367110674_
                                         _e110372110677_
                                         _hd110371110680_
                                         _tl110370110682_
                                         _e110375110685_
                                         _hd110374110688_
                                         _tl110373110690_))
                                    (___match112775112776_
                                     _e110342110597_
                                     _hd110341110600_
                                     _tl110340110602_
                                     _e110354110629_
                                     _hd110353110632_
                                     _tl110352110634_
                                     _e110357110637_
                                     _hd110356110640_
                                     _tl110355110642_
                                     _e110360110645_
                                     _hd110359110648_
                                     _tl110358110650_
                                     _e110363110653_
                                     _hd110362110656_
                                     _tl110361110658_
                                     _e110366110661_
                                     _hd110365110664_
                                     _tl110364110666_
                                     _e110369110669_
                                     _hd110368110672_
                                     _tl110367110674_
                                     _e110372110677_
                                     _hd110371110680_
                                     _tl110370110682_
                                     _e110375110685_
                                     _hd110374110688_
                                     _tl110373110690_))))
                            (___match112775112776_
                             _e110342110597_
                             _hd110341110600_
                             _tl110340110602_
                             _e110354110629_
                             _hd110353110632_
                             _tl110352110634_
                             _e110357110637_
                             _hd110356110640_
                             _tl110355110642_
                             _e110360110645_
                             _hd110359110648_
                             _tl110358110650_
                             _e110363110653_
                             _hd110362110656_
                             _tl110361110658_
                             _e110366110661_
                             _hd110365110664_
                             _tl110364110666_
                             _e110369110669_
                             _hd110368110672_
                             _tl110367110674_
                             _e110372110677_
                             _hd110371110680_
                             _tl110370110682_
                             _e110375110685_
                             _hd110374110688_
                             _tl110373110690_))
                        (___match112775112776_
                         _e110342110597_
                         _hd110341110600_
                         _tl110340110602_
                         _e110354110629_
                         _hd110353110632_
                         _tl110352110634_
                         _e110357110637_
                         _hd110356110640_
                         _tl110355110642_
                         _e110360110645_
                         _hd110359110648_
                         _tl110358110650_
                         _e110363110653_
                         _hd110362110656_
                         _tl110361110658_
                         _e110366110661_
                         _hd110365110664_
                         _tl110364110666_
                         _e110369110669_
                         _hd110368110672_
                         _tl110367110674_
                         _e110372110677_
                         _hd110371110680_
                         _tl110370110682_
                         _e110375110685_
                         _hd110374110688_
                         _tl110373110690_))
                    (___match112775112776_
                     _e110342110597_
                     _hd110341110600_
                     _tl110340110602_
                     _e110354110629_
                     _hd110353110632_
                     _tl110352110634_
                     _e110357110637_
                     _hd110356110640_
                     _tl110355110642_
                     _e110360110645_
                     _hd110359110648_
                     _tl110358110650_
                     _e110363110653_
                     _hd110362110656_
                     _tl110361110658_
                     _e110366110661_
                     _hd110365110664_
                     _tl110364110666_
                     _e110369110669_
                     _hd110368110672_
                     _tl110367110674_
                     _e110372110677_
                     _hd110371110680_
                     _tl110370110682_
                     _e110375110685_
                     _hd110374110688_
                     _tl110373110690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112775112776_
                                                     _e110342110597_
                                                     _hd110341110600_
                                                     _tl110340110602_
                                                     _e110354110629_
                                                     _hd110353110632_
                                                     _tl110352110634_
                                                     _e110357110637_
                                                     _hd110356110640_
                                                     _tl110355110642_
                                                     _e110360110645_
                                                     _hd110359110648_
                                                     _tl110358110650_
                                                     _e110363110653_
                                                     _hd110362110656_
                                                     _tl110361110658_
                                                     _e110366110661_
                                                     _hd110365110664_
                                                     _tl110364110666_
                                                     _e110369110669_
                                                     _hd110368110672_
                                                     _tl110367110674_
                                                     _e110372110677_
                                                     _hd110371110680_
                                                     _tl110370110682_
                                                     _e110375110685_
                                                     _hd110374110688_
                                                     _tl110373110690_))))
                                            (___match112775112776_
                                             _e110342110597_
                                             _hd110341110600_
                                             _tl110340110602_
                                             _e110354110629_
                                             _hd110353110632_
                                             _tl110352110634_
                                             _e110357110637_
                                             _hd110356110640_
                                             _tl110355110642_
                                             _e110360110645_
                                             _hd110359110648_
                                             _tl110358110650_
                                             _e110363110653_
                                             _hd110362110656_
                                             _tl110361110658_
                                             _e110366110661_
                                             _hd110365110664_
                                             _tl110364110666_
                                             _e110369110669_
                                             _hd110368110672_
                                             _tl110367110674_
                                             _e110372110677_
                                             _hd110371110680_
                                             _tl110370110682_
                                             _e110375110685_
                                             _hd110374110688_
                                             _tl110373110690_))))
                                    (___match112775112776_
                                     _e110342110597_
                                     _hd110341110600_
                                     _tl110340110602_
                                     _e110354110629_
                                     _hd110353110632_
                                     _tl110352110634_
                                     _e110357110637_
                                     _hd110356110640_
                                     _tl110355110642_
                                     _e110360110645_
                                     _hd110359110648_
                                     _tl110358110650_
                                     _e110363110653_
                                     _hd110362110656_
                                     _tl110361110658_
                                     _e110366110661_
                                     _hd110365110664_
                                     _tl110364110666_
                                     _e110369110669_
                                     _hd110368110672_
                                     _tl110367110674_
                                     _e110372110677_
                                     _hd110371110680_
                                     _tl110370110682_
                                     _e110375110685_
                                     _hd110374110688_
                                     _tl110373110690_))
                                (___match112775112776_
                                 _e110342110597_
                                 _hd110341110600_
                                 _tl110340110602_
                                 _e110354110629_
                                 _hd110353110632_
                                 _tl110352110634_
                                 _e110357110637_
                                 _hd110356110640_
                                 _tl110355110642_
                                 _e110360110645_
                                 _hd110359110648_
                                 _tl110358110650_
                                 _e110363110653_
                                 _hd110362110656_
                                 _tl110361110658_
                                 _e110366110661_
                                 _hd110365110664_
                                 _tl110364110666_
                                 _e110369110669_
                                 _hd110368110672_
                                 _tl110367110674_
                                 _e110372110677_
                                 _hd110371110680_
                                 _tl110370110682_
                                 _e110375110685_
                                 _hd110374110688_
                                 _tl110373110690_))
                            (___kont112678112679_))))
                    (___kont112678112679_))
                (___kont112678112679_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont112678112679_))))
                                            (___kont112678112679_))))
                                    (___kont112678112679_))
                                (___kont112678112679_))))
                        (___kont112678112679_))
                    (___kont112678112679_))
                (___kont112678112679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont112678112679_))))
                                        (___kont112678112679_))
                                    (___kont112678112679_))
                                (___kont112678112679_))))
                        (___kont112678112679_))))
                (___kont112678112679_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110346110610_
                                       _target110343110605_
                                       '())))))
                               (___match112693112694_
                                (lambda (_e110294110857_
                                         _hd110293110860_
                                         _tl110292110862_
                                         ___splice112666112667_
                                         _target110295110865_
                                         _tl110297110867_)
                                  (letrec ((_loop110298110870_
                                            (lambda (_hd110296110873_
                                                     _arg110302110875_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110296110873_))
                                                  (let ((_e110299110878_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110296110873_))))
                                                    (let ((_lp-tl110301110883_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110299110878_)))
                                                          (_lp-hd110300110881_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110299110878_))))
                                                      (let ((__tmp114110
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110300110881_ _arg110302110875_))))
                (declare (not safe))
                (_loop110298110870_ _lp-tl110301110883_ __tmp114110))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110303110886_
                                                         (reverse _arg110302110875_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110292110862_))
                                                        (let ((_e110306110889_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110292110862_))))
                  (let ((_tl110304110894_
                         (let () (declare (not safe)) (##cdr _e110306110889_)))
                        (_hd110305110892_
                         (let ()
                           (declare (not safe))
                           (##car _e110306110889_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110305110892_))
                        (let ((_e110309110897_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110305110892_))))
                          (let ((_tl110307110902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110309110897_)))
                                (_hd110308110900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110309110897_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110308110900_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110308110900_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110307110902_))
                                        (let ((_e110312110905_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110307110902_))))
                                          (let ((_tl110310110910_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110312110905_)))
                                                (_hd110311110908_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110312110905_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110311110908_))
                                                (let ((_e110315110913_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110311110908_))))
                                                  (let ((_tl110313110918_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110315110913_)))
                                                        (_hd110314110916_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110315110913_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110314110916_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110314110916_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110313110918_))
                        (let ((_e110318110921_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110313110918_))))
                          (let ((_tl110316110926_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110318110921_)))
                                (_hd110317110924_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110318110921_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110316110926_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110310110910_))
                                    (let ((___splice112668112669_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110310110910_
                                              '0))))
                                      (let ((_tl110321110931_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112668112669_
                                                '1)))
                                            (_target110319110929_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112668112669_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110321110931_))
                                            (letrec ((_loop110322110934_
                                                      (lambda (_hd110320110937_
                                                               _xarg110326110939_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110320110937_))
                                                            (let ((_e110323110942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110320110937_))))
                      (let ((_lp-tl110325110947_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110323110942_)))
                            (_lp-hd110324110945_
                             (let ()
                               (declare (not safe))
                               (##car _e110323110942_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110324110945_))
                            (let ((_e110330110950_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110324110945_))))
                              (let ((_tl110328110955_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110330110950_)))
                                    (_hd110329110953_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110330110950_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110329110953_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110329110953_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110328110955_))
                                            (let ((_e110333110958_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110328110955_))))
                                              (let ((_tl110331110963_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110333110958_)))
                                                    (_hd110332110961_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110333110958_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110331110963_))
                                                    (let ((__tmp114109
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110332110961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110326110939_))))
              (declare (not safe))
              (_loop110322110934_ _lp-tl110325110947_ __tmp114109))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112705112706_
                                                     _e110294110857_
                                                     _hd110293110860_
                                                     _tl110292110862_
                                                     ___splice112666112667_
                                                     _target110295110865_
                                                     _tl110297110867_))))
                                            (___match112705112706_
                                             _e110294110857_
                                             _hd110293110860_
                                             _tl110292110862_
                                             ___splice112666112667_
                                             _target110295110865_
                                             _tl110297110867_))
                                        (___match112705112706_
                                         _e110294110857_
                                         _hd110293110860_
                                         _tl110292110862_
                                         ___splice112666112667_
                                         _target110295110865_
                                         _tl110297110867_))
                                    (___match112705112706_
                                     _e110294110857_
                                     _hd110293110860_
                                     _tl110292110862_
                                     ___splice112666112667_
                                     _target110295110865_
                                     _tl110297110867_))))
                            (___match112705112706_
                             _e110294110857_
                             _hd110293110860_
                             _tl110292110862_
                             ___splice112666112667_
                             _target110295110865_
                             _tl110297110867_))))
                    (let ((_xarg110327110966_ (reverse _xarg110326110939_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110304110894_))
                          (let ((_L110969_ _xarg110327110966_)
                                (_L110970_ _hd110317110924_)
                                (_L110971_ _arg110303110886_))
                            (if (and (let ((__tmp114107
                                            (let ((__tmp114108
                                                   (lambda (_g110999111002_
                                                            _g111000111004_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g110999111002_
                                                             _g111000111004_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114108
                                                      '()
                                                      _L110971_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114107))
                                     (fx= (length (let ((__tmp114105
                                                         (lambda (_g111006111009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111007111011_)
                   (let ()
                     (declare (not safe))
                     (cons _g111006111009_ _g111007111011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114105
                                                            '()
                                                            _L110971_)))
                                          (length (let ((__tmp114106
                                                         (lambda (_g111013111016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111014111018_)
                   (let ()
                     (declare (not safe))
                     (cons _g111013111016_ _g111014111018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114106
                                                            '()
                                                            _L110969_))))
                                     (let ((__tmp114103
                                            (let ((__tmp114104
                                                   (lambda (_g111020111023_
                                                            _g111021111025_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111020111023_
                                                             _g111021111025_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114104
                                                      '()
                                                      _L110971_)))
                                           (__tmp114101
                                            (let ((__tmp114102
                                                   (lambda (_g111027111030_
                                                            _g111028111032_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111027111030_
                                                             _g111028111032_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114102
                                                      '()
                                                      _L110969_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114103
                                                __tmp114101))
                                     (let ((__tmp114097
                                            (let ((__tmp114100
                                                   (lambda (_g111034111036_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111034111036_
                                                        _L110970_))))
                                                  (__tmp114098
                                                   (let ((__tmp114099
                                                          (lambda (_g111038111041_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111039111043_)
                    (let ()
                      (declare (not safe))
                      (cons _g111038111041_ _g111039111043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114099
                                                             '()
                                                             _L110971_))))
                                              (declare (not safe))
                                              (find __tmp114100 __tmp114098))))
                                       (declare (not safe))
                                       (not __tmp114097)))
                                (___kont112664112665_
                                 _L110969_
                                 _L110970_
                                 _L110971_)
                                (___match112705112706_
                                 _e110294110857_
                                 _hd110293110860_
                                 _tl110292110862_
                                 ___splice112666112667_
                                 _target110295110865_
                                 _tl110297110867_)))
                          (___match112705112706_
                           _e110294110857_
                           _hd110293110860_
                           _tl110292110862_
                           ___splice112666112667_
                           _target110295110865_
                           _tl110297110867_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110322110934_
                                                 _target110319110929_
                                                 '())))
                                            (___match112705112706_
                                             _e110294110857_
                                             _hd110293110860_
                                             _tl110292110862_
                                             ___splice112666112667_
                                             _target110295110865_
                                             _tl110297110867_))))
                                    (___match112705112706_
                                     _e110294110857_
                                     _hd110293110860_
                                     _tl110292110862_
                                     ___splice112666112667_
                                     _target110295110865_
                                     _tl110297110867_))
                                (___match112705112706_
                                 _e110294110857_
                                 _hd110293110860_
                                 _tl110292110862_
                                 ___splice112666112667_
                                 _target110295110865_
                                 _tl110297110867_))))
                        (___match112705112706_
                         _e110294110857_
                         _hd110293110860_
                         _tl110292110862_
                         ___splice112666112667_
                         _target110295110865_
                         _tl110297110867_))
                    (___match112705112706_
                     _e110294110857_
                     _hd110293110860_
                     _tl110292110862_
                     ___splice112666112667_
                     _target110295110865_
                     _tl110297110867_))
                (___match112705112706_
                 _e110294110857_
                 _hd110293110860_
                 _tl110292110862_
                 ___splice112666112667_
                 _target110295110865_
                 _tl110297110867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match112705112706_
                                                 _e110294110857_
                                                 _hd110293110860_
                                                 _tl110292110862_
                                                 ___splice112666112667_
                                                 _target110295110865_
                                                 _tl110297110867_))))
                                        (___match112705112706_
                                         _e110294110857_
                                         _hd110293110860_
                                         _tl110292110862_
                                         ___splice112666112667_
                                         _target110295110865_
                                         _tl110297110867_))
                                    (___match112705112706_
                                     _e110294110857_
                                     _hd110293110860_
                                     _tl110292110862_
                                     ___splice112666112667_
                                     _target110295110865_
                                     _tl110297110867_))
                                (___match112705112706_
                                 _e110294110857_
                                 _hd110293110860_
                                 _tl110292110862_
                                 ___splice112666112667_
                                 _target110295110865_
                                 _tl110297110867_))))
                        (___match112705112706_
                         _e110294110857_
                         _hd110293110860_
                         _tl110292110862_
                         ___splice112666112667_
                         _target110295110865_
                         _tl110297110867_))))
                (___match112705112706_
                 _e110294110857_
                 _hd110293110860_
                 _tl110292110862_
                 ___splice112666112667_
                 _target110295110865_
                 _tl110297110867_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110298110870_
                                       _target110295110865_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx112662112663_))
                              (let ((_e110294110857_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx112662112663_))))
                                (let ((_tl110292110862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110294110857_)))
                                      (_hd110293110860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110294110857_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110293110860_))
                                      (let ((___splice112666112667_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110293110860_
                                                '0))))
                                        (let ((_tl110297110867_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112666112667_
                                                  '1)))
                                              (_target110295110865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112666112667_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110297110867_))
                                              (___match112693112694_
                                               _e110294110857_
                                               _hd110293110860_
                                               _tl110292110862_
                                               ___splice112666112667_
                                               _target110295110865_
                                               _tl110297110867_)
                                              (___match112705112706_
                                               _e110294110857_
                                               _hd110293110860_
                                               _tl110292110862_
                                               ___splice112666112667_
                                               _target110295110865_
                                               _tl110297110867_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110292110862_))
                                          (let ((_e110409110464_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110292110862_))))
                                            (let ((_tl110407110469_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110409110464_)))
                                                  (_hd110408110467_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110409110464_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110408110467_))
                                                  (let ((_e110412110472_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110408110467_))))
                                                    (let ((_tl110410110477_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110412110472_)))
                                                          (_hd110411110475_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110412110472_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110411110475_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110411110475_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110410110477_))
                          (let ((_e110415110480_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110410110477_))))
                            (let ((_tl110413110485_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110415110480_)))
                                  (_hd110414110483_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110415110480_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110414110483_))
                                  (let ((_e110418110488_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110414110483_))))
                                    (let ((_tl110416110493_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110418110488_)))
                                          (_hd110417110491_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110418110488_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110417110491_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110417110491_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110416110493_))
                                                  (let ((_e110421110496_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110416110493_))))
                                                    (let ((_tl110419110501_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110421110496_)))
                                                          (_hd110420110499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110421110496_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110419110501_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110413110485_))
                      (let ((_e110424110504_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110413110485_))))
                        (let ((_tl110422110509_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110424110504_)))
                              (_hd110423110507_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110424110504_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110423110507_))
                              (let ((_e110427110512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110423110507_))))
                                (let ((_tl110425110517_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110427110512_)))
                                      (_hd110426110515_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110427110512_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110426110515_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110426110515_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110425110517_))
                                              (let ((_e110430110520_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110425110517_))))
                                                (let ((_tl110428110525_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110430110520_)))
                                                      (_hd110429110523_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110430110520_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110428110525_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110422110509_))
                                                          (let ((_e110433110528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110422110509_))))
                    (let ((_tl110431110533_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110433110528_)))
                          (_hd110432110531_
                           (let ()
                             (declare (not safe))
                             (##car _e110433110528_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110432110531_))
                          (let ((_e110436110536_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110432110531_))))
                            (let ((_tl110434110541_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110436110536_)))
                                  (_hd110435110539_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110436110536_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110435110539_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110435110539_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110434110541_))
                                          (let ((_e110439110544_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110434110541_))))
                                            (let ((_tl110437110549_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110439110544_)))
                                                  (_hd110438110547_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110439110544_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110437110549_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110431110533_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110407110469_))
                                                          (___match112803112804_
                                                           _e110294110857_
                                                           _hd110293110860_
                                                           _tl110292110862_
                                                           _e110409110464_
                                                           _hd110408110467_
                                                           _tl110407110469_
                                                           _e110412110472_
                                                           _hd110411110475_
                                                           _tl110410110477_
                                                           _e110415110480_
                                                           _hd110414110483_
                                                           _tl110413110485_
                                                           _e110418110488_
                                                           _hd110417110491_
                                                           _tl110416110493_
                                                           _e110421110496_
                                                           _hd110420110499_
                                                           _tl110419110501_
                                                           _e110424110504_
                                                           _hd110423110507_
                                                           _tl110422110509_
                                                           _e110427110512_
                                                           _hd110426110515_
                                                           _tl110425110517_
                                                           _e110430110520_
                                                           _hd110429110523_
                                                           _tl110428110525_
                                                           _e110433110528_
                                                           _hd110432110531_
                                                           _tl110431110533_
                                                           _e110436110536_
                                                           _hd110435110539_
                                                           _tl110434110541_
                                                           _e110439110544_
                                                           _hd110438110547_
                                                           _tl110437110549_)
                                                          (___kont112678112679_))
                                                      (___kont112678112679_))
                                                  (___kont112678112679_))))
                                          (___kont112678112679_))
                                      (___kont112678112679_))
                                  (___kont112678112679_))))
                          (___kont112678112679_))))
                  (___kont112678112679_))
              (___kont112678112679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112678112679_))
                                          (___kont112678112679_))
                                      (___kont112678112679_))))
                              (___kont112678112679_))))
                      (___kont112678112679_))
                  (___kont112678112679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112678112679_))
                                              (___kont112678112679_))
                                          (___kont112678112679_))))
                                  (___kont112678112679_))))
                          (___kont112678112679_))
                      (___kont112678112679_))
                  (___kont112678112679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112678112679_))))
                                          (___kont112678112679_)))))
                              (___kont112678112679_)))))))
                 (_dispatch-case-e109595_
                  (lambda (_hd109743_ _body109744_)
                    (let* ((_form109746_
                            (let ((__tmp114111
                                   (let ()
                                     (declare (not safe))
                                     (cons _body109744_ '()))))
                              (declare (not safe))
                              (cons _hd109743_ __tmp114111)))
                           (___stx112806112807_ _form109746_)
                           (_g109750109874_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx112806112807_)))))
                      (let ((___kont112808112809_
                             (lambda (_L110245_ _L110246_ _L110247_)
                               (let ((__tmp114112
                                      (let ((__tmp114114
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114113
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110246_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114114 __tmp114113))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109591_ __tmp114112))))
                            (___kont112814112815_
                             (lambda (_L110093_ _L110094_ _L110095_ _L110096_)
                               (let ((__tmp114115
                                      (let ((__tmp114117
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114116
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110093_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114117 __tmp114116))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109591_ __tmp114115))))
                            (___kont112818112819_
                             (lambda (_L109959_ _L109960_ _L109961_)
                               (let ((__tmp114118
                                      (let ((__tmp114120
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114119
                                             (let ()
                                               (declare (not safe))
                                               (cons _L109959_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114120 __tmp114119))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109591_
                                  __tmp114118)))))
                        (let* ((___match112915112916_
                                (lambda (_e109842109879_
                                         _hd109841109882_
                                         _tl109840109884_
                                         _e109845109887_
                                         _hd109844109890_
                                         _tl109843109892_
                                         _e109848109895_
                                         _hd109847109898_
                                         _tl109846109900_
                                         _e109851109903_
                                         _hd109850109906_
                                         _tl109849109908_
                                         _e109854109911_
                                         _hd109853109914_
                                         _tl109852109916_
                                         _e109857109919_
                                         _hd109856109922_
                                         _tl109855109924_
                                         _e109860109927_
                                         _hd109859109930_
                                         _tl109858109932_
                                         _e109863109935_
                                         _hd109862109938_
                                         _tl109861109940_
                                         _e109866109943_
                                         _hd109865109946_
                                         _tl109864109948_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109858109932_))
                                      (let ((_e109869109951_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109858109932_))))
                                        (let ((_tl109867109956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109869109951_)))
                                              (_hd109868109954_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109869109951_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109867109956_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl109843109892_))
                                                  (___kont112818112819_
                                                   _hd109865109946_
                                                   _hd109856109922_
                                                   _hd109841109882_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109750109874_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g109750109874_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109750109874_)))))
                               (___match112845112846_
                                (lambda (_e109803109997_
                                         _hd109802110000_
                                         _tl109801110002_
                                         ___splice112816112817_
                                         _target109804110005_
                                         _tl109806110007_)
                                  (letrec ((_loop109807110010_
                                            (lambda (_hd109805110013_
                                                     _arg109811110015_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109805110013_))
                                                  (let ((_e109808110018_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109805110013_))))
                                                    (let ((_lp-tl109810110023_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109808110018_)))
                                                          (_lp-hd109809110021_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109808110018_))))
                                                      (let ((__tmp114121
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109809110021_ _arg109811110015_))))
                (declare (not safe))
                (_loop109807110010_ _lp-tl109810110023_ __tmp114121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109812110026_
                                                         (reverse _arg109811110015_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109801110002_))
                                                        (let ((_e109815110029_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109801110002_))))
                  (let ((_tl109813110034_
                         (let () (declare (not safe)) (##cdr _e109815110029_)))
                        (_hd109814110032_
                         (let ()
                           (declare (not safe))
                           (##car _e109815110029_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109814110032_))
                        (let ((_e109818110037_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109814110032_))))
                          (let ((_tl109816110042_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109818110037_)))
                                (_hd109817110040_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109818110037_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109817110040_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109817110040_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109816110042_))
                                        (let ((_e109821110045_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109816110042_))))
                                          (let ((_tl109819110050_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109821110045_)))
                                                (_hd109820110048_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109821110045_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109820110048_))
                                                (let ((_e109824110053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109820110048_))))
                                                  (let ((_tl109822110058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109824110053_)))
                                                        (_hd109823110056_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109824110053_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109823110056_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109823110056_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109822110058_))
                        (let ((_e109827110061_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109822110058_))))
                          (let ((_tl109825110066_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109827110061_)))
                                (_hd109826110064_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109827110061_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109825110066_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl109819110050_))
                                    (let ((_e109830110069_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl109819110050_))))
                                      (let ((_tl109828110074_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e109830110069_)))
                                            (_hd109829110072_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e109830110069_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd109829110072_))
                                            (let ((_e109833110077_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd109829110072_))))
                                              (let ((_tl109831110082_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109833110077_)))
                                                    (_hd109832110080_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109833110077_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd109832110080_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd109832110080_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl109831110082_))
                                                            (let ((_e109836110085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl109831110082_))))
                      (let ((_tl109834110090_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109836110085_)))
                            (_hd109835110088_
                             (let ()
                               (declare (not safe))
                               (##car _e109836110085_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl109834110090_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109813110034_))
                                (___kont112814112815_
                                 _hd109835110088_
                                 _hd109826110064_
                                 _tl109806110007_
                                 _arg109812110026_)
                                (___match112915112916_
                                 _e109803109997_
                                 _hd109802110000_
                                 _tl109801110002_
                                 _e109815110029_
                                 _hd109814110032_
                                 _tl109813110034_
                                 _e109818110037_
                                 _hd109817110040_
                                 _tl109816110042_
                                 _e109821110045_
                                 _hd109820110048_
                                 _tl109819110050_
                                 _e109824110053_
                                 _hd109823110056_
                                 _tl109822110058_
                                 _e109827110061_
                                 _hd109826110064_
                                 _tl109825110066_
                                 _e109830110069_
                                 _hd109829110072_
                                 _tl109828110074_
                                 _e109833110077_
                                 _hd109832110080_
                                 _tl109831110082_
                                 _e109836110085_
                                 _hd109835110088_
                                 _tl109834110090_))
                            (let () (declare (not safe)) (_g109750109874_)))))
                    (let () (declare (not safe)) (_g109750109874_)))
                (let () (declare (not safe)) (_g109750109874_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g109750109874_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g109750109874_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g109750109874_)))
                                (let ()
                                  (declare (not safe))
                                  (_g109750109874_)))))
                        (let () (declare (not safe)) (_g109750109874_)))
                    (let () (declare (not safe)) (_g109750109874_)))
                (let () (declare (not safe)) (_g109750109874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109750109874_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109750109874_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g109750109874_)))
                                (let ()
                                  (declare (not safe))
                                  (_g109750109874_)))))
                        (let () (declare (not safe)) (_g109750109874_)))))
                (let () (declare (not safe)) (_g109750109874_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109807110010_
                                       _target109804110005_
                                       '())))))
                               (___match112833112834_
                                (lambda (_e109757110133_
                                         _hd109756110136_
                                         _tl109755110138_
                                         ___splice112810112811_
                                         _target109758110141_
                                         _tl109760110143_)
                                  (letrec ((_loop109761110146_
                                            (lambda (_hd109759110149_
                                                     _arg109765110151_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109759110149_))
                                                  (let ((_e109762110154_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109759110149_))))
                                                    (let ((_lp-tl109764110159_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109762110154_)))
                                                          (_lp-hd109763110157_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109762110154_))))
                                                      (let ((__tmp114123
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109763110157_ _arg109765110151_))))
                (declare (not safe))
                (_loop109761110146_ _lp-tl109764110159_ __tmp114123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109766110162_
                                                         (reverse _arg109765110151_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109755110138_))
                                                        (let ((_e109769110165_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109755110138_))))
                  (let ((_tl109767110170_
                         (let () (declare (not safe)) (##cdr _e109769110165_)))
                        (_hd109768110168_
                         (let ()
                           (declare (not safe))
                           (##car _e109769110165_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109768110168_))
                        (let ((_e109772110173_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109768110168_))))
                          (let ((_tl109770110178_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109772110173_)))
                                (_hd109771110176_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109772110173_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109771110176_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109771110176_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109770110178_))
                                        (let ((_e109775110181_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109770110178_))))
                                          (let ((_tl109773110186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109775110181_)))
                                                (_hd109774110184_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109775110181_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109774110184_))
                                                (let ((_e109778110189_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109774110184_))))
                                                  (let ((_tl109776110194_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109778110189_)))
                                                        (_hd109777110192_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109778110189_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109777110192_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109777110192_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109776110194_))
                        (let ((_e109781110197_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109776110194_))))
                          (let ((_tl109779110202_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109781110197_)))
                                (_hd109780110200_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109781110197_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109779110202_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl109773110186_))
                                    (let ((___splice112812112813_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl109773110186_
                                              '0))))
                                      (let ((_tl109784110207_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112812112813_
                                                '1)))
                                            (_target109782110205_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112812112813_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl109784110207_))
                                            (letrec ((_loop109785110210_
                                                      (lambda (_hd109783110213_
                                                               _xarg109789110215_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd109783110213_))
                                                            (let ((_e109786110218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd109783110213_))))
                      (let ((_lp-tl109788110223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109786110218_)))
                            (_lp-hd109787110221_
                             (let ()
                               (declare (not safe))
                               (##car _e109786110218_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd109787110221_))
                            (let ((_e109793110226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd109787110221_))))
                              (let ((_tl109791110231_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e109793110226_)))
                                    (_hd109792110229_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e109793110226_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd109792110229_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd109792110229_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl109791110231_))
                                            (let ((_e109796110234_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl109791110231_))))
                                              (let ((_tl109794110239_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109796110234_)))
                                                    (_hd109795110237_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109796110234_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl109794110239_))
                                                    (let ((__tmp114122
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd109795110237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg109789110215_))))
              (declare (not safe))
              (_loop109785110210_ _lp-tl109788110223_ __tmp114122))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112845112846_
                                                     _e109757110133_
                                                     _hd109756110136_
                                                     _tl109755110138_
                                                     ___splice112810112811_
                                                     _target109758110141_
                                                     _tl109760110143_))))
                                            (___match112845112846_
                                             _e109757110133_
                                             _hd109756110136_
                                             _tl109755110138_
                                             ___splice112810112811_
                                             _target109758110141_
                                             _tl109760110143_))
                                        (___match112845112846_
                                         _e109757110133_
                                         _hd109756110136_
                                         _tl109755110138_
                                         ___splice112810112811_
                                         _target109758110141_
                                         _tl109760110143_))
                                    (___match112845112846_
                                     _e109757110133_
                                     _hd109756110136_
                                     _tl109755110138_
                                     ___splice112810112811_
                                     _target109758110141_
                                     _tl109760110143_))))
                            (___match112845112846_
                             _e109757110133_
                             _hd109756110136_
                             _tl109755110138_
                             ___splice112810112811_
                             _target109758110141_
                             _tl109760110143_))))
                    (let ((_xarg109790110242_ (reverse _xarg109789110215_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl109767110170_))
                          (___kont112808112809_
                           _xarg109790110242_
                           _hd109780110200_
                           _arg109766110162_)
                          (___match112845112846_
                           _e109757110133_
                           _hd109756110136_
                           _tl109755110138_
                           ___splice112810112811_
                           _target109758110141_
                           _tl109760110143_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop109785110210_
                                                 _target109782110205_
                                                 '())))
                                            (___match112845112846_
                                             _e109757110133_
                                             _hd109756110136_
                                             _tl109755110138_
                                             ___splice112810112811_
                                             _target109758110141_
                                             _tl109760110143_))))
                                    (___match112845112846_
                                     _e109757110133_
                                     _hd109756110136_
                                     _tl109755110138_
                                     ___splice112810112811_
                                     _target109758110141_
                                     _tl109760110143_))
                                (___match112845112846_
                                 _e109757110133_
                                 _hd109756110136_
                                 _tl109755110138_
                                 ___splice112810112811_
                                 _target109758110141_
                                 _tl109760110143_))))
                        (___match112845112846_
                         _e109757110133_
                         _hd109756110136_
                         _tl109755110138_
                         ___splice112810112811_
                         _target109758110141_
                         _tl109760110143_))
                    (___match112845112846_
                     _e109757110133_
                     _hd109756110136_
                     _tl109755110138_
                     ___splice112810112811_
                     _target109758110141_
                     _tl109760110143_))
                (___match112845112846_
                 _e109757110133_
                 _hd109756110136_
                 _tl109755110138_
                 ___splice112810112811_
                 _target109758110141_
                 _tl109760110143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match112845112846_
                                                 _e109757110133_
                                                 _hd109756110136_
                                                 _tl109755110138_
                                                 ___splice112810112811_
                                                 _target109758110141_
                                                 _tl109760110143_))))
                                        (___match112845112846_
                                         _e109757110133_
                                         _hd109756110136_
                                         _tl109755110138_
                                         ___splice112810112811_
                                         _target109758110141_
                                         _tl109760110143_))
                                    (___match112845112846_
                                     _e109757110133_
                                     _hd109756110136_
                                     _tl109755110138_
                                     ___splice112810112811_
                                     _target109758110141_
                                     _tl109760110143_))
                                (___match112845112846_
                                 _e109757110133_
                                 _hd109756110136_
                                 _tl109755110138_
                                 ___splice112810112811_
                                 _target109758110141_
                                 _tl109760110143_))))
                        (___match112845112846_
                         _e109757110133_
                         _hd109756110136_
                         _tl109755110138_
                         ___splice112810112811_
                         _target109758110141_
                         _tl109760110143_))))
                (___match112845112846_
                 _e109757110133_
                 _hd109756110136_
                 _tl109755110138_
                 ___splice112810112811_
                 _target109758110141_
                 _tl109760110143_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109761110146_
                                       _target109758110141_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx112806112807_))
                              (let ((_e109757110133_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx112806112807_))))
                                (let ((_tl109755110138_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109757110133_)))
                                      (_hd109756110136_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109757110133_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd109756110136_))
                                      (let ((___splice112810112811_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd109756110136_
                                                '0))))
                                        (let ((_tl109760110143_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112810112811_
                                                  '1)))
                                              (_target109758110141_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112810112811_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109760110143_))
                                              (___match112833112834_
                                               _e109757110133_
                                               _hd109756110136_
                                               _tl109755110138_
                                               ___splice112810112811_
                                               _target109758110141_
                                               _tl109760110143_)
                                              (___match112845112846_
                                               _e109757110133_
                                               _hd109756110136_
                                               _tl109755110138_
                                               ___splice112810112811_
                                               _target109758110141_
                                               _tl109760110143_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl109755110138_))
                                          (let ((_e109845109887_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl109755110138_))))
                                            (let ((_tl109843109892_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109845109887_)))
                                                  (_hd109844109890_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109845109887_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109844109890_))
                                                  (let ((_e109848109895_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109844109890_))))
                                                    (let ((_tl109846109900_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109848109895_)))
                                                          (_hd109847109898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109848109895_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd109847109898_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd109847109898_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl109846109900_))
                          (let ((_e109851109903_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl109846109900_))))
                            (let ((_tl109849109908_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109851109903_)))
                                  (_hd109850109906_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109851109903_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd109850109906_))
                                  (let ((_e109854109911_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd109850109906_))))
                                    (let ((_tl109852109916_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109854109911_)))
                                          (_hd109853109914_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109854109911_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd109853109914_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd109853109914_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl109852109916_))
                                                  (let ((_e109857109919_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl109852109916_))))
                                                    (let ((_tl109855109924_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109857109919_)))
                                                          (_hd109856109922_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109857109919_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109855109924_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109849109908_))
                      (let ((_e109860109927_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109849109908_))))
                        (let ((_tl109858109932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109860109927_)))
                              (_hd109859109930_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109860109927_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd109859109930_))
                              (let ((_e109863109935_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd109859109930_))))
                                (let ((_tl109861109940_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109863109935_)))
                                      (_hd109862109938_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109863109935_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd109862109938_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd109862109938_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl109861109940_))
                                              (let ((_e109866109943_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl109861109940_))))
                                                (let ((_tl109864109948_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109866109943_)))
                                                      (_hd109865109946_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109866109943_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109864109948_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl109858109932_))
                                                          (let ((_e109869109951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl109858109932_))))
                    (let ((_tl109867109956_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109869109951_)))
                          (_hd109868109954_
                           (let ()
                             (declare (not safe))
                             (##car _e109869109951_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl109867109956_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl109843109892_))
                              (___kont112818112819_
                               _hd109865109946_
                               _hd109856109922_
                               _hd109756110136_)
                              (let () (declare (not safe)) (_g109750109874_)))
                          (let () (declare (not safe)) (_g109750109874_)))))
                  (let () (declare (not safe)) (_g109750109874_)))
              (let () (declare (not safe)) (_g109750109874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g109750109874_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g109750109874_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g109750109874_)))))
                              (let ()
                                (declare (not safe))
                                (_g109750109874_)))))
                      (let () (declare (not safe)) (_g109750109874_)))
                  (let () (declare (not safe)) (_g109750109874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109750109874_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g109750109874_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g109750109874_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109750109874_)))))
                          (let () (declare (not safe)) (_g109750109874_)))
                      (let () (declare (not safe)) (_g109750109874_)))
                  (let () (declare (not safe)) (_g109750109874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109750109874_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g109750109874_))))))
                              (let ()
                                (declare (not safe))
                                (_g109750109874_))))))))
                 (_generate1109596_
                  (lambda (_args109731_ _arglen109732_ _hd109733_ _body109734_)
                    (let* ((_len109736_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd109733_)))
                           (_condition109738_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd109733_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114138
                                           (let ((__tmp114139
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len109736_ '()))))
                                             (declare (not safe))
                                             (cons _arglen109732_
                                                   __tmp114139))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114138))
                                    (let ((__tmp114132
                                           (let ((__tmp114133
                                                  (let ((__tmp114134
                                                         (let ((__tmp114135
                                                                (let ((__tmp114136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114137
                                      (let ()
                                        (declare (not safe))
                                        (cons _len109736_ '()))))
                                 (declare (not safe))
                                 (cons _arglen109732_ __tmp114137))))
                          (declare (not safe))
                          (cons '##fx= __tmp114136))))
                   (declare (not safe))
                   (cons __tmp114135 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114134))))
                                             (declare (not safe))
                                             (cons '() __tmp114133))))
                                      (declare (not safe))
                                      (cons 'let __tmp114132)))
                                (if (> _len109736_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114130
                                               (let ((__tmp114131
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len109736_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen109732_
                                                       __tmp114131))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114130))
                                        (let ((__tmp114124
                                               (let ((__tmp114125
                                                      (let ((__tmp114126
                                                             (let ((__tmp114127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114128
                                   (let ((__tmp114129
                                          (let ()
                                            (declare (not safe))
                                            (cons _len109736_ '()))))
                                     (declare (not safe))
                                     (cons _arglen109732_ __tmp114129))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114128))))
                       (declare (not safe))
                       (cons __tmp114127 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114125))))
                                          (declare (not safe))
                                          (cons 'let __tmp114124)))
                                    '#t)))
                           (_dispatch109740_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109594_
                                   _hd109733_
                                   _body109734_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109595_
                                   _hd109733_
                                   _body109734_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109591_
                                   _hd109733_
                                   _body109734_)))))
                      (let ((__tmp114140
                             (let ((__tmp114141
                                    (let ((__tmp114142
                                           (let ((__tmp114143
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args109731_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch109740_
                                                   __tmp114143))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114142))))
                               (declare (not safe))
                               (cons __tmp114141 '()))))
                        (declare (not safe))
                        (cons _condition109738_ __tmp114140))))))
          (let* ((_g109598109626_
                  (lambda (_g109599109623_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109599109623_))))
                 (_g109597109728_
                  (lambda (_g109599109629_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109599109629_))
                        (let ((_e109604109631_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109599109629_))))
                          (let ((_hd109603109634_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109604109631_)))
                                (_tl109602109636_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109604109631_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109602109636_))
                                (let ((_g114144_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109602109636_
                                          '0))))
                                  (begin
                                    (let ((_g114145_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114144_)
                                                 (##vector-length _g114144_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114145_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114145_)))
                                    (let ((_target109605109639_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114144_ 0)))
                                          (_tl109607109641_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114144_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109607109641_))
                                          (letrec ((_loop109608109644_
                                                    (lambda (_hd109606109647_
                                                             _body109612109649_
                                                             _hd109613109651_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109606109647_))
                                                          (let ((_e109609109654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109606109647_))))
                    (let ((_lp-hd109610109657_
                           (let ()
                             (declare (not safe))
                             (##car _e109609109654_)))
                          (_lp-tl109611109659_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109609109654_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109610109657_))
                          (let ((_e109618109662_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109610109657_))))
                            (let ((_hd109617109665_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109618109662_)))
                                  (_tl109616109667_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109618109662_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109616109667_))
                                  (let ((_e109621109670_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109616109667_))))
                                    (let ((_hd109620109673_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109621109670_)))
                                          (_tl109619109675_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109621109670_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109619109675_))
                                          (let ((__tmp114174
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109620109673_
                                                         _body109612109649_)))
                                                (__tmp114173
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109617109665_
                                                         _hd109613109651_))))
                                            (declare (not safe))
                                            (_loop109608109644_
                                             _lp-tl109611109659_
                                             __tmp114174
                                             __tmp114173))
                                          (let ()
                                            (declare (not safe))
                                            (_g109598109626_
                                             _g109599109629_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109598109626_ _g109599109629_)))))
                          (let ()
                            (declare (not safe))
                            (_g109598109626_ _g109599109629_)))))
                  (let ((_body109614109678_ (reverse _body109612109649_))
                        (_hd109615109680_ (reverse _hd109613109651_)))
                    ((lambda (_L109683_ _L109684_)
                       (let ((_args109703_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen109704_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name109705_
                              (let ((_$e109700_
                                     (let ((__tmp114146
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114146 _stx109592_))))
                                (if _$e109700_
                                    _$e109700_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114147
                                (let ((__tmp114148
                                       (let ((__tmp114149
                                              (let ((__tmp114150
                                                     (let ((__tmp114163
                                                            (let ((__tmp114164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114165
                                  (let ((__tmp114166
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114172
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109703_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114172))
                                             (let ((__tmp114167
                                                    (let ((__tmp114168
                                                           (let ((__tmp114169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114170
                                 (let ((__tmp114171
                                        (let ()
                                          (declare (not safe))
                                          (cons _args109703_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114171))))
                            (declare (not safe))
                            (cons __tmp114170 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114169))))
              (declare (not safe))
              (cons '() __tmp114168))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114167)))))
                                    (declare (not safe))
                                    (cons __tmp114166 '()))))
                             (declare (not safe))
                             (cons _arglen109704_ __tmp114165))))
                      (declare (not safe))
                      (cons __tmp114164 '())))
                   (__tmp114151
                    (let ((__tmp114152
                           (let ((__tmp114153
                                  (let ((__tmp114157
                                         (let ((__tmp114158
                                                (let ((__tmp114159
                                                       (let ((__tmp114160
                                                              (let ((__tmp114161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114162
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109703_ '()))))
                               (declare (not safe))
                               (cons _name109705_ __tmp114162))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114161))))
                 (declare (not safe))
                 (cons __tmp114160 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114159))))
                                           (declare (not safe))
                                           (cons __tmp114158 '())))
                                        (__tmp114154
                                         (map (lambda (_g109706109709_
                                                       _g109707109711_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109596_
                                                   _args109703_
                                                   _arglen109704_
                                                   _g109706109709_
                                                   _g109707109711_)))
                                              (let ((__tmp114155
                                                     (lambda (_g109713109716_
                                                              _g109714109718_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109713109716_
                                                               _g109714109718_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114155
                                                        '()
                                                        _L109684_))
                                              (let ((__tmp114156
                                                     (lambda (_g109720109723_
                                                              _g109721109725_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109720109723_
                                                               _g109721109725_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114156
                                                        '()
                                                        _L109683_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114157 __tmp114154))))
                             (declare (not safe))
                             (cons 'cond __tmp114153))))
                      (declare (not safe))
                      (cons __tmp114152 '()))))
               (declare (not safe))
               (cons __tmp114163 __tmp114151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114150))))
                                         (declare (not safe))
                                         (cons __tmp114149 '()))))
                                  (declare (not safe))
                                  (cons _args109703_ __tmp114148))))
                           (declare (not safe))
                           (cons 'lambda __tmp114147))))
                     _body109614109678_
                     _hd109615109680_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109608109644_
                                               _target109605109639_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109598109626_
                                             _g109599109629_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109598109626_ _g109599109629_)))))
                        (let ()
                          (declare (not safe))
                          (_g109598109626_ _g109599109629_))))))
            (declare (not safe))
            (_g109597109728_ _stx109592_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self108862_ _stx108863_ _compiled-body?108864_)
        (letrec ((_generate-simple108866_
                  (lambda (_hd109576_ _body109577_)
                    (let ((__tmp114175
                           (let ((__tmp114176
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self108862_
                                     'let
                                     _hd109576_
                                     _body109577_
                                     _compiled-body?108864_))))
                             (declare (not safe))
                             (_coalesce-let*108868_ __tmp114176))))
                      (declare (not safe))
                      (_coalesce-boolean108867_ __tmp114175))))
                 (_coalesce-boolean108867_
                  (lambda (_code109437_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109438109464_ _code109437_)
                               (_else109440109472_ (lambda () _code109437_))
                               (_K109442109509_
                                (lambda (_expr2109475_
                                         _expr1109476_
                                         _id109477_)
                                  (let* ((_expr2109478109486_ _expr2109475_)
                                         (_else109480109494_
                                          (lambda ()
                                            (let ((__tmp114177
                                                   (let ((__tmp114178
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109476_
                                                           __tmp114178))))
                                              (declare (not safe))
                                              (cons 'or __tmp114177))))
                                         (_K109482109499_
                                          (lambda (_exprs109497_)
                                            (let ((__tmp114179
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109476_
                                                           _exprs109497_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114179)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109478109486_))
                                        (let ((_hd109483109502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109478109486_)))
                                              (_tl109484109504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109478109486_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109483109502_ 'or))
                                              (let ((_exprs109507_
                                                     _tl109484109504_))
                                                (declare (not safe))
                                                (_K109482109499_
                                                 _exprs109507_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109480109494_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109480109494_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109438109464_))
                              (let ((_hd109443109512_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109438109464_)))
                                    (_tl109444109514_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109438109464_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109443109512_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109444109514_))
                                        (let ((_hd109445109517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109444109514_)))
                                              (_tl109446109519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109444109514_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109445109517_))
                                              (let ((_hd109457109522_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109445109517_)))
                                                    (_tl109458109524_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109445109517_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109457109522_))
                                                    (let ((_hd109459109527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109457109522_)))
                                                          (_tl109460109529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109457109522_))))
                                                      (let ((_id109532_
                                                             _hd109459109527_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109460109529_))
                                                            (let ((_hd109461109534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109460109529_)))
                          (_tl109462109536_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109460109529_))))
                      (let ((_expr1109539_ _hd109461109534_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109462109536_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109458109524_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109446109519_))
                                    (let ((_hd109447109541_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109446109519_)))
                                          (_tl109448109543_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109446109519_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109447109541_))
                                          (let ((_hd109449109546_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109447109541_)))
                                                (_tl109450109548_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109447109541_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109449109546_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109450109548_))
                                                    (let ((_hd109451109551_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109450109548_)))
                                                          (_tl109452109553_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109450109548_))))
                                                      (if ((lambda (_g109555109557_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109555109557_ _id109532_)))
                   _hd109451109551_)
                  (if (let () (declare (not safe)) (##pair? _tl109452109553_))
                      (let ((_hd109453109560_
                             (let ()
                               (declare (not safe))
                               (##car _tl109452109553_)))
                            (_tl109454109562_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109452109553_))))
                        (if ((lambda (_g109564109566_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109564109566_ _id109532_)))
                             _hd109453109560_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109454109562_))
                                (let ((_hd109455109569_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109454109562_)))
                                      (_tl109456109571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109454109562_))))
                                  (let ((_expr2109574_ _hd109455109569_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109456109571_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109448109543_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109442109509_
                                               _expr2109574_
                                               _expr1109539_
                                               _id109532_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109440109472_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109440109472_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109440109472_)))
                            (let ()
                              (declare (not safe))
                              (_else109440109472_))))
                      (let () (declare (not safe)) (_else109440109472_)))
                  (let () (declare (not safe)) (_else109440109472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109440109472_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109440109472_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109440109472_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109440109472_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109440109472_)))
                            (let ()
                              (declare (not safe))
                              (_else109440109472_)))))
                    (let () (declare (not safe)) (_else109440109472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109440109472_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109440109472_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109440109472_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109440109472_))))
                              (let ()
                                (declare (not safe))
                                (_else109440109472_))))
                        _code109437_)))
                 (_coalesce-let*108868_
                  (lambda (_code109170_)
                    (let* ((_code109171109235_ _code109170_)
                           (_else109175109243_ (lambda () _code109170_)))
                      (let ((_K109217109388_
                             (lambda (_body109384_ _expr109385_ _id109386_)
                               (let ((__tmp114180
                                      (let ((__tmp114181
                                             (let ((__tmp114182
                                                    (let ((__tmp114183
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109386_ __tmp114183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114182 '()))))
                                        (declare (not safe))
                                        (cons __tmp114181 _body109384_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114180))))
                            (_K109194109313_
                             (lambda (_body109307_
                                      _expr2109308_
                                      _id2109309_
                                      _expr1109310_
                                      _id1109311_)
                               (let ((__tmp114184
                                      (let ((__tmp114185
                                             (let ((__tmp114189
                                                    (let ((__tmp114190
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109311_ __tmp114190)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114186
                                                    (let ((__tmp114187
                                                           (let ((__tmp114188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109308_ '()))))
                     (declare (not safe))
                     (cons _id2109309_ __tmp114188))))
              (declare (not safe))
              (cons __tmp114187 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114189
                                                     __tmp114186))))
                                        (declare (not safe))
                                        (cons __tmp114185 _body109307_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114184))))
                            (_K109177109252_
                             (lambda (_body109247_
                                      _bind109248_
                                      _expr1109249_
                                      _id1109250_)
                               (let ((__tmp114191
                                      (let ((__tmp114192
                                             (let ((__tmp114193
                                                    (let ((__tmp114194
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109250_ __tmp114194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114193
                                                     _bind109248_))))
                                        (declare (not safe))
                                        (cons __tmp114192 _body109247_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114191)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109171109235_))
                            (let ((_tl109219109393_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109171109235_)))
                                  (_hd109218109391_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109171109235_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109218109391_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109219109393_))
                                      (let ((_tl109221109398_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109219109393_)))
                                            (_hd109220109396_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109219109393_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109220109396_))
                                            (let ((_tl109229109403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109220109396_)))
                                                  (_hd109228109401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109220109396_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109228109401_))
                                                  (let ((_tl109231109408_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109228109401_)))
                                                        (_hd109230109406_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109228109401_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109231109408_))
                                                        (let ((_tl109233109415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109231109408_)))
                      (_hd109232109413_
                       (let () (declare (not safe)) (##car _tl109231109408_))))
                  (if (let () (declare (not safe)) (##null? _tl109233109415_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109229109403_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109221109398_))
                              (let ((_tl109223109422_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109221109398_)))
                                    (_hd109222109420_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109221109398_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109222109420_))
                                    (let ((_tl109225109427_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109222109420_)))
                                          (_hd109224109425_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109222109420_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109224109425_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109225109427_))
                                              (let ((_tl109227109432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109225109427_)))
                                                    (_hd109226109430_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109225109427_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109226109430_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109223109422_))
                                                        (let ((_id109411_
                                                               _hd109230109406_)
                                                              (_expr109418_
                                                               _hd109232109413_)
                                                              (_body109435_
                                                               _tl109227109432_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109217109388_
                                                             _body109435_
                                                             _expr109418_
                                                             _id109411_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109175109243_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109226109430_))
                                                        (let ((_tl109206109362_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109226109430_)))
                      (_hd109205109360_
                       (let () (declare (not safe)) (##car _hd109226109430_))))
                  (if (let () (declare (not safe)) (##pair? _hd109205109360_))
                      (let ((_tl109208109367_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109205109360_)))
                            (_hd109207109365_
                             (let ()
                               (declare (not safe))
                               (##car _hd109205109360_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109208109367_))
                            (let ((_tl109210109374_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109208109367_)))
                                  (_hd109209109372_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109208109367_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109210109374_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109206109362_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109223109422_))
                                          (let ((_id1109336_ _hd109230109406_)
                                                (_expr1109343_
                                                 _hd109232109413_)
                                                (_id2109370_ _hd109207109365_)
                                                (_expr2109377_
                                                 _hd109209109372_)
                                                (_body109379_
                                                 _tl109227109432_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109194109313_
                                               _body109379_
                                               _expr2109377_
                                               _id2109370_
                                               _expr1109343_
                                               _id1109336_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109175109243_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109175109243_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109175109243_))))
                            (let ()
                              (declare (not safe))
                              (_else109175109243_))))
                      (let () (declare (not safe)) (_else109175109243_))))
                (let () (declare (not safe)) (_else109175109243_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109175109243_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109224109425_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109225109427_))
                                                  (let ((_tl109187109296_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109225109427_)))
                                                        (_hd109186109294_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109225109427_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109223109422_))
                                                        (let ((_id1109275_
                                                               _hd109230109406_)
                                                              (_expr1109282_
                                                               _hd109232109413_)
                                                              (_bind109299_
                                                               _hd109186109294_)
                                                              (_body109301_
                                                               _tl109187109296_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109177109252_
                                                             _body109301_
                                                             _bind109299_
                                                             _expr1109282_
                                                             _id1109275_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109175109243_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109175109243_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109175109243_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109175109243_))))
                              (let ()
                                (declare (not safe))
                                (_else109175109243_)))
                          (let () (declare (not safe)) (_else109175109243_)))
                      (let () (declare (not safe)) (_else109175109243_))))
                (let () (declare (not safe)) (_else109175109243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109175109243_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109175109243_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109175109243_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109175109243_))))
                            (let ()
                              (declare (not safe))
                              (_else109175109243_)))))))
                 (_generate-values108869_
                  (lambda (_hd108983_ _body108984_)
                    (let _lp108986_ ((_rest108988_ _hd108983_)
                                     (_bind108989_ '())
                                     (_check108990_ '())
                                     (_post108991_ '()))
                      (let* ((___stx113117113118_ _rest108988_)
                             (_g108994109005_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113117113118_)))))
                        (let ((___kont113119113120_
                               (lambda (_L109032_ _L109033_)
                                 (let* ((___stx113073113074_ _L109033_)
                                        (_g109048109073_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113073113074_)))))
                                   (let ((___kont113075113076_
                                          (lambda (_L109146_ _L109147_)
                                            (let ((_eid109161_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109147_)))
                                                  (_expr109162_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108862_
                                                      _L109146_))))
                                              (let ((__tmp114195
                                                     (let ((__tmp114196
                                                            (let ((__tmp114197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109162_ '()))))
                      (declare (not safe))
                      (cons _eid109161_ __tmp114197))))
               (declare (not safe))
               (cons __tmp114196 _bind108989_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108986_
                                                 _L109032_
                                                 __tmp114195
                                                 _check108990_
                                                 _post108991_)))))
                                         (___kont113077113078_
                                          (lambda (_L109094_ _L109095_)
                                            (let* ((_vals109108_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109110_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109108_
                                                       _L109095_
                                                       _L109094_)))
                                                   (_refs109112_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109108_
                                                       _L109095_)))
                                                   (_expr109114_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108862_
                                                       _L109094_))))
                                              (let ((__tmp114200
                                                     (let ((__tmp114201
                                                            (let ((__tmp114202
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109114_ '()))))
                      (declare (not safe))
                      (cons _vals109108_ __tmp114202))))
               (declare (not safe))
               (cons __tmp114201 _bind108989_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114199
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109110_
                                                             _check108990_)))
                                                    (__tmp114198
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109112_
                                                             _post108991_))))
                                                (declare (not safe))
                                                (_lp108986_
                                                 _L109032_
                                                 __tmp114200
                                                 __tmp114199
                                                 __tmp114198))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113073113074_))
                                         (let ((_e109054109122_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113073113074_))))
                                           (let ((_tl109052109127_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109054109122_)))
                                                 (_hd109053109125_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109054109122_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109053109125_))
                                                 (let ((_e109057109130_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109053109125_))))
                                                   (let ((_tl109055109135_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109057109130_)))
                                                         (_hd109056109133_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109057109130_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109055109135_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109052109127_))
                     (let ((_e109060109138_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109052109127_))))
                       (let ((_tl109058109143_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109060109138_)))
                             (_hd109059109141_
                              (let ()
                                (declare (not safe))
                                (##car _e109060109138_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109058109143_))
                             (___kont113075113076_
                              _hd109059109141_
                              _hd109056109133_)
                             (let () (declare (not safe)) (_g109048109073_)))))
                     (let () (declare (not safe)) (_g109048109073_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109052109127_))
                     (let ((_e109068109086_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109052109127_))))
                       (let ((_tl109066109091_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109068109086_)))
                             (_hd109067109089_
                              (let ()
                                (declare (not safe))
                                (##car _e109068109086_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109066109091_))
                             (___kont113077113078_
                              _hd109067109089_
                              _hd109053109125_)
                             (let () (declare (not safe)) (_g109048109073_)))))
                     (let () (declare (not safe)) (_g109048109073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109052109127_))
                                                     (let ((_e109068109086_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109052109127_))))
                                                       (let ((_tl109066109091_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109068109086_)))
                     (_hd109067109089_
                      (let () (declare (not safe)) (##car _e109068109086_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109066109091_))
                     (___kont113077113078_ _hd109067109089_ _hd109053109125_)
                     (let () (declare (not safe)) (_g109048109073_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109048109073_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109048109073_)))))))
                              (___kont113121113122_
                               (lambda ()
                                 (let* ((_body109012_
                                         (if _compiled-body?108864_
                                             _body108984_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108862_
                                                _body108984_))))
                                        (_body109014_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108870_
                                            _post108991_
                                            _body109012_)))
                                        (_body109016_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108871_
                                            _check108990_
                                            _body109014_))))
                                   (let ((__tmp114203
                                          (let ((__tmp114205
                                                 (reverse _bind108989_))
                                                (__tmp114204
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109016_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114205 __tmp114204))))
                                     (declare (not safe))
                                     (cons 'let __tmp114203))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113117113118_))
                              (let ((_e109000109024_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113117113118_))))
                                (let ((_tl108998109029_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109000109024_)))
                                      (_hd108999109027_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109000109024_))))
                                  (___kont113119113120_
                                   _tl108998109029_
                                   _hd108999109027_)))
                              (___kont113121113122_)))))))
                 (_generate-values-post108870_
                  (lambda (_post108942_ _body108943_)
                    (let _lp108945_ ((_rest108947_ _post108942_)
                                     (_body108948_ _body108943_))
                      (let* ((_rest108949108957_ _rest108947_)
                             (_else108951108965_ (lambda () _body108948_))
                             (_K108953108971_
                              (lambda (_rest108968_ _bind108969_)
                                (let ((__tmp114206
                                       (let ((__tmp114207
                                              (let ((__tmp114208
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body108948_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind108969_
                                                      __tmp114208))))
                                         (declare (not safe))
                                         (cons 'let __tmp114207))))
                                  (declare (not safe))
                                  (_lp108945_ _rest108968_ __tmp114206)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108949108957_))
                            (let ((_hd108954108974_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108949108957_)))
                                  (_tl108955108976_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108949108957_))))
                              (let* ((_bind108979_ _hd108954108974_)
                                     (_rest108981_ _tl108955108976_))
                                (declare (not safe))
                                (_K108953108971_ _rest108981_ _bind108979_)))
                            (let ()
                              (declare (not safe))
                              (_else108951108965_)))))))
                 (_generate-values-check108871_
                  (lambda (_check108939_ _body108940_)
                    (let ((__tmp114209
                           (let ((__tmp114211
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108940_ '())))
                                 (__tmp114210 (reverse _check108939_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114211 __tmp114210))))
                      (declare (not safe))
                      (cons 'begin __tmp114209)))))
          (let* ((_g108873108890_
                  (lambda (_g108874108887_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108874108887_))))
                 (_g108872108936_
                  (lambda (_g108874108893_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108874108893_))
                        (let ((_e108879108895_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108874108893_))))
                          (let ((_hd108878108898_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108879108895_)))
                                (_tl108877108900_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108879108895_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108877108900_))
                                (let ((_e108882108903_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108877108900_))))
                                  (let ((_hd108881108906_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108882108903_)))
                                        (_tl108880108908_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108882108903_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108880108908_))
                                        (let ((_e108885108911_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108880108908_))))
                                          (let ((_hd108884108914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108885108911_)))
                                                (_tl108883108916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108885108911_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108883108916_))
                                                ((lambda (_L108919_ _L108920_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108920_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108866_
                                                          _L108920_
                                                          _L108919_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108869_
                                                          _L108920_
                                                          _L108919_))))
                                                 _hd108884108914_
                                                 _hd108881108906_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108873108890_
                                                   _g108874108893_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108873108890_ _g108874108893_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108873108890_ _g108874108893_)))))
                        (let ()
                          (declare (not safe))
                          (_g108873108890_ _g108874108893_))))))
            (declare (not safe))
            (_g108872108936_ _stx108863_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109582_ _stx109583_)
        (let ((_compiled-body?109585_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109582_
           _stx109583_
           _compiled-body?109585_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114213_
        (let ((_g114212_ (let () (declare (not safe)) (##length _g114213_))))
          (cond ((let () (declare (not safe)) (##fx= _g114212_ 2))
                 (apply (lambda (_self109582_ _stx109583_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109582_
                             _stx109583_)))
                        _g114213_))
                ((let () (declare (not safe)) (##fx= _g114212_ 3))
                 (apply (lambda (_self109587_
                                 _stx109588_
                                 _compiled-body?109589_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109587_
                             _stx109588_
                             _compiled-body?109589_)))
                        _g114213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114213_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals108756_ _hd108757_)
        (let _lp108759_ ((_rest108761_ _hd108757_)
                         (_k108762_ '0)
                         (_r108763_ '()))
          (let* ((___stx113131113132_ _rest108761_)
                 (_g108768108785_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113131113132_)))))
            (let ((___kont113133113134_
                   (lambda (_L108848_)
                     (let ((__tmp114214
                            (let () (declare (not safe)) (fx+ _k108762_ '1))))
                       (declare (not safe))
                       (_lp108759_ _L108848_ __tmp114214 _r108763_))))
                  (___kont113135113136_
                   (lambda (_L108821_ _L108822_)
                     (let ((__tmp114220
                            (let () (declare (not safe)) (fx+ _k108762_ '1)))
                           (__tmp114215
                            (let ((__tmp114216
                                   (let ((__tmp114219
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L108822_)))
                                         (__tmp114217
                                          (let ((__tmp114218
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals108756_
                                                    _k108762_
                                                    _L108821_))))
                                            (declare (not safe))
                                            (cons __tmp114218 '()))))
                                     (declare (not safe))
                                     (cons __tmp114219 __tmp114217))))
                              (declare (not safe))
                              (cons __tmp114216 _r108763_))))
                       (declare (not safe))
                       (_lp108759_ _L108821_ __tmp114220 __tmp114215))))
                  (___kont113137113138_
                   (lambda (_L108797_)
                     (let ((__tmp114221
                            (let ((__tmp114222
                                   (let ((__tmp114225
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L108797_)))
                                         (__tmp114223
                                          (let ((__tmp114224
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals108756_
                                                    _k108762_))))
                                            (declare (not safe))
                                            (cons __tmp114224 '()))))
                                     (declare (not safe))
                                     (cons __tmp114225 __tmp114223))))
                              (declare (not safe))
                              (cons __tmp114222 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114221 _r108763_))))
                  (___kont113139113140_ (lambda () (reverse _r108763_))))
              (let ((_g108766108808_
                     (lambda ()
                       (let ((_L108797_ ___stx113131113132_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L108797_))
                             (___kont113137113138_ _L108797_)
                             (___kont113139113140_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113131113132_))
                    (let ((_e108773108837_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113131113132_))))
                      (let ((_tl108771108842_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108773108837_)))
                            (_hd108772108840_
                             (let ()
                               (declare (not safe))
                               (##car _e108773108837_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd108772108840_))
                            (let ((_e108774108845_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd108772108840_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e108774108845_ '#f))
                                  (___kont113133113134_ _tl108771108842_)
                                  (___kont113135113136_
                                   _tl108771108842_
                                   _hd108772108840_)))
                            (___kont113135113136_
                             _tl108771108842_
                             _hd108772108840_))))
                    (let () (declare (not safe)) (_g108766108808_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108435_ _stx108436_ _compiled-body?108437_)
        (letrec ((_generate-simple108439_
                  (lambda (_hd108741_ _body108742_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108435_
                       'letrec
                       _hd108741_
                       _body108742_
                       _compiled-body?108437_))))
                 (_generate-values108440_
                  (lambda (_hd108520_ _body108521_)
                    (let _lp108523_ ((_rest108525_ _hd108520_)
                                     (_bind108526_ '())
                                     (_check108527_ '())
                                     (_post108528_ '()))
                      (let* ((___stx113205113206_ _rest108525_)
                             (_g108531108542_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113205113206_)))))
                        (let ((___kont113207113208_
                               (lambda (_L108569_ _L108570_)
                                 (let* ((___stx113161113162_ _L108570_)
                                        (_g108585108610_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113161113162_)))))
                                   (let ((___kont113163113164_
                                          (lambda (_L108717_ _L108718_)
                                            (let ((_eid108732_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L108718_)))
                                                  (_expr108733_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108435_
                                                      _L108717_))))
                                              (let ((__tmp114226
                                                     (let ((__tmp114227
                                                            (let ((__tmp114228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr108733_ '()))))
                      (declare (not safe))
                      (cons _eid108732_ __tmp114228))))
               (declare (not safe))
               (cons __tmp114227 _bind108526_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108523_
                                                 _L108569_
                                                 __tmp114226
                                                 _check108527_
                                                 _post108528_)))))
                                         (___kont113165113166_
                                          (lambda (_L108631_ _L108632_)
                                            (let* ((_vals108645_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values108647_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals108645_
                                                       _L108632_
                                                       _L108631_)))
                                                   (_refs108649_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals108645_
                                                       _L108632_)))
                                                   (_expr108651_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108435_
                                                       _L108631_))))
                                              (let ((__tmp114231
                                                     (let ((__tmp114234
                                                            (let ((__tmp114235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114236
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr108651_ '()))))
                             (declare (not safe))
                             (cons _vals108645_ __tmp114236))))
                      (declare (not safe))
                      (cons __tmp114235 _bind108526_)))
                   (__tmp114232
                    (map (lambda (_e108653108655_)
                           (let* ((_g108657108666_ _e108653108655_)
                                  (_E108659108670_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g108657108666_))))
                                  (_K108660108675_
                                   (lambda (_eid108673_)
                                     (let ((__tmp114233
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid108673_ __tmp114233)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g108657108666_))
                                 (let ((_hd108661108678_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g108657108666_)))
                                       (_tl108662108680_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g108657108666_))))
                                   (let ((_eid108683_ _hd108661108678_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl108662108680_))
                                         (let ((_tl108664108685_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl108662108680_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl108664108685_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K108660108675_ _eid108683_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E108659108670_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E108659108670_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E108659108670_)))))
                         _refs108649_)))
               (declare (not safe))
               (foldl1 cons __tmp114234 __tmp114232)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114230
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values108647_
                                                             _check108527_)))
                                                    (__tmp114229
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs108649_
                                                               _post108528_))))
                                                (declare (not safe))
                                                (_lp108523_
                                                 _L108569_
                                                 __tmp114231
                                                 __tmp114230
                                                 __tmp114229))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113161113162_))
                                         (let ((_e108591108693_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113161113162_))))
                                           (let ((_tl108589108698_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108591108693_)))
                                                 (_hd108590108696_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108591108693_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108590108696_))
                                                 (let ((_e108594108701_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108590108696_))))
                                                   (let ((_tl108592108706_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108594108701_)))
                                                         (_hd108593108704_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108594108701_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108592108706_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108589108698_))
                     (let ((_e108597108709_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108589108698_))))
                       (let ((_tl108595108714_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108597108709_)))
                             (_hd108596108712_
                              (let ()
                                (declare (not safe))
                                (##car _e108597108709_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108595108714_))
                             (___kont113163113164_
                              _hd108596108712_
                              _hd108593108704_)
                             (let () (declare (not safe)) (_g108585108610_)))))
                     (let () (declare (not safe)) (_g108585108610_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108589108698_))
                     (let ((_e108605108623_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108589108698_))))
                       (let ((_tl108603108628_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108605108623_)))
                             (_hd108604108626_
                              (let ()
                                (declare (not safe))
                                (##car _e108605108623_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108603108628_))
                             (___kont113165113166_
                              _hd108604108626_
                              _hd108590108696_)
                             (let () (declare (not safe)) (_g108585108610_)))))
                     (let () (declare (not safe)) (_g108585108610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108589108698_))
                                                     (let ((_e108605108623_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108589108698_))))
                                                       (let ((_tl108603108628_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108605108623_)))
                     (_hd108604108626_
                      (let () (declare (not safe)) (##car _e108605108623_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108603108628_))
                     (___kont113165113166_ _hd108604108626_ _hd108590108696_)
                     (let () (declare (not safe)) (_g108585108610_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108585108610_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108585108610_)))))))
                              (___kont113209113210_
                               (lambda ()
                                 (let* ((_body108549_
                                         (if _compiled-body?108437_
                                             _body108521_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108435_
                                                _body108521_))))
                                        (_body108551_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108442_
                                            _post108528_
                                            _body108549_)))
                                        (_body108553_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108441_
                                            _check108527_
                                            _body108551_))))
                                   (let ((__tmp114237
                                          (let ((__tmp114239
                                                 (reverse _bind108526_))
                                                (__tmp114238
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108553_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114239 __tmp114238))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114237))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113205113206_))
                              (let ((_e108537108561_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113205113206_))))
                                (let ((_tl108535108566_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108537108561_)))
                                      (_hd108536108564_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108537108561_))))
                                  (___kont113207113208_
                                   _tl108535108566_
                                   _hd108536108564_)))
                              (___kont113209113210_)))))))
                 (_generate-values-check108441_
                  (lambda (_check108517_ _body108518_)
                    (let ((__tmp114240
                           (let ((__tmp114242
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108518_ '())))
                                 (__tmp114241 (reverse _check108517_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114242 __tmp114241))))
                      (declare (not safe))
                      (cons 'begin __tmp114240))))
                 (_generate-values-post108442_
                  (lambda (_post108510_ _body108511_)
                    (let ((__tmp114243
                           (let ((__tmp114245
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108511_ '())))
                                 (__tmp114244
                                  (map (lambda (_g108512108514_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108512108514_)))
                                       (reverse _post108510_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114245 __tmp114244))))
                      (declare (not safe))
                      (cons 'begin __tmp114243)))))
          (let* ((_g108444108461_
                  (lambda (_g108445108458_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108445108458_))))
                 (_g108443108507_
                  (lambda (_g108445108464_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108445108464_))
                        (let ((_e108450108466_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108445108464_))))
                          (let ((_hd108449108469_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108450108466_)))
                                (_tl108448108471_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108450108466_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108448108471_))
                                (let ((_e108453108474_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108448108471_))))
                                  (let ((_hd108452108477_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108453108474_)))
                                        (_tl108451108479_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108453108474_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108451108479_))
                                        (let ((_e108456108482_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108451108479_))))
                                          (let ((_hd108455108485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108456108482_)))
                                                (_tl108454108487_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108456108482_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108454108487_))
                                                ((lambda (_L108490_ _L108491_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108491_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108439_
                                                          _L108491_
                                                          _L108490_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108440_
                                                          _L108491_
                                                          _L108490_))))
                                                 _hd108455108485_
                                                 _hd108452108477_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108444108461_
                                                   _g108445108464_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108444108461_ _g108445108464_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108444108461_ _g108445108464_)))))
                        (let ()
                          (declare (not safe))
                          (_g108444108461_ _g108445108464_))))))
            (declare (not safe))
            (_g108443108507_ _stx108436_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self108747_ _stx108748_)
        (let ((_compiled-body?108750_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self108747_
           _stx108748_
           _compiled-body?108750_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114247_
        (let ((_g114246_ (let () (declare (not safe)) (##length _g114247_))))
          (cond ((let () (declare (not safe)) (##fx= _g114246_ 2))
                 (apply (lambda (_self108747_ _stx108748_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self108747_
                             _stx108748_)))
                        _g114247_))
                ((let () (declare (not safe)) (##fx= _g114246_ 3))
                 (apply (lambda (_self108752_
                                 _stx108753_
                                 _compiled-body?108754_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self108752_
                             _stx108753_
                             _compiled-body?108754_)))
                        _g114247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114247_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108016_ _stx108017_)
        (letrec ((_generate-values108019_
                  (lambda (_hd108262_ _body108263_)
                    (let _lp108265_ ((_rest108267_ _hd108262_)
                                     (_bind108268_ '()))
                      (let* ((_rest108269108277_ _rest108267_)
                             (_else108271108288_
                              (lambda ()
                                (let ((_bind108285_ (reverse _bind108268_))
                                      (_body108286_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108016_
                                          _body108263_))))
                                  (let ((__tmp114248
                                         (let ((__tmp114249
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108286_ '()))))
                                           (declare (not safe))
                                           (cons _bind108285_ __tmp114249))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114248)))))
                             (_K108273108422_
                              (lambda (_rest108291_ _hd-bind108292_)
                                (let* ((___stx113219113220_ _hd-bind108292_)
                                       (_g108295108320_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113219113220_)))))
                                  (let ((___kont113221113222_
                                         (lambda (_L108401_ _L108402_)
                                           (let ((_eid108416_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108402_)))
                                                 (_expr108417_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108016_
                                                     _L108401_))))
                                             (let ((__tmp114250
                                                    (let ((__tmp114251
                                                           (let ((__tmp114252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108417_ '()))))
                     (declare (not safe))
                     (cons _eid108416_ __tmp114252))))
              (declare (not safe))
              (cons __tmp114251 _bind108268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108265_
                                                _rest108291_
                                                __tmp114250)))))
                                        (___kont113223113224_
                                         (lambda (_L108341_ _L108342_)
                                           (let* ((_vals108361_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108363_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108365_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108363_
                                                      _L108342_
                                                      _L108341_)))
                                                  (_refs108367_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108361_
                                                      _L108342_)))
                                                  (_expr108369_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108016_
                                                      _L108341_))))
                                             (let ((__tmp114253
                                                    (let ((__tmp114254
                                                           (let ((__tmp114255
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114256
                                 (let ((__tmp114257
                                        (let ((__tmp114258
                                               (let ((__tmp114261
                                                      (let ((__tmp114262
                                                             (let ((__tmp114263
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108369_ '()))))
                       (declare (not safe))
                       (cons _tmp108363_ __tmp114263))))
                (declare (not safe))
                (cons __tmp114262 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114259
                                                      (let ((__tmp114260
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108363_ '()))))
                (declare (not safe))
                (cons _check-values108365_ __tmp114260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114261
                                                       __tmp114259))))
                                          (declare (not safe))
                                          (cons 'let __tmp114258))))
                                   (declare (not safe))
                                   (cons __tmp114257 '()))))
                            (declare (not safe))
                            (cons _vals108361_ __tmp114256))))
                     (declare (not safe))
                     (cons __tmp114255 _bind108268_))))
              (declare (not safe))
              (foldl1 cons __tmp114254 _refs108367_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108265_
                                                _rest108291_
                                                __tmp114253))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113219113220_))
                                        (let ((_e108301108377_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113219113220_))))
                                          (let ((_tl108299108382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108301108377_)))
                                                (_hd108300108380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108301108377_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108300108380_))
                                                (let ((_e108304108385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108300108380_))))
                                                  (let ((_tl108302108390_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108304108385_)))
                                                        (_hd108303108388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108304108385_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108302108390_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108299108382_))
                                                            (let ((_e108307108393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108299108382_))))
                      (let ((_tl108305108398_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108307108393_)))
                            (_hd108306108396_
                             (let ()
                               (declare (not safe))
                               (##car _e108307108393_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108305108398_))
                            (___kont113221113222_
                             _hd108306108396_
                             _hd108303108388_)
                            (let () (declare (not safe)) (_g108295108320_)))))
                    (let () (declare (not safe)) (_g108295108320_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108299108382_))
                    (let ((_e108315108333_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108299108382_))))
                      (let ((_tl108313108338_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108315108333_)))
                            (_hd108314108336_
                             (let ()
                               (declare (not safe))
                               (##car _e108315108333_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108313108338_))
                            (___kont113223113224_
                             _hd108314108336_
                             _hd108300108380_)
                            (let () (declare (not safe)) (_g108295108320_)))))
                    (let () (declare (not safe)) (_g108295108320_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108299108382_))
                                                    (let ((_e108315108333_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108299108382_))))
                                                      (let ((_tl108313108338_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108315108333_)))
                    (_hd108314108336_
                     (let () (declare (not safe)) (##car _e108315108333_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108313108338_))
                    (___kont113223113224_ _hd108314108336_ _hd108300108380_)
                    (let () (declare (not safe)) (_g108295108320_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108295108320_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108295108320_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108269108277_))
                            (let ((_hd108274108425_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108269108277_)))
                                  (_tl108275108427_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108269108277_))))
                              (let* ((_hd-bind108430_ _hd108274108425_)
                                     (_rest108432_ _tl108275108427_))
                                (declare (not safe))
                                (_K108273108422_
                                 _rest108432_
                                 _hd-bind108430_)))
                            (let ()
                              (declare (not safe))
                              (_else108271108288_)))))))
                 (_generate-letrec?108020_
                  (lambda (_hd108152_)
                    (let _lp108154_ ((_rest108156_ _hd108152_))
                      (let* ((_rest108157108165_ _rest108156_)
                             (_else108159108173_ (lambda () '#t))
                             (_K108161108250_
                              (lambda (_rest108176_ _hd-bind108177_)
                                (let* ((_g108179108196_
                                        (lambda (_g108180108193_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108180108193_))))
                                       (_g108178108247_
                                        (lambda (_g108180108199_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108180108199_))
                                              (let ((_e108185108201_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108180108199_))))
                                                (let ((_hd108184108204_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108185108201_)))
                                                      (_tl108183108206_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108185108201_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108184108204_))
                                                      (let ((_e108188108209_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108184108204_))))
                (let ((_hd108187108212_
                       (let () (declare (not safe)) (##car _e108188108209_)))
                      (_tl108186108214_
                       (let () (declare (not safe)) (##cdr _e108188108209_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108186108214_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108183108206_))
                          (let ((_e108191108217_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108183108206_))))
                            (let ((_hd108190108220_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108191108217_)))
                                  (_tl108189108222_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108191108217_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108189108222_))
                                  ((lambda (_L108225_ _L108226_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108021_ _L108225_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108154_ _rest108176_))
                                         '#f))
                                   _hd108190108220_
                                   _hd108187108212_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108179108196_ _g108180108199_)))))
                          (let ()
                            (declare (not safe))
                            (_g108179108196_ _g108180108199_)))
                      (let ()
                        (declare (not safe))
                        (_g108179108196_ _g108180108199_)))))
              (let ()
                (declare (not safe))
                (_g108179108196_ _g108180108199_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108179108196_
                                                 _g108180108199_))))))
                                  (declare (not safe))
                                  (_g108178108247_ _hd-bind108177_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108157108165_))
                            (let ((_hd108162108253_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108157108165_)))
                                  (_tl108163108255_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108157108165_))))
                              (let* ((_hd-bind108258_ _hd108162108253_)
                                     (_rest108260_ _tl108163108255_))
                                (declare (not safe))
                                (_K108161108250_
                                 _rest108260_
                                 _hd-bind108258_)))
                            (let ()
                              (declare (not safe))
                              (_else108159108173_)))))))
                 (_is-lambda-expr?108021_
                  (lambda (_expr108089_)
                    (let* ((___stx113263113264_ _expr108089_)
                           (_g108092108106_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113263113264_)))))
                      (let ((___kont113265113266_
                             (lambda (_L108134_ _L108135_) '#t))
                            (___kont113267113268_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113263113264_))
                            (let ((_e108098108118_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113263113264_))))
                              (let ((_tl108096108123_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108098108118_)))
                                    (_hd108097108121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108098108118_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108097108121_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108097108121_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108096108123_))
                                            (let ((_e108101108126_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108096108123_))))
                                              (let ((_tl108099108131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108101108126_)))
                                                    (_hd108100108129_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108101108126_))))
                                                (___kont113265113266_
                                                 _tl108099108131_
                                                 _hd108100108129_)))
                                            (___kont113267113268_))
                                        (___kont113267113268_))
                                    (___kont113267113268_))))
                            (___kont113267113268_)))))))
          (let* ((_g108023108040_
                  (lambda (_g108024108037_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108024108037_))))
                 (_g108022108086_
                  (lambda (_g108024108043_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108024108043_))
                        (let ((_e108029108045_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108024108043_))))
                          (let ((_hd108028108048_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108029108045_)))
                                (_tl108027108050_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108029108045_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108027108050_))
                                (let ((_e108032108053_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108027108050_))))
                                  (let ((_hd108031108056_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108032108053_)))
                                        (_tl108030108058_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108032108053_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108030108058_))
                                        (let ((_e108035108061_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108030108058_))))
                                          (let ((_hd108034108064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108035108061_)))
                                                (_tl108033108066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108035108061_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108033108066_))
                                                ((lambda (_L108069_ _L108070_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108070_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108020_
                                                              _L108070_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108016_
                                                              'letrec
                                                              _L108070_
                                                              _L108069_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108016_
                                                              'letrec*
                                                              _L108070_
                                                              _L108069_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108019_
                                                          _L108070_
                                                          _L108069_))))
                                                 _hd108034108064_
                                                 _hd108031108056_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108023108040_
                                                   _g108024108043_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108023108040_ _g108024108043_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108023108040_ _g108024108043_)))))
                        (let ()
                          (declare (not safe))
                          (_g108023108040_ _g108024108043_))))))
            (declare (not safe))
            (_g108022108086_ _stx108017_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd107953_)
        (let _lp107955_ ((_rest107957_ _hd107953_))
          (let* ((_rest107958107974_ _rest107957_)
                 (_else107961107982_ (lambda () '#f)))
            (let ((_K107964107995_
                   (lambda (_rest107993_)
                     (let () (declare (not safe)) (_lp107955_ _rest107993_))))
                  (_K107963107987_ (lambda () '#t)))
              (let ((_try-match107960107990_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest107958107974_))
                           (let () (declare (not safe)) (_K107963107987_))
                           (let ()
                             (declare (not safe))
                             (_else107961107982_))))))
                (if (let () (declare (not safe)) (##pair? _rest107958107974_))
                    (let ((_tl107966108000_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest107958107974_)))
                          (_hd107965107998_
                           (let ()
                             (declare (not safe))
                             (##car _rest107958107974_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd107965107998_))
                          (let ((_tl107968108005_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd107965107998_)))
                                (_hd107967108003_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd107965107998_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd107967108003_))
                                (let ((_tl107972108008_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd107967108003_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107972108008_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl107968108005_))
                                          (let ((_tl107970108011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl107968108005_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl107970108011_))
                                                (let ((_rest108014_
                                                       _tl107966108000_))
                                                  (declare (not safe))
                                                  (_lp107955_ _rest108014_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else107961107982_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else107961107982_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107961107982_))))
                                (let ()
                                  (declare (not safe))
                                  (_else107961107982_))))
                          (let () (declare (not safe)) (_else107961107982_))))
                    (let ()
                      (declare (not safe))
                      (_try-match107960107990_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self107864_
               _form107865_
               _hd107866_
               _body107867_
               _compiled-body?107868_)
        (letrec ((_generate1107870_
                  (lambda (_bind107909_)
                    (let* ((_bind107910107921_ _bind107909_)
                           (_E107912107925_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind107910107921_))))
                           (_K107913107931_
                            (lambda (_expr107928_ _id107929_)
                              (let ((__tmp114266
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id107929_)))
                                    (__tmp114264
                                     (let ((__tmp114265
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107864_
                                               _expr107928_))))
                                       (declare (not safe))
                                       (cons __tmp114265 '()))))
                                (declare (not safe))
                                (cons __tmp114266 __tmp114264)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind107910107921_))
                          (let ((_hd107914107934_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind107910107921_)))
                                (_tl107915107936_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind107910107921_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd107914107934_))
                                (let ((_hd107918107939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd107914107934_)))
                                      (_tl107919107941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd107914107934_))))
                                  (let ((_id107944_ _hd107918107939_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl107919107941_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107915107936_))
                                            (let ((_hd107916107946_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107915107936_)))
                                                  (_tl107917107948_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107915107936_))))
                                              (let ((_expr107951_
                                                     _hd107916107946_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl107917107948_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K107913107931_
                                                       _expr107951_
                                                       _id107944_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E107912107925_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E107912107925_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E107912107925_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E107912107925_))))
                          (let () (declare (not safe)) (_E107912107925_)))))))
          (let* ((_bind107872_ (map _generate1107870_ _hd107866_))
                 (_body107874_
                  (if _compiled-body?107868_
                      _body107867_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self107864_ _body107867_))))
                 (_body107906_
                  (let* ((_body107875107883_ _body107874_)
                         (_else107877107891_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body107874_ '()))))
                         (_K107879107896_
                          (lambda (_exprs107894_) _exprs107894_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body107875107883_))
                        (let ((_hd107880107899_
                               (let ()
                                 (declare (not safe))
                                 (##car _body107875107883_)))
                              (_tl107881107901_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body107875107883_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd107880107899_ 'begin))
                              (let ((_exprs107904_ _tl107881107901_))
                                (declare (not safe))
                                (_K107879107896_ _exprs107904_))
                              (let ()
                                (declare (not safe))
                                (_else107877107891_))))
                        (let () (declare (not safe)) (_else107877107891_))))))
            (let ((__tmp114267
                   (let ()
                     (declare (not safe))
                     (cons _bind107872_ _body107906_))))
              (declare (not safe))
              (cons _form107865_ __tmp114267))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self107771_ _stx107772_)
        (letrec ((_generate1107774_
                  (lambda (_datum107826_)
                    (if (or (let () (declare (not safe)) (null? _datum107826_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _datum107826_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum107826_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum107826_)))
                        _datum107826_
                        (if (uninterned-symbol? _datum107826_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum107826_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum107826_))
                                (let ((__tmp114272
                                       (let ((__tmp114273 (car _datum107826_)))
                                         (declare (not safe))
                                         (_generate1107774_ __tmp114273)))
                                      (__tmp114270
                                       (let ((__tmp114271 (cdr _datum107826_)))
                                         (declare (not safe))
                                         (_generate1107774_ __tmp114271))))
                                  (declare (not safe))
                                  (cons __tmp114272 __tmp114270))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum107826_))
                                    (let ((__tmp114268
                                           (let ((__tmp114269
                                                  (unbox _datum107826_)))
                                             (declare (not safe))
                                             (_generate1107774_ __tmp114269))))
                                      (declare (not safe))
                                      (box __tmp114268))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum107826_))
                                        (vector-map
                                         _generate1107774_
                                         _datum107826_)
                                        (if (or (s8vector? _datum107826_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum107826_))
                                                (s16vector? _datum107826_)
                                                (u16vector? _datum107826_)
                                                (s32vector? _datum107826_)
                                                (u32vector? _datum107826_)
                                                (s64vector? _datum107826_)
                                                (u64vector? _datum107826_)
                                                (f32vector? _datum107826_)
                                                (f64vector? _datum107826_))
                                            _datum107826_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx107772_)))))))))))
          (let* ((_g107776107789_
                  (lambda (_g107777107786_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107777107786_))))
                 (_g107775107823_
                  (lambda (_g107777107792_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107777107792_))
                        (let ((_e107781107794_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107777107792_))))
                          (let ((_hd107780107797_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107781107794_)))
                                (_tl107779107799_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107781107794_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107779107799_))
                                (let ((_e107784107802_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107779107799_))))
                                  (let ((_hd107783107805_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107784107802_)))
                                        (_tl107782107807_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107784107802_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl107782107807_))
                                        ((lambda (_L107810_)
                                           (let ((__tmp114274
                                                  (let ((__tmp114275
                                                         (let ((__tmp114276
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L107810_))))
                   (declare (not safe))
                   (_generate1107774_ __tmp114276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114275 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114274)))
                                         _hd107783107805_)
                                        (let ()
                                          (declare (not safe))
                                          (_g107776107789_ _g107777107792_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107776107789_ _g107777107792_)))))
                        (let ()
                          (declare (not safe))
                          (_g107776107789_ _g107777107792_))))))
            (declare (not safe))
            (_g107775107823_ _stx107772_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107284_ _stx107285_)
        (letrec ((_compile-call107287_
                  (lambda (_rator107511_ _rands107512_)
                    (let ((_rator107518_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107284_ _rator107511_)))
                          (_rands107519_
                           (map (lambda (_g107513107515_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107284_
                                     _g107513107515_)))
                                _rands107512_)))
                      (let* ((___stx113310113311_ _rator107518_)
                             (_g107522107574_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113310113311_)))))
                        (let ((___kont113312113313_
                               (lambda (_L107698_
                                        _L107699_
                                        _L107700_
                                        _L107701_)
                                 (if (fx= (length _rands107519_)
                                          (length (let ((__tmp114281
                                                         (lambda (_g107737107740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g107738107742_)
                   (let ()
                     (declare (not safe))
                     (cons _g107737107740_ _g107738107742_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114281
                                                            '()
                                                            _L107700_))))
                                     (let* ((_id107745_ _L107701_)
                                            (_args107754_
                                             (let ((__tmp114277
                                                    (lambda (_g107746107749_
                                                             _g107747107751_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g107746107749_
                                                              _g107747107751_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114277
                                                       '()
                                                       _L107700_)))
                                            (_body107763_
                                             (let ((__tmp114278
                                                    (lambda (_g107755107758_
                                                             _g107756107760_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g107755107758_
                                                              _g107756107760_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114278
                                                       '()
                                                       _L107699_)))
                                            (_init107765_
                                             (map list
                                                  _args107754_
                                                  _rands107519_)))
                                       (let ((__tmp114279
                                              (let ((__tmp114280
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init107765_
                                                             _body107763_))))
                                                (declare (not safe))
                                                (cons _id107745_
                                                      __tmp114280))))
                                         (declare (not safe))
                                         (cons 'let __tmp114279)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107285_)))))
                              (___kont113318113319_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107518_ _rands107519_)))))
                          (let ((___match113377113378_
                                 (lambda (_e107530107586_
                                          _hd107529107589_
                                          _tl107528107591_
                                          _e107533107594_
                                          _hd107532107597_
                                          _tl107531107599_
                                          _e107536107602_
                                          _hd107535107605_
                                          _tl107534107607_
                                          _e107539107610_
                                          _hd107538107613_
                                          _tl107537107615_
                                          _e107542107618_
                                          _hd107541107621_
                                          _tl107540107623_
                                          _e107545107626_
                                          _hd107544107629_
                                          _tl107543107631_
                                          _e107548107634_
                                          _hd107547107637_
                                          _tl107546107639_
                                          ___splice113314113315_
                                          _target107549107642_
                                          _tl107551107644_)
                                   (letrec ((_loop107552107647_
                                             (lambda (_hd107550107650_
                                                      _arg107556107652_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107550107650_))
                                                   (let ((_e107553107655_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107550107650_))))
                                                     (let ((_lp-tl107555107660_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107553107655_)))
                                                           (_lp-hd107554107658_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107553107655_))))
                                                       (let ((__tmp114283
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107554107658_ _arg107556107652_))))
                 (declare (not safe))
                 (_loop107552107647_ _lp-tl107555107660_ __tmp114283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107557107663_
                                                          (reverse _arg107556107652_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107546107639_))
                                                         (let ((___splice113316113317_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107546107639_ '0))))
                   (let ((_tl107560107668_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113316113317_ '1)))
                         (_target107558107666_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113316113317_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107560107668_))
                         (letrec ((_loop107561107671_
                                   (lambda (_hd107559107674_
                                            _body107565107676_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107559107674_))
                                         (let ((_e107562107679_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107559107674_))))
                                           (let ((_lp-tl107564107684_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107562107679_)))
                                                 (_lp-hd107563107682_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107562107679_))))
                                             (let ((__tmp114282
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107563107682_
                                                            _body107565107676_))))
                                               (declare (not safe))
                                               (_loop107561107671_
                                                _lp-tl107564107684_
                                                __tmp114282))))
                                         (let ((_body107566107687_
                                                (reverse _body107565107676_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107540107623_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107534107607_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107531107599_))
                                                       (let ((_e107569107690_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107531107599_))))
                 (let ((_tl107567107695_
                        (let () (declare (not safe)) (##cdr _e107569107690_)))
                       (_hd107568107693_
                        (let () (declare (not safe)) (##car _e107569107690_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107567107695_))
                       (let ((_L107698_ _hd107568107693_)
                             (_L107699_ _body107566107687_)
                             (_L107700_ _arg107557107663_)
                             (_L107701_ _hd107538107613_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L107701_ _L107698_))
                             (___kont113312113313_
                              _L107698_
                              _L107699_
                              _L107700_
                              _L107701_)
                             (___kont113318113319_)))
                       (___kont113318113319_))))
               (___kont113318113319_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113318113319_))
                                               (___kont113318113319_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107561107671_ _target107558107666_ '())))
                         (___kont113318113319_))))
                 (___kont113318113319_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107552107647_
                                        _target107549107642_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113310113311_))
                                (let ((_e107530107586_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113310113311_))))
                                  (let ((_tl107528107591_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107530107586_)))
                                        (_hd107529107589_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107530107586_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107529107589_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107529107589_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107528107591_))
                                                (let ((_e107533107594_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107528107591_))))
                                                  (let ((_tl107531107599_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107533107594_)))
                                                        (_hd107532107597_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107533107594_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107532107597_))
                                                        (let ((_e107536107602_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107532107597_))))
                  (let ((_tl107534107607_
                         (let () (declare (not safe)) (##cdr _e107536107602_)))
                        (_hd107535107605_
                         (let ()
                           (declare (not safe))
                           (##car _e107536107602_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107535107605_))
                        (let ((_e107539107610_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107535107605_))))
                          (let ((_tl107537107615_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107539107610_)))
                                (_hd107538107613_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107539107610_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107537107615_))
                                (let ((_e107542107618_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107537107615_))))
                                  (let ((_tl107540107623_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107542107618_)))
                                        (_hd107541107621_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107542107618_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107541107621_))
                                        (let ((_e107545107626_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107541107621_))))
                                          (let ((_tl107543107631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107545107626_)))
                                                (_hd107544107629_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107545107626_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107544107629_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107544107629_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107543107631_))
                                                        (let ((_e107548107634_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107543107631_))))
                  (let ((_tl107546107639_
                         (let () (declare (not safe)) (##cdr _e107548107634_)))
                        (_hd107547107637_
                         (let ()
                           (declare (not safe))
                           (##car _e107548107634_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107547107637_))
                        (let ((___splice113314113315_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107547107637_
                                  '0))))
                          (let ((_tl107551107644_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113314113315_ '1)))
                                (_target107549107642_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113314113315_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107551107644_))
                                (___match113377113378_
                                 _e107530107586_
                                 _hd107529107589_
                                 _tl107528107591_
                                 _e107533107594_
                                 _hd107532107597_
                                 _tl107531107599_
                                 _e107536107602_
                                 _hd107535107605_
                                 _tl107534107607_
                                 _e107539107610_
                                 _hd107538107613_
                                 _tl107537107615_
                                 _e107542107618_
                                 _hd107541107621_
                                 _tl107540107623_
                                 _e107545107626_
                                 _hd107544107629_
                                 _tl107543107631_
                                 _e107548107634_
                                 _hd107547107637_
                                 _tl107546107639_
                                 ___splice113314113315_
                                 _target107549107642_
                                 _tl107551107644_)
                                (___kont113318113319_))))
                        (___kont113318113319_))))
                (___kont113318113319_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113318113319_))
                                                (___kont113318113319_))))
                                        (___kont113318113319_))))
                                (___kont113318113319_))))
                        (___kont113318113319_))))
                (___kont113318113319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113318113319_))
                                            (___kont113318113319_))
                                        (___kont113318113319_))))
                                (___kont113318113319_)))))))))
          (let* ((_g107289107303_
                  (lambda (_g107290107300_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107290107300_))))
                 (_g107288107508_
                  (lambda (_g107290107306_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107290107306_))
                        (let ((_e107295107308_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107290107306_))))
                          (let ((_hd107294107311_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107295107308_)))
                                (_tl107293107313_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107295107308_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107293107313_))
                                (let ((_e107298107316_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107293107313_))))
                                  (let ((_hd107297107319_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107298107316_)))
                                        (_tl107296107321_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107298107316_))))
                                    ((lambda (_L107324_ _L107325_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107287_
                                              _L107325_
                                              _L107324_))
                                           (let* ((___stx113426113427_
                                                   _L107325_)
                                                  (_g107340107352_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113426113427_)))))
                                             (let ((___kont113428113429_
                                                    (lambda ()
                                                      (let ((_f107382_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107284_ _L107325_))))
                (if (let ((__tmp114298 (symbol->string _f107382_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114298))
                    (let _lp107384_ ((_rest107387_ (reverse _L107324_))
                                     (_bind107389_ '())
                                     (_args107390_ '()))
                      (let* ((_rest107391107399_ _rest107387_)
                             (_else107393107407_
                              (lambda ()
                                (let ((__tmp114284
                                       (let ((__tmp114285
                                              (let ((__tmp114286
                                                     (let ((__tmp114287
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107390_))))
               (declare (not safe))
               (cons __tmp114287 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114286))))
                                         (declare (not safe))
                                         (cons _bind107389_ __tmp114285))))
                                  (declare (not safe))
                                  (cons 'let __tmp114284))))
                             (_K107395107493_
                              (lambda (_rest107410_ _e107411_)
                                (let* ((___stx113380113381_ _e107411_)
                                       (_g107416107434_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113380113381_)))))
                                  (let ((___kont113382113383_
                                         (lambda ()
                                           (let ((__tmp114288
                                                  (let ((__tmp114289
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107411_))))
                                                    (declare (not safe))
                                                    (cons __tmp114289
                                                          _args107390_))))
                                             (declare (not safe))
                                             (_lp107384_
                                              _rest107410_
                                              _bind107389_
                                              __tmp114288))))
                                        (___kont113384113385_
                                         (lambda ()
                                           (let ((__tmp114290
                                                  (let ((__tmp114291
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107411_))))
                                                    (declare (not safe))
                                                    (cons __tmp114291
                                                          _args107390_))))
                                             (declare (not safe))
                                             (_lp107384_
                                              _rest107410_
                                              _bind107389_
                                              __tmp114290))))
                                        (___kont113386113387_
                                         (lambda ()
                                           (let ((_tmp107441_
                                                  (let ((__tmp114292
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114292))))
                                             (let ((__tmp114294
                                                    (let ((__tmp114295
                                                           (let ((__tmp114296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114297
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107411_))))
                            (declare (not safe))
                            (cons __tmp114297 '()))))
                     (declare (not safe))
                     (cons _tmp107441_ __tmp114296))))
              (declare (not safe))
              (cons __tmp114295 _bind107389_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114293
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107441_
                                                            _args107390_))))
                                               (declare (not safe))
                                               (_lp107384_
                                                _rest107410_
                                                __tmp114294
                                                __tmp114293))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113380113381_))
                                        (let ((_e107420107472_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113380113381_))))
                                          (let ((_tl107418107477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107420107472_)))
                                                (_hd107419107475_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107420107472_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107419107475_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107419107475_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107418107477_))
                                                        (let ((_e107423107480_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107418107477_))))
                  (let ((_tl107421107485_
                         (let () (declare (not safe)) (##cdr _e107423107480_)))
                        (_hd107422107483_
                         (let ()
                           (declare (not safe))
                           (##car _e107423107480_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107421107485_))
                        (___kont113382113383_)
                        (___kont113386113387_))))
                (___kont113386113387_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107419107475_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107418107477_))
                                                            (let ((_e107429107457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107418107477_))))
                      (let ((_tl107427107462_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107429107457_)))
                            (_hd107428107460_
                             (let ()
                               (declare (not safe))
                               (##car _e107429107457_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107427107462_))
                            (___kont113384113385_)
                            (___kont113386113387_))))
                    (___kont113386113387_))
                (___kont113386113387_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113386113387_))))
                                        (___kont113386113387_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107391107399_))
                            (let ((_hd107396107496_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107391107399_)))
                                  (_tl107397107498_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107391107399_))))
                              (let* ((_e107501_ _hd107396107496_)
                                     (_rest107503_ _tl107397107498_))
                                (declare (not safe))
                                (_K107395107493_ _rest107503_ _e107501_)))
                            (let ()
                              (declare (not safe))
                              (_else107393107407_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107287_ _L107325_ _L107324_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113430113431_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107287_
                                                         _L107325_
                                                         _L107324_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113426113427_))
                                                   (let ((_e107344107364_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113426113427_))))
                                                     (let ((_tl107342107369_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107344107364_)))
                                                           (_hd107343107367_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107344107364_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107343107367_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107343107367_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107342107369_))
                           (let ((_e107347107372_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107342107369_))))
                             (let ((_tl107345107377_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107347107372_)))
                                   (_hd107346107375_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107347107372_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107345107377_))
                                   (___kont113428113429_)
                                   (___kont113430113431_))))
                           (___kont113430113431_))
                       (___kont113430113431_))
                   (___kont113430113431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113430113431_))))))
                                     _tl107296107321_
                                     _hd107297107319_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107289107303_ _g107290107306_)))))
                        (let ()
                          (declare (not safe))
                          (_g107289107303_ _g107290107306_))))))
            (declare (not safe))
            (_g107288107508_ _stx107285_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107071_ _stx107072_)
        (let* ((___stx113498113499_ _stx107072_)
               (_g107075107095_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113498113499_)))))
          (let ((___kont113500113501_
                 (lambda (_L107139_ _L107140_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107071_ _stx107072_))
                       (let ((_f107158_
                              (let ((__tmp114299
                                     (let ((__tmp114301
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114300
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107140_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114301 __tmp114300))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107071_ __tmp114299))))
                         (let _lp107160_ ((_rest107163_ (reverse _L107139_))
                                          (_bind107165_ '())
                                          (_args107166_ '()))
                           (let* ((_rest107167107175_ _rest107163_)
                                  (_else107169107183_
                                   (lambda ()
                                     (let ((__tmp114302
                                            (let ((__tmp114303
                                                   (let ((__tmp114304
                                                          (let ((__tmp114305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107158_ _args107166_))))
                    (declare (not safe))
                    (cons __tmp114305 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114304))))
                                              (declare (not safe))
                                              (cons _bind107165_
                                                    __tmp114303))))
                                       (declare (not safe))
                                       (cons 'let __tmp114302))))
                                  (_K107171107269_
                                   (lambda (_rest107186_ _e107187_)
                                     (let* ((___stx113452113453_ _e107187_)
                                            (_g107192107210_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113452113453_)))))
                                       (let ((___kont113454113455_
                                              (lambda ()
                                                (let ((__tmp114306
                                                       (let ((__tmp114307
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107187_))))
                 (declare (not safe))
                 (cons __tmp114307 _args107166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107160_
                                                   _rest107186_
                                                   _bind107165_
                                                   __tmp114306))))
                                             (___kont113456113457_
                                              (lambda ()
                                                (let ((__tmp114308
                                                       (let ((__tmp114309
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107187_))))
                 (declare (not safe))
                 (cons __tmp114309 _args107166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107160_
                                                   _rest107186_
                                                   _bind107165_
                                                   __tmp114308))))
                                             (___kont113458113459_
                                              (lambda ()
                                                (let ((_tmp107217_
                                                       (let ((__tmp114310
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114310))))
                                                  (let ((__tmp114312
                                                         (let ((__tmp114313
                                                                (let ((__tmp114314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114315
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107187_))))
                                 (declare (not safe))
                                 (cons __tmp114315 '()))))
                          (declare (not safe))
                          (cons _tmp107217_ __tmp114314))))
                   (declare (not safe))
                   (cons __tmp114313 _bind107165_)))
                (__tmp114311
                 (let ()
                   (declare (not safe))
                   (cons _tmp107217_ _args107166_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107160_
                                                     _rest107186_
                                                     __tmp114312
                                                     __tmp114311))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113452113453_))
                                             (let ((_e107196107248_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113452113453_))))
                                               (let ((_tl107194107253_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107196107248_)))
                                                     (_hd107195107251_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107196107248_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107195107251_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107195107251_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107194107253_))
                     (let ((_e107199107256_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107194107253_))))
                       (let ((_tl107197107261_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107199107256_)))
                             (_hd107198107259_
                              (let ()
                                (declare (not safe))
                                (##car _e107199107256_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107197107261_))
                             (___kont113454113455_)
                             (___kont113458113459_))))
                     (___kont113458113459_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107195107251_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107194107253_))
                         (let ((_e107205107233_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107194107253_))))
                           (let ((_tl107203107238_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107205107233_)))
                                 (_hd107204107236_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107205107233_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107203107238_))
                                 (___kont113456113457_)
                                 (___kont113458113459_))))
                         (___kont113458113459_))
                     (___kont113458113459_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113458113459_))))
                                             (___kont113458113459_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107167107175_))
                                 (let ((_hd107172107272_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107167107175_)))
                                       (_tl107173107274_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107167107175_))))
                                   (let* ((_e107277_ _hd107172107272_)
                                          (_rest107279_ _tl107173107274_))
                                     (declare (not safe))
                                     (_K107171107269_ _rest107279_ _e107277_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107169107183_)))))))))
                (___kont113502113503_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107071_ _stx107072_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113498113499_))
                (let ((_e107081107107_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113498113499_))))
                  (let ((_tl107079107112_
                         (let () (declare (not safe)) (##cdr _e107081107107_)))
                        (_hd107080107110_
                         (let ()
                           (declare (not safe))
                           (##car _e107081107107_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107079107112_))
                        (let ((_e107084107115_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107079107112_))))
                          (let ((_tl107082107120_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107084107115_)))
                                (_hd107083107118_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107084107115_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107083107118_))
                                (let ((_e107087107123_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107083107118_))))
                                  (let ((_tl107085107128_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107087107123_)))
                                        (_hd107086107126_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107087107123_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107086107126_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107086107126_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107085107128_))
                                                (let ((_e107090107131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107085107128_))))
                                                  (let ((_tl107088107136_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107090107131_)))
                                                        (_hd107089107134_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107090107131_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107088107136_))
                                                        (___kont113500113501_
                                                         _tl107082107120_
                                                         _hd107089107134_)
                                                        (___kont113502113503_))))
                                                (___kont113502113503_))
                                            (___kont113502113503_))
                                        (___kont113502113503_))))
                                (___kont113502113503_))))
                        (___kont113502113503_))))
                (___kont113502113503_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self106883_ _stx106884_)
        (letrec ((_simplify106886_
                  (lambda (_code106971_)
                    (let* ((_code106972106990_ _code106971_)
                           (_else106974106998_ (lambda () _code106971_))
                           (_K106976107034_
                            (lambda (_expr107001_ _test107002_)
                              (let* ((_expr107003107011_ _expr107001_)
                                     (_else107005107019_
                                      (lambda ()
                                        (let ((__tmp114316
                                               (let ((__tmp114317
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107001_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107002_
                                                       __tmp114317))))
                                          (declare (not safe))
                                          (cons 'and __tmp114316))))
                                     (_K107007107024_
                                      (lambda (_exprs107022_)
                                        (let ((__tmp114318
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107002_
                                                       _exprs107022_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114318)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107003107011_))
                                    (let ((_hd107008107027_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107003107011_)))
                                          (_tl107009107029_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107003107011_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107008107027_ 'and))
                                          (let ((_exprs107032_
                                                 _tl107009107029_))
                                            (declare (not safe))
                                            (_K107007107024_ _exprs107032_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107005107019_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107005107019_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code106972106990_))
                          (let ((_hd106977107037_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code106972106990_)))
                                (_tl106978107039_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code106972106990_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd106977107037_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl106978107039_))
                                    (let ((_hd106979107042_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl106978107039_)))
                                          (_tl106980107044_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl106978107039_))))
                                      (let ((_test107047_ _hd106979107042_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl106980107044_))
                                            (let ((_hd106981107049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl106980107044_)))
                                                  (_tl106982107051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl106980107044_))))
                                              (let ((_expr107054_
                                                     _hd106981107049_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl106982107051_))
                                                    (let ((_hd106983107056_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl106982107051_)))
                                                          (_tl106984107058_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl106982107051_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd106983107056_))
                                                          (let ((_hd106985107061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd106983107056_)))
                        (_tl106986107063_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd106983107056_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd106985107061_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106986107063_))
                            (let ((_hd106987107066_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106986107063_)))
                                  (_tl106988107068_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106986107063_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd106987107066_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl106988107068_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106984107058_))
                                          (let ()
                                            (declare (not safe))
                                            (_K106976107034_
                                             _expr107054_
                                             _test107047_))
                                          (let ()
                                            (declare (not safe))
                                            (_else106974106998_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else106974106998_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else106974106998_))))
                            (let () (declare (not safe)) (_else106974106998_)))
                        (let () (declare (not safe)) (_else106974106998_))))
                  (let () (declare (not safe)) (_else106974106998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106974106998_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else106974106998_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else106974106998_)))
                                (let ()
                                  (declare (not safe))
                                  (_else106974106998_))))
                          (let ()
                            (declare (not safe))
                            (_else106974106998_)))))))
          (let* ((_g106888106909_
                  (lambda (_g106889106906_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106889106906_))))
                 (_g106887106968_
                  (lambda (_g106889106912_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106889106912_))
                        (let ((_e106895106914_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106889106912_))))
                          (let ((_hd106894106917_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106895106914_)))
                                (_tl106893106919_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106895106914_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106893106919_))
                                (let ((_e106898106922_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106893106919_))))
                                  (let ((_hd106897106925_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106898106922_)))
                                        (_tl106896106927_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106898106922_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106896106927_))
                                        (let ((_e106901106930_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106896106927_))))
                                          (let ((_hd106900106933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106901106930_)))
                                                (_tl106899106935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106901106930_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl106899106935_))
                                                (let ((_e106904106938_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl106899106935_))))
                                                  (let ((_hd106903106941_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106904106938_)))
                                                        (_tl106902106943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106904106938_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl106902106943_))
                                                        ((lambda (_L106946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L106947_
                          _L106948_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114326
                              (let ((__tmp114327
                                     (let ((__tmp114332
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106883_
                                               _L106948_)))
                                           (__tmp114328
                                            (let ((__tmp114331
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106883_
                                                      _L106947_)))
                                                  (__tmp114329
                                                   (let ((__tmp114330
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self106883_
                                                             _L106946_))))
                                                     (declare (not safe))
                                                     (cons __tmp114330 '()))))
                                              (declare (not safe))
                                              (cons __tmp114331 __tmp114329))))
                                       (declare (not safe))
                                       (cons __tmp114332 __tmp114328))))
                                (declare (not safe))
                                (cons 'if __tmp114327))))
                         (declare (not safe))
                         (_simplify106886_ __tmp114326))
                       (let ((__tmp114319
                              (let ((__tmp114324
                                     (let ((__tmp114325
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106883_
                                                 _L106948_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114325
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114320
                                     (let ((__tmp114323
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106883_
                                               _L106947_)))
                                           (__tmp114321
                                            (let ((__tmp114322
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106883_
                                                      _L106946_))))
                                              (declare (not safe))
                                              (cons __tmp114322 '()))))
                                       (declare (not safe))
                                       (cons __tmp114323 __tmp114321))))
                                (declare (not safe))
                                (cons __tmp114324 __tmp114320))))
                         (declare (not safe))
                         (cons 'if __tmp114319))))
                 _hd106903106941_
                 _hd106900106933_
                 _hd106897106925_)
                (let ()
                  (declare (not safe))
                  (_g106888106909_ _g106889106912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106888106909_
                                                   _g106889106912_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106888106909_ _g106889106912_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106888106909_ _g106889106912_)))))
                        (let ()
                          (declare (not safe))
                          (_g106888106909_ _g106889106912_))))))
            (declare (not safe))
            (_g106887106968_ _stx106884_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self106831_ _stx106832_)
        (let* ((_g106834106847_
                (lambda (_g106835106844_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106835106844_))))
               (_g106833106880_
                (lambda (_g106835106850_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106835106850_))
                      (let ((_e106839106852_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106835106850_))))
                        (let ((_hd106838106855_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106839106852_)))
                              (_tl106837106857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106839106852_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106837106857_))
                              (let ((_e106842106860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106837106857_))))
                                (let ((_hd106841106863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106842106860_)))
                                      (_tl106840106865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106842106860_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl106840106865_))
                                      ((lambda (_L106868_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L106868_)))
                                       _hd106841106863_)
                                      (let ()
                                        (declare (not safe))
                                        (_g106834106847_ _g106835106850_)))))
                              (let ()
                                (declare (not safe))
                                (_g106834106847_ _g106835106850_)))))
                      (let ()
                        (declare (not safe))
                        (_g106834106847_ _g106835106850_))))))
          (declare (not safe))
          (_g106833106880_ _stx106832_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self106763_ _stx106764_)
        (let* ((_g106766106783_
                (lambda (_g106767106780_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106767106780_))))
               (_g106765106828_
                (lambda (_g106767106786_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106767106786_))
                      (let ((_e106772106788_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106767106786_))))
                        (let ((_hd106771106791_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106772106788_)))
                              (_tl106770106793_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106772106788_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106770106793_))
                              (let ((_e106775106796_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106770106793_))))
                                (let ((_hd106774106799_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106775106796_)))
                                      (_tl106773106801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106775106796_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106773106801_))
                                      (let ((_e106778106804_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106773106801_))))
                                        (let ((_hd106777106807_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106778106804_)))
                                              (_tl106776106809_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106778106804_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106776106809_))
                                              ((lambda (_L106812_ _L106813_)
                                                 (let ((__tmp114333
                                                        (let ((__tmp114336
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L106813_)))
                      (__tmp114334
                       (let ((__tmp114335
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self106763_ _L106812_))))
                         (declare (not safe))
                         (cons __tmp114335 '()))))
                  (declare (not safe))
                  (cons __tmp114336 __tmp114334))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114333)))
                                               _hd106777106807_
                                               _hd106774106799_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106766106783_
                                                 _g106767106786_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106766106783_ _g106767106786_)))))
                              (let ()
                                (declare (not safe))
                                (_g106766106783_ _g106767106786_)))))
                      (let ()
                        (declare (not safe))
                        (_g106766106783_ _g106767106786_))))))
          (declare (not safe))
          (_g106765106828_ _stx106764_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106574_ _stx106575_)
        (let* ((_g106577106594_
                (lambda (_g106578106591_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106578106591_))))
               (_g106576106760_
                (lambda (_g106578106597_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106578106597_))
                      (let ((_e106583106599_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106578106597_))))
                        (let ((_hd106582106602_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106583106599_)))
                              (_tl106581106604_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106583106599_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106581106604_))
                              (let ((_e106586106607_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106581106604_))))
                                (let ((_hd106585106610_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106586106607_)))
                                      (_tl106584106612_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106586106607_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106584106612_))
                                      (let ((_e106589106615_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106584106612_))))
                                        (let ((_hd106588106618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106589106615_)))
                                              (_tl106587106620_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106589106615_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106587106620_))
                                              ((lambda (_L106623_ _L106624_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114352
                                                            (let ((__tmp114355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106574_ _L106623_)))
                          (__tmp114353
                           (let ((__tmp114354
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106574_
                                     _L106624_))))
                             (declare (not safe))
                             (cons __tmp114354 '()))))
                      (declare (not safe))
                      (cons __tmp114355 __tmp114353))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114352))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106639_ ((_rest106642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114351
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106623_ '()))))
                                 (declare (not safe))
                                 (cons _L106624_ __tmp114351)))
                              (_bind106644_ '())
                              (_args106645_ '()))
               (let* ((_rest106646106654_ _rest106642_)
                      (_else106648106662_
                       (lambda ()
                         (let ((__tmp114337
                                (let ((__tmp114338
                                       (let ((__tmp114339
                                              (let ((__tmp114340
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args106645_))))
                                                (declare (not safe))
                                                (cons __tmp114340 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114339))))
                                  (declare (not safe))
                                  (cons _bind106644_ __tmp114338))))
                           (declare (not safe))
                           (cons 'let __tmp114337))))
                      (_K106650106748_
                       (lambda (_rest106665_ _e106666_)
                         (let* ((___stx113536113537_ _e106666_)
                                (_g106671106689_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113536113537_)))))
                           (let ((___kont113538113539_
                                  (lambda ()
                                    (let ((__tmp114341
                                           (let ((__tmp114342
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106666_))))
                                             (declare (not safe))
                                             (cons __tmp114342 _args106645_))))
                                      (declare (not safe))
                                      (_lp106639_
                                       _rest106665_
                                       _bind106644_
                                       __tmp114341))))
                                 (___kont113540113541_
                                  (lambda ()
                                    (let ((__tmp114343
                                           (let ((__tmp114344
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106666_))))
                                             (declare (not safe))
                                             (cons __tmp114344 _args106645_))))
                                      (declare (not safe))
                                      (_lp106639_
                                       _rest106665_
                                       _bind106644_
                                       __tmp114343))))
                                 (___kont113542113543_
                                  (lambda ()
                                    (let ((_tmp106696_
                                           (let ((__tmp114345 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114345))))
                                      (let ((__tmp114347
                                             (let ((__tmp114348
                                                    (let ((__tmp114349
                                                           (let ((__tmp114350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106666_))))
                     (declare (not safe))
                     (cons __tmp114350 '()))))
              (declare (not safe))
              (cons _tmp106696_ __tmp114349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114348
                                                     _bind106644_)))
                                            (__tmp114346
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106696_
                                                     _args106645_))))
                                        (declare (not safe))
                                        (_lp106639_
                                         _rest106665_
                                         __tmp114347
                                         __tmp114346))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113536113537_))
                                 (let ((_e106675106727_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113536113537_))))
                                   (let ((_tl106673106732_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106675106727_)))
                                         (_hd106674106730_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106675106727_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106674106730_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106674106730_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106673106732_))
                                                 (let ((_e106678106735_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106673106732_))))
                                                   (let ((_tl106676106740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106678106735_)))
                                                         (_hd106677106738_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106678106735_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106676106740_))
                                                         (___kont113538113539_)
                                                         (___kont113542113543_))))
                                                 (___kont113542113543_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106674106730_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106673106732_))
                                                     (let ((_e106684106712_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106673106732_))))
                                                       (let ((_tl106682106717_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106684106712_)))
                     (_hd106683106715_
                      (let () (declare (not safe)) (##car _e106684106712_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106682106717_))
                     (___kont113540113541_)
                     (___kont113542113543_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113542113543_))
                                                 (___kont113542113543_)))
                                         (___kont113542113543_))))
                                 (___kont113542113543_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106646106654_))
                     (let ((_hd106651106751_
                            (let ()
                              (declare (not safe))
                              (##car _rest106646106654_)))
                           (_tl106652106753_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106646106654_))))
                       (let* ((_e106756_ _hd106651106751_)
                              (_rest106758_ _tl106652106753_))
                         (declare (not safe))
                         (_K106650106748_ _rest106758_ _e106756_)))
                     (let () (declare (not safe)) (_else106648106662_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106588106618_
                                               _hd106585106610_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106577106594_
                                                 _g106578106597_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106577106594_ _g106578106597_)))))
                              (let ()
                                (declare (not safe))
                                (_g106577106594_ _g106578106597_)))))
                      (let ()
                        (declare (not safe))
                        (_g106577106594_ _g106578106597_))))))
          (declare (not safe))
          (_g106576106760_ _stx106575_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106385_ _stx106386_)
        (let* ((_g106388106405_
                (lambda (_g106389106402_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106389106402_))))
               (_g106387106571_
                (lambda (_g106389106408_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106389106408_))
                      (let ((_e106394106410_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106389106408_))))
                        (let ((_hd106393106413_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106394106410_)))
                              (_tl106392106415_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106394106410_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106392106415_))
                              (let ((_e106397106418_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106392106415_))))
                                (let ((_hd106396106421_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106397106418_)))
                                      (_tl106395106423_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106397106418_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106395106423_))
                                      (let ((_e106400106426_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106395106423_))))
                                        (let ((_hd106399106429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106400106426_)))
                                              (_tl106398106431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106400106426_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106398106431_))
                                              ((lambda (_L106434_ _L106435_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114371
                                                            (let ((__tmp114374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106385_ _L106434_)))
                          (__tmp114372
                           (let ((__tmp114373
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106385_
                                     _L106435_))))
                             (declare (not safe))
                             (cons __tmp114373 '()))))
                      (declare (not safe))
                      (cons __tmp114374 __tmp114372))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114371))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106450_ ((_rest106453_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114370
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106434_ '()))))
                                 (declare (not safe))
                                 (cons _L106435_ __tmp114370)))
                              (_bind106455_ '())
                              (_args106456_ '()))
               (let* ((_rest106457106465_ _rest106453_)
                      (_else106459106473_
                       (lambda ()
                         (let ((__tmp114356
                                (let ((__tmp114357
                                       (let ((__tmp114358
                                              (let ((__tmp114359
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106456_))))
                                                (declare (not safe))
                                                (cons __tmp114359 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114358))))
                                  (declare (not safe))
                                  (cons _bind106455_ __tmp114357))))
                           (declare (not safe))
                           (cons 'let __tmp114356))))
                      (_K106461106559_
                       (lambda (_rest106476_ _e106477_)
                         (let* ((___stx113582113583_ _e106477_)
                                (_g106482106500_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113582113583_)))))
                           (let ((___kont113584113585_
                                  (lambda ()
                                    (let ((__tmp114360
                                           (let ((__tmp114361
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106477_))))
                                             (declare (not safe))
                                             (cons __tmp114361 _args106456_))))
                                      (declare (not safe))
                                      (_lp106450_
                                       _rest106476_
                                       _bind106455_
                                       __tmp114360))))
                                 (___kont113586113587_
                                  (lambda ()
                                    (let ((__tmp114362
                                           (let ((__tmp114363
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106477_))))
                                             (declare (not safe))
                                             (cons __tmp114363 _args106456_))))
                                      (declare (not safe))
                                      (_lp106450_
                                       _rest106476_
                                       _bind106455_
                                       __tmp114362))))
                                 (___kont113588113589_
                                  (lambda ()
                                    (let ((_tmp106507_
                                           (let ((__tmp114364 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114364))))
                                      (let ((__tmp114366
                                             (let ((__tmp114367
                                                    (let ((__tmp114368
                                                           (let ((__tmp114369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106477_))))
                     (declare (not safe))
                     (cons __tmp114369 '()))))
              (declare (not safe))
              (cons _tmp106507_ __tmp114368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114367
                                                     _bind106455_)))
                                            (__tmp114365
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106507_
                                                     _args106456_))))
                                        (declare (not safe))
                                        (_lp106450_
                                         _rest106476_
                                         __tmp114366
                                         __tmp114365))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113582113583_))
                                 (let ((_e106486106538_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113582113583_))))
                                   (let ((_tl106484106543_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106486106538_)))
                                         (_hd106485106541_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106486106538_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106485106541_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106485106541_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106484106543_))
                                                 (let ((_e106489106546_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106484106543_))))
                                                   (let ((_tl106487106551_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106489106546_)))
                                                         (_hd106488106549_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106489106546_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106487106551_))
                                                         (___kont113584113585_)
                                                         (___kont113588113589_))))
                                                 (___kont113588113589_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106485106541_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106484106543_))
                                                     (let ((_e106495106523_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106484106543_))))
                                                       (let ((_tl106493106528_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106495106523_)))
                     (_hd106494106526_
                      (let () (declare (not safe)) (##car _e106495106523_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106493106528_))
                     (___kont113586113587_)
                     (___kont113588113589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113588113589_))
                                                 (___kont113588113589_)))
                                         (___kont113588113589_))))
                                 (___kont113588113589_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106457106465_))
                     (let ((_hd106462106562_
                            (let ()
                              (declare (not safe))
                              (##car _rest106457106465_)))
                           (_tl106463106564_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106457106465_))))
                       (let* ((_e106567_ _hd106462106562_)
                              (_rest106569_ _tl106463106564_))
                         (declare (not safe))
                         (_K106461106559_ _rest106569_ _e106567_)))
                     (let () (declare (not safe)) (_else106459106473_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106399106429_
                                               _hd106396106421_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106388106405_
                                                 _g106389106408_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106388106405_ _g106389106408_)))))
                              (let ()
                                (declare (not safe))
                                (_g106388106405_ _g106389106408_)))))
                      (let ()
                        (declare (not safe))
                        (_g106388106405_ _g106389106408_))))))
          (declare (not safe))
          (_g106387106571_ _stx106386_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106301_ _stx106302_)
        (let* ((_g106304106325_
                (lambda (_g106305106322_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106305106322_))))
               (_g106303106382_
                (lambda (_g106305106328_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106305106328_))
                      (let ((_e106311106330_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106305106328_))))
                        (let ((_hd106310106333_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106311106330_)))
                              (_tl106309106335_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106311106330_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106309106335_))
                              (let ((_e106314106338_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106309106335_))))
                                (let ((_hd106313106341_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106314106338_)))
                                      (_tl106312106343_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106314106338_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106312106343_))
                                      (let ((_e106317106346_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106312106343_))))
                                        (let ((_hd106316106349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106317106346_)))
                                              (_tl106315106351_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106317106346_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106315106351_))
                                              (let ((_e106320106354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106315106351_))))
                                                (let ((_hd106319106357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106320106354_)))
                                                      (_tl106318106359_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106320106354_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106318106359_))
                                                      ((lambda (_L106362_
                                                                _L106363_
                                                                _L106364_)
                                                         (let ((__tmp114375
                                                                (let ((__tmp114381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106301_ _L106362_)))
                              (__tmp114376
                               (let ((__tmp114380
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106301_
                                         _L106363_)))
                                     (__tmp114377
                                      (let ((__tmp114379
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106301_
                                                _L106364_)))
                                            (__tmp114378
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114379 __tmp114378))))
                                 (declare (not safe))
                                 (cons __tmp114380 __tmp114377))))
                          (declare (not safe))
                          (cons __tmp114381 __tmp114376))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114375)))
               _hd106319106357_
               _hd106316106349_
               _hd106313106341_)
              (let ()
                (declare (not safe))
                (_g106304106325_ _g106305106328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106304106325_
                                                 _g106305106328_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106304106325_ _g106305106328_)))))
                              (let ()
                                (declare (not safe))
                                (_g106304106325_ _g106305106328_)))))
                      (let ()
                        (declare (not safe))
                        (_g106304106325_ _g106305106328_))))))
          (declare (not safe))
          (_g106303106382_ _stx106302_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106201_ _stx106202_)
        (let* ((_g106204106229_
                (lambda (_g106205106226_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106205106226_))))
               (_g106203106298_
                (lambda (_g106205106232_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106205106232_))
                      (let ((_e106212106234_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106205106232_))))
                        (let ((_hd106211106237_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106212106234_)))
                              (_tl106210106239_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106212106234_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106210106239_))
                              (let ((_e106215106242_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106210106239_))))
                                (let ((_hd106214106245_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106215106242_)))
                                      (_tl106213106247_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106215106242_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106213106247_))
                                      (let ((_e106218106250_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106213106247_))))
                                        (let ((_hd106217106253_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106218106250_)))
                                              (_tl106216106255_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106218106250_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106216106255_))
                                              (let ((_e106221106258_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106216106255_))))
                                                (let ((_hd106220106261_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106221106258_)))
                                                      (_tl106219106263_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106221106258_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106219106263_))
                                                      (let ((_e106224106266_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106219106263_))))
                (let ((_hd106223106269_
                       (let () (declare (not safe)) (##car _e106224106266_)))
                      (_tl106222106271_
                       (let () (declare (not safe)) (##cdr _e106224106266_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106222106271_))
                      ((lambda (_L106274_ _L106275_ _L106276_ _L106277_)
                         (let ((__tmp114382
                                (let ((__tmp114390
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106201_
                                          _L106275_)))
                                      (__tmp114383
                                       (let ((__tmp114389
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106201_
                                                 _L106274_)))
                                             (__tmp114384
                                              (let ((__tmp114388
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106201_
                                                        _L106276_)))
                                                    (__tmp114385
                                                     (let ((__tmp114387
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106201_
                                                               _L106277_)))
                                                           (__tmp114386
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114387 __tmp114386))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114388
                                                      __tmp114385))))
                                         (declare (not safe))
                                         (cons __tmp114389 __tmp114384))))
                                  (declare (not safe))
                                  (cons __tmp114390 __tmp114383))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114382)))
                       _hd106223106269_
                       _hd106220106261_
                       _hd106217106253_
                       _hd106214106245_)
                      (let ()
                        (declare (not safe))
                        (_g106204106229_ _g106205106232_)))))
              (let ()
                (declare (not safe))
                (_g106204106229_ _g106205106232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106204106229_
                                                 _g106205106232_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106204106229_ _g106205106232_)))))
                              (let ()
                                (declare (not safe))
                                (_g106204106229_ _g106205106232_)))))
                      (let ()
                        (declare (not safe))
                        (_g106204106229_ _g106205106232_))))))
          (declare (not safe))
          (_g106203106298_ _stx106202_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106117_ _stx106118_)
        (let* ((_g106120106141_
                (lambda (_g106121106138_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106121106138_))))
               (_g106119106198_
                (lambda (_g106121106144_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106121106144_))
                      (let ((_e106127106146_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106121106144_))))
                        (let ((_hd106126106149_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106127106146_)))
                              (_tl106125106151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106127106146_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106125106151_))
                              (let ((_e106130106154_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106125106151_))))
                                (let ((_hd106129106157_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106130106154_)))
                                      (_tl106128106159_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106130106154_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106128106159_))
                                      (let ((_e106133106162_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106128106159_))))
                                        (let ((_hd106132106165_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106133106162_)))
                                              (_tl106131106167_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106133106162_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106131106167_))
                                              (let ((_e106136106170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106131106167_))))
                                                (let ((_hd106135106173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106136106170_)))
                                                      (_tl106134106175_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106136106170_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106134106175_))
                                                      ((lambda (_L106178_
                                                                _L106179_
                                                                _L106180_)
                                                         (let ((__tmp114391
                                                                (let ((__tmp114397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106117_ _L106178_)))
                              (__tmp114392
                               (let ((__tmp114396
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106117_
                                         _L106179_)))
                                     (__tmp114393
                                      (let ((__tmp114395
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106117_
                                                _L106180_)))
                                            (__tmp114394
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114395 __tmp114394))))
                                 (declare (not safe))
                                 (cons __tmp114396 __tmp114393))))
                          (declare (not safe))
                          (cons __tmp114397 __tmp114392))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114391)))
               _hd106135106173_
               _hd106132106165_
               _hd106129106157_)
              (let ()
                (declare (not safe))
                (_g106120106141_ _g106121106144_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106120106141_
                                                 _g106121106144_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106120106141_ _g106121106144_)))))
                              (let ()
                                (declare (not safe))
                                (_g106120106141_ _g106121106144_)))))
                      (let ()
                        (declare (not safe))
                        (_g106120106141_ _g106121106144_))))))
          (declare (not safe))
          (_g106119106198_ _stx106118_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106017_ _stx106018_)
        (let* ((_g106020106045_
                (lambda (_g106021106042_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106021106042_))))
               (_g106019106114_
                (lambda (_g106021106048_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106021106048_))
                      (let ((_e106028106050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106021106048_))))
                        (let ((_hd106027106053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106028106050_)))
                              (_tl106026106055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106028106050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106026106055_))
                              (let ((_e106031106058_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106026106055_))))
                                (let ((_hd106030106061_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106031106058_)))
                                      (_tl106029106063_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106031106058_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106029106063_))
                                      (let ((_e106034106066_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106029106063_))))
                                        (let ((_hd106033106069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106034106066_)))
                                              (_tl106032106071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106034106066_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106032106071_))
                                              (let ((_e106037106074_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106032106071_))))
                                                (let ((_hd106036106077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106037106074_)))
                                                      (_tl106035106079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106037106074_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106035106079_))
                                                      (let ((_e106040106082_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106035106079_))))
                (let ((_hd106039106085_
                       (let () (declare (not safe)) (##car _e106040106082_)))
                      (_tl106038106087_
                       (let () (declare (not safe)) (##cdr _e106040106082_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106038106087_))
                      ((lambda (_L106090_ _L106091_ _L106092_ _L106093_)
                         (let ((__tmp114398
                                (let ((__tmp114406
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106017_
                                          _L106091_)))
                                      (__tmp114399
                                       (let ((__tmp114405
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106017_
                                                 _L106090_)))
                                             (__tmp114400
                                              (let ((__tmp114404
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106017_
                                                        _L106092_)))
                                                    (__tmp114401
                                                     (let ((__tmp114403
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106017_
                                                               _L106093_)))
                                                           (__tmp114402
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114403 __tmp114402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114404
                                                      __tmp114401))))
                                         (declare (not safe))
                                         (cons __tmp114405 __tmp114400))))
                                  (declare (not safe))
                                  (cons __tmp114406 __tmp114399))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114398)))
                       _hd106039106085_
                       _hd106036106077_
                       _hd106033106069_
                       _hd106030106061_)
                      (let ()
                        (declare (not safe))
                        (_g106020106045_ _g106021106048_)))))
              (let ()
                (declare (not safe))
                (_g106020106045_ _g106021106048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106020106045_
                                                 _g106021106048_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106020106045_ _g106021106048_)))))
                              (let ()
                                (declare (not safe))
                                (_g106020106045_ _g106021106048_)))))
                      (let ()
                        (declare (not safe))
                        (_g106020106045_ _g106021106048_))))))
          (declare (not safe))
          (_g106019106114_ _stx106018_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self105812_ _stx105813_)
        (let* ((_g105815105836_
                (lambda (_g105816105833_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105816105833_))))
               (_g105814106014_
                (lambda (_g105816105839_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105816105839_))
                      (let ((_e105822105841_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105816105839_))))
                        (let ((_hd105821105844_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105822105841_)))
                              (_tl105820105846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105822105841_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105820105846_))
                              (let ((_e105825105849_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105820105846_))))
                                (let ((_hd105824105852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105825105849_)))
                                      (_tl105823105854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105825105849_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105823105854_))
                                      (let ((_e105828105857_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105823105854_))))
                                        (let ((_hd105827105860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105828105857_)))
                                              (_tl105826105862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105828105857_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105826105862_))
                                              (let ((_e105831105865_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105826105862_))))
                                                (let ((_hd105830105868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105831105865_)))
                                                      (_tl105829105870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105831105865_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl105829105870_))
                                                      ((lambda (_L105873_
                                                                _L105874_
                                                                _L105875_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114425
                            (let ((__tmp114431
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self105812_
                                      _L105873_)))
                                  (__tmp114426
                                   (let ((__tmp114430
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self105812_
                                             _L105874_)))
                                         (__tmp114427
                                          (let ((__tmp114429
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self105812_
                                                    _L105875_)))
                                                (__tmp114428
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114429 __tmp114428))))
                                     (declare (not safe))
                                     (cons __tmp114430 __tmp114427))))
                              (declare (not safe))
                              (cons __tmp114431 __tmp114426))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114425))
                     (let _lp105893_ ((_rest105896_
                                       (let ((__tmp114423
                                              (let ((__tmp114424
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L105873_ '()))))
                                                (declare (not safe))
                                                (cons _L105874_ __tmp114424))))
                                         (declare (not safe))
                                         (cons _L105875_ __tmp114423)))
                                      (_bind105898_ '())
                                      (_args105899_ '()))
                       (let* ((_rest105900105908_ _rest105896_)
                              (_else105902105916_
                               (lambda ()
                                 (let ((__tmp114407
                                        (let ((__tmp114408
                                               (let ((__tmp114409
                                                      (let ((__tmp114410
                                                             (let ((__tmp114411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114412
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114412 _args105899_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114411))))
                (declare (not safe))
                (cons __tmp114410 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114409))))
                                          (declare (not safe))
                                          (cons _bind105898_ __tmp114408))))
                                   (declare (not safe))
                                   (cons 'let __tmp114407))))
                              (_K105904106002_
                               (lambda (_rest105919_ _e105920_)
                                 (let* ((___stx113628113629_ _e105920_)
                                        (_g105925105943_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113628113629_)))))
                                   (let ((___kont113630113631_
                                          (lambda ()
                                            (let ((__tmp114413
                                                   (let ((__tmp114414
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e105920_))))
                                                     (declare (not safe))
                                                     (cons __tmp114414
                                                           _args105899_))))
                                              (declare (not safe))
                                              (_lp105893_
                                               _rest105919_
                                               _bind105898_
                                               __tmp114413))))
                                         (___kont113632113633_
                                          (lambda ()
                                            (let ((__tmp114415
                                                   (let ((__tmp114416
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e105920_))))
                                                     (declare (not safe))
                                                     (cons __tmp114416
                                                           _args105899_))))
                                              (declare (not safe))
                                              (_lp105893_
                                               _rest105919_
                                               _bind105898_
                                               __tmp114415))))
                                         (___kont113634113635_
                                          (lambda ()
                                            (let ((_tmp105950_
                                                   (let ((__tmp114417
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114417))))
                                              (let ((__tmp114419
                                                     (let ((__tmp114420
                                                            (let ((__tmp114421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114422
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e105920_))))
                             (declare (not safe))
                             (cons __tmp114422 '()))))
                      (declare (not safe))
                      (cons _tmp105950_ __tmp114421))))
               (declare (not safe))
               (cons __tmp114420 _bind105898_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114418
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp105950_
                                                             _args105899_))))
                                                (declare (not safe))
                                                (_lp105893_
                                                 _rest105919_
                                                 __tmp114419
                                                 __tmp114418))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113628113629_))
                                         (let ((_e105929105981_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113628113629_))))
                                           (let ((_tl105927105986_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e105929105981_)))
                                                 (_hd105928105984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e105929105981_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd105928105984_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd105928105984_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl105927105986_))
                                                         (let ((_e105932105989_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl105927105986_))))
                   (let ((_tl105930105994_
                          (let ()
                            (declare (not safe))
                            (##cdr _e105932105989_)))
                         (_hd105931105992_
                          (let ()
                            (declare (not safe))
                            (##car _e105932105989_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl105930105994_))
                         (___kont113630113631_)
                         (___kont113634113635_))))
                 (___kont113634113635_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd105928105984_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105927105986_))
                     (let ((_e105938105966_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105927105986_))))
                       (let ((_tl105936105971_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105938105966_)))
                             (_hd105937105969_
                              (let ()
                                (declare (not safe))
                                (##car _e105938105966_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105936105971_))
                             (___kont113632113633_)
                             (___kont113634113635_))))
                     (___kont113634113635_))
                 (___kont113634113635_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113634113635_))))
                                         (___kont113634113635_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest105900105908_))
                             (let ((_hd105905106005_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest105900105908_)))
                                   (_tl105906106007_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest105900105908_))))
                               (let* ((_e106010_ _hd105905106005_)
                                      (_rest106012_ _tl105906106007_))
                                 (declare (not safe))
                                 (_K105904106002_ _rest106012_ _e106010_)))
                             (let ()
                               (declare (not safe))
                               (_else105902105916_)))))))
               _hd105830105868_
               _hd105827105860_
               _hd105824105852_)
              (let ()
                (declare (not safe))
                (_g105815105836_ _g105816105839_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105815105836_
                                                 _g105816105839_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105815105836_ _g105816105839_)))))
                              (let ()
                                (declare (not safe))
                                (_g105815105836_ _g105816105839_)))))
                      (let ()
                        (declare (not safe))
                        (_g105815105836_ _g105816105839_))))))
          (declare (not safe))
          (_g105814106014_ _stx105813_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105591_ _stx105592_)
        (let* ((_g105594105619_
                (lambda (_g105595105616_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105595105616_))))
               (_g105593105809_
                (lambda (_g105595105622_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105595105622_))
                      (let ((_e105602105624_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105595105622_))))
                        (let ((_hd105601105627_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105602105624_)))
                              (_tl105600105629_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105602105624_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105600105629_))
                              (let ((_e105605105632_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105600105629_))))
                                (let ((_hd105604105635_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105605105632_)))
                                      (_tl105603105637_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105605105632_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105603105637_))
                                      (let ((_e105608105640_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105603105637_))))
                                        (let ((_hd105607105643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105608105640_)))
                                              (_tl105606105645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105608105640_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105606105645_))
                                              (let ((_e105611105648_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105606105645_))))
                                                (let ((_hd105610105651_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105611105648_)))
                                                      (_tl105609105653_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105611105648_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105609105653_))
                                                      (let ((_e105614105656_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105609105653_))))
                (let ((_hd105613105659_
                       (let () (declare (not safe)) (##car _e105614105656_)))
                      (_tl105612105661_
                       (let () (declare (not safe)) (##cdr _e105614105656_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105612105661_))
                      ((lambda (_L105664_ _L105665_ _L105666_ _L105667_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114451
                                    (let ((__tmp114459
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105591_
                                              _L105665_)))
                                          (__tmp114452
                                           (let ((__tmp114458
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105591_
                                                     _L105664_)))
                                                 (__tmp114453
                                                  (let ((__tmp114457
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105591_
                                                            _L105666_)))
                                                        (__tmp114454
                                                         (let ((__tmp114456
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105591_ _L105667_)))
                       (__tmp114455
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114456 __tmp114455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114457
                                                          __tmp114454))))
                                             (declare (not safe))
                                             (cons __tmp114458 __tmp114453))))
                                      (declare (not safe))
                                      (cons __tmp114459 __tmp114452))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114451))
                             (let _lp105688_ ((_rest105691_
                                               (let ((__tmp114448
                                                      (let ((__tmp114449
                                                             (let ((__tmp114450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L105665_ '()))))
                       (declare (not safe))
                       (cons _L105664_ __tmp114450))))
                (declare (not safe))
                (cons _L105666_ __tmp114449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L105667_ __tmp114448)))
                                              (_bind105693_ '())
                                              (_args105694_ '()))
                               (let* ((_rest105695105703_ _rest105691_)
                                      (_else105697105711_
                                       (lambda ()
                                         (let ((__tmp114432
                                                (let ((__tmp114433
                                                       (let ((__tmp114434
                                                              (let ((__tmp114435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114436
                                    (let ((__tmp114437
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114437 _args105694_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114436))))
                        (declare (not safe))
                        (cons __tmp114435 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114434))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind105693_
                                                        __tmp114433))))
                                           (declare (not safe))
                                           (cons 'let __tmp114432))))
                                      (_K105699105797_
                                       (lambda (_rest105714_ _e105715_)
                                         (let* ((___stx113674113675_ _e105715_)
                                                (_g105720105738_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx113674113675_)))))
                                           (let ((___kont113676113677_
                                                  (lambda ()
                                                    (let ((__tmp114438
                                                           (let ((__tmp114439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105715_))))
                     (declare (not safe))
                     (cons __tmp114439 _args105694_))))
              (declare (not safe))
              (_lp105688_ _rest105714_ _bind105693_ __tmp114438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113678113679_
                                                  (lambda ()
                                                    (let ((__tmp114440
                                                           (let ((__tmp114441
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105715_))))
                     (declare (not safe))
                     (cons __tmp114441 _args105694_))))
              (declare (not safe))
              (_lp105688_ _rest105714_ _bind105693_ __tmp114440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113680113681_
                                                  (lambda ()
                                                    (let ((_tmp105745_
                                                           (let ((__tmp114442
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114442))))
              (let ((__tmp114444
                     (let ((__tmp114445
                            (let ((__tmp114446
                                   (let ((__tmp114447
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e105715_))))
                                     (declare (not safe))
                                     (cons __tmp114447 '()))))
                              (declare (not safe))
                              (cons _tmp105745_ __tmp114446))))
                       (declare (not safe))
                       (cons __tmp114445 _bind105693_)))
                    (__tmp114443
                     (let ()
                       (declare (not safe))
                       (cons _tmp105745_ _args105694_))))
                (declare (not safe))
                (_lp105688_ _rest105714_ __tmp114444 __tmp114443))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx113674113675_))
                                                 (let ((_e105724105776_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx113674113675_))))
                                                   (let ((_tl105722105781_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105724105776_)))
                                                         (_hd105723105779_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105724105776_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd105723105779_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd105723105779_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl105722105781_))
                         (let ((_e105727105784_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl105722105781_))))
                           (let ((_tl105725105789_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e105727105784_)))
                                 (_hd105726105787_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e105727105784_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl105725105789_))
                                 (___kont113676113677_)
                                 (___kont113680113681_))))
                         (___kont113680113681_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd105723105779_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl105722105781_))
                             (let ((_e105733105761_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl105722105781_))))
                               (let ((_tl105731105766_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e105733105761_)))
                                     (_hd105732105764_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e105733105761_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl105731105766_))
                                     (___kont113678113679_)
                                     (___kont113680113681_))))
                             (___kont113680113681_))
                         (___kont113680113681_)))
                 (___kont113680113681_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113680113681_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest105695105703_))
                                     (let ((_hd105700105800_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest105695105703_)))
                                           (_tl105701105802_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest105695105703_))))
                                       (let* ((_e105805_ _hd105700105800_)
                                              (_rest105807_ _tl105701105802_))
                                         (declare (not safe))
                                         (_K105699105797_
                                          _rest105807_
                                          _e105805_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else105697105711_)))))))
                       _hd105613105659_
                       _hd105610105651_
                       _hd105607105643_
                       _hd105604105635_)
                      (let ()
                        (declare (not safe))
                        (_g105594105619_ _g105595105622_)))))
              (let ()
                (declare (not safe))
                (_g105594105619_ _g105595105622_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105594105619_
                                                 _g105595105622_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105594105619_ _g105595105622_)))))
                              (let ()
                                (declare (not safe))
                                (_g105594105619_ _g105595105622_)))))
                      (let ()
                        (declare (not safe))
                        (_g105594105619_ _g105595105622_))))))
          (declare (not safe))
          (_g105593105809_ _stx105592_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105444_ _stx105445_)
        (letrec ((_import-set-template105447_
                  (lambda (_in105543_ _phi105544_)
                    (let ((_iphi105546_
                           (fx+ _phi105544_
                                (##direct-structure-ref
                                 _in105543_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105547_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105543_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105549_ ((_rest105551_ _imports105547_)
                                       (_r105552_ '()))
                        (let* ((_rest105553105561_ _rest105551_)
                               (_else105555105569_ (lambda () _r105552_))
                               (_K105557105579_
                                (lambda (_rest105572_ _in105573_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105573_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105546_))
                                          (let ((__tmp114466
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105573_
                                                         _r105552_))))
                                            (declare (not safe))
                                            (_lp105549_
                                             _rest105572_
                                             __tmp114466))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105549_
                                             _rest105572_
                                             _r105552_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105573_
                                             'gx#module-import::t))
                                          (let ((_iphi105575_
                                                 (fx+ _phi105544_
                                                      (##direct-structure-ref
                                                       _in105573_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105575_))
                                                (let ((__tmp114464
                                                       (let ((__tmp114465
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105573_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114465
                                                               _r105552_))))
                                                  (declare (not safe))
                                                  (_lp105549_
                                                   _rest105572_
                                                   __tmp114464))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105549_
                                                   _rest105572_
                                                   _r105552_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105573_
                                                 'gx#import-set::t))
                                              (let ((_xphi105577_
                                                     (fx+ _iphi105546_
                                                          (##direct-structure-ref
                                                           _in105573_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105577_))
                                                    (let ((__tmp114462
                                                           (let ((__tmp114463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105573_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114463 _r105552_))))
              (declare (not safe))
              (_lp105549_ _rest105572_ __tmp114462))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105577_)
                                                        (let ((__tmp114460
                                                               (let ((__tmp114461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105447_
                                 _in105573_
                                 _iphi105546_))))
                         (declare (not safe))
                         (foldl1 cons _r105552_ __tmp114461))))
                  (declare (not safe))
                  (_lp105549_ _rest105572_ __tmp114460))
                (let ()
                  (declare (not safe))
                  (_lp105549_ _rest105572_ _r105552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105549_
                                                 _rest105572_
                                                 _r105552_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105553105561_))
                              (let ((_hd105558105582_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105553105561_)))
                                    (_tl105559105584_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105553105561_))))
                                (let* ((_in105587_ _hd105558105582_)
                                       (_rest105589_ _tl105559105584_))
                                  (declare (not safe))
                                  (_K105557105579_ _rest105589_ _in105587_)))
                              (let ()
                                (declare (not safe))
                                (_else105555105569_)))))))))
          (let* ((_g105449105459_
                  (lambda (_g105450105456_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105450105456_))))
                 (_g105448105540_
                  (lambda (_g105450105462_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105450105462_))
                        (let ((_e105454105464_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105450105462_))))
                          (let ((_hd105453105467_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105454105464_)))
                                (_tl105452105469_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105454105464_))))
                            ((lambda (_L105472_)
                               (let ((_ht105483_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105485_ ((_rest105487_ _L105472_)
                                                  (_loads105488_ '()))
                                   (letrec ((_K105490_
                                             (lambda (_ctx105533_ _rest105534_)
                                               (let ((_id105536_
                                                      (##structure-ref
                                                       _ctx105533_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105483_
                                                        _id105536_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105485_
                                                        _rest105534_
                                                        _loads105488_))
                                                     (let ((_rt105538_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id105536_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht105483_
                                                          _id105536_
                                                          _rt105538_))
                                                       (let ((__tmp114467
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _rt105538_ _loads105488_))))
                 (declare (not safe))
                 (_lp105485_ _rest105534_ __tmp114467))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105491105499_ _rest105487_)
                                            (_else105493105511_
                                             (lambda ()
                                               (let ((__tmp114468
                                                      (map (lambda (_g105506105508_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105506105508_))
                   (reverse _loads105488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114468))))
                                            (_K105495105521_
                                             (lambda (_rest105514_ _in105515_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105515_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105490_
                                                      _in105515_
                                                      _rest105514_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105515_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105515_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114472))
                   (let ((__tmp114471
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105515_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105490_ __tmp114471 _rest105514_))
                   (let ()
                     (declare (not safe))
                     (_lp105485_ _rest105514_ _loads105488_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105515_
                      'gx#import-set::t))
                   (let ((_phi105517_
                          (##direct-structure-ref
                           _in105515_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105517_))
                         (let ((__tmp114470
                                (##direct-structure-ref
                                 _in105515_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105490_ __tmp114470 _rest105514_))
                         (if (fxpositive? _phi105517_)
                             (let* ((_deps105519_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105447_
                                        _in105515_
                                        '0)))
                                    (__tmp114469
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105514_
                                               _deps105519_))))
                               (declare (not safe))
                               (_lp105485_ __tmp114469 _loads105488_))
                             (let ()
                               (declare (not safe))
                               (_lp105485_ _rest105514_ _loads105488_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105445_
                      _in105515_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105491105499_))
                                           (let ((_hd105496105524_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105491105499_)))
                                                 (_tl105497105526_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105491105499_))))
                                             (let* ((_in105529_
                                                     _hd105496105524_)
                                                    (_rest105531_
                                                     _tl105497105526_))
                                               (declare (not safe))
                                               (_K105495105521_
                                                _rest105531_
                                                _in105529_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105493105511_))))))))
                             _tl105452105469_)))
                        (let ()
                          (declare (not safe))
                          (_g105449105459_ _g105450105462_))))))
            (declare (not safe))
            (_g105448105540_ _stx105445_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105259_ _stx105260_)
        (letrec ((_add-lift!105262_
                  (lambda (_expr105442_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114473 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105442_ __tmp114473)))))
                 (_generate-syntax-quote105263_
                  (lambda (_id105439_ _marks105440_)
                    (let ((__tmp114474
                           (let ((__tmp114475
                                  (let ((__tmp114479
                                         (let ((__tmp114480
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105439_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114480)))
                                        (__tmp114476
                                         (let ((__tmp114477
                                                (let ((__tmp114478
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105440_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114478))))
                                           (declare (not safe))
                                           (cons '#f __tmp114477))))
                                    (declare (not safe))
                                    (cons __tmp114479 __tmp114476))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114475))))
                      (declare (not safe))
                      (cons '##structure __tmp114474))))
                 (_generate-simple105264_
                  (lambda (_stxq105434_)
                    (let ((_gid105436_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105437_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105434_))))
                      (let ((__tmp114481
                             (let ((__tmp114482
                                    (let ((__tmp114483
                                           (let ((__tmp114484
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105263_
                                                     _qid105437_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114484 '()))))
                                      (declare (not safe))
                                      (cons _gid105436_ __tmp114483))))
                               (declare (not safe))
                               (cons 'define __tmp114482))))
                        (declare (not safe))
                        (_add-lift!105262_ __tmp114481))
                      (let ((__tmp114485 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114485 _stxq105434_ _gid105436_))
                      _gid105436_)))
                 (_generate-serialized105265_
                  (lambda (_stxq105424_ _marks105425_)
                    (let* ((_mark-refs105427_
                            (map _generate-mark105266_ _marks105425_))
                           (_gid105429_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105431_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105424_))))
                      (let ((__tmp114486
                             (let ((__tmp114487
                                    (let ((__tmp114488
                                           (let ((__tmp114489
                                                  (let ((__tmp114490
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105263_
                                                     _qid105431_
                                                     __tmp114490))))
                                             (declare (not safe))
                                             (cons __tmp114489 '()))))
                                      (declare (not safe))
                                      (cons _gid105429_ __tmp114488))))
                               (declare (not safe))
                               (cons 'define __tmp114487))))
                        (declare (not safe))
                        (_add-lift!105262_ __tmp114486))
                      (let ((__tmp114491 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114491 _stxq105424_ _gid105429_))
                      _gid105429_)))
                 (_generate-mark105266_
                  (lambda (_mark105410_)
                    (let ((_$e105412_
                           (let ((__tmp114492 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114492 _mark105410_))))
                      (if _$e105412_
                          (values _$e105412_)
                          (let* ((_gid105415_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105417_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105267_ _mark105410_)))
                                 (_ctx105419_
                                  (let ((__tmp114493
                                         (##structure-ref
                                          _mark105410_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114493)))
                                 (_ctx-ref105421_
                                  (if (let ((__tmp114498
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105419_ __tmp114498))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114494
                                             (let ((__tmp114495
                                                    (let ((__tmp114496
                                                           (let ((__tmp114497
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105268_ _ctx105419_))))
                     (declare (not safe))
                     (cons __tmp114497 '()))))
              (declare (not safe))
              (cons 'quote __tmp114496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114495 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114494)))))
                            (let ((__tmp114499 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114499 _mark105410_ _gid105415_))
                            (let ((__tmp114500
                                   (let ((__tmp114501
                                          (let ((__tmp114502
                                                 (let ((__tmp114503
                                                        (let ((__tmp114504
                                                               (let ((__tmp114506
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114507
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105417_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114507)))
                             (__tmp114505
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105421_ '()))))
                         (declare (not safe))
                         (cons __tmp114506 __tmp114505))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114503 '()))))
                                            (declare (not safe))
                                            (cons _gid105415_ __tmp114502))))
                                     (declare (not safe))
                                     (cons 'define __tmp114501))))
                              (declare (not safe))
                              (_add-lift!105262_ __tmp114500))
                            _gid105415_)))))
                 (_serialize-mark105267_
                  (lambda (_mark105357_)
                    (letrec ((_quote-e105359_
                              (lambda (_sym105408_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _sym105408_))
                                    _sym105408_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105408_))))))
                      (let* ((_mark105360105369_ _mark105357_)
                             (_E105362105373_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105360105369_))))
                             (_K105363105385_
                              (lambda (_trace105376_
                                       _phi105377_
                                       _ctx105378_
                                       _subst105379_)
                                (let* ((_subs105381_
                                        (if _subst105379_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105379_))
                                            '()))
                                       (__tmp114508
                                        (map (lambda (_pair105383_)
                                               (let ((__tmp114511
                                                      (let ((__tmp114512
                                                             (car _pair105383_)))
                                                        (declare (not safe))
                                                        (_quote-e105359_
                                                         __tmp114512)))
                                                     (__tmp114509
                                                      (let ((__tmp114510
                                                             (cdr _pair105383_)))
                                                        (declare (not safe))
                                                        (_quote-e105359_
                                                         __tmp114510))))
                                                 (declare (not safe))
                                                 (cons __tmp114511
                                                       __tmp114509)))
                                             _subs105381_)))
                                  (declare (not safe))
                                  (cons _phi105377_ __tmp114508)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105360105369_
                               'gx#expander-mark::t))
                            (let* ((_e105364105388_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105360105369_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105391_ _e105364105388_)
                                   (_e105365105393_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105360105369_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105396_ _e105365105393_)
                                   (_e105366105398_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105360105369_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105401_ _e105366105398_)
                                   (_e105367105403_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105360105369_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105406_ _e105367105403_))
                              (declare (not safe))
                              (_K105363105385_
                               _trace105406_
                               _phi105401_
                               _ctx105396_
                               _subst105391_))
                            (let ()
                              (declare (not safe))
                              (_E105362105373_)))))))
                 (_context-ref105268_
                  (lambda (_ctx105344_)
                    (if (let ((__tmp114520
                               (##structure-ref
                                _ctx105344_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114520
                           'gx#module-context::t))
                        (let ((_ctx-ref105346_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105270_ _ctx105344_)))
                              (_ctx-origin105347_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105269_ _ctx105344_)))
                              (_origin105348_
                               (let ((__tmp114514
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105269_ __tmp114514))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105348_ _ctx-origin105347_))
                              (let ((_ref105350_
                                     (let ((__tmp114515
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105270_
                                        __tmp114515))))
                                (let _lp105352_ ((_ref105354_
                                                  (cdr _ref105350_))
                                                 (_ctx-ref105355_
                                                  (cdr _ctx-ref105346_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105354_))
                                           (let ((__tmp114519
                                                  (car _ref105354_))
                                                 (__tmp114518
                                                  (car _ctx-ref105355_)))
                                             (declare (not safe))
                                             (eq? __tmp114519 __tmp114518)))
                                      (let ((__tmp114517 (cdr _ref105354_))
                                            (__tmp114516
                                             (cdr _ctx-ref105355_)))
                                        (declare (not safe))
                                        (_lp105352_ __tmp114517 __tmp114516))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105355_)))))
                              _ctx-ref105346_))
                        (let ((__tmp114513
                               (##structure-ref
                                _ctx105344_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114513)))))
                 (_context-ref-origin105269_
                  (lambda (_ctx105336_)
                    (let _lp105338_ ((_ctx105340_ _ctx105336_))
                      (let ((_super105342_
                             (##structure-ref
                              _ctx105340_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105342_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105338_ _super105342_))
                            _ctx105340_)))))
                 (_context-ref-nested105270_
                  (lambda (_ctx105327_)
                    (let _lp105329_ ((_ctx105331_ _ctx105327_) (_r105332_ '()))
                      (let ((_super105334_
                             (##structure-ref
                              _ctx105331_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105334_
                               'gx#module-context::t))
                            (let ((__tmp114523
                                   (let ((__tmp114524
                                          (car (##structure-ref
                                                _ctx105331_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114524 _r105332_))))
                              (declare (not safe))
                              (_lp105329_ _super105334_ __tmp114523))
                            (let ((__tmp114521
                                   (let ((__tmp114522
                                          (##structure-ref
                                           _ctx105331_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114522))))
                              (declare (not safe))
                              (cons __tmp114521 _r105332_))))))))
          (let* ((_g105272105285_
                  (lambda (_g105273105282_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105273105282_))))
                 (_g105271105324_
                  (lambda (_g105273105288_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105273105288_))
                        (let ((_e105277105290_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105273105288_))))
                          (let ((_hd105276105293_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105277105290_)))
                                (_tl105275105295_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105277105290_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105275105295_))
                                (let ((_e105280105298_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105275105295_))))
                                  (let ((_hd105279105301_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105280105298_)))
                                        (_tl105278105303_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105280105298_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105278105303_))
                                        ((lambda (_L105306_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105306_))
                                               (let ((_$e105319_
                                                      (let ((__tmp114525
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114525
                                                         _L105306_))))
                                                 (if _$e105319_
                                                     (values _$e105319_)
                                                     (let ((_marks105322_
                                                            (##direct-structure-ref
                                                             _L105306_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105322_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105264_
                                                              _L105306_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105265_
                                                              _L105306_
                                                              _marks105322_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105306_))))
                                         _hd105279105301_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105272105285_ _g105273105288_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105272105285_ _g105273105288_)))))
                        (let ()
                          (declare (not safe))
                          (_g105272105285_ _g105273105288_))))))
            (declare (not safe))
            (_g105271105324_ _stx105260_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105191_ _stx105192_)
        (let* ((_g105194105211_
                (lambda (_g105195105208_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105195105208_))))
               (_g105193105256_
                (lambda (_g105195105214_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105195105214_))
                      (let ((_e105200105216_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105195105214_))))
                        (let ((_hd105199105219_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105200105216_)))
                              (_tl105198105221_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105200105216_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105198105221_))
                              (let ((_e105203105224_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105198105221_))))
                                (let ((_hd105202105227_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105203105224_)))
                                      (_tl105201105229_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105203105224_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105201105229_))
                                      (let ((_e105206105232_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105201105229_))))
                                        (let ((_hd105205105235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105206105232_)))
                                              (_tl105204105237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105206105232_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105204105237_))
                                              ((lambda (_L105240_ _L105241_)
                                                 (let ((__tmp114526
                                                        (let ((__tmp114529
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105241_)))
                      (__tmp114527
                       (let ((__tmp114528
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105191_ _L105240_))))
                         (declare (not safe))
                         (cons __tmp114528 '()))))
                  (declare (not safe))
                  (cons __tmp114529 __tmp114527))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114526)))
                                               _hd105205105235_
                                               _hd105202105227_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105194105211_
                                                 _g105195105214_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105194105211_ _g105195105214_)))))
                              (let ()
                                (declare (not safe))
                                (_g105194105211_ _g105195105214_)))))
                      (let ()
                        (declare (not safe))
                        (_g105194105211_ _g105195105214_))))))
          (declare (not safe))
          (_g105193105256_ _stx105192_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105140_ _stx105141_)
        (let* ((_g105143105153_
                (lambda (_g105144105150_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105144105150_))))
               (_g105142105188_
                (lambda (_g105144105156_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105144105156_))
                      (let ((_e105148105158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105144105156_))))
                        (let ((_hd105147105161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105148105158_)))
                              (_tl105146105163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105148105158_))))
                          ((lambda (_L105166_)
                             (let* ((_c-body105180_
                                     (map (lambda (_g105175105177_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105140_
                                               _g105175105177_)))
                                          _L105166_))
                                    (_c-body105185_
                                     (filter (lambda (_$obj105182_)
                                               (let ((__tmp114530
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105182_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114530)))
                                             _c-body105180_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105185_))))
                           _tl105146105163_)))
                      (let ()
                        (declare (not safe))
                        (_g105143105153_ _g105144105156_))))))
          (declare (not safe))
          (_g105142105188_ _stx105141_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105048_ _stx105049_)
        (let* ((_g105051105061_
                (lambda (_g105052105058_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105052105058_))))
               (_g105050105137_
                (lambda (_g105052105064_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105052105064_))
                      (let ((_e105056105066_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105052105064_))))
                        (let ((_hd105055105069_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105056105066_)))
                              (_tl105054105071_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105056105066_))))
                          ((lambda (_L105074_)
                             (let* ((_phi105084_
                                     (let ((__tmp114531
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114531 '1)))
                                    (_block105086_
                                     (let ((__tmp114532
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105048_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114532
                                        _phi105084_)))
                                    (_compiled105089_
                                     (let ((__tmp114533
                                            (lambda ()
                                              (let ((__tmp114535
                                                     (let ((__tmp114536
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114536
                                                             _L105074_)))
                                                    (__tmp114534
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105048_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114535
                                                 'state:
                                                 __tmp114534)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114533
                                        gx#current-expander-phi
                                        _phi105084_))))
                               (let* ((_g105092105102_
                                       (lambda (_g105093105099_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105093105099_))))
                                      (_g105091105134_
                                       (lambda (_g105093105105_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105093105105_))
                                             (let ((_e105097105107_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105093105105_))))
                                               (let ((_hd105096105110_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105097105107_)))
                                                     (_tl105095105112_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105097105107_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105096105110_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105096105110_))
                                                         ((lambda (_L105115_)
                                                            (let ((_c-body105132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105129_)
                                     (let ((__tmp114537
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105129_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114537)))
                                   _L105115_)))
                      (if _block105086_
                          (let ((__tmp114538
                                 (let ((__tmp114539
                                        (let ((__tmp114540
                                               (let ((__tmp114544
                                                      (let ((__tmp114545
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114545)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114541
                                                      (let ((__tmp114542
                                                             (let ((__tmp114543
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105086_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114543))))
                (declare (not safe))
                (cons __tmp114542 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114544
                                                       __tmp114541))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114540))))
                                   (declare (not safe))
                                   (cons __tmp114539 _c-body105132_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114538))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105132_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105132_))))))
                  _tl105095105112_)
                 (let ()
                   (declare (not safe))
                   (_g105092105102_ _g105093105105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105092105102_
                                                        _g105093105105_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105092105102_
                                                _g105093105105_))))))
                                 (declare (not safe))
                                 (_g105091105134_ _compiled105089_))))
                           _tl105054105071_)))
                      (let ()
                        (declare (not safe))
                        (_g105051105061_ _g105052105064_))))))
          (declare (not safe))
          (_g105050105137_ _stx105049_))))
    (define gxc#generate-meta-module%
      (lambda (_self104979_ _stx104980_)
        (let ((__tmp114546
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104979_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114546))
        (let* ((_g104982104996_
                (lambda (_g104983104993_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104983104993_))))
               (_g104981105045_
                (lambda (_g104983104999_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104983104999_))
                      (let ((_e104988105001_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104983104999_))))
                        (let ((_hd104987105004_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104988105001_)))
                              (_tl104986105006_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104988105001_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104986105006_))
                              (let ((_e104991105009_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104986105006_))))
                                (let ((_hd104990105012_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104991105009_)))
                                      (_tl104989105014_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104991105009_))))
                                  ((lambda (_L105017_ _L105018_)
                                     (let ((_key105031_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105018_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _key105031_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx104980_
                                              _L105018_
                                              _key105031_)))
                                       (let* ((_ctx105033_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105018_)))
                                              (_code105036_
                                               (let ((__tmp114547
                                                      (lambda ()
                                                        (let ((__tmp114548
                                                               (##structure-ref
                                                                _ctx105033_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self104979_
                                                           __tmp114548)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114547
                                                  gx#current-expander-context
                                                  _ctx105033_)))
                                              (_rt105038_
                                               (let ((__tmp114549
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114549
                                                  _ctx105033_)))
                                              (_loader105040_
                                               (if _rt105038_
                                                   (let ((__tmp114550
                                                          (let ((__tmp114551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114555
                                (let ((__tmp114556
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114556)))
                               (__tmp114552
                                (let ((__tmp114553
                                       (let ((__tmp114554
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105038_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114554))))
                                  (declare (not safe))
                                  (cons __tmp114553 '()))))
                           (declare (not safe))
                           (cons __tmp114555 __tmp114552))))
                    (declare (not safe))
                    (cons '%#call __tmp114551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114550 '()))
                                                   '()))
                                              (_modid105042_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105018_))))
                                         (let ((__tmp114557
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self104979_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114557))
                                         (let ((__tmp114558
                                                (let ((__tmp114559
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105036_
                                                               _loader105040_))))
                                                  (declare (not safe))
                                                  (cons _modid105042_
                                                        __tmp114559))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114558)))))
                                   _tl104989105014_
                                   _hd104990105012_)))
                              (let ()
                                (declare (not safe))
                                (_g104982104996_ _g104983104999_)))))
                      (let ()
                        (declare (not safe))
                        (_g104982104996_ _g104983104999_))))))
          (declare (not safe))
          (_g104981105045_ _stx104980_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx104969_ _context-chain104970_)
        (let _lp104972_ ((_ctx104974_ _ctx104969_) (_path104975_ '()))
          (let ((_super104977_
                 (##structure-ref _ctx104974_ '3 gx#phi-context::t '#f)))
            (if (memq _super104977_ _context-chain104970_)
                (let ((__tmp114564
                       (let ((__tmp114565
                              (car (##structure-ref
                                    _ctx104974_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114565 _path104975_))))
                  (declare (not safe))
                  (cons '#f __tmp114564))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super104977_
                       'gx#module-context::t))
                    (let ((__tmp114562
                           (let ((__tmp114563
                                  (car (##structure-ref
                                        _ctx104974_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114563 _path104975_))))
                      (declare (not safe))
                      (_lp104972_ _super104977_ __tmp114562))
                    (let ((__tmp114560
                           (let ((__tmp114561
                                  (##structure-ref
                                   _ctx104974_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114561))))
                      (declare (not safe))
                      (cons __tmp114560 _path104975_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp104964_ ((_ctx104966_ (gx#current-expander-context))
                         (_r104967_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx104966_ 'gx#module-context::t))
              (let ((__tmp114567
                     (##structure-ref _ctx104966_ '3 gx#phi-context::t '#f))
                    (__tmp114566
                     (let ()
                       (declare (not safe))
                       (cons _ctx104966_ _r104967_))))
                (declare (not safe))
                (_lp104964_ __tmp114567 __tmp114566))
              _r104967_))))
    (define gxc#generate-meta-import%
      (lambda (_self104733_ _stx104734_)
        (letrec* ((_context-chain104736_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec104737_
                   (lambda (_in104900_)
                     (let* ((_in104901104913_ _in104900_)
                            (_E104903104917_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in104901104913_))))
                            (_K104904104927_
                             (lambda (_phi104920_
                                      _name104921_
                                      _src-name104922_
                                      _src-phi104923_
                                      _src-key104924_
                                      _src-ctx104925_)
                               (let ((__tmp114568
                                      (let ((__tmp114572
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name104921_)))
                                            (__tmp114569
                                             (let ((__tmp114570
                                                    (let ((__tmp114571
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name104922_))))
                                                      (declare (not safe))
                                                      (cons __tmp114571 '()))))
                                               (declare (not safe))
                                               (cons _src-phi104923_
                                                     __tmp114570))))
                                        (declare (not safe))
                                        (cons __tmp114572 __tmp114569))))
                                 (declare (not safe))
                                 (cons _phi104920_ __tmp114568)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in104901104913_
                              'gx#module-import::t))
                           (let ((_e104905104930_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in104901104913_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e104905104930_
                                    'gx#module-export::t))
                                 (let* ((_e104908104933_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104905104930_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx104936_ _e104908104933_)
                                        (_e104909104938_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104905104930_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key104941_ _e104909104938_)
                                        (_e104910104943_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104905104930_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi104946_ _e104910104943_)
                                        (_e104911104948_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104905104930_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name104951_ _e104911104948_)
                                        (_e104906104953_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in104901104913_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name104956_ _e104906104953_)
                                        (_e104907104958_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in104901104913_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi104961_ _e104907104958_))
                                   (declare (not safe))
                                   (_K104904104927_
                                    _phi104961_
                                    _name104956_
                                    _src-name104951_
                                    _src-phi104946_
                                    _src-key104941_
                                    _src-ctx104936_))
                                 (let ()
                                   (declare (not safe))
                                   (_E104903104917_))))
                           (let () (declare (not safe)) (_E104903104917_))))))
                  (_make-import-path104738_
                   (lambda (_ctx104898_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx104898_
                        _context-chain104736_))))
                  (_make-import-spec-in104739_
                   (lambda (_ctx104895_ _in104896_)
                     (let ((__tmp114573
                            (let ((__tmp114575
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path104738_ _ctx104895_)))
                                  (__tmp114574 (reverse _in104896_)))
                              (declare (not safe))
                              (cons __tmp114575 __tmp114574))))
                       (declare (not safe))
                       (cons 'spec: __tmp114573)))))
          (let ((__tmp114576
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self104733_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114576))
          (let* ((_g104741104751_
                  (lambda (_g104742104748_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104742104748_))))
                 (_g104740104892_
                  (lambda (_g104742104754_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104742104754_))
                        (let ((_e104746104756_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104742104754_))))
                          (let ((_hd104745104759_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104746104756_)))
                                (_tl104744104761_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104746104756_))))
                            ((lambda (_L104764_)
                               (let _lp104775_ ((_rest104777_ _L104764_)
                                                (_current-src104778_ '#f)
                                                (_current-in104779_ '())
                                                (_r104780_ '()))
                                 (let* ((_rest104781104789_ _rest104777_)
                                        (_else104783104799_
                                         (lambda ()
                                           (let* ((_r104797_
                                                   (if _current-src104778_
                                                       (let ((__tmp114577
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in104739_
                         _current-src104778_
                         _current-in104779_))))
                 (declare (not safe))
                 (cons __tmp114577 _r104780_))
               _r104780_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114578
                                                   (reverse _r104797_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114578))))
                                        (_K104785104880_
                                         (lambda (_rest104802_ _in104803_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in104803_
                                                  'gx#module-import::t))
                                               (let* ((_in104804104811_
                                                       _in104803_)
                                                      (_E104806104815_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in104804104811_))))
              (_K104807104820_
               (lambda (_src-ctx104818_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src104778_ _src-ctx104818_))
                     (let ((__tmp114594
                            (let ((__tmp114595
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec104737_ _in104803_))))
                              (declare (not safe))
                              (cons __tmp114595 _current-in104779_))))
                       (declare (not safe))
                       (_lp104775_
                        _rest104802_
                        _current-src104778_
                        __tmp114594
                        _r104780_))
                     (if _current-src104778_
                         (let ((__tmp114592
                                (let ((__tmp114593
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec104737_
                                          _in104803_))))
                                  (declare (not safe))
                                  (cons __tmp114593 '())))
                               (__tmp114590
                                (let ((__tmp114591
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in104739_
                                          _current-src104778_
                                          _current-in104779_))))
                                  (declare (not safe))
                                  (cons __tmp114591 _r104780_))))
                           (declare (not safe))
                           (_lp104775_
                            _rest104802_
                            _src-ctx104818_
                            __tmp114592
                            __tmp114590))
                         (let ((__tmp114588
                                (let ((__tmp114589
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec104737_
                                          _in104803_))))
                                  (declare (not safe))
                                  (cons __tmp114589 '()))))
                           (declare (not safe))
                           (_lp104775_
                            _rest104802_
                            _src-ctx104818_
                            __tmp114588
                            _r104780_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in104804104811_
                                                        'gx#module-import::t))
                                                     (let ((_e104808104823_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in104804104811_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e104808104823_
                                                              'gx#module-export::t))
                                                           (let* ((_e104809104826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e104808104823_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx104829_ _e104809104826_))
                     (declare (not safe))
                     (_K104807104820_ _src-ctx104829_))
                   (let () (declare (not safe)) (_E104806104815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E104806104815_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in104803_
                                                      'gx#import-set::t))
                                                   (let* ((_phi104831_
                                                           (##direct-structure-ref
                                                            _in104803_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src104833_
                                                           (##direct-structure-ref
                                                            _in104803_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in104873_
                                                           (let* ((_g104834104843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path104738_ _src104833_)))
                          (_E104837104847_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g104834104843_)))))
                     (let ((_K104839104863_
                            (lambda (_path104861_) _path104861_))
                           (_K104838104853_
                            (lambda (_path104851_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path104851_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g104834104843_))
                           (let ((_tl104841104868_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g104834104843_)))
                                 (_hd104840104866_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g104834104843_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl104841104868_))
                                 (let ((_path104871_ _hd104840104866_))
                                   (declare (not safe))
                                   (_K104839104863_ _path104871_))
                                 (let ((_path104856_ _g104834104843_))
                                   (declare (not safe))
                                   (_K104838104853_ _path104856_))))
                           (let ((_path104856_ _g104834104843_))
                             (declare (not safe))
                             (_K104838104853_ _path104856_))))))
                  (_r104875_
                   (if _current-src104778_
                       (let ((__tmp114583
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in104739_
                                 _current-src104778_
                                 _current-in104779_))))
                         (declare (not safe))
                         (cons __tmp114583 _r104780_))
                       _r104780_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114584
                                                            (let ((__tmp114585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi104831_))
                               _src-in104873_
                               (let ((__tmp114586
                                      (let ((__tmp114587
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in104873_ '()))))
                                        (declare (not safe))
                                        (cons _phi104831_ __tmp114587))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114586)))))
                      (declare (not safe))
                      (cons __tmp114585 _r104875_))))
               (declare (not safe))
               (_lp104775_ _rest104802_ '#f '() __tmp114584)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in104803_
                                                          'gx#module-context::t))
                                                       (let* ((_r104878_
                                                               (if _current-src104778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114579
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in104739_
                                     _current-src104778_
                                     _current-in104779_))))
                             (declare (not safe))
                             (cons __tmp114579 _r104780_))
                           _r104780_))
                      (__tmp114580
                       (let ((__tmp114581
                              (let ((__tmp114582
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path104738_ _in104803_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114582))))
                         (declare (not safe))
                         (cons __tmp114581 _r104878_))))
                 (declare (not safe))
                 (_lp104775_ _rest104802_ '#f '() __tmp114580))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104781104789_))
                                       (let ((_hd104786104883_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104781104789_)))
                                             (_tl104787104885_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104781104789_))))
                                         (let* ((_in104888_ _hd104786104883_)
                                                (_rest104890_
                                                 _tl104787104885_))
                                           (declare (not safe))
                                           (_K104785104880_
                                            _rest104890_
                                            _in104888_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104783104799_))))))
                             _tl104744104761_)))
                        (let ()
                          (declare (not safe))
                          (_g104741104751_ _g104742104754_))))))
            (declare (not safe))
            (_g104740104892_ _stx104734_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104543_ _stx104544_)
        (letrec* ((_context-chain104546_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104547_
                   (lambda (_ctx104731_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx104731_
                        _context-chain104546_)))))
          (let* ((_g104549104559_
                  (lambda (_g104550104556_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104550104556_))))
                 (_g104548104728_
                  (lambda (_g104550104562_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104550104562_))
                        (let ((_e104554104564_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104550104562_))))
                          (let ((_hd104553104567_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104554104564_)))
                                (_tl104552104569_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104554104564_))))
                            ((lambda (_L104572_)
                               (let _lp104583_ ((_rest104585_ _L104572_)
                                                (_r104586_ '()))
                                 (let* ((_rest104587104595_ _rest104585_)
                                        (_else104589104603_
                                         (lambda ()
                                           (let ((__tmp114596
                                                  (reverse _r104586_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114596))))
                                        (_K104591104716_
                                         (lambda (_rest104606_ _out104607_)
                                           (let* ((_out104608104621_
                                                   _out104607_)
                                                  (_E104611104625_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104608104621_)))))
                                             (let ((_K104615104695_
                                                    (lambda (_name104691_
                                                             _phi104692_
                                                             _key104693_)
                                                      (let ((__tmp114597
                                                             (let ((__tmp114598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114599
                                   (let ((__tmp114600
                                          (let ((__tmp114603
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key104693_)))
                                                (__tmp114601
                                                 (let ((__tmp114602
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name104691_))))
                                                   (declare (not safe))
                                                   (cons __tmp114602 '()))))
                                            (declare (not safe))
                                            (cons __tmp114603 __tmp114601))))
                                     (declare (not safe))
                                     (cons _phi104692_ __tmp114600))))
                              (declare (not safe))
                              (cons 'spec: __tmp114599))))
                       (declare (not safe))
                       (cons __tmp114598 _r104586_))))
                (declare (not safe))
                (_lp104583_ _rest104606_ __tmp114597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104612104675_
                                                    (lambda (_phi104629_
                                                             _src104630_)
                                                      (let* ((_out104670_
                                                              (if _src104630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114604
                                 (let ((__tmp114605
                                        (let* ((_g104631104640_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104547_
                                                   _src104630_)))
                                               (_E104634104644_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g104631104640_)))))
                                          (let ((_K104636104660_
                                                 (lambda (_path104658_)
                                                   _path104658_))
                                                (_K104635104650_
                                                 (lambda (_path104648_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path104648_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g104631104640_))
                                                (let ((_tl104638104665_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g104631104640_)))
                                                      (_hd104637104663_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g104631104640_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl104638104665_))
                                                      (let ((_path104668_
                                                             _hd104637104663_))
                                                        (declare (not safe))
                                                        (_K104636104660_
                                                         _path104668_))
                                                      (let ((_path104653_
                                                             _g104631104640_))
                                                        (declare (not safe))
                                                        (_K104635104650_
                                                         _path104653_))))
                                                (let ((_path104653_
                                                       _g104631104640_))
                                                  (declare (not safe))
                                                  (_K104635104650_
                                                   _path104653_)))))))
                                   (declare (not safe))
                                   (cons __tmp114605 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114604))
                          '#t))
                     (_out104672_
                      (if (let () (declare (not safe)) (fxzero? _phi104629_))
                          _out104670_
                          (let ((__tmp114606
                                 (let ((__tmp114607
                                        (let ()
                                          (declare (not safe))
                                          (cons _out104670_ '()))))
                                   (declare (not safe))
                                   (cons _phi104629_ __tmp114607))))
                            (declare (not safe))
                            (cons 'phi: __tmp114606)))))
                (let ((__tmp114608
                       (let ()
                         (declare (not safe))
                         (cons _out104672_ _r104586_))))
                  (declare (not safe))
                  (_lp104583_ _rest104606_ __tmp114608))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104610104688_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104608104621_
                                                               'gx#export-set::t))
                                                            (let* ((_e104613104678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104608104621_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104614104683_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104608104621_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src104681_ _e104613104678_)
                            (_phi104686_ _e104614104683_))
                        (let ()
                          (declare (not safe))
                          (_K104612104675_ _phi104686_ _src104681_))))
                    (let () (declare (not safe)) (_E104611104625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104608104621_
                                                        'gx#module-export::t))
                                                     (let* ((_e104616104698_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104608104621_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104617104701_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104608104621_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104618104706_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104608104621_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104619104711_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104608104621_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key104704_ _e104617104701_)
                     (_phi104709_ _e104618104706_)
                     (_name104714_ _e104619104711_))
                 (let ()
                   (declare (not safe))
                   (_K104615104695_ _name104714_ _phi104709_ _key104704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104610104688_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104587104595_))
                                       (let ((_hd104592104719_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104587104595_)))
                                             (_tl104593104721_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104587104595_))))
                                         (let* ((_out104724_ _hd104592104719_)
                                                (_rest104726_
                                                 _tl104593104721_))
                                           (declare (not safe))
                                           (_K104591104716_
                                            _rest104726_
                                            _out104724_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104589104603_))))))
                             _tl104552104569_)))
                        (let ()
                          (declare (not safe))
                          (_g104549104559_ _g104550104562_))))))
            (declare (not safe))
            (_g104548104728_ _stx104544_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104504_ _stx104505_)
        (let ((__tmp114609
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104504_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114609))
        (let* ((_g104507104517_
                (lambda (_g104508104514_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104508104514_))))
               (_g104506104540_
                (lambda (_g104508104520_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104508104520_))
                      (let ((_e104512104522_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104508104520_))))
                        (let ((_hd104511104525_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104512104522_)))
                              (_tl104510104527_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104512104522_))))
                          ((lambda (_L104530_)
                             (let ((__tmp114610
                                    (map gxc#generate-runtime-identifier
                                         _L104530_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114610)))
                           _tl104510104527_)))
                      (let ()
                        (declare (not safe))
                        (_g104507104517_ _g104508104520_))))))
          (declare (not safe))
          (_g104506104540_ _stx104505_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104375_ _stx104376_)
        (letrec ((_generate1104378_
                  (lambda (_id104499_ _eid104500_)
                    (let ((_eid104502_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104500_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _eid104502_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104376_
                             _eid104502_)))
                      (let ((__tmp114612
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104499_)))
                            (__tmp114611
                             (let ()
                               (declare (not safe))
                               (cons _eid104502_ '()))))
                        (declare (not safe))
                        (cons __tmp114612 __tmp114611))))))
          (let* ((_g104380104408_
                  (lambda (_g104381104405_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104381104405_))))
                 (_g104379104496_
                  (lambda (_g104381104411_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104381104411_))
                        (let ((_e104386104413_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104381104411_))))
                          (let ((_hd104385104416_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104386104413_)))
                                (_tl104384104418_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104386104413_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104384104418_))
                                (let ((_g114613_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104384104418_
                                          '0))))
                                  (begin
                                    (let ((_g114614_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114613_)
                                                 (##vector-length _g114613_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114614_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114614_)))
                                    (let ((_target104387104421_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114613_ 0)))
                                          (_tl104389104423_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114613_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104389104423_))
                                          (letrec ((_loop104390104426_
                                                    (lambda (_hd104388104429_
                                                             _eid104394104431_
                                                             _id104395104433_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104388104429_))
                                                          (let ((_e104391104436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104388104429_))))
                    (let ((_lp-hd104392104439_
                           (let ()
                             (declare (not safe))
                             (##car _e104391104436_)))
                          (_lp-tl104393104441_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104391104436_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104392104439_))
                          (let ((_e104400104444_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104392104439_))))
                            (let ((_hd104399104447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104400104444_)))
                                  (_tl104398104449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104400104444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104398104449_))
                                  (let ((_e104403104452_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104398104449_))))
                                    (let ((_hd104402104455_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104403104452_)))
                                          (_tl104401104457_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104403104452_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104401104457_))
                                          (let ((__tmp114619
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104402104455_
                                                         _eid104394104431_)))
                                                (__tmp114618
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104399104447_
                                                         _id104395104433_))))
                                            (declare (not safe))
                                            (_loop104390104426_
                                             _lp-tl104393104441_
                                             __tmp114619
                                             __tmp114618))
                                          (let ()
                                            (declare (not safe))
                                            (_g104380104408_
                                             _g104381104411_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104380104408_ _g104381104411_)))))
                          (let ()
                            (declare (not safe))
                            (_g104380104408_ _g104381104411_)))))
                  (let ((_eid104396104460_ (reverse _eid104394104431_))
                        (_id104397104462_ (reverse _id104395104433_)))
                    ((lambda (_L104465_ _L104466_)
                       (let ((__tmp114615
                              (map _generate1104378_
                                   (let ((__tmp114616
                                          (lambda (_g104481104484_
                                                   _g104482104486_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104481104484_
                                                    _g104482104486_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114616 '() _L104466_))
                                   (let ((__tmp114617
                                          (lambda (_g104488104491_
                                                   _g104489104493_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104488104491_
                                                    _g104489104493_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114617 '() _L104465_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114615)))
                     _eid104396104460_
                     _id104397104462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104390104426_
                                               _target104387104421_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104380104408_
                                             _g104381104411_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104380104408_ _g104381104411_)))))
                        (let ()
                          (declare (not safe))
                          (_g104380104408_ _g104381104411_))))))
            (declare (not safe))
            (_g104379104496_ _stx104376_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104165_ _stx104166_)
        (letrec ((_generate1104168_
                  (lambda (_id104370_)
                    (let ((_eid104372_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104370_)))
                          (_ident104373_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104370_))))
                      (let ((__tmp114620
                             (let ((__tmp114621
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104372_ '()))))
                               (declare (not safe))
                               (cons _ident104373_ __tmp114621))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114620)))))
                 (_generate*104169_
                  (lambda (_all104338_)
                    (let* ((_all104339104347_ _all104338_)
                           (_else104341104355_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104338_))))
                           (_K104343104360_
                            (lambda (_one104358_) _one104358_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104339104347_))
                          (let ((_hd104344104363_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104339104347_)))
                                (_tl104345104365_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104339104347_))))
                            (let ((_one104368_ _hd104344104363_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104345104365_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104343104360_ _one104368_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104341104355_)))))
                          (let ()
                            (declare (not safe))
                            (_else104341104355_)))))))
          (let* ((_g104171104188_
                  (lambda (_g104172104185_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104172104185_))))
                 (_g104170104335_
                  (lambda (_g104172104191_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104172104191_))
                        (let ((_e104177104193_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104172104191_))))
                          (let ((_hd104176104196_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104177104193_)))
                                (_tl104175104198_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104177104193_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104175104198_))
                                (let ((_e104180104201_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104175104198_))))
                                  (let ((_hd104179104204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104180104201_)))
                                        (_tl104178104206_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104180104201_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104178104206_))
                                        (let ((_e104183104209_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104178104206_))))
                                          (let ((_hd104182104212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104183104209_)))
                                                (_tl104181104214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104183104209_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104181104214_))
                                                ((lambda (_L104217_ _L104218_)
                                                   (let _lp104234_ ((_rest104236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104218_)
                            (_r104237_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx113751113752_
                                                             _rest104236_)
                                                            (_g104242104259_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx113751113752_)))))
               (let ((___kont113753113754_
                      (lambda (_L104322_)
                        (let ()
                          (declare (not safe))
                          (_lp104234_ _L104322_ _r104237_))))
                     (___kont113755113756_
                      (lambda (_L104295_ _L104296_)
                        (let ((__tmp114622
                               (let ((__tmp114623
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104168_ _L104296_))))
                                 (declare (not safe))
                                 (cons __tmp114623 _r104237_))))
                          (declare (not safe))
                          (_lp104234_ _L104295_ __tmp114622))))
                     (___kont113757113758_
                      (lambda (_L104271_)
                        (let ((__tmp114624
                               (let ((__tmp114625
                                      (let ((__tmp114626
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104168_ _L104271_))))
                                        (declare (not safe))
                                        (cons __tmp114626 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114625 _r104237_))))
                          (declare (not safe))
                          (_generate*104169_ __tmp114624))))
                     (___kont113759113760_
                      (lambda ()
                        (let ((__tmp114627 (reverse _r104237_)))
                          (declare (not safe))
                          (_generate*104169_ __tmp114627)))))
                 (let ((_g104240104282_
                        (lambda ()
                          (let ((_L104271_ ___stx113751113752_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104271_))
                                (___kont113757113758_ _L104271_)
                                (___kont113759113760_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx113751113752_))
                       (let ((_e104247104311_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx113751113752_))))
                         (let ((_tl104245104316_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104247104311_)))
                               (_hd104246104314_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104247104311_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104246104314_))
                               (let ((_e104248104319_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104246104314_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104248104319_ '#f))
                                     (___kont113753113754_ _tl104245104316_)
                                     (___kont113755113756_
                                      _tl104245104316_
                                      _hd104246104314_)))
                               (___kont113755113756_
                                _tl104245104316_
                                _hd104246104314_))))
                       (let () (declare (not safe)) (_g104240104282_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104182104212_
                                                 _hd104179104204_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104171104188_
                                                   _g104172104191_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104171104188_ _g104172104191_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104171104188_ _g104172104191_)))))
                        (let ()
                          (declare (not safe))
                          (_g104171104188_ _g104172104191_))))))
            (declare (not safe))
            (_g104170104335_ _stx104166_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104062_ _stx104063_)
        (let* ((_g104065104082_
                (lambda (_g104066104079_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104066104079_))))
               (_g104064104162_
                (lambda (_g104066104085_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104066104085_))
                      (let ((_e104071104087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104066104085_))))
                        (let ((_hd104070104090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104071104087_)))
                              (_tl104069104092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104071104087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104069104092_))
                              (let ((_e104074104095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104069104092_))))
                                (let ((_hd104073104098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104074104095_)))
                                      (_tl104072104100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104074104095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104072104100_))
                                      (let ((_e104077104103_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104072104100_))))
                                        (let ((_hd104076104106_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104077104103_)))
                                              (_tl104075104108_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104077104103_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104075104108_))
                                              ((lambda (_L104111_ _L104112_)
                                                 (let* ((_eid104127_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104112_)))
                                                        (_phi104129_
                                                         (let ((__tmp114628
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114628
                                                                '1)))
                                                        (_block104131_
                                                         (let ((__tmp114629
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104062_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114629 _phi104129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104134104141_
                                                           (lambda (_g104135104138_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104135104138_))))
                  (_g104133104159_
                   (lambda (_g104135104144_)
                     ((lambda (_L104146_)
                        (let ()
                          (let ((__tmp114634
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104062_ 'state)))
                                (__tmp114630
                                 (let ((__tmp114633
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114631
                                        (let ((__tmp114632
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104111_ '()))))
                                          (declare (not safe))
                                          (cons _L104146_ __tmp114632))))
                                   (declare (not safe))
                                   (cons __tmp114633 __tmp114631))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114634
                             _phi104129_
                             __tmp114630))))
                      _g104135104144_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104133104159_
                                                      _eid104127_))
                                                   (if _block104131_
                                                       (let ((__tmp114638
                                                              (let ((__tmp114644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114645
                                    (let ((__tmp114646
                                           (let ((__tmp114647
                                                  (let ((__tmp114651
                                                         (let ((__tmp114652
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp114652)))
                (__tmp114648
                 (let ((__tmp114649
                        (let ((__tmp114650
                               (let ()
                                 (declare (not safe))
                                 (cons _block104131_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp114650))))
                   (declare (not safe))
                   (cons __tmp114649 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114651
                                                          __tmp114648))))
                                             (declare (not safe))
                                             (cons '%#call __tmp114647))))
                                      (declare (not safe))
                                      (cons __tmp114646 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp114645)))
                            (__tmp114639
                             (let ((__tmp114640
                                    (let ((__tmp114641
                                           (let ((__tmp114643
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104112_)))
                                                 (__tmp114642
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104127_ '()))))
                                             (declare (not safe))
                                             (cons __tmp114643 __tmp114642))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114641))))
                               (declare (not safe))
                               (cons __tmp114640 '()))))
                        (declare (not safe))
                        (cons __tmp114644 __tmp114639))))
                 (declare (not safe))
                 (cons '%#begin __tmp114638))
               (let ((__tmp114635
                      (let ((__tmp114637
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104112_)))
                            (__tmp114636
                             (let ()
                               (declare (not safe))
                               (cons _eid104127_ '()))))
                        (declare (not safe))
                        (cons __tmp114637 __tmp114636))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114635)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104076104106_
                                               _hd104073104098_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104065104082_
                                                 _g104066104085_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104065104082_ _g104066104085_)))))
                              (let ()
                                (declare (not safe))
                                (_g104065104082_ _g104066104085_)))))
                      (let ()
                        (declare (not safe))
                        (_g104065104082_ _g104066104085_))))))
          (declare (not safe))
          (_g104064104162_ _stx104063_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self103994_ _stx103995_)
        (let* ((_g103997104014_
                (lambda (_g103998104011_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103998104011_))))
               (_g103996104059_
                (lambda (_g103998104017_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103998104017_))
                      (let ((_e104003104019_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103998104017_))))
                        (let ((_hd104002104022_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104003104019_)))
                              (_tl104001104024_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104003104019_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104001104024_))
                              (let ((_e104006104027_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104001104024_))))
                                (let ((_hd104005104030_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104006104027_)))
                                      (_tl104004104032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104006104027_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104004104032_))
                                      (let ((_e104009104035_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104004104032_))))
                                        (let ((_hd104008104038_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104009104035_)))
                                              (_tl104007104040_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104009104035_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104007104040_))
                                              ((lambda (_L104043_ _L104044_)
                                                 (let ((__tmp114653
                                                        (let ((__tmp114656
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104044_)))
                      (__tmp114654
                       (let ((__tmp114655
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104043_))))
                         (declare (not safe))
                         (cons __tmp114655 '()))))
                  (declare (not safe))
                  (cons __tmp114656 __tmp114654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp114653)))
                                               _hd104008104038_
                                               _hd104005104030_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103997104014_
                                                 _g103998104017_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103997104014_ _g103998104017_)))))
                              (let ()
                                (declare (not safe))
                                (_g103997104014_ _g103998104017_)))))
                      (let ()
                        (declare (not safe))
                        (_g103997104014_ _g103998104017_))))))
          (declare (not safe))
          (_g103996104059_ _stx103995_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self103991_ _stx103992_)
        (let ((__tmp114658
               (let () (declare (not safe)) (slot-ref__0 _self103991_ 'state)))
              (__tmp114657 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114658 __tmp114657 _stx103992_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self103991_ _stx103992_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self103988_ _stx103989_)
        (let ((__tmp114660
               (let () (declare (not safe)) (slot-ref__0 _self103988_ 'state)))
              (__tmp114659 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114660 __tmp114659 _stx103989_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp114663 (list))
            (__tmp114661
             (let ((__tmp114662
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114662 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp114663
         '(src n open blocks)
         __tmp114661
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args103985_
        (apply make-instance gxc#meta-state::t _$args103985_)))
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
      (lambda (_self103982_ _ctx103983_)
        (if (let ((__tmp114672
                   (let ()
                     (declare (not safe))
                     (##structure-length _self103982_))))
              (declare (not safe))
              (##fx< '4 __tmp114672))
            (begin
              (let ((__tmp114666
                     (let ((__tmp114667
                            (##structure-ref
                             _ctx103983_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp114667)))
                    (__tmp114665
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103982_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103982_
                 __tmp114666
                 '1
                 __tmp114665
                 '#f))
              (let ((__tmp114668
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103982_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103982_
                 '1
                 '2
                 __tmp114668
                 '#f))
              (let ((__tmp114670
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114669
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103982_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103982_
                 __tmp114670
                 '3
                 __tmp114669
                 '#f))
              (let ((__tmp114671
                     (let ()
                       (declare (not safe))
                       (##structure-type _self103982_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self103982_
                 '()
                 '4
                 __tmp114671
                 '#f)))
            (let ((__tmp114664
                   (let ()
                     (declare (not safe))
                     (##vector-length _self103982_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self103982_
                     '4
                     __tmp114664)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp114675 (list))
            (__tmp114673
             (let ((__tmp114674
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114674 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp114675
         '(ctx phi n code)
         __tmp114673
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args103857_
        (apply make-instance gxc#meta-state-block::t _$args103857_)))
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
      (lambda (_state103816_ _phi103817_)
        (let* ((_state103818103826_ _state103816_)
               (_E103820103830_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state103818103826_))))
               (_K103821103839_
                (lambda (_open103833_ _n103834_ _src103835_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open103833_ _phi103817_))
                      '#f
                      (let ((_block-ref103837_
                             (string-append
                              _src103835_
                              '"~"
                              (number->string _n103834_))))
                        (##structure-set!
                         _state103816_
                         (let () (declare (not safe)) (fx+ _n103834_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp114676
                               (let ((__tmp114677
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp114677
                                  _phi103817_
                                  _n103834_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open103833_ _phi103817_ __tmp114676))
                        _block-ref103837_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state103818103826_
                 'gxc#meta-state::t))
              (let* ((_e103822103842_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103818103826_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src103845_ _e103822103842_)
                     (_e103823103847_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103818103826_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n103850_ _e103823103847_)
                     (_e103824103852_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103818103826_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open103855_ _e103824103852_))
                (declare (not safe))
                (_K103821103839_ _open103855_ _n103850_ _src103845_))
              (let () (declare (not safe)) (_E103820103830_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state103810_ _phi103811_ _stx103812_)
        (let ((_block103814_
               (let ((__tmp114678
                      (##structure-ref
                       _state103810_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp114678 _phi103811_))))
          (##structure-set!
           _block103814_
           (let ((__tmp114679
                  (##structure-ref
                   _block103814_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx103812_ __tmp114679))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state103805_)
        (##structure-set!
         _state103805_
         (let ((__tmp114682
                (lambda (_g114683_ _block103807_ _r103808_)
                  (let ()
                    (declare (not safe))
                    (cons _block103807_ _r103808_))))
               (__tmp114681
                (##structure-ref _state103805_ '4 gxc#meta-state::t '#f))
               (__tmp114680
                (##structure-ref _state103805_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp114682 __tmp114681 __tmp114680))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state103805_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state103757_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state103757_))
        (let ((__tmp114685
               (lambda (_block103759_ _r103760_)
                 (let* ((_block103761103770_ _block103759_)
                        (_E103763103774_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block103761103770_))))
                        (_K103764103782_
                         (lambda (_code103777_
                                  _n103778_
                                  _phi103779_
                                  _ctx103780_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code103777_))
                               _r103760_
                               (let ((__tmp114686
                                      (let ((__tmp114687
                                             (let ((__tmp114688
                                                    (let ((__tmp114689
                                                           (let ((__tmp114690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114691 (reverse _code103777_)))
                            (declare (not safe))
                            (cons '%#begin __tmp114691))))
                     (declare (not safe))
                     (cons __tmp114690 '()))))
              (declare (not safe))
              (cons _n103778_ __tmp114689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi103779_
                                                     __tmp114688))))
                                        (declare (not safe))
                                        (cons _ctx103780_ __tmp114687))))
                                 (declare (not safe))
                                 (cons __tmp114686 _r103760_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block103761103770_
                          'gxc#meta-state-block::t))
                       (let* ((_e103765103785_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103761103770_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx103788_ _e103765103785_)
                              (_e103766103790_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103761103770_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi103793_ _e103766103790_)
                              (_e103767103795_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103761103770_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n103798_ _e103767103795_)
                              (_e103768103800_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103761103770_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code103803_ _e103768103800_))
                         (declare (not safe))
                         (_K103764103782_
                          _code103803_
                          _n103798_
                          _phi103793_
                          _ctx103788_))
                       (let () (declare (not safe)) (_E103763103774_))))))
              (__tmp114684
               (##structure-ref _state103757_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp114685 '() __tmp114684))))
    (define gxc#collect-expression-refs
      (lambda (_stx103753_)
        (let ((_ht103755_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx103753_ 'table: _ht103755_))
          _ht103755_)))
    (define gxc#collect-refs-ref%
      (lambda (_self103696_ _stx103697_)
        (let* ((_g103699103712_
                (lambda (_g103700103709_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103700103709_))))
               (_g103698103750_
                (lambda (_g103700103715_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103700103715_))
                      (let ((_e103704103717_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103700103715_))))
                        (let ((_hd103703103720_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103704103717_)))
                              (_tl103702103722_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103704103717_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103702103722_))
                              (let ((_e103707103725_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103702103722_))))
                                (let ((_hd103706103728_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103707103725_)))
                                      (_tl103705103730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103707103725_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl103705103730_))
                                      ((lambda (_L103733_)
                                         (let* ((_bind103745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L103733_)))
                                                (_eid103747_
                                                 (if _bind103745_
                                                     (##structure-ref
                                                      _bind103745_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L103733_)))))
                                           (let ((__tmp114692
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self103696_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp114692
                                              _eid103747_
                                              _eid103747_))))
                                       _hd103706103728_)
                                      (let ()
                                        (declare (not safe))
                                        (_g103699103712_ _g103700103715_)))))
                              (let ()
                                (declare (not safe))
                                (_g103699103712_ _g103700103715_)))))
                      (let ()
                        (declare (not safe))
                        (_g103699103712_ _g103700103715_))))))
          (declare (not safe))
          (_g103698103750_ _stx103697_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103623_ _stx103624_)
        (let* ((_g103626103643_
                (lambda (_g103627103640_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103627103640_))))
               (_g103625103693_
                (lambda (_g103627103646_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103627103646_))
                      (let ((_e103632103648_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103627103646_))))
                        (let ((_hd103631103651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103632103648_)))
                              (_tl103630103653_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103632103648_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103630103653_))
                              (let ((_e103635103656_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103630103653_))))
                                (let ((_hd103634103659_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103635103656_)))
                                      (_tl103633103661_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103635103656_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103633103661_))
                                      (let ((_e103638103664_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103633103661_))))
                                        (let ((_hd103637103667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103638103664_)))
                                              (_tl103636103669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103638103664_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103636103669_))
                                              ((lambda (_L103672_ _L103673_)
                                                 (let* ((_bind103688_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L103673_)))
                                                        (_eid103690_
                                                         (if _bind103688_
                                                             (##structure-ref
                                                              _bind103688_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L103673_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp114693
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103623_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp114693
                                                      _eid103690_
                                                      _eid103690_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103623_
                                                      _L103672_))))
                                               _hd103637103667_
                                               _hd103634103659_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103626103643_
                                                 _g103627103646_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103626103643_ _g103627103646_)))))
                              (let ()
                                (declare (not safe))
                                (_g103626103643_ _g103627103646_)))))
                      (let ()
                        (declare (not safe))
                        (_g103626103643_ _g103627103646_))))))
          (declare (not safe))
          (_g103625103693_ _stx103624_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103580_ _stx103581_)
        (let* ((_g103583103593_
                (lambda (_g103584103590_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103584103590_))))
               (_g103582103620_
                (lambda (_g103584103596_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103584103596_))
                      (let ((_e103588103598_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103584103596_))))
                        (let ((_hd103587103601_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103588103598_)))
                              (_tl103586103603_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103588103598_))))
                          ((lambda (_L103606_)
                             (let ((__tmp114694
                                    (lambda (_g103615103617_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103580_
                                         _g103615103617_)))))
                               (declare (not safe))
                               (ormap1 __tmp114694 _L103606_)))
                           _tl103586103603_)))
                      (let ()
                        (declare (not safe))
                        (_g103583103593_ _g103584103596_))))))
          (declare (not safe))
          (_g103582103620_ _stx103581_))))
    (define gxc#count-values-single% (lambda (_self103577_ _stx103578_) '1))
    (define gxc#count-values-call%
      (lambda (_self103443_ _stx103444_)
        (let* ((___stx113781113782_ _stx103444_)
               (_g103447103476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113781113782_)))))
          (let ((___kont113783113784_
                 (lambda (_L103544_ _L103545_)
                   (length (let ((__tmp114695
                                  (lambda (_g103566103569_ _g103567103571_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103566103569_
                                            _g103567103571_)))))
                             (declare (not safe))
                             (foldr1 __tmp114695 '() _L103544_)))))
                (___kont113787113788_ (lambda () '#f)))
            (let ((___match113826113827_
                   (lambda (_e103453103488_
                            _hd103452103491_
                            _tl103451103493_
                            _e103456103496_
                            _hd103455103499_
                            _tl103454103501_
                            _e103459103504_
                            _hd103458103507_
                            _tl103457103509_
                            _e103462103512_
                            _hd103461103515_
                            _tl103460103517_
                            ___splice113785113786_
                            _target103463103520_
                            _tl103465103522_)
                     (letrec ((_loop103466103525_
                               (lambda (_hd103464103528_ _rand103470103530_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103464103528_))
                                     (let ((_e103467103533_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103464103528_))))
                                       (let ((_lp-tl103469103538_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103467103533_)))
                                             (_lp-hd103468103536_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103467103533_))))
                                         (let ((__tmp114696
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103468103536_
                                                        _rand103470103530_))))
                                           (declare (not safe))
                                           (_loop103466103525_
                                            _lp-tl103469103538_
                                            __tmp114696))))
                                     (let ((_rand103471103541_
                                            (reverse _rand103470103530_)))
                                       (let ((_L103544_ _rand103471103541_)
                                             (_L103545_ _hd103461103515_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103545_
                                                'values))
                                             (___kont113783113784_
                                              _L103544_
                                              _L103545_)
                                             (___kont113787113788_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103466103525_ _target103463103520_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx113781113782_))
                  (let ((_e103453103488_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx113781113782_))))
                    (let ((_tl103451103493_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103453103488_)))
                          (_hd103452103491_
                           (let ()
                             (declare (not safe))
                             (##car _e103453103488_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103451103493_))
                          (let ((_e103456103496_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103451103493_))))
                            (let ((_tl103454103501_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103456103496_)))
                                  (_hd103455103499_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103456103496_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103455103499_))
                                  (let ((_e103459103504_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103455103499_))))
                                    (let ((_tl103457103509_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103459103504_)))
                                          (_hd103458103507_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103459103504_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103458103507_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103458103507_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103457103509_))
                                                  (let ((_e103462103512_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103457103509_))))
                                                    (let ((_tl103460103517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103462103512_)))
                                                          (_hd103461103515_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103462103512_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103460103517_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103454103501_))
                      (let ((___splice113785113786_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103454103501_ '0))))
                        (let ((_tl103465103522_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice113785113786_ '1)))
                              (_target103463103520_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice113785113786_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103465103522_))
                              (___match113826113827_
                               _e103453103488_
                               _hd103452103491_
                               _tl103451103493_
                               _e103456103496_
                               _hd103455103499_
                               _tl103454103501_
                               _e103459103504_
                               _hd103458103507_
                               _tl103457103509_
                               _e103462103512_
                               _hd103461103515_
                               _tl103460103517_
                               ___splice113785113786_
                               _target103463103520_
                               _tl103465103522_)
                              (___kont113787113788_))))
                      (___kont113787113788_))
                  (___kont113787113788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113787113788_))
                                              (___kont113787113788_))
                                          (___kont113787113788_))))
                                  (___kont113787113788_))))
                          (___kont113787113788_))))
                  (___kont113787113788_)))))))
    (define gxc#count-values-if%
      (lambda (_self103346_ _stx103347_)
        (let* ((_g103349103370_
                (lambda (_g103350103367_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103350103367_))))
               (_g103348103440_
                (lambda (_g103350103373_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103350103373_))
                      (let ((_e103356103375_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103350103373_))))
                        (let ((_hd103355103378_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103356103375_)))
                              (_tl103354103380_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103356103375_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103354103380_))
                              (let ((_e103359103383_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103354103380_))))
                                (let ((_hd103358103386_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103359103383_)))
                                      (_tl103357103388_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103359103383_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103357103388_))
                                      (let ((_e103362103391_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103357103388_))))
                                        (let ((_hd103361103394_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103362103391_)))
                                              (_tl103360103396_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103362103391_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103360103396_))
                                              (let ((_e103365103399_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103360103396_))))
                                                (let ((_hd103364103402_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103365103399_)))
                                                      (_tl103363103404_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103365103399_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103363103404_))
                                                      ((lambda (_L103407_
                                                                _L103408_
                                                                _L103409_)
                                                         (let ((_c1103426103428_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103346_ _L103408_))))
                   (if _c1103426103428_
                       (let* ((_c1103431_ _c1103426103428_)
                              (_c2103432103434_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103346_ _L103407_))))
                         (if _c2103432103434_
                             (let ((_c2103437_ _c2103432103434_))
                               (if (fx= _c1103431_ _c2103437_) _c1103431_ '#f))
                             '#f))
                       '#f)))
               _hd103364103402_
               _hd103361103394_
               _hd103358103386_)
              (let ()
                (declare (not safe))
                (_g103349103370_ _g103350103373_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103349103370_
                                                 _g103350103373_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103349103370_ _g103350103373_)))))
                              (let ()
                                (declare (not safe))
                                (_g103349103370_ _g103350103373_)))))
                      (let ()
                        (declare (not safe))
                        (_g103349103370_ _g103350103373_))))))
          (declare (not safe))
          (_g103348103440_ _stx103347_))))))
